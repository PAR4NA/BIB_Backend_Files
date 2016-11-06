@echo off

SETLOCAL ENABLEDELAYEDEXPANSION

       :: DEFINE the following variables where applicable to your install
 


    SET STEAMLOGIN=srtsmokebreak ranger44
    SET A3BRANCH=233780 -beta
        :: For stable use SET A3BRANCH=107410
        :: For Dev use SET A3BRANCH=107410
        :: For Dedi server stable package use SET A3BRANCH=233780 -beta
                :: Note, the missing qotation marks, these need to be wrapped around the entire "+app_update......"

    SET A3Path=C:\a3dev
        SET STEAMPATH=C:\steamcmd


:: _________________________________________________________

echo.
echo     You are about to update ArmA3
echo        Dir: %A3Path%
echo        Branch: %A3BRANCH%
echo.
echo     Key "ENTER" yo procede
pause
%STEAMPATH%\steamcmd.exe +login %STEAMLOGIN% +force_install_dir %A3Path% +"app_update %A3BRANCH%" validate +quit
echo .
echo     Your ArmA3 is now up to date
echo     key "ENTER" to exit
pause