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
REM APPDATA = c:\Users\%USER%\AppData\Roaming\
REM LOCALAPPDATA = c:\Users\%USER%\AppData\Local\
REM folder to backup
set FOLDER=Roaming
set TARGETDIR=%APPDATA%\librewolf\Profiles
set SOURCEDIR=%BACKUPPATH%\librewolf\%FOLDER%
mkdir %TARGETDIR%
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT 
@REM /LOG+:"%TARGETDIR%\%DATE%-%CURRENTTIME%".txt /TEE
REM folder to backup
set FOLDER=Local
set TARGETDIR=%LOCALAPPDATA%\librewolf\Profiles
set SOURCEDIR=%BACKUPPATH%\librewolf\%FOLDER%
mkdir %TARGETDIR%
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT 
@REM /LOG+:"%TARGETDIR%\%DATE%-%CURRENTTIME%".txt /TEE