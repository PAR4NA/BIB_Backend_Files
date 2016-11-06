::Arma 3 restart batch
@echo off
C:\Windows\System32\mode con cols=50 lines=10 >nul
set /a var=0
:start


echo Looking for update file
MOVE /Y C:\ServerUpdates\Altis\A3Wasteland.Altis.pbo "C:\a3altis\mpmissions\A3Wasteland.Altis.pbo"
MOVE /Y C:\ServerUpdates\Altis\server.cfg "C:\a3altis\server.cfg"
MOVE /Y C:\ServerUpdates\Altis\admins.sqf "C:\a3altis\A3Wasteland_settings\admins.sqf"

echo Running A3W Altis
start /wait "" "C:\a3altis\arma3server.exe" -filePatching -profiles=profiles -servermod=@BIBMod "-config=server.cfg" "-bepath=C:\a3altis\battleye" -noSound -world=empty -EnableHT -maxMem=7168 -port=2302 -autoinit -loadMissionToMemory 
 
set /a var+=1
cls
echo Server has crashed %var% times, restarting
goto start