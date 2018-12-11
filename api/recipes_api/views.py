from .models import Recipe
from .serializers import RecipeSerializer
from rest_framework import generics

class RecipeListView(generics.ListAPIView):

    queryset = Recipe.objects.all()
    serializer_class = RecipeSerializer
