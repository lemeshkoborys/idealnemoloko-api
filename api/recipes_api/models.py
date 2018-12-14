from django.db import models
from cloudinary.models import CloudinaryField
from django.contrib.postgres.fields import ArrayField


class Recipe(models.Model):

    class Meta:
        db_table = 'recipes'
        verbose_name = 'Рецепт'
        verbose_name_plural = 'Рецепты'

    title = models.CharField(
        max_length=300,
        verbose_name='Название рецепта',
        null=False,
        blank=False
    )

    title_rus = models.CharField(
        max_length=300,
        verbose_name='Название рецепта НА РУССКОМ',
        null=False,
        blank=False
    )

    subtitle = models.CharField(
        max_length=300,
        verbose_name='Подзаголовок',
        blank=False,
        null=False,
        default=""
    )

    subtitle_rus = models.CharField(
        max_length=300,
        verbose_name='Подзаголовок на РУССКОМ',
        blank=False,
        null=False,
        default=""
    )

    bold_text = models.TextField(
        verbose_name='текс под подзаголовком',
        blank=False,
        null=False
    )

    bold_text_rus = models.TextField(
        verbose_name='текс под подзаголовком на РУССКОМ',
        blank=False,
        null=False
    )

    ingridients = ArrayField(
        models.CharField(
            max_length=255,
            verbose_name='Элемент списка'
        ),
        verbose_name='Список ингридиентов',
        help_text='Каждый новый элемент с новой строки. Без пустых строк!'
    )

    ingridients_rus = ArrayField(
        models.CharField(
            max_length=255,
            verbose_name='Элемент списка'
        ),
        verbose_name='Список ингридиентов на РУССКОМ',
        help_text='Каждый новый элемент с новой строки. Без пустых строк!'
    )

    howto = ArrayField(
        models.CharField(
            max_length=255,
            verbose_name='Элемент списка'
        ),
        verbose_name='Метод преготовления',
        help_text='Каждый новый элемент с новой строки. Без пустых строк!'
    )

    howto_rus = ArrayField(
        models.CharField(
            max_length=255,
            verbose_name='Элемент списка'
        ),
        verbose_name='Метод преготовления на РУССКОМ',
        help_text='Каждый новый элемент с новой строки. Без пустых строк!'
    )

    is_vegan = models.BooleanField(
        verbose_name='Веганское',
        default=False
    )

    is_vegetarian = models.BooleanField(
        verbose_name='Вегетарианское',
        default=True
    )

    is_not_hypolactasian = models.BooleanField(
        verbose_name='Для тех, кто не переносит лактозу',
        default=False
    )

    endline = ArrayField(
        models.CharField(
            max_length=255,
            verbose_name='Элемент списка'
        ),
        verbose_name='Заключительное слово',
        help_text='Каждый абзац с новой строки. Без пустых строк!'
    )

    endline_rus = ArrayField(
        models.CharField(
            max_length=255,
            verbose_name='Элемент списка'
        ),
        verbose_name='Заключительное слово на РУССКОМ',
        help_text='Каждый абзац с новой строки. Без пустых строк!'
    )

    image = CloudinaryField('Изображение статьи')

    def __str__(self):
        return self.title
    