from django.shortcuts import render, render_to_response
from django.template import RequestContext
from article.models import Category, Post

from rest_framework import routers, serializers, viewsets
from .serializers import PostSerializer, CategorySerializer

# Create your views here.

def list_article(request):
	post = Post.objects.all().order_by('-id')
	data = {
		'posts' : post
	}
	return render_to_response('sitemap.html', data, context_instance=RequestContext(request))

def detail(request, slug):
	post = Post.objects.get(slug=slug)
	data = {
		'post' : post
	}
	return render_to_response('detail.html', data, context_instance=RequestContext(request))

def category_detail(request, pk):
	cat = Category.objects.get(pk=pk)
	post = Post.objects.filter(category=cat.pk)

	print cat
	data = {
		'posts' : post,
		'creator' : cat.name
	}
	return render_to_response('author.html', data, context_instance=RequestContext(request))



## view set rest framework

class PostViewSet(viewsets.ModelViewSet):
	queryset = Post.objects.all()
	serializer_class = PostSerializer


class CategoryViewSet(viewsets.ModelViewSet):
	queryset = Category.objects.all()
	serializer_class = CategorySerializer
				