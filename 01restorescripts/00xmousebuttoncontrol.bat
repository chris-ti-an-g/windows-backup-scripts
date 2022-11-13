@echo off
setlocal EnableDelayedExpansion
REM get current time | replace : with .
set CURRENTTIME=%TIME::=-%
REM HH.MM.SS
set CURRENTTIME=%CURRENTTIME:~0,8%
REM path to backuplocation
set BACKUPPATH=D:\backup\01backups
REM folder to backup
set FOLDER=Highresolution Enterprises\XMouseButtonControl
set TARGETDIR=%APPDATA%\%FOLDER%
set SOURCEDIR=%BACKUPPATH\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT 
@REM /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
