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
if not defined BACKUPPATH (
set BACKUPPATH=D:\backup\01backups
)
REM APPDATA = c:\Users\%USER%\AppData\Roaming\
REM LOCALAPPDATA = c:\Users\%USER%\AppData\Local\
REM folder to restore
set FOLDER=EMPRESS
set TARGETDIR=%PUBLIC%\Documents\%FOLDER%
set SOURCEDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT
@REM /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
REM folder to restore
set FOLDER=Epic
set TARGETDIR=%PUBLIC%\Documents\%FOLDER%
set SOURCEDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT
@REM /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
REM folder to restore
set FOLDER=Steam
set TARGETDIR=%PUBLIC%\Documents\%FOLDER%
set SOURCEDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT
@REM /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
REM folder to restore
set FOLDER=Saved Games
set TARGETDIR=%USERPROFILE%\%FOLDER%
set SOURCEDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT
@REM /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
REM folder to restore
set FOLDER=My Games
set TARGETDIR=%USERDOCUMENTS%\%FOLDER%
set SOURCEDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT
@REM /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
REM folder to restore
set FOLDER=Goldberg SteamEmu Saves
set TARGETDIR=%APPDATA%\%FOLDER%
set SOURCEDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT
@REM /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
REM folder to restore
set FOLDER=Phoenix
set TARGETDIR=%LOCALAPPDATA%\%FOLDER%
set SOURCEDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT 
@REM /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
REM folder to restore
set FOLDER=Factorio
set TARGETDIR=%APPDATA%\%FOLDER%
set SOURCEDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT 
@REM /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
