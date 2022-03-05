@echo off
title Cambiador de privilegios ( By: ! *MrChip*#4732 )

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

:inicio

set /p RUTA=Ruta? 

takeown /a /r /d S /f %RUTA%

timeout 1 >nul

icacls %RUTA% /grant administradores:F /t

echo Fin del proceso!

pause
cls
goto inicio