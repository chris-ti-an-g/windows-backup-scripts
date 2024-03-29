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
REM folder to backup
set FOLDER=EMPRESS
set SOURCEDIR=%PUBLIC%\Documents\%FOLDER%
set TARGETDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT /MIR /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
REM folder to backup
set FOLDER=Epic
set SOURCEDIR=%PUBLIC%\Documents\%FOLDER%
set TARGETDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT /MIR /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
REM folder to backup
set FOLDER=Steam
set SOURCEDIR=%PUBLIC%\Documents\%FOLDER%
set TARGETDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT /MIR /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
REM folder to backup
set FOLDER=Saved Games
set SOURCEDIR=%USERPROFILE%\%FOLDER%
set TARGETDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT /MIR /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
REM folder to backup
set FOLDER=My Games
set SOURCEDIR=%USERDOCUMENTS%\%FOLDER%
set TARGETDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT /MIR /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
REM folder to backup
set FOLDER=Goldberg SteamEmu Saves
set SOURCEDIR=%APPDATA%\%FOLDER%
set TARGETDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT /MIR /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
REM folder to backup
set FOLDER=Phoenix
set SOURCEDIR=%LOCALAPPDATA%\%FOLDER%
set TARGETDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT /MIR /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
REM folder to backup
set FOLDER=Factorio
set SOURCEDIR=%APPDATA%\%FOLDER%
set TARGETDIR=%BACKUPPATH%\Savegames\%FOLDER%
mkdir "%TARGETDIR%"
REM %FOLDER%
robocopy "%SOURCEDIR%" "%TARGETDIR%" /E /W:5 /R:2 /COPY:DAT /MIR /LOG+:"%TARGETDIR%\..\%DATE%-%CURRENTTIME%.txt" /TEE
