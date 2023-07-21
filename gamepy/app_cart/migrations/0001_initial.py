# Generated by Django 3.2.15 on 2022-10-18 11:31

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('app_commidity', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='SkuNum',
            fields=[
                ('num_id', models.AutoField(primary_key=True, serialize=False, verbose_name='购物车id')),
                ('num', models.IntegerField(default=1)),
                ('sku_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app_commidity.commoditysku', verbose_name='sku')),
            ],
        ),
        migrations.CreateModel(
            name='CartItem',
            fields=[
                ('cart_id', models.AutoField(primary_key=True, serialize=False, verbose_name='购物车id')),
                ('cart_is_del', models.SmallIntegerField(verbose_name='isdelete 标志位？')),
                ('cart_count', models.IntegerField(verbose_name='全部数量')),
                ('sku_id', models.ManyToManyField(to='app_cart.SkuNum', verbose_name='种类数量')),
                ('user_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='user')),
            ],
        ),
    ]
