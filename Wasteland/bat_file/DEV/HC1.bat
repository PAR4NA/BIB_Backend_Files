::Arma 3 restart batch
@echo off
C:\Windows\System32\mode con cols=50 lines=10 >nul
set /a var=0
:start



echo Running HC1 DEV
start /wait "" "C:\a3altis\arma3server.exe" -client -connect=127.0.0.1 -port=2322  -password=BIBDEV
 
set /a var+=1
cls
echo Server has crashed %var% times, restarting
goto start