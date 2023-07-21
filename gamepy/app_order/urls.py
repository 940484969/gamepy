from django.contrib import admin
from django.urls import path, include, re_path
from app_order.views import *

from django.urls import reverse
urlpatterns = [
    re_path('order_page', OrderDetail.as_view(), name='order_page'),
    re_path('order_show/', OrderShow.as_view(), name='order_show'),
    re_path(r'order_del/(\d+)$', DelOrder.as_view(), name='order_del'),
    re_path(r'order_info/(\d+)$', OrderLast.as_view(), name='order_info'),
    re_path(r'buy/(\d+)$', buy, name="buy"),  # 支付宝处理完成后回调的get请求路由

    # re_path(r'^order_buy/(\d+)$', Buy.as_view(), name="order_buy"),  # 支付宝处理完成后回调的get请求路由
    re_path('result/', pay_result),  # 支付宝处理完成后回调的get请求路由
    re_path('update_order/', update_order),  # 支付宝处理完成后回调的post请求路由

]
