@echo off
REM * FILE : cp.bat
REM * PROJECT : PROG1596 - L06 Windows Scripting
REM * PROGRAMMER : Alexia Tu
REM * FIRST VERSION : 04-13-2024
REM * DESCRIPTION : copies files from a location specified by single command line parameter to C:\myTemp

REM Check if there is a parameter for the source file
if "%~1"=="" (
 echo echo Improper syntax please enter valid source file path
 exit /b
)
REM --------------------------------------------------------------
REM Check to see if the path of the entered file exists
if not exist "%~1" (
 echo Source file does not exist
 exit /b
)
REM --------------------------------------------------------------
REM Copy files from source to destination
copy /y "%~1" "C:\myTemp"
echo File was successfully copied