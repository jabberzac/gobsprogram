REM Written by Darkfish
@echo off
choice /M "Gob's Program:  "
if %ERRORLEVEL% EQU 1 (
:loop
echo | set /p="Penus  "
goto loop
)
