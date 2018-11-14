from django import forms
from .models import Product


class ProductForm(forms.ModelForm):

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['content'].delimiter = "\n" or "\r"
        self.fields['content_rus'].delimiter = "\n" or "\r"
        self.fields['about_list'].delimiter = "\n" or "\r"
        self.fields['about_list_rus'].delimiter = "\n" or "\r"

    class Meta:
        model = Product
        fields = '__all__'
        widgets = {
            'content': forms.Textarea(attrs={'rows': 15, 'cols': 100}),
            'content_rus': forms.Textarea(attrs={'rows': 15, 'cols': 100}),
            'about_list': forms.Textarea(attrs={'rows': 8, 'cols': 100}),
            'about_list_rus': forms.Textarea(attrs={'rows': 8, 'cols': 100}),
        }
