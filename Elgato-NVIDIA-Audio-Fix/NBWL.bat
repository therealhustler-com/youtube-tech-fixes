@echo off

:: Stop and configure the Wavelink Service (Requires Run as Administrator)
net stop WavelinkSEService
sc config WavelinkSEService start= disabled

:: Wait 5 seconds for the service to initialize
timeout /t 5 /nobreak >nul

:: Use explorer to launch the app as a completely independent background process
explorer.exe "C:\Program Files\NVIDIA Corporation\NVIDIA Broadcast\NVIDIA Broadcast.exe"

:: The Bulletproof Loop: Wait until Broadcast is actively running in memory
echo Waiting for NVIDIA Broadcast to fully initialize...
:CHECK_NVIDIA
tasklist /FI "IMAGENAME eq NVIDIA Broadcast.exe" 2>NUL | find /I /N "NVIDIA Broadcast.exe">NUL
if "%ERRORLEVEL%"=="1" (
    timeout /t 2 /nobreak >nul
    goto CHECK_NVIDIA
)

:: Add a tiny 3-second buffer just to let its audio drivers settle
timeout /t 5 /nobreak >nul

:: Configure and start the Wavelink Service (Requires Run as Administrator)
sc config WavelinkSEService start= demand
net start WavelinkSEService

:: Wait 5 seconds for the service to initialize
timeout /t 5 /nobreak >nul

:: Launch Elgato WaveLink as an independent process
explorer.exe "%LOCALAPPDATA%\Microsoft\WindowsApps\Elgato.WaveLink_g54w8ztgkx496\Elgato.WaveLink.exe"

:: Automatically close the command prompt window
exit

