@echo off
echo [34m
echo  "                         __                           __    "
echo  " _______   ____  _____  |  |    ______  ____  _____  |  |   "
echo  " \_  __ \_/ __ \ \__  \ |  |   /  ___/_/ __ \ \__  \ |  |   "
echo  "  |  | \/\  ___/  / __ \|  |__ \___ \ \  ___/  / __ \|  |__ "
echo  "  |__|    \____> (______/____//_____/  \____> (______/____/ "
echo [0m
echo.
echo ^    --------------------------------------------------------
echo ^    ^|  MelonLoader - EmmVRC AutoInstaller v1.3 by realseal ^|
echo ^    ^|  EmmVRC by thetrueyoshifan (thetrueyoshifan.com)     ^|
echo ^    ^|  MelonLoader by Herp Derpinstine (melonwiki.xyz)     ^|
echo ^    --------------------------------------------------------
echo.
echo Checking VrChat installation..
IF EXIST VRChat.exe (
echo Cleaning up existing MelonLoader installation..
IF EXIST MelonLoader rd /S /Q MelonLoader
IF EXIST version.dll del version.dll
If EXIST MelonLoader.zip del MelonLoader.zip
If EXIST NOTICE.txt del NOTICE.txt
IF EXIST winmm.dll del winmm.dll
IF EXIST Mono.Cecil.dll del Mono.Cecil.dll
echo Done!
echo Cleaning up existing EmmVRC installation..
IF EXIST Mods\emmVRCLoader.dll del Mods\emmVRCLoader.dll
echo Done!
echo Downloading MelonLoader..
powershell -Command "Invoke-WebRequest https://github.com/HerpDerpinstine/MelonLoader/releases/latest/download/MelonLoader.zip -Outfile MelonLoader.zip"
echo Done!
echo Installing MelonLoader..
powershell -Command "Expand-Archive MelonLoader.zip -DestinationPath ..\VRchat"
md Mods
echo Done!
echo Downloading EmmVRC..
powershell -Command "Invoke-WebRequest https://thetrueyoshifan.com/downloads/emmVRCLoader.dll -Outfile Mods\emmVRCLoader.dll"
echo Done!
echo [32m
echo ^    ----------------------------------------------------------
echo ^    ^| Melonloader and EmmVRC have been successfully updated! ^|
echo ^    ----------------------------------------------------------
echo [0m
pause
) else (
echo "VrChat.exe not found"
echo "Please put this file in the VRChat installation folder!"
echo "Usually in: C:\Program Files (x86)\Steam\steamapps\common\VRChat"
echo.
pause
)