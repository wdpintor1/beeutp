# Generated by Django 4.2.7 on 2023-12-18 18:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('manage', '0007_tb_bee_campos_urlname'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tb_bee_medidas',
            name='fecha',
            field=models.DateTimeField(auto_now_add=True),
        ),
    ]