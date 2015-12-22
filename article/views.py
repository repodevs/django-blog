from django.shortcuts import render, render_to_response
from django.template import RequestContext
from article.models import Category, Post
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

from rest_framework import routers, serializers, viewsets, generics
from .serializers import PostSerializer, CategorySerializer

# Create your views here.

def list_article(request):
	# post = Post.objects.all().order_by('-id')
	# data = {
	# 	'article' : post
	# }
	# return render_to_response('index.html', data, context_instance = RequestContext(request))

	list_post = Post.objects.all().order_by('-id')
	paginator = Paginator(list_post, 5)
	page = request.GET.get('page')

	try:
		pages = paginator.page(page)
	except PageNotAnInteger:
		pages = paginator.page(1)
	except:
		pages = paginator.page(paginator.num_pages)

	data = {
		'article' : pages
	}

	return render(request, 'index.html', data)

def detail(request, slug):
	post = Post.objects.get(slug=slug)
	data = {
		'post' : post
	}
	return render_to_response('detail.html', data, context_instance=RequestContext(request))


def category_detail(request, pk):
	cat = Category.objects.get(pk=pk)
	post = Post.objects.filter(category=cat.pk)

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
	"""
	Categori Implementantion
	"""
	queryset = Category.objects.all()
	serializer_class = CategorySerializer