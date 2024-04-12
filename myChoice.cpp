/*
* FILE : myChoice.exe
* PROJECT : PROG1596 - L06 Windows Scripting
* PROGRAMMER : Alexia Tu
* FIRST VERSION : 04-13-2024
* DESCRIPTION : collects user input for a menu in batch file ProcessText.bat, checks to ensure
* it's a valid numeric number. Then returns user input back to batch. This file does not check
* for if the input is within range, it only gets the user's number.
*/

#include <stdio.h>

int main(void)
{
    int menuNum = 0;
    char rawInput[5] = { 0 };
    //prompt user and take input
    printf("Please make menu choice: ");
    fgets(rawInput, sizeof(rawInput), stdin);

    //parse input and ensure that its a number
    if (sscanf_s(rawInput, "%d", &menuNum) != 1)
    {
        return -1;
    }

    return menuNum;
}