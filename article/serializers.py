from django.contrib.auth.models import User
from rest_framework import serializers
from .models import Post, Category



class CategorySerializer(serializers.HyperlinkedModelSerializer):
	class Meta:
		model = Category
		fields = ('url', 'name', 'description', 'created_on', 'last_modified')


class PostSerializer(serializers.HyperlinkedModelSerializer):
	class Meta:
		model = Post
		fields = ('url', 'creator', 'title', 'slug', 'category', 'content', 'created_on')			
		
			
