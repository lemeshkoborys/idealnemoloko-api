from django import forms
from .models import Recipe

class RecipeForm(forms.ModelForm):

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['ingridients'].delimiter = "\n" or "\r" or "\n\r" or "\r\n"
        self.fields['ingridients_rus'].delimiter = "\n" or "\r" or "\n\r" or "\r\n"
        self.fields['howto'].delimiter = "\n" or "\r" or "\n\r" or "\r\n"
        self.fields['howto_rus'].delimiter = "\n" or "\r" or "\n\r" or "\r\n"
        self.fields['endline'].delimiter = "\n" or "\r" or "\n\r" or "\r\n"
        self.fields['endline_rus'].delimiter = "\n" or "\r" or "\n\r" or "\r\n"

    class Meta:
        model = Recipe
        fields = '__all__'
        widgets = {
            'ingridients': forms.Textarea(attrs={'rows': 15, 'cols': 100}),
            'ingridients_rus': forms.Textarea(attrs={'rows': 15, 'cols': 100}),
            'howto': forms.Textarea(attrs={'rows': 8, 'cols': 100}),
            'howto_rus': forms.Textarea(attrs={'rows': 8, 'cols': 100}),
            'endline': forms.Textarea(attrs={'rows': 6, 'cols': 100}),
            'endline_rus': forms.Textarea(attrs={'rows': 6, 'cols': 100}),
        }

