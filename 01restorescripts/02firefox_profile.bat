@echo off
setlocal EnableDelayedExpansion
REM get current time | replace : with .
set CURRENTTIME=%TIME::=-%
REM HH.MM.SS
set CURRENTTIME=%CURRENTTIME:~0,8%
REM path to backuplocation
if not defined BACKUPPATH (
set BACKUPPATH=D:\backup\01backups
)
REM folder to backup
set FOLDER=Roaming
set TARGETDIR=%APPDATA%\Mozilla\Firefox\Profiles
set SOURCEDIR=%BACKUPPATH%\Firefox\%FOLDER%
mkdir %TARGETDIR%
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT 
@REM /LOG+:"%TARGETDIR%\%DATE%-%CURRENTTIME%".txt /TEE
REM folder to backup
set FOLDER=Local
set TARGETDIR=%LOCALAPPDATA%\Mozilla\Firefox\Profiles
set SOURCEDIR=%BACKUPPATH%\Firefox\%FOLDER%
mkdir %TARGETDIR%
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT 
@REM /LOG+:"%TARGETDIR%\%DATE%-%CURRENTTIME%".txt /TEE