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
set FOLDER=mRemoteNG
set TARGETDIR=%APPDATA%\%FOLDER%
set SOURCEDIR=%BACKUPPATH%\%FOLDER%\Roaming
mkdir %TARGETDIR%
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT 
@REM /LOG+:"%TARGETDIR%\%DATE%-%CURRENTTIME%".txt /TEE
set SOURCEDIR=%LOCALAPPDATA%\%FOLDER%
set TARGETDIR=%BACKUPPATH%\%FOLDER%\Local
mkdir %TARGETDIR%
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT 
@REM /LOG+:"%TARGETDIR%\%DATE%-%CURRENTTIME%".txt /TEE