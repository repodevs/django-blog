"""myblog URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
from django.conf.urls import include, url
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static

# import User model and rest_framework
from django.contrib.auth.models import User
# from article.serializers import PostSerializer
from rest_framework import routers, serializers, viewsets

# import post article Model, Views
from article.views import PostViewSet, CategoryViewSet

#serializer User
class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ('url', 'username', 'email', 'is_staff')

# ViewSets define
class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer
        
#router untuk automatically determining the URL conf
router = routers.DefaultRouter()
router.register(r'users', UserViewSet)
router.register(r'posts', PostViewSet)
router.register(r'categories', CategoryViewSet)

urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
	url(r'^$', 'myblog.views.home', name='home'),
    url(r'^list/', 'article.views.list_article', name='list'),
	url(r'^detail/(?P<slug>[\w-]+)$', 'article.views.detail', name='article_detail'),
	url(r'^author/(?P<creator>[\w-]+)$', 'account.views.author', name='author'),
    url(r'^category/(?P<pk>[\w-]+)$', 'article.views.category_detail', name='category-detail'),

    url(r'^tinymce/', include('tinymce.urls')),

    # rest framework
    url(r'^api/', include(router.urls)),
    url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework')),
]