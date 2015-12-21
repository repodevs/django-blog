from django.db import models
from django.contrib.auth.models import User
from django.template.defaultfilters import slugify
from tinymce import models as tinymce_models
from datetime import datetime 

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

    STATUS_CHOICES = (
    ('d', 'Draft'),
    ('p', 'Published'),
    ('w', 'Withdrawn'),
    )

    title = models.CharField(max_length=200, null=False, blank=False)
    slug = models.SlugField(max_length=255, editable=False, null=True)
    category = models.ForeignKey(Category, related_name='post_category', null=True)
    # content = models.TextField(blank=True, null=True)
    content = tinymce_models.HTMLField()
    created_on = models.DateTimeField(auto_now_add=True)
    last_modified = models.DateTimeField(auto_now=True)
    creator = models.ForeignKey(User, related_name='user_post', default=1)
    status = models.CharField(max_length=1, default='p', choices=STATUS_CHOICES)
 
    class Meta:
        verbose_name_plural = "Post"
 
    def __unicode__(self):
        # return self.title
        return unicode(self.title) or u''

    def save(self, *args, **kwargs):
        slugz = self.title+str('-')+str(datetime.now().microsecond)
        self.slug = slugify(slugz)
        super(Post, self).save(*args, **kwargs)
