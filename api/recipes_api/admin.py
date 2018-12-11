from django.contrib import admin
from .models import Recipe
from .forms import RecipeForm

@admin.register(Recipe)
class RecipeModelAdmin(admin.ModelAdmin):

    form = RecipeForm

    list_display = (
        'title',
        'title_rus',
        'is_vegan',
        'is_vegetarian',
    )
