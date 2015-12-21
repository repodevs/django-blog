from django.shortcuts import render, render_to_response
from django.template import RequestContext
from article.models import Post
from django.contrib.auth.models import User

# Create your views here.

def author(request, creator):
	creator = User.objects.get(username=creator)
	post = Post.objects.filter(creator=creator.id).order_by('-id')
	print post
	# print creator
	data = {
		'posts' : post,
		'creator' : creator
	}
	return render_to_response('author.html', data, context_instance=RequestContext(request))