@echo off
setlocal EnableDelayedExpansion
REM get current time | replace : with .
set CURRENTTIME=%TIME::=-%
REM HH.MM.SS
set CURRENTTIME=%CURRENTTIME:~0,8%
REM path to backuplocation
set BACKUPPATH=D:\backup\01backups
REM folder to backup
set FOLDER=mRemoteNG
set SOURCEDIR=%APPDATA%\%FOLDER%
set TARGETDIR=%BACKUPPATH%\%FOLDER%\Roaming
mkdir %TARGETDIR%
REM %FOLDER%
robocopy %SOURCEDIR% %TARGETDIR% /E /W:5 /R:2 /COPY:DAT /MIR /LOG+:%TARGETDIR%\%DATE%-%CURRENTTIME%.txt /TEE
set SOURCEDIR=%LOCALAPPDATA%\%FOLDER%
set TARGETDIR=%BACKUPPATH%\%FOLDER%\Local
mkdir %TARGETDIR%
REM %FOLDER%
robocopy %SOURCEDIR% %TARGETDIR% /E /W:5 /R:2 /COPY:DAT /MIR /LOG+:%TARGETDIR%\%DATE%-%CURRENTTIME%.txt /TEE