::Atlis Wasteland Launch File
@echo off
C:\Windows\System32\mode con cols=50 lines=10 >nul
set /a var=0

echo Starting Dev Server
cd C:\bat_file\Altis_Wasteland
start runAltisWasteland.bat
start restartAltisBEC.bat
start HC1.bat
start HC1.bat

exit
