@echo off
REM * FILE : ip.bat
REM * PROJECT : PROG1596 - L06 Windows Scripting
REM * PROGRAMMER : Alexia Tu
REM * FIRST VERSION : 04-13-2024
REM * DESCRIPTION : displays IPv4 address(es) only

REM Findstr searches the output from ipconfig. /C searches for the literal string
ipconfig | findstr /C:"IPv4 Address"