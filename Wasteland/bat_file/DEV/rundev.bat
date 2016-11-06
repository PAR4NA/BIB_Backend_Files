::Arma 3 restart batch
@echo off
C:\Windows\System32\mode con cols=50 lines=10 >nul
set /a var=0
:start


echo Looking for update file
MOVE /Y C:\ServerUpdates\DEV\A3Wasteland.Tanoa.pbo "C:\a3dev\mpmissions\A3Wasteland.Tanoa.pbo"
MOVE /Y C:\ServerUpdates\DEV\A3Wasteland.Altis.pbo "C:\a3dev\mpmissions\A3Wasteland.Altis.pbo"
MOVE /Y C:\ServerUpdates\DEV\server.cfg "C:\a3dev\server.cfg"
MOVE /Y C:\ServerUpdates\DEV\admins.sqf "C:\a3dev\A3Wasteland_settings\admins.sqf"


echo Running A3W Dev
start /wait "" "C:\a3dev\arma3server.exe" -filePatching -profiles=profiles -servermod=@BIBMod "-config=server.cfg" "-bepath=C:\a3dev\battleye" -noSound -world=empty -EnableHT -maxMem=4096 -port=2322 -autoinit -loadMissionToMemory 
 
set /a var+=1
cls
echo Server has crashed %var% times, restarting
goto start