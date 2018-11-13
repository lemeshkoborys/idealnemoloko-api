from .models import Product, ProductRus
from .serializers import ProductSerializer, ProductRusSerializer
from drf_multiple_model.views import ObjectMultipleModelAPIView
from rest_framework.response import Response


class ProductListView(ObjectMultipleModelAPIView):
    querylist = [
        {
            'queryset': Product.objects.all(),
            'serializer_class': ProductSerializer,
            'label': 'ua'
        },
        {
            'queryset': ProductRus.objects.all(),
            'serializer_class': ProductRusSerializer,
            'label': 'ru'
        }
    ]
