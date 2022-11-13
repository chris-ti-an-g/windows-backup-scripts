@echo off
setlocal EnableDelayedExpansion
for %%i in (%~dp0\00backupscripts\*.bat) do call %%i