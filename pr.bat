@echo off
REM * FILE : pr.bat
REM * PROJECT : PROG1596 - L06 Windows Scripting
REM * PROGRAMMER : Alexia Tu
REM * FIRST VERSION : 04-13-2024
REM * DESCRIPTION : prints text files specified in command line (accepts 1 to 5 params)

REM Check to ensure there is at least one param
if "%~1"=="" (
 echo Please enter at least one source file
 exit /b
)
REM --------------------------------------------------------------
REM Check to ensure there are not more than 5 parameters are provided, if the
REM sixth parameter is not empty that means that it has exceeded the param limit
if not "%~6" == "" (
    echo Too many parameters, Maximum of 5 parameters allowed
    exit /b
)
REM --------------------------------------------------------------
REM Loop through each parameter and print the file

:loopThruFile
if "%~1"=="" goto :eof
    if exist "%~1" (
        notepad /p "%~1"
    ) else (
        echo File "%~1" not found.
    )
    shift
goto loopThruFile

REM --------------------------------------------------------------
REM (%*) could also be (*.txt)
REM for %%F in (%*) do (
REM    if exist "%%F" (
REM        notepad /p "%%F"
REM    ) else (
REM        echo File "%%F" not found
REM    )
REM )