@echo off
echo ========================================
echo Music System - Status Check
echo ========================================
echo.

echo [1/4] Checking backend service (port 8000)...
curl -s http://127.0.0.1:8000/ >nul 2>&1
if %errorlevel% equ 0 (
    echo [OK] Backend service is running
    curl -s http://127.0.0.1:8000/myapp/admin/overview/count
) else (
    echo [ERROR] Backend service is not running
)

echo.
echo [2/4] Checking frontend service (port 5173)...
curl -s http://localhost:5173 >nul 2>&1
if %errorlevel% equ 0 (
    echo [OK] Frontend service is running
) else (
    echo [ERROR] Frontend service is not running
)

echo.
echo [3/4] Checking port usage...
echo Backend port 8000:
netstat -ano | findstr :8000
echo.
echo Frontend port 5173:
netstat -ano | findstr :5173

echo.
echo [4/4] Service URLs:
echo Backend API: http://127.0.0.1:8000/
echo Frontend: http://localhost:5173
echo Admin Panel: http://127.0.0.1:8000/admin/
echo.
echo Status check completed.
echo.
