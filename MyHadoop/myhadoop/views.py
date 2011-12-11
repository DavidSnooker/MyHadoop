from django.shortcuts import render_to_response
from MyHadoop.myhadoop.utils.hadoopfile import HadoopFile
from django.template.context import RequestContext
from django.http import Http404

def index(request):
    return render_to_response('myhadoop/index.html', context_instance=RequestContext(request))

def upload(request):
    if request.method == 'POST':
        hadoopfile = HadoopFile(request.FILES['file'])
        result = hadoopfile.execute()
        return render_to_response('myhadoop/result.html', {'result': result}, context_instance=RequestContext(request))
    else:
        raise Http404