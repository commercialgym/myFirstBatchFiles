@echo off
REM * FILE : devTracker.bat
REM * PROJECT : PROG1596 - L06 Windows Scripting
REM * PROGRAMMER : Alexia Tu
REM * FIRST VERSION : 04-13-2024
REM * DESCRIPTION : logs an entry into a log file devTracker.log. the entry indicates the
REM   date and time of the VS launch and a message indicating so. After
REM   making this log entry, this batch file runs myStart.Bat

REM Log entry into devTracker.log
echo %date% %time% - Started Visual Studio  >"C:\myTemp\devTracker.log"
REM launch batch file to start VS
call myStart.bat