@echo off
for /f usebackq %%a in (
    `powershell -command "[Environment]::GetFolderPath('Personal')"`
) do (set "USERDOCUMENTS=%%a")
echo %USERDOCUMENTS%
setlocal EnableDelayedExpansion
REM get current time | replace : with .
set CURRENTTIME=%TIME::=-%
REM HH.MM.SS
set CURRENTTIME=%CURRENTTIME:~0,8%
REM path to backuplocation
set BACKUPPATH=D:\backup\01backups
REM folder to backup
set FOLDER=EMPRESS
set TARGETDIR=%PUBLIC%\Documents\%FOLDER%
set SOURCEDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT
@REM /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
REM folder to backup
set FOLDER=Epic
set TARGETDIR=%PUBLIC%\Documents\%FOLDER%
set SOURCEDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT
@REM /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
REM folder to backup
set FOLDER=Steam
set TARGETDIR=%PUBLIC%\Documents\%FOLDER%
set SOURCEDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT
@REM /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
REM folder to backup
set FOLDER=Saved Games
set TARGETDIR=%USERPROFILE%\%FOLDER%
set SOURCEDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT
REM /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
REM folder to backup
set FOLDER=My Games
set TARGETDIR=%USERDOCUMENTS%\%FOLDER%
set SOURCEDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT
REM /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
