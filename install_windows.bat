@echo off
echo ========================================
echo    TestLink Installation Script
echo ========================================
echo.

echo Checking if PHP is installed...
php --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: PHP is not installed or not in PATH
    echo Please install PHP 7.4 or higher and add it to your PATH
    echo Download from: https://www.php.net/downloads.php
    echo.
    pause
    exit /b 1
)

echo PHP is installed!
echo.

echo Checking if MySQL is running...
mysql --version >nul 2>&1
if %errorlevel% neq 0 (
    echo WARNING: MySQL is not installed or not in PATH
    echo Please install MySQL 5.7+ or MariaDB 10.1+
    echo Download from: https://dev.mysql.com/downloads/mysql/
    echo.
    pause
    exit /b 1
)

echo MySQL is available!
echo.

echo Creating necessary directories...
if not exist "logs" mkdir logs
if not exist "upload_area" mkdir upload_area
if not exist "gui\templates_c" mkdir gui\templates_c

echo Setting permissions...
icacls logs /grant Everyone:F /T
icacls upload_area /grant Everyone:F /T
icacls gui\templates_c /grant Everyone:F /T

echo.
echo ========================================
echo    Installation completed!
echo ========================================
echo.
echo Next steps:
echo 1. Copy config_db.inc.php.example to config_db.inc.php
echo 2. Configure your database settings in config_db.inc.php
echo 3. Create a MySQL database named 'testlink'
echo 4. Start your web server (Apache/Nginx)
echo 5. Open http://localhost/testlink-code in your browser
echo 6. Follow the installation wizard
echo.
echo For Docker installation:
echo 1. Install Docker Desktop
echo 2. Run: docker-compose up -d
echo 3. Open http://localhost:8090 in your browser
echo.
pause
