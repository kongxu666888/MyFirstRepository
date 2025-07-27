@echo off
title Music System - One Click Start
echo ========================================
echo Music System - Starting...
echo ========================================
echo.

:: Check if virtual environment exists
if not exist "venv" (
    echo Creating Python virtual environment...
    python -m venv venv
    if %errorlevel% neq 0 (
        echo ERROR: Failed to create virtual environment
        echo Please make sure Python is installed
        pause
        exit /b 1
    )
)

:: Install backend dependencies
echo Installing backend dependencies...
call venv\Scripts\activate.bat
cd server

ehco pip install -r requirements.txt >nul 2>&1

cd ..

:: Install frontend dependencies
echo Installing frontend dependencies...
cd web
if not exist "node_modules" (
    npm install >nul 2>&1
)
cd ..

:: Initialize database
echo Initializing database...
mysql -u root -proot -e "CREATE DATABASE IF NOT EXISTS python_music DEFAULT CHARSET utf8 COLLATE utf8_general_ci;" >nul 2>&1
mysql -u root -proot python_music < server\python_music.sql >nul 2>&1

:: Start backend service
echo Starting backend service...
call venv\Scripts\activate.bat
cd server
start "Backend" python manage.py runserver 127.0.0.1:8000
cd ..

:: Start frontend service  
echo Starting frontend service...
cd web
start "Frontend" npm run dev
cd ..

:: Wait for services to start
echo.
echo Services are starting, please wait...
timeout /t 8 /nobreak >nul

:: Open browser
echo Opening browser...
start http://localhost:5173

echo.
echo ========================================
echo System started successfully!
echo ========================================
echo.
echo Frontend: http://localhost:5173
echo Backend:  http://127.0.0.1:8000
echo Admin:    http://127.0.0.1:8000/admin
echo.
echo Login: ddd / ddd
echo Admin: admin123 / admin123
echo.
echo Press any key to exit...
pause >nul
