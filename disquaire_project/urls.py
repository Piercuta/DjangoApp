"""disquaire_project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf import settings
from django.contrib import admin
from django.conf.urls import  url
from django.urls import path, include
from store import views
from django.views.static import serve 
from django.contrib.staticfiles.urls import static, staticfiles_urlpatterns

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^store/', include(('store.urls', 'store'), namespace='store')),
    url(r'^admin/', admin.site.urls),
	url(r'^media/(?P<path>.*)$', serve,{'document_root': settings.MEDIA_ROOT}), 
	url(r'^static/(?P<path>.*)$', serve,{'document_root': settings.STATIC_ROOT})
]

urlpatterns += staticfiles_urlpatterns()
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

# urlpatterns = [
#     url(r'^$', views.index, name="index"),
#     url(r'^store/', include('store.urls', namespace='store')),
#     url(r'^admin/', admin.site.urls)
# ]

if settings.DEBUG:
    import debug_toolbar
    urlpatterns = [
        url(r'^__debug__/', include(debug_toolbar.urls)),
    ] + urlpatterns