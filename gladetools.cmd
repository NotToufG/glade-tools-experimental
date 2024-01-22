@echo off
if [%1]==[] (
echo Welcome to GladeTools!             
)

if [%1]==[update] (
echo Updating....
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/NotToufG/glade-tools-experimental/main/gladetools.cmd -OutFile gladetools.cmd"
echo Done!
)
