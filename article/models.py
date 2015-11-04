from django.db import models
from django.contrib.auth.models import User

# Create your models here.
 
class Category(models.Model):
    name = models.CharField(max_length=255, null=True)
    description = models.TextField(blank=True, null=True)
    created_on = models.DateTimeField(auto_now_add=True)
    last_modified = models.DateTimeField(auto_now=True)
 
    class Meta:
        verbose_name_plural = "Category"
 
    def __unicode__(self):
        return self.name
 
class Post(models.Model):
    title = models.CharField(max_length=200, null=True)
    slug = models.SlugField(max_length=255, editable=True, null=True)
    category = models.ForeignKey(Category, related_name='post_category', null=True)
    content = models.TextField(blank=True, null=True)
    created_on = models.DateTimeField(auto_now_add=True)
    last_modified = models.DateTimeField(auto_now=True)
    creator = models.ForeignKey(User, related_name='user_post', default=1)
 
    class Meta:
        verbose_name_plural = "Post"
 
    def __unicode__(self):
        return self.title