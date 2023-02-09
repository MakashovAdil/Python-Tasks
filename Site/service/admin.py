import imp
from django.contrib import admin
from service.models import post, comment, Message


admin.site.register(post)
admin.site.register(comment)
admin.site.register(Message)