from django.db import models
from cloudinary.models import CloudinaryField
from django.core.validators import MinValueValidator
from django.contrib.postgres.fields import ArrayField


class Product(models.Model):

    class Meta:
        db_table = 'products_ukr'
        verbose_name = 'Продукт-укр'
        verbose_name_plural = 'Продукты-укр'

    title = models.CharField(
        max_length=120,
        null=False,
        blank=False,
        verbose_name='Имя продукта'
    )

    subtitle = models.CharField(
        max_length=255,
        null=False,
        blank=False,
        verbose_name='Текст под названием продукта',
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

    inner_gradient_color = models.CharField(
        max_length=7,
        null=False,
        blank=False,
        verbose_name='Код внутреннего цвета градиента (web HEX)'
    )

    outer_gradient_color = models.CharField(
        max_length=7,
        null=False,
        blank=False,
        verbose_name='Код внешнего цвета градиента (web HEX)'
    )

    content = ArrayField(
        models.TextField(
            null=False,
            blank=False
        ),
        verbose_name='Первый абзац текста',
        help_text='Каждый новый абзац с новой строки. Без пустых строк!'
    )

    list_heading = models.CharField(
        max_length=255,
        null=False,
        blank=False,
        verbose_name='Заголовок перед списком'
    )

    about_list = ArrayField(
        models.CharField(
            max_length=255,
            verbose_name='Элемент списка'
        ),
        verbose_name='Список особенностецй продукта',
        help_text='Каждый новый абзац с новой строки. Без пустых строк!'
    )

    silly_comment = models.CharField(
        max_length=255,
        null=False,
        blank=False,
        verbose_name='Смешной заголовок под списком'
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


class ProductRus(models.Model):

    class Meta:
        db_table = 'products_rus'
        verbose_name = 'Продукт-рус'
        verbose_name_plural = 'Продукты-рус'

    title = models.CharField(
        max_length=120,
        null=False,
        blank=False,
        verbose_name='Имя продукта'
    )

    subtitle = models.CharField(
        max_length=255,
        null=False,
        blank=False,
        verbose_name='Текст под названием продукта',
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

    inner_gradient_color = models.CharField(
        max_length=7,
        null=False,
        blank=False,
        verbose_name='Код внутреннего цвета градиента (web HEX)'
    )

    outer_gradient_color = models.CharField(
        max_length=7,
        null=False,
        blank=False,
        verbose_name='Код внешнего цвета градиента (web HEX)'
    )

    content = ArrayField(
        models.TextField(
            null=False,
            blank=False
        ),
        verbose_name='Первый абзац текста',
        help_text='Каждый новый абзац с новой строки. Без пустых строк!'
    )

    list_heading = models.CharField(
        max_length=255,
        null=False,
        blank=False,
        verbose_name='Заголовок перед списком'
    )

    about_list = ArrayField(
        models.CharField(
            max_length=255,
            verbose_name='Элемент списка'
        ),
        verbose_name='Список особенностецй продукта',
        help_text='Каждый новый абзац с новой строки. Без пустых строк!'
    )

    silly_comment = models.CharField(
        max_length=255,
        null=False,
        blank=False,
        verbose_name='Смешной заголовок под списком'
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
