# Generated by Django 2.1 on 2018-12-11 11:43

import django.contrib.postgres.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('recipes_api', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='recipe',
            name='endline_rus',
            field=models.TextField(default=1, max_length=300, verbose_name='Заключительное слово на РУССКОМ'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='recipe',
            name='endline',
            field=django.contrib.postgres.fields.ArrayField(base_field=models.CharField(max_length=255, verbose_name='Элемент списка'), help_text='Каждый абзац с новой строки. Без пустых строк!', size=None, verbose_name='Заключительное слово'),
        ),
    ]
