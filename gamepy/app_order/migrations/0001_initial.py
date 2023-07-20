# Generated by Django 3.2.15 on 2022-10-09 08:58

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='OrderCommodity',
            fields=[
                ('oc_id', models.AutoField(primary_key=True, serialize=False, verbose_name='订单商品id')),
                ('oc_number', models.IntegerField(verbose_name='商品数量')),
                ('oc_price', models.FloatField(verbose_name='商品价格')),
                ('oc_comment', models.TextField(verbose_name='评论')),
            ],
        ),
        migrations.CreateModel(
            name='OrderMessage',
            fields=[
                ('order_id', models.AutoField(primary_key=True, serialize=False, verbose_name='订单id')),
                ('order_pay_methods', models.CharField(max_length=20, unique=True, verbose_name='支付方式')),
                ('order_all_money', models.FloatField(verbose_name='总金额')),
                ('order_all_number', models.IntegerField(verbose_name='总数量')),
                ('order_pay_state', models.BooleanField(verbose_name='支付状态')),
                ('order_create_time', models.DateTimeField(verbose_name='订单创建时间')),
            ],
        ),
    ]
