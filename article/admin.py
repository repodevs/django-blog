from django.contrib import admin
from article.models import Category, Post


class SeePost(admin.ModelAdmin):
	list_display = ('title', 'category', 'created_on', 'creator')
		

# Register your models here.
admin.site.register(Category)
admin.site.register(Post, SeePost)