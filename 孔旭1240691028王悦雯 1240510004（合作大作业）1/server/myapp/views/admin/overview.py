from django.http import JsonResponse

def count(request):
    """Overview count API"""
    return JsonResponse({'code': 200, 'msg': 'success', 'data': {'count': 0}})

def sysInfo(request):
    """System info API"""
    return JsonResponse({'code': 200, 'msg': 'success', 'data': {'info': 'System running'}})
