from django.contrib import admin
from article.models import Category, Post


def make_published(modeladmin, request, queryset):
    queryset.update(status='p')
make_published.short_description = "Mark selected stories as published"


class PostInline(admin.TabularInline):
    model = Post

class SeePost(admin.ModelAdmin):
	list_display = ('title', 'slug', 'category', 'created_on', 'creator')
	list_display_links = ('title', 'creator') #link yang
	list_filter = ('category',)
	search_fields = ('title',)
	# fields = ('title',) # fields yg boleh di edit
	actions = [make_published,]
	fieldsets = (
    	(None, {
            'fields': ('title', 'creator')
        }),
        ('Advanced options', {
            'classes': ('collapse',),
            'fields': ('category', 'content',)
        }),
    )


		
class CategoryPageAdmin(admin.ModelAdmin):
	list_display = ('name', 'created_on')
	list_display_links = ('created_on',) #link yang
	actions = None
	inlines = [
        PostInline,
    ]

	def has_add_permission(self, request, obj=None):
		return False

	def has_delete_permission(self, request, obj=None):
		return False

# Register your models here.
admin.site.register(Category, CategoryPageAdmin)
admin.site.register(Post, SeePost)