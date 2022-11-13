@echo off
setlocal EnableDelayedExpansion
REM get current time | replace : with .
set CURRENTTIME=%TIME::=-%
REM HH.MM.SS
set CURRENTTIME=%CURRENTTIME:~0,8%
set FOLDER=Buhl
set SOURCEDIR=%USERPROFILE%\AppData\Local\%FOLDER%
set TARGETDIR=D:\backup\01backups\%FOLDER%\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT /MIR /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
