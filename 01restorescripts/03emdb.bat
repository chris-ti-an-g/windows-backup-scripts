@echo off
setlocal EnableDelayedExpansion
REM get current time | replace : with .
set CURRENTTIME=%TIME::=-%
REM HH.MM.SS
set CURRENTTIME=%CURRENTTIME:~0,8%
set FOLDER=EMDB
set TARGETDIR=%USERPROFILE%\AppData\Roaming\%FOLDER%
set SOURCEDIR=D:\backup\01backups\%FOLDER%\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT 
@REM /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
