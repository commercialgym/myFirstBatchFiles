@echo off
REM * FILE : myStart.bat
REM * PROJECT : PROG1596 - L06 Windows Scripting
REM * PROGRAMMER : Alexia Tu
REM * FIRST VERSION : 04-13-2024
REM * DESCRIPTION : This batch file creates a directory called myTemp and changes
REM   directories into it, then launches visual studio

REM Check for the existence of C:\myTemp and create it if it doesn't exist
IF NOT EXIST "C:\myTemp" (
    REM Create directory
    mkdir "C:\myTemp"
)
REM --------------------------------------------------------------
REM /d ensures it will move into this folder even if current directory is on different drive
 cd /d "C:\myTemp"
REM --------------------------------------------------------------
REM first quoted string is interpreted as name of window, not file path
 start "" "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\devenv.exe"
