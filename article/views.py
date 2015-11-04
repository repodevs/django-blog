from django.shortcuts import render, render_to_response
from django.template import RequestContext
from article.models import Category, Post

# Create your views here.

def list_article(request):
	post = Post.objects.all()
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