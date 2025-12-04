@echo off
:menu
cls
color 2
echo ====================================
echo        Simple Task Manager
echo ====================================
echo.
echo [1] - Show running tasks
echo [2] - Kill a process
echo [3] - Exit
echo.
set /p choice=Choose an option: 

if "%choice%"=="1" goto tsklst
if "%choice%"=="2" goto tskkll
if "%choice%"=="3" exit
goto menu

:tsklst
cls
echo ====================================
echo         Running Processes
echo ====================================
echo.
tasklist
echo.
pause
goto menu

:tskkll
cls
echo ====================================
echo       Terminate a Process
echo ====================================
echo.
set /p task=Enter process name (e.g. notepad.exe): 
echo.
taskkill /im "%task%" /f
if %errorlevel%==0 (
    echo Process "%task%" has been terminated.
) else (
    echo Failed to terminate "%task%". Make sure the name is correct.
)
echo.
pause
goto menu