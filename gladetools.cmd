@echo off
if [%1]==[] (
echo Welcome to GladeTools!             
echo Type gladetools help to get started.
)

if [%1]==[update] (
echo Updating....
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/NotToufG/glade-tools-experimental/main/gladetools.cmd -OutFile gladetools.cmd" >nul
echo Done!
)

if [%1]==[txt] (
echo. > %2.txt
)

if [%1]==[psiphon] (
echo Downloading Psiphon 3...
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/NotToufG/glade-tools-experimental/content/psiphon3_gladetools.exe -OutFile psiphon3.exe >nul
echo Done!
)

if [%1]==[runadmin] (
set __COMPAT_LAYER=RunAsInvoker && start %2
)

if [%1]==[help] (
echo.
echo.
echo     help: Opens this menu
echo     update: Updates to latest available release
echo     txt: Creates an empty text file
echo     psiphon: Downloads a free VPN used all around my school
echo     runadmin: Runs your file as an Administrator
echo     glademusic: Downloads my music :D
)

if [%1]==[glademusic] (
echo Downloading Ensumptions [1/7]...
powershell -Command "Invoke-WebRequest https://github.com/NotToufG/glade-tools-experimental/raw/content/glademusic/ensum.mp3 -OutFile Ensumptions.mp3" >nul
echo Downloading LOOK AT YOURSELF [2/7]...
powershell -Command "Invoke-WebRequest https://github.com/NotToufG/glade-tools-experimental/raw/content/glademusic/LAY.mp3 -OutFile LookAtYourself.mp3" >nul
echo Downloading Internet, I love And Hate You [3/7]...
powershell -Command "Invoke-WebRequest https://github.com/NotToufG/glade-tools-experimental/raw/content/glademusic/iilahu.mp3 -OutFile IIlAHU.mp3" >nul
echo Downloading Nullify Stream Mix [4/7]...
powershell -Command "Invoke-WebRequest https://github.com/NotToufG/glade-tools-experimental/raw/content/glademusic/nullifystream.mp3 -OutFile NullifyStreamMix.mp3" >nul
echo Downloading Pixel Switch [5/7]...
powershell -Command "Invoke-WebRequest https://github.com/NotToufG/glade-tools-experimental/raw/content/glademusic/pixelswitch.mp3 -OutFile PixelSwitch.mp3" >nul
echo Downloading Seizure V3 [6/7]...
powershell -Command "Invoke-WebRequest https://github.com/NotToufG/glade-tools-experimental/raw/content/glademusic/seiz.mp3 -OutFile SeizureV3.mp3" >nul
echo Downloading TheSomeTrack V3 [7/7]...
powershell -Command "Invoke-WebRequest https://github.com/NotToufG/glade-tools-experimental/raw/content/glademusic/tst.mp3 -OutFile TheSomeTrackV3.mp3" >nul
echo Done!
)

