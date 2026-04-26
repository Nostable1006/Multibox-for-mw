@echo off
			;; what are you doing here >:(
title Load...

color A

echo =========================
echo   Downloading Multi
echo =========================

echo.
echo [INFO] Target folder:
echo %APPDATA%\miniworldOverseasgame

if not exist "%APPDATA%\miniworldOverseasgame" (
    echo [INFO] Creating folder...
    mkdir "%APPDATA%\miniworldOverseasgame"
)

echo.
echo [INFO] Downloading...

powershell -Command ^
"$ProgressPreference = 'Continue'; ^
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Nostable1006/Multibox-for-mw/main/d3d9.dll' -OutFile '%APPDATA%\miniworldOverseasgame\d3d9.dll'"

if not exist "%APPDATA%\miniworldOverseasgame\d3d9.dll" (
    echo [X] Download failed!
    pause
    exit
)

echo.
echo [INFO] File saved to:
echo %APPDATA%\miniworldOverseasgame

echo.
echo [INFO] Done!
pause
exit