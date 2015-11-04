from article.models import Category, Post
from django.shortcuts import render_to_response
from django.template import RequestContext

def home(request):
	post = Post.objects.all()[:10]
	data = {
		'article' : post
	}
	return render_to_response('index.html', data, context_instance = RequestContext(request))

def hello(request):
	return render_to_response('hello.html', {}, context_instance=RequestContext(request))
