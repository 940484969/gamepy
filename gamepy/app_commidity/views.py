import json

from django.http import JsonResponse
from django.shortcuts import render, redirect, HttpResponse
from app_commidity.models import *
from django.urls import reverse
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
# Create your views here.
from app_order.models import *

from django.views import View


# Create your views here.

class IndexShow(View):
    """
    主页显示
    """

    def get(self, request):
        carousel = HomeCarousel.objects.all()
        # print(carousel)
        # print(carousel[0].sku_id.commditypicture_set.all()[0].comm_picture.name)
        promotion = HomePromotion.objects.all()
        # print(promotion)
        # print(promotion.count())
        # print(promotion[0].sku_id.commditypicture_set.all()[0].comm_picture.name)
        sku = CommoditySku.objects.all()

        return render(request, "index.html", locals())


class ProductShow(View):
    """
    商品详情显示
    """

    def get(self, request):
        # print()
        id = request.GET.get('i')
        obj = CommoditySku.objects.filter(sku_id=id).first()
        # print(obj)

        pic = obj.commditypicture_set.all()

        # print(pic)
        return render(request, "product.html", locals())


class Category(View):
    """
    种类显示
    """

    def get(self, request, *args):
        try:
            # cate = request.get_full_path().split('/')[2]
            cate = args[0]
            # print(cate)
            if cate == '1':
                obj = CommodityKind.objects.filter(com_name='动作')
            elif cate == '2':
                obj = CommodityKind.objects.filter(com_name='冒险')
            elif cate == '4':
                obj = CommodityKind.objects.filter(com_name='单人')
            elif cate == '6':
                obj = CommodityKind.objects.filter(com_name='多人')
            elif cate == '8':
                obj = CommodityKind.objects.filter(com_name='剧情')
            elif cate == '9':
                obj = CommodityKind.objects.filter(com_name='体育')
            elif cate == '10':
                obj = CommodityKind.objects.filter(com_name='心理恐怖')
            # obj2 = CommodityKind.objects.first()
            cate_name = obj[0].com_name
            cate_part = obj.first().commoditysku_set.all()
            # print(cate_part)
            # cate_part = obj.first().commoditysku_set.all()

            '''分页'''
            current_page = request.GET.get('page')
            paginator = Paginator(cate_part, 4)
            try:
                posts = paginator.page(current_page)
                # 含有属性：
                # per_page:每页显示条数
                # count数据总数
                # num_pages:总页数
                # page_range:总页数索引范围
                # page：page对象
                # 如果输入的页面不是整数,就返回到第一页
            except PageNotAnInteger as e:
                posts = paginator.page(1)

                # 如果输入的页码数负数,则显示到最后一页
            except EmptyPage as e:
                posts = paginator.page(paginator.num_pages)
                # has_next              是否有下一页
                # next_page_number      下一页页码
                # has_previous          是否有上一页
                # previous_page_number  上一页页码
                # object_list           分页之后的数据列表
                # number                当前页
                # paginator             paginator对象
            # return HttpResponse('666')
            return render(request, "category.html", locals())
        except Exception:
            # print(111111111111)
            return redirect(reverse('app_commidity:index'))


class ReviewShow(View):

    def get(self, request):
        id = request.GET.get('i')
        obj = CommoditySku.objects.filter(sku_id=id).first()
        rev = Review.objects.filter(sku_id__sku_id=id)
        """
        # 通过 u用户id和订单支付状态 查找出已经购买了的订单
        # 再在购买后的订单中反向查找游戏为id 是否购买  filter 
        # 没有购买的话就是空
        存在就可以评论 不存在不能评论
        """

        uesr_id = request.user.id
        comm = OrderMessage.objects.filter(user_id=uesr_id, order_pay_state=1)
        ret = comm.filter(ordercommodity__sku_id=id)
        if ret:
            is_buy = True
        return render(request, 'review.html', locals())

    def post(self, request):
        """
        request.body接受ajax传得json对象
        :param request: json对象接受返回的评论与sku_id
        :return: respose
        """
        # id = request.GET.get('i')
        uesr_id = request.user.id

        # conn = request.GET.get('content')
        # print(conn)

        data = request.body.decode('utf-8')

        # print(data)
        json_data = json.loads(data)
        # print(json_data)
        sku_id = json_data.get('sk_id')
        # print(type(sku_id))
        content = json_data.get('content')
        comm = OrderMessage.objects.filter(user_id=uesr_id, order_pay_state=1)
        # print(comm)

        if True:
            """
            """
            pass
        # obj = CommoditySku.objects.filter(sku_id=sku_id).first()
        # rev = Review.objects.filter(sku_id__sku_id=sku_id)
        Review.objects.create(sku_id_id=sku_id, user_id_id=uesr_id, rev_content=content)

        response = JsonResponse({"obj_num": 123})

        return response


class Search(View):
    def post(self, request):
        data = request.body.decode('utf-8')

        # print(data)
        json_data = json.loads(data)
        sku_name = json_data.get('sku_name')

        """
        模糊查找 
        使用正则来查询
        # __istartswith 以…开头 忽略大小写
        """
        if not sku_name:
            return JsonResponse({'is_exist': False})
        obj = CommoditySku.objects.filter(sku_name__istartswith=sku_name)
        # print(obj)


        if obj:
            is_exist = True
            lst = []
            dic = {}

            # 深浅拷贝问题

            for i in obj:
                dic1 = dic.copy()
                dic1['sku_id'] = i.sku_id
                dic1['sku_name'] = i.sku_name
                lst.append(dic1)
            # print(lst)
            response = JsonResponse({'is_exist': is_exist, 'sku_ids': lst})


        else:
            is_exist = False

            response = JsonResponse({'is_exist': is_exist})
        return response




















# class ReviewGet(View):
#     def post(self, request):
#         id = request.GET.get('i')
#         obj = CommoditySku.objects.filter(sku_id=id).first()
#         rev = Review.objects.filter(sku_id__sku_id=id)
#         print(request.POST.get('i1'))
#         # print(rev)
#         return render(request, 'review.html', locals())

# Action
# Venture
# Single
# Multiplayer
# Drama
# Sports
# Horror

# class Action(View):
#     """
#     动作类
#     """
#     def get(self, request):
#         return render(request, "category.html")
#
#
# class Venture(View):
#     """
#     冒险类
#     """
#     def get(self, request):
#         return render(request, "category.html")
#
# class Single(View):
#     """
#     担任类
#     """
#
#     def get(self, request):
#         return render(request, "category.html")
#
# class Multiplayer(View):
#     """
#     多人类
#     """
#
#     def get(self, request):
#         return render(request, "category.html")
#
# class Drama(View):
#     """
#     剧情类
#     """
#
#     def get(self, request):
#         return render(request, "category.html")
#
#
# class Sports(View):
#     """
#     体育类
#     """
#
#     def get(self, request):
#         return render(request, "category.html")
#
#
# class Horror(View):
#     """
#     恐怖类
#     """
#
#     def get(self, request):
#         return render(request, "category.html")
#

# Action
# Venture
# Single
# Multiplayer
# Drama
# Sports
# Horror
