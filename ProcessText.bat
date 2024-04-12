@echo off
REM * FILE : ProcessText.bat
REM * PROJECT : PROG1596 - L06 Windows Scripting
REM * PROGRAMMER : Alexia Tu
REM * FIRST VERSION : 04-13-2024
REM * DESCRIPTION : creating a menu system that takes one param - the pathname of text file -
REM   then prompts a menu, calls a c file to take user input, then uses that value to determine
REM   which option to run or if the value was invalid, it reprompts the menu to user.

REM Check if there is a parameter for the source text file
if "%~1"=="" (
 echo Please enter the pathname of a text file
 exit /b
)
REM --------------------------------------------------------------
REM Check to see if the path of the entered file exists
if not exist "%~1" (
 echo Source file does not exist
 exit /b
)
REM --------------------------------------------------------------
cls 
REM display the menu
:menu
echo Menu:
echo 1. Open in Notepad
echo 2. Open in Word
echo 3. Open in Notepad++
echo 4. Print
REM --------------------------------------------------------------
REM Run C file to get the user's choice
REM Old code >> "C:\tmp\myChoice\x64\Debug\myChoice.exe" 
REM since only the executable is submitted, the proper way to call would be
"myChoice.exe"
REM --------------------------------------------------------------
REM Check return value from myChoice.exe
set userInput=%ERRORLEVEL%

REM Perform actions based on the user's choice, uses absolute path as specified in reqs
if "%userInput%" == "1" (
REM to have batch file exit right after action, use start "" to open new window
    start "" "C:\Windows\System32\notepad.exe" "%~1" && exit /b
) else if "%userInput%" == "2" (
    start "" "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE" "%~1" && exit /b
) else if "%userInput%" == "3" (
    start "" "C:\Program Files\Notepad++\notepad++.exe" "%~1" && exit /b
) else if "%userInput%" == "4" (
    start "" notepad /p "%~1" && exit /b
) else (
    echo Invalid choice, please enter a valid menu option
	REM allows the user to see the display error 
    pause
    goto menu
)
