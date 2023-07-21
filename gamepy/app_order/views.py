import datetime

from django.http import JsonResponse
# from django.shortcuts import render, redirect, HttpResponse
from django.urls import reverse
from django.views import View

from app_order.models import *
from app_cart.models import *

import time
from urllib.parse import parse_qs
from django.conf import settings
from django.shortcuts import render, redirect, HttpResponse
from django.views.decorators.csrf import csrf_exempt
from app_order.alipay import AliPay


# Create your views here.

class OrderDetail(View):
    def get(self, request):

        user = request.user
        cart_name = []
        user_cart = CartItem.objects.filter(user_id=request.user.id, cart_is_del=0).first()
        if not user_cart:
            return redirect(reverse("app_cart:cart_page"))
        user_cart.cart_is_del = 1
        user_cart.save()
        game_kind_num = user_cart.sku_id.all()

        sum_cart_price = 0
        sum_num = 0
        for i in game_kind_num:
            sum_cart_price += i.num * i.sku_id.sku_price
            discout_price = sum_cart_price * i.sku_id.sku_discount
            sum_num += i.num
        sum_cart_price = round(sum_cart_price, 2)
        discout_price = round(discout_price, 2)
        save_price = round(sum_cart_price - discout_price, 2)

        '''
        将信息传到 订单表中
        '''
        information = OrderMessage.objects.create(order_pay_methods="微信支付", user_id=user,
                                                  order_all_money=sum_cart_price,
                                                  order_all_number=sum_num, order_pay_state=False,
                                                  order_create_time=datetime.datetime.now())
        for i in game_kind_num:
            commodity = OrderCommodity.objects.create(order_id_id=information.order_id, sku_id_id=i.sku_id.sku_id,
                                                      oc_number=i.num, oc_price=i.sku_id.sku_price * i.num,
                                                      oc_comment='默认好评')

        return render(request, "orders_page.html", locals())


class OrderShow(View):
    def get(self, request):
        user = request.user

        obj = OrderMessage.objects.filter(user_id=user)
        return render(request, "orders_show.html", locals())


class DelOrder(View):
    def get(self, request, *args):
        user = request.user

        try:
            id = int(args[0])
            obj_del = OrderMessage.objects.filter(user_id=user, order_id=id).first()
            obj_del.order_pay_state = -1
            obj_del.save()
            obj = OrderMessage.objects.filter(user_id=user)
            return redirect(reverse('app_order:order_show'))
        except Exception:
            return redirect(reverse('app_commidity:index'))


class OrderLast(View):
    def get(self, request, *args):
        id = args[0]
        information = OrderMessage.objects.filter(order_id=id, user_id=request.user).first()
        # game_kind_num = information.filter("ordercommodity__sku_id")
        sku_kind_num = information.ordercommodity_set.all()
        # print(information)
        # print(sku_kind_num.first())
        return render(request, 'orders_last.html', locals())
    # def post(self, request, *args):
    #     # 实例化SDK里面的类AliPay
    #     alipay = aliPay()
    #
    #     # 对购买的数据进行加密
    #     money = float(request.POST.get('price'))  # 保留俩位小数  前端传回的数据
    #     out_trade_no = "x2" + str(time.time())  # 商户订单号   # 订单号可以有多中生成方式，可以百度一下
    #
    #     # 1. 在数据库创建一条数据：状态（待支付）
    #
    #     query_params = alipay.direct_pay(
    #         subject="充气式Saber",  # 商品简单描述 这里一般是从前端传过来的数据
    #         out_trade_no=out_trade_no,  # 商户订单号  这里一般是从前端传过来的数据
    #         total_amount=money,  # 交易金额(单位: 元 保留俩位小数)   这里一般是从前端传过来的数据
    #     )
    #     # 拼接url，转到支付宝支付页面
    #     pay_url = "https://openapi.alipaydev.com/gateway.do?{}".format(query_params)
    #
    #     return redirect(pay_url)


def aliPay():
    obj = AliPay(

        appid="2021000121676866",  # 支付宝沙箱里面的APPID，需要改成你自己的
        # appid = "2021003161699007",
        app_notify_url="http://192.168.0.107:12000/update_order/",
        # 如果支付成功，支付宝会向这个地址发送POST请求（校验是否支付已经完成），此地址要能够在公网进行访问，需要改成你自己的服务器地址

        # app_notify_url=None,  # 默认回调i
        # return_url="http://127.0.0.1:8000/result/",            # 如果支付成功，重定向回到你的网站的地址。需要你自己改，这里是我的服务器地址
        return_url="http://192.168.0.107:12000/order_show/",
        alipay_public_key_path=settings.ALIPAY_PUBLIC,  # 支付宝公钥
        app_private_key_path=settings.APP_PRIVATE,  # 应用私钥
        # alipay_public_key_string=settings.ALIPAY_PUBLIC,  # 支付宝公钥
        # app_private_key_string=settings.APP_PRIVATE,  # 应用私钥
        # sign_type="RSA2",

        debug=True,  # 默认False,True表示使用沙箱   环境测试
    )

    # # 优化:在settings里面的设置后使用
    # obj = AliPay(
    #     appid=settings.APPID,
    #     app_notify_url=settings.NOTIFY_URL,
    #     return_url=settings.RETURN_URL,
    #     alipay_public_key_path=settings.PUB_KEY_PATH,
    #     app_private_key_path=settings.PRI_KEY_PATH,
    #     debug=True,
    # )
    return obj


