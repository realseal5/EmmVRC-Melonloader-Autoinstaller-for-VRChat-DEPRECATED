@echo off
echo.
echo.
echo.
echo.
echo.
echo [34m
echo ^                           __                           __    
echo ^   _______   ____  _____  ^|  ^|    ______  ____  _____  ^|  ^|   
echo ^   \_  __ \_/ __ \ \__  \ ^|  ^|   /  ___/_/ __ \ \__  \ ^|  ^|   
echo ^    ^|  ^| \/\  ___/  / __ \^|  ^|__ \___ \ \  ___/  / __ \^|  ^|__ 
echo ^    ^|__^|    \____^> (______/____//_____/  \____^> (______/____/ 
echo [0m
echo ^    --------------------------------------------------------
echo ^    ^|  MelonLoader - EmmVRC AutoInstaller v1.4 by realseal ^|
echo ^    ^|  EmmVRC by thetrueyoshifan (thetrueyoshifan.com)     ^|
echo ^    ^|  MelonLoader by Herp Derpinstine (melonwiki.xyz)     ^|
echo ^    --------------------------------------------------------
echo.
set /A x=0
echo Checking VrChat installation..

IF EXIST VRChat.exe (
echo Done!
echo Cleaning up existing MelonLoader installation..
IF EXIST MelonLoader rd /S /Q MelonLoader
IF %ERRORLEVEL% NEQ 0 (set /A x=%x%+1)
IF EXIST version.dll del version.dll
IF %ERRORLEVEL% NEQ 0 (set /A x=%x%+1)
IF EXIST MelonLoader.zip del MelonLoader.zip
IF %ERRORLEVEL% NEQ 0 (set /A x=%x%+1)
IF EXIST NOTICE.txt del NOTICE.txt
IF %ERRORLEVEL% NEQ 0 (set /A x=%x%+1)
IF EXIST winmm.dll del winmm.dll
IF %ERRORLEVEL% NEQ 0 (set /A x=%x%+1)
IF EXIST Mono.Cecil.dll del Mono.Cecil.dll
IF %ERRORLEVEL% NEQ 0 (set /A x=%x%+1)
echo Done!
echo Cleaning up existing EmmVRC installation..
IF EXIST Mods\emmVRCLoader.dll del Mods\emmVRCLoader.dll
IF %ERRORLEVEL% NEQ 0 (set /A x=%x%+1)
echo Done!
echo Downloading MelonLoader..
powershell -Command "Invoke-WebRequest https://github.com/HerpDerpinstine/MelonLoader/releases/latest/download/MelonLoader.zip -Outfile MelonLoader.zip"
IF %ERRORLEVEL% NEQ 0 (set /A x=%x%+1)
echo Done!
echo Installing MelonLoader..
powershell -Command "Expand-Archive MelonLoader.zip -DestinationPath ..\VRchat"
IF %ERRORLEVEL% NEQ 0 (set /A x=%x%+1)
IF NOT EXIST Mods md Mods
IF %ERRORLEVEL% NEQ 0 (set /A x=%x%+1)
IF EXIST MelonLoader.zip del MelonLoader.zip
IF %ERRORLEVEL% NEQ 0 (set /A x=%x%+1)
echo Done!
echo Downloading EmmVRC..
powershell -Command "Invoke-WebRequest https://thetrueyoshifan.com/downloads/emmVRCLoader.dll -Outfile Mods\emmVRCLoader.dll"
IF %ERRORLEVEL% NEQ 0 (set /A x=%x%+1)
echo Done!
if %x% EQU 0 (echo [32m & echo. ^    ---------------------------------------------------------- & echo. ^    ^| Melonloader and EmmVRC have been successfully updated! ^| & echo. ^    ^|     Please consider donating to the Developers ^<3      ^| & echo. ^    ---------------------------------------------------------- & echo. [0m) else (echo [31m & echo. ^     ------------------------------ & echo. ^     ^|  sript was NOT successful  ^| & echo. ^     ^| close VrChat and try again ^| & echo. ^     ------------------------------ & echo. [0m)
pause
) else (
echo VrChat^.exe not found
echo Please put this file in the VRChat installation folder^!
echo Usually in^: C^:^\Program Files ^(x86^)^\Steam^\steamapps^\common^\VRChat
echo.
pause
)