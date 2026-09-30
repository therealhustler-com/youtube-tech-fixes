@echo off

:: Stop and configure the Wavelink Service (Requires Run as Administrator)
net stop WavelinkSEService
sc config WavelinkSEService start= disabled

:: Wait 5 seconds for the service to initialize
timeout /t 5 /nobreak >nul

:: Use explorer to launch the app as a completely independent background process
explorer.exe "C:\Program Files\NVIDIA Corporation\NVIDIA Broadcast\NVIDIA Broadcast.exe"

:: Pause to prevent the window from closing and wait for your manual confirmation
echo.
echo Please wait until NVIDIA Broadcast is fully loaded and running...
pause

:: Configure and start the Wavelink Service (Requires Run as Administrator)
sc config WavelinkSEService start= demand
net start WavelinkSEService

:: Wait 5 seconds for the service to initialize
timeout /t 5 /nobreak >nul

:: Launch Elgato WaveLink as an independent process
explorer.exe "%LOCALAPPDATA%\Microsoft\WindowsApps\Elgato.WaveLink_g54w8ztgkx496\Elgato.WaveLink.exe"

:: Automatically close the command prompt window
exit
