@echo off
:: Check for key files
echo Checking for required files...
if not exist docker-compose.yml (
    echo Error: docker-compose.yml not found in project root!
    exit /b 1
)
if not exist Dockerfile (
    echo Error: Dockerfile not found in project root!
    exit /b 1
)
if not exist package.json (
    echo Error: package.json not found in project root!
    exit /b 1
)

:: Find an open port starting from 3000
set PORT=3000
:CHECK_PORT
netstat -aon | findstr ":%PORT%" | findstr "LISTENING" >nul
if %ERRORLEVEL%==0 (
    set /a PORT+=1
    goto CHECK_PORT
)

:: Kill any lingering process on the chosen port
for /f "tokens=5" %%p in ('netstat -aon ^| findstr /i "listening" ^| findstr ":%PORT%"') do (
  taskkill /F /PID %%p >nul 2>&1
)

:: Start Docker containers
docker-compose up -d

:: Start Next.js app on the chosen port
start "" http://localhost:%PORT%
npm run dev -- -p %PORT%

echo Project started on port %PORT%