@echo off
setlocal EnableDelayedExpansion
if not defined BACKUPPATH (
set BACKUPPATH=D:\backup\01backups
)
for %%i in (%~dp0\00backupscripts\*.bat) do call %%i
