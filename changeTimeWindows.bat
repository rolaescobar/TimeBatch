:: THE NEXT SCRIPT IS IF YOU NEED  CHANGE  THE TIME IN WINDOWS 
:: CREATED BY ROLANDO JOSE GARCIA ESCOBAR
:: 25/03/2022
:: YOU CAN  CREATE A  TASK IN WINDOWS 

@echo off
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "HH=%dt:~8,2%"
set "Min=%dt:~10,2%"
set "Seg=%dt:~12,2%"

set /a Minute= %Min% - 05

FOR /F "skip=1" %%A IN ('WMIC OS GET LOCALDATETIME') DO (SET "t=%%A" & GOTO break_1)
:break_1
SET "m=%t:~10,2%" & SET "h=%t:~8,2%" & SET "d=%t:~6,2%" & SET "z=%t:~4,2%" & SET "y=%t:~0,4%"
IF !h! GTR 11 (SET /A "h-=12" & SET "ap=P" & IF "!h!"=="0" (SET "h=00") ELSE (IF !h! LEQ 9 (SET "h=0!h!"))) ELSE (SET "ap=A")

set "newTime=%h%:%Minute%:%Seg% %ap%M

 @echo %newTime%
 time %newTime%
 
 ::FORMAT 
 ::time 06:15:00 PM   
 ::time 08:35:00 AM
 

::@EXIT

pause