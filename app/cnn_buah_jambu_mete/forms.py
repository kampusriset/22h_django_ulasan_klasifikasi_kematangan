from django import forms
from .models import UploadedImage, komentar
from django.contrib.auth.forms import UserCreationForm, PasswordChangeForm
from django.contrib.auth.models import User

from django.core.exceptions import ValidationError
from django.contrib.auth.password_validation import validate_password

class ImageUploadForm(forms.ModelForm):
    class Meta:
        model = UploadedImage
        fields = ('image',)
        
class FormKomentar(forms.ModelForm):
    class Meta:
        model = komentar
        fields = "__all__"

class FormUserSignUp(UserCreationForm):
    password2= forms.CharField(widget=forms.PasswordInput, label="Confirm Password")
    class Meta:
        model = User
        fields = ['username','email','first_name'
                  ,'last_name','password1','password2']

class FormUbahPassword(PasswordChangeForm):
    class Meta:
        model = User
        fields = ['old_password','new_password1','new_password2']
        
