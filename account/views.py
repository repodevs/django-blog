from django.shortcuts import render, render_to_response
from django.template import RequestContext
from article.models import Post

# Create your views here.

def author(request, creator):
	post = Post.objects.get(creator=creator)
	print post
	# print creator
	data = {
		'posts' : post,
		# 'username' : username
	}
	return render_to_response('author.html', data, context_instance=RequestContext(request))