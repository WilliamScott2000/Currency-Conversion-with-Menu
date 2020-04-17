rem WIlliam Scott
rem proj 9.2
rem Program to convert currency w/ menu

rem*************************** Variables ********************************

rem               Choice$ - Menu selection
rem               AMT - Currency to be converted
rem               Conversion - Conversion formula
rem               Placeholder - Non functioning, in order to CLS

rem ************************** Main Program ************************

Do
    GOSUB PRINTMENU
    SELECT CASE CHOICE$
        CASE "1"
            GOSUB USD2BP
            CASE "2"
            GOSUB BP2USD
            CASE "3"
            GOSUB USD2CD
            CASE"4"
            GOSUB CD2USD
            CASE "5"
            GOSUB CLEARSCREEN
            CASE ELSE

    END SELECT
LOOP UNTIL CHOICE$ = "5"
END

rem ******************************* Print Menu ****************************

PrintMenu:

CLS
Locate 5,30
Print "Selection Menu"
Locate 10,31
Print "1.) U.S Dollar to British Pound"
Locate 12, 31
Print "2.) British Pound to U.S Dollar"
Locate 14,31
Print "3.) U.S Dollar to Canadian Dollar"
Locate 16, 31
Print "4.) Canadian Dollar to U.S Dollar"
Locate 18,31
Print "5.) Quit"
Locate 22,31
Input "Selection: " , Choice$

RETURN

rem ****************************** US Dollar to British Pound****************

USD2BP:

CLS
Print "U.S Dollars to British Pounds"
Print
Print
Input "Enter Amount to be converted: ", AMT

Conversion = AMT * 1.1330

Print
Print
Print "Your total is BP$ "; Conversion
print
print
Input "Press any number to continue", Placeholder

RETURN

rem ***************************** British Pounds to US Dollars *********

BP2USD:

CLS
Print "British Pounds to U.S Dollars"
print
print
Input "Enter Amount to be converted: ", AMT
print
print

Conversion = AMT * .8826

Print "Your total is USD$ "; Conversion
print
print
Input "Press any number to continue", Placeholder

RETURN

rem ******************************US Dollars to Canadian Dollars*********
USD2CD:

CLS

Print "U.S Dollars to Canadian Dollars"
print
print
Input "Enter amount to be converted: ", AMT
print
print
Conversion = AMT * .7531
Print "Your total is CD$ "; Conversion
print
print
Input "Press any number to continue", placeholder

RETURN

rem ***************************** Canadian Dollars to US Dollars *********

CD2USD:
CLS

Print "Canadian Dollars to U.S Dollars"
print
print
Input "Enter Amount to be Converted ", AMT
print
print
Conversion = AMT * 1.3277

Print "Your total is USD$ "; Conversion
print
print

Input"Press any number to continue" , placeholder

RETURN

rem *****************************QUIT***********************************

ClearScreen:
CLS
RETURN



rem*********************************END OF PROGRAM ************************
