::BEC restart batch
@echo off
C:\Windows\System32\mode con cols=50 lines=10 >nul
set /a var=0
:start
 
echo Starting BEC A3W
cd "C:\a3\BEC"
start /wait "" "C:\a3\BEC\Bec.exe" -f "Config.cfg"
 
timeout /t 60
 
set /a var+=1
cls
echo BEC has crashed %var% times, restarting
goto start