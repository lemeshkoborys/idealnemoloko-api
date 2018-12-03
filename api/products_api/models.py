from django.db import models
from cloudinary.models import CloudinaryField
from django.core.validators import MinValueValidator
from django.contrib.postgres.fields import ArrayField


class Product(models.Model):

    class Meta:
        db_table = 'products'
        verbose_name = 'Продукт'
        verbose_name_plural = 'Продукты'

    title = models.CharField(
        max_length=120,
        null=False,
        blank=False,
        verbose_name='Имя продукта'
    )

    title_rus = models.CharField(
        max_length=120,
        null=False,
        blank=False,
        verbose_name='Имя продукта НА РУССКОМ'
    )

    subtitle = models.CharField(
        max_length=255,
        null=False,
        blank=False,
        verbose_name='Текст под названием продукта',
        help_text='Пример - "Напій ультрапастеризований гречаний 2,5% жиру"'
    )

    subtitle_rus = models.CharField(
        max_length=255,
        null=False,
        blank=False,
        verbose_name='Текст под названием продукта НА РУССКОМ',
        help_text='Пример - "Напій ультрапастеризований гречаний 2,5% жиру"'
    )

    title_subtitle_color = models.CharField(
        max_length=7,
        null=False,
        blank=False,
        verbose_name='Код цвета заголовка и подзаголовка (web HEX)'
    )

    image = CloudinaryField(
        'Картинка'
    )

    cereal_image = CloudinaryField(
        'Картинка зерна'
    )

    image_for_product_page = CloudinaryField(
        'Картинка для раздела Продукция'
    )
    
    content = ArrayField(
        models.TextField(
            null=False,
            blank=False
        ),
        verbose_name='Основной текст',
        help_text='Каждый новый абзац с новой строки. Без пустых строк!'
    )

    content_rus = ArrayField(
        models.TextField(
            null=False,
            blank=False
        ),
        verbose_name='Основной текст НА РУССКОМ',
        help_text='Каждый новый абзац с новой строки. Без пустых строк!'
    )

    list_heading = models.CharField(
        max_length=255,
        null=False,
        blank=False,
        verbose_name='Заголовок перед списком'
    )

    list_heading_rus = models.CharField(
        max_length=255,
        null=False,
        blank=False,
        verbose_name='Заголовок перед списком НА РУССКОМ'
    )

    about_list = ArrayField(
        models.CharField(
            max_length=255,
            verbose_name='Элемент списка'
        ),
        verbose_name='Список особенностецй продукта',
        help_text='Каждый новый элемент с новой строки. Без пустых строк!'
    )

    about_list_rus =  ArrayField(
        models.CharField(
            max_length=255,
            verbose_name='Элемент списка'
        ),
        verbose_name='Список особенностецй продукта НА РУССКОМ',
        help_text='Каждый новый элемент с новой строки. Без пустых строк!'
    )

    silly_comment = models.CharField(
        max_length=255,
        null=False,
        blank=False,
        verbose_name='Смешной заголовок под списком'
    )

    silly_comment_rus = models.CharField(
        max_length=255,
        null=False,
        blank=False,
        verbose_name='Смешной заголовок под списком НА РУССКОМ'
    )

    calories = models.FloatField(
        validators=[MinValueValidator(0.1)],
        null=False,
        blank=False,
        verbose_name='Калории в ккал'
    )

    proteins = models.FloatField(
        validators=[MinValueValidator(0.1)],
        null=False,
        blank=False,
        verbose_name='Белки, г'
    )

    carbohydrates = models.FloatField(
        validators=[MinValueValidator(0.1)],
        null=False,
        blank=False,
        verbose_name='Углеводы, г'
    )

    cholesterol = models.FloatField(
        validators=[MinValueValidator(0.0)],
        null=False,
        blank=False,
        verbose_name='Холестерин'
    )

    def __str__(self):
        return self.title
