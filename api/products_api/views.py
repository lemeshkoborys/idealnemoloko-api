from .models import Product
from .serializers import ProductSerializer
from rest_framework import generics

class ProductListView(generics.ListAPIView):

    queryset = Product.objects.all()
    serializer_class = ProductSerializer