class Buy(View):
    """
    未调用支付宝接口
    """

    def post(self, requests, *args):
        print(*args)
        id = args[0]
        obj = OrderMessage.objects.filter(order_id=id).first()
        obj.order_pay_state = 1
        obj.save()

        return redirect(reverse('app_order:order_show'))


@csrf_exempt
def buy(request, *args):
    if request.method == "GET":
        return render(request, 'index.html')

    # 实例化SDK里面的类AliPay
    alipay = aliPay()

    # 对购买的数据进行加密
    id = args[0]
    obj = OrderMessage.objects.filter(order_id=id).first()
    money = obj.order_all_money
    print(money)
    order_id = obj.order_id
    # money = float(request.POST.get('price'))  # 保留俩位小数  前端传回的数据
    # out_trade_no = "x2" + str(time.time())  # 商户订单号   # 订单号可以有多中生成方式，可以百度一下

    # 1. 在数据库创建一条数据：状态（待支付）

    query_params = alipay.direct_pay(
        id=id,
        subject="结算订单",  # 商品简单描述 这里一般是从前端传过来的数据
        out_trade_no=order_id,  # 商户订单号  这里一般是从前端传过来的数据
        total_amount=money,  # 交易金额(单位: 元 保留俩位小数)   这里一般是从前端传过来的数据
    )
    # 拼接url，转到支付宝支付页面 沙箱环境
    pay_url = f"https://openapi.alipaydev.com/gateway.do?{query_params}"
    # print("1"*100)
    # print(query_params)
    return redirect(pay_url)


@csrf_exempt
def update_order(request, *args):
    """
    支付成功后，支付宝向该地址发送的POST请求（用于修改订单状态）
    :param request:
    :return:
    """
    if request.method == 'POST':
        body_str = request.body.decode('utf-8')
        post_data = parse_qs(body_str)

        post_dict = {}
        for k, v in post_data.items():
            post_dict[k] = v[0]

        alipay = aliPay()

        sign = post_dict.pop('sign', None)
        status = alipay.verify(post_dict, sign)
        print(111111111111)


        id = post_dict['id']
        obj = OrderMessage.objects.filter(order_id=id).first()
        obj.order_pay_state = 1
        obj.save()


        if status:
            # 1.修改订单状态
            out_trade_no = post_dict.get('out_trade_no')
            print(out_trade_no)
            # 2. 根据订单号将数据库中的数据进行更新
            return HttpResponse('支付成功')
        else:
            return HttpResponse('支付失败')
    return HttpResponse('')


@csrf_exempt
def pay_result(request):
    """
    支付完成后，跳转回的地址
    :param request:
    :return:
    """
    params = request.GET.dict()
    sign = params.pop('sign', None)

    alipay = aliPay()
    print(2222222222222222)
    status = alipay.verify(params, sign)

    if status:
        return HttpResponse('支付成功')
    return HttpResponse('支付失败')

# from alipay import AliPay
# from django.conf import settings
# import os
#
#
# # 采用ajax post请求，参数：order_id
# class OrderPayView(View):
#     """订单支付"""
#
#     def post(self, request):
#         """订单支付"""
#         # 用户是否登录
#         user = request.user
#         if not user.is_authenticated():
#             return JsonResponse({"res": 0, "errmsg": "用户未登录"})
#
#         # 接收参数
#         order_id = request.POST.get("order_id")
#
#         # 校验参数
#         if not order_id:
#             return JsonResponse({"res": 1, "errmsg": "无效的订单id"})
#
#         try:
#             order = OrderInfo.objects.get(order_id=order_id,
#                                           user=user,
#                                           pay_method=3,
#                                           order_status=1)
#         except OrderInfo.DoesNotExist:
#             return JsonResponse({"res": 2, "errmsg": "订单错误"})
#
#         # 业务处理，使用python sdk调用支付宝的支付接口
#         # 初始化
#         alipay = AliPay(
#             appid="2016102500758385",  # 订单id
#             app_notify_url=None,  # 默认回调url
#             # app_private_key_path=os.path.join(settings.BASE_DIR, "apps/order/app_private_key.pem"),
#             # 支付宝的公钥，验证支付宝回传消息使用，不是你自己的公钥,
#             # alipay_public_key_path=os.path.join(settings.BASE_DIR, "apps/order/alipay_public_key.pem"),
#             app_private_key_string=
#             """-----BEGIN RSA PRIVATE KEY-----
# ...........................
# -----END RSA PRIVATE KEY-----""",
#             alipay_public_key_string=
#             """-----BEGIN PUBLIC KEY-----
# ..........................
# -----END PUBLIC KEY-----""",
#             sign_type="RSA2",  # RSA 或者 RSA2, 签名
#             debug=True,  # 默认False, 沙箱模式需改为True
#         )
#
#         # 调用支付接口
#         # 电脑网站支付，需要跳转到沙箱环境https://openapi.alipaydev.com/gateway.do? + order_string
#         # 电脑网站支付，需要跳转到正式环境https://openapi.alipay.com/gateway.do? + order_string
#         total_pay = order.total_price + order.transit_price  # decimal
#         order_string = alipay.api_alipay_trade_page_pay(
#             out_trade_no=order_id,  # 订单id
#             # total_amount支持json，但是decimal数据不能直接序列化成json，所以转换成字符串即可
#             total_amount=str(total_pay),  # 支付总金额
#             subject="天天生鲜{}".format(order_id),  # 支付界面主题
#             return_url=None,
#             notify_url=None  # 可选, 不填则使用默认notify url
#         )
#
#         # 返回应答
#         pay_url = "https://openapi.alipaydev.com/gateway.do?" + order_string
#         return JsonResponse({"res": 3, "pay_url": pay_url})
