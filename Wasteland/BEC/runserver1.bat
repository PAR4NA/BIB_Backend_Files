::Arma 3 restart batch
@echo off
C:\Windows\System32\mode con cols=50 lines=10 >nul
set /a var=0
:start


echo Looking for update file
MOVE /Y C:\ServerUpdates\A3Wasteland.Tanoa.pbo "C:\a3\mpmissions\A3Wasteland.Tanoa.pbo"
MOVE /Y C:\ServerUpdates\server.cfg "C:\a3\server.cfg"
MOVE /Y C:\ServerUpdates\admins.sqf "C:\a3\A3Wasteland_settings\admins.sqf"

echo Running A3W Server
start /wait "" "C:\a3\arma3server.exe" -filePatching -profiles=profiles "-config=server.cfg" "-bepath=C:\a3\battleye" -noSound -world=empty -EnableHT -maxMem=4096 -port=2312 -autoinit -loadMissionToMemory 
 
set /a var+=1
cls
echo Server has crashed %var% times, restarting
goto start