@echo off
C:\Windows\System32\mode con cols=50 lines=10 >nul
set /a var=0

echo Starting Dev Server
cd C:\bat_file\DEV
start rundev.bat 
start hc1.bat
start hc2.bat

exit
