# Generated by Django 4.2.7 on 2023-12-20 18:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('manage', '0008_alter_tb_bee_medidas_fecha'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tb_bee_campos',
            name='urlName',
            field=models.CharField(max_length=255),
        ),
    ]
