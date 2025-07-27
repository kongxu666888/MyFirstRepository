from django.http import JsonResponse

def list_api(request):
    """User list API"""
    return JsonResponse({'code': 200, 'msg': 'success', 'data': []})

def create(request):
    """User create API"""
    return JsonResponse({'code': 200, 'msg': 'success'})

def update(request):
    """User update API"""
    return JsonResponse({'code': 200, 'msg': 'success'})

def updatePwd(request):
    """User update password API"""
    return JsonResponse({'code': 200, 'msg': 'success'})

def delete(request):
    """User delete API"""
    return JsonResponse({'code': 200, 'msg': 'success'})

def info(request):
    """User info API"""
    return JsonResponse({'code': 200, 'msg': 'success', 'data': {}})

def admin_login(request):
    """Admin login API"""
    return JsonResponse({'code': 200, 'msg': 'success', 'data': {'token': 'test'}})
