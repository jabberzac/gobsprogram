@echo off
color 0A
set p="Penus  "
setlocal EnableDelayedExpansion
rem Default choice output does not meet program requirements
echo Gob's Program:  Y/N?
echo | set /p="? "
choice /M "" >NUL
if %ERRORLEVEL% EQU 1 (
	echo Y
	rem Fetch console width from "con"
	for /F "usebackq tokens=2* delims=: " %%W in (`mode con ^| findstr Columns`) do set CONSOLE_WIDTH=%%W
	:loop
	rem Echo as many double-spaced penii as possible
	for /L %%a in (7,7,!CONSOLE_WIDTH!) do (
		echo | set /p=%p%
		set /a PENUS_WIDTH="%%a"
	)
	rem Can we squeeze in a penus without double-spacing?
	set /a TEST_WIDTH=PENUS_WIDTH+5
	if !TEST_WIDTH! LEQ !CONSOLE_WIDTH! (
		if !TEST_WIDTH! EQU !CONSOLE_WIDTH! (
			rem CMD would wrap a CRLF onto a new line, avoid this
			echo | set /p=%p:~1,5%
		) else (
			echo %p:~1,5%
		)
	) else (
		rem CMD would wrap a CRLF onto a new line, avoid this if necessary
		if !PENUS_WIDTH! NEQ !CONSOLE_WIDTH! (
			echo.
		)
	)
	goto loop
)
