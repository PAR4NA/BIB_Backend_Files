::BEC restart batch
@echo off
C:\Windows\System32\mode con cols=50 lines=10 >nul
set /a var=0
:start
 
echo Starting BEC Altis
cd "C:\a3altis\BEC"
start /wait "" "C:\a3altis\BEC\Bec.exe" -f "Config.cfg"
 
timeout /t 5
 
set /a var+=1
cls
echo BEC has crashed %var% times, restarting
goto start