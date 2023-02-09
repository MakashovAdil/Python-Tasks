from dataclasses import field
from django.forms import ModelForm
from .models import Message, post, comment
from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

class Form(ModelForm):
    class Meta:
        model = post
        fields = "__all__"
        widgets = {
            "title": forms.TextInput(attrs={'class': 'form-control'}),
            "description": forms.Textarea(attrs={'class': 'form-control'}),
        }

class CommentForm(ModelForm):
    class Meta:
        model = comment
        fields = ['description']
        widgets = {
            "description": forms.Textarea(attrs={'class': 'form-control'}),
        }

class MessageForm(ModelForm):
    class Meta:
        model = Message
        fields = ['title', 'body']
        widgets = {
            "body": forms.Textarea(attrs={'class': 'form-control'}),
        }

class UserRegistorForm(UserCreationForm):
    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']
        