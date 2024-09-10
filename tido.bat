@echo OFF

NET SESSION
IF %ERRORLEVEL% NEQ 0 GOTO ELEVATE
GOTO ADMINTASKS

:ELEVATE
CD /d %~dp0
set vm=%1
MSHTA "javascript: var shell = new ActiveXObject('shell.application'); shell.ShellExecute('%~nx0', '%1', '', 'runas', 0);close();"

:ADMINTASKS
powershell -ExecutionPolicy Bypass -File "tido.ps1" %*
