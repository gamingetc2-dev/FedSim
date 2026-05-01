@echo off
echo ============================================
echo  FED CHAIR SIMULATOR - LOCAL RUN
echo ============================================

:: Check Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python not found. Install from https://python.org
    pause
    exit /b 1
)

:: Install dependencies
echo Installing dependencies...
pip install flask flask-cors pandas numpy statsmodels requests gunicorn >nul 2>&1
echo Dependencies ready.

:: Start the server
echo.
echo Starting server at http://localhost:5000
echo Press Ctrl+C to stop.
echo.
python main.py

pause
