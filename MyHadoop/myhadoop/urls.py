from django.conf.urls.defaults import patterns, url

urlpatterns = patterns('myhadoop.views',
    url(r'^$', 'index'),
    url(r'^upload/$', 'upload'),
    url(r'^result/$', 'result'),
)