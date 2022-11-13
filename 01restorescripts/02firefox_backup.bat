@echo off
setlocal EnableDelayedExpansion
REM get current time | replace : with .
set CURRENTTIME=%TIME::=-%
REM HH.MM.SS
set CURRENTTIME=%CURRENTTIME:~0,8%
set FOLDER=Roaming
set TARGETDIR=%USERPROFILE%\AppData\%FOLDER%\Mozilla\Firefox\Profiles
set SOURCEDIR=D:\backup\01backups\Firefox\%FOLDER%
mkdir %TARGETDIR%
REM %FOLDER%
robocopy %SOURCEDIR% %TARGETDIR% /E /W:5 /R:2 /COPY:DAT 
@REM /LOG+:%TARGETDIR%\%DATE%-%CURRENTTIME%.txt /TEE
set FOLDER=Local
set TARGETDIR=%USERPROFILE%\AppData\%FOLDER%\Mozilla\Firefox\Profiles
set SOURCEDIR=D:\backup\01backups\Firefox\%FOLDER%
mkdir %TARGETDIR%
REM %FOLDER%
robocopy %SOURCEDIR% %TARGETDIR% /E /W:5 /R:2 /COPY:DAT 
@REM /LOG+:%TARGETDIR%\%DATE%-%CURRENTTIME%.txt /TEE