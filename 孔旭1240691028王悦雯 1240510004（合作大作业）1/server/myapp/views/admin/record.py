from django.http import JsonResponse

def list_api(request):
    return JsonResponse({'code': 200, 'msg': 'success', 'data': []})

def create(request):
    return JsonResponse({'code': 200, 'msg': 'success'})

def update(request):
    return JsonResponse({'code': 200, 'msg': 'success'})

def delete(request):
    return JsonResponse({'code': 200, 'msg': 'success'})
