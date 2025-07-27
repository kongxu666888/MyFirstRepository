@echo off
echo Stopping Music System...
taskkill /f /im python.exe >nul 2>&1
taskkill /f /im node.exe >nul 2>&1
echo All services stopped!
pause
