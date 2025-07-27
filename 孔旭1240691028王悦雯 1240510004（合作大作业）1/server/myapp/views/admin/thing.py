from django.http import JsonResponse

def list_api(request):
    """Thing list API"""
    return JsonResponse({'code': 200, 'msg': 'success', 'data': []})

def detail(request):
    """Thing detail API"""
    return JsonResponse({'code': 200, 'msg': 'success', 'data': {}})

def create(request):
    """Thing create API"""
    return JsonResponse({'code': 200, 'msg': 'success'})

def update(request):
    """Thing update API"""
    return JsonResponse({'code': 200, 'msg': 'success'})

def delete(request):
    """Thing delete API"""
    return JsonResponse({'code': 200, 'msg': 'success'})

def upload(request):
    """Thing upload API"""
    return JsonResponse({'code': 200, 'msg': 'success'})
