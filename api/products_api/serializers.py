from rest_framework import serializers
from .models import Product, ProductRus


class ProductSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Product
        fields = '__all__'


class ProductRusSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = ProductRus
        fields = '__all__'
