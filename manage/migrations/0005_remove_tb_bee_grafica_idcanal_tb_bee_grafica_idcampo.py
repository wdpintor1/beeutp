# Generated by Django 4.2.7 on 2023-12-11 14:41

from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('manage', '0004_tb_bee_grafica'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='tb_bee_grafica',
            name='idCanal',
        ),
        migrations.AddField(
            model_name='tb_bee_grafica',
            name='idCampo',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='manage.tb_bee_campos'),
            preserve_default=False,
        ),
    ]
