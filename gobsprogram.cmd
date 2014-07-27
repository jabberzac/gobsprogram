@echo off
setlocal EnableDelayedExpansion
choice /M "Gob's Program:  "
if %ERRORLEVEL% EQU 1 (
	for /F "usebackq tokens=2* delims=: " %%W in (`mode con ^| findstr Columns`) do set CONSOLE_WIDTH=%%W
	:loop
	for /L %%a in (7,7,!CONSOLE_WIDTH!) do (
		echo | set /p="Penus  "
	)
	echo.
	goto loop
)
