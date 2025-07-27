from django.http import JsonResponse

def list_api(request):
    return JsonResponse({'code': 200, 'msg': 'success', 'data': []})

def clear(request):
    return JsonResponse({'code': 200, 'msg': 'success'})
