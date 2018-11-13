from django.contrib import admin
from .models import Product, ProductRus
from .forms import ProductForm


@admin.register(Product, ProductRus)
class ProductAdmin(admin.ModelAdmin):

    form = ProductForm
