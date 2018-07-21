::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDpQQQ2MAFuzBaEJ+u3o0+OErUMOaPI2dorayqSCJd80yxHbfJUi2DRTm8Rs
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZkgaHkrSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlXMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIAIRVRfDbi
::eg0/rx1wNQPfEVWB+kM9LVsJDDSLMm67FqUQ7ajL/eWTrU4cWII=
::fBEirQZwNQPfEVWB+kM9LVsJDDSLMm6KNNU=
::cRolqwZ3JBvQF1fEqQIDIRZEQAHCLHm1Aacd5ajv4KqLo1gTV+p/bIfemoOHBulT2kzqcJc9xnZf2M8NHxNacRO5am8=
::dhA7uBVwLU+EWGqgx1Y1KxM0
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEx2YDPB5XRETQbDriZg==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDpQQQ2MAE+/Fb4I5/jH3+OJp30vaNI2dorr6PqLOOVz
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983

@echo off
title PinePR
color 0e
set rev=Ver.1.1
::Property of Sterling Makara - SDStech 2018
(
set /p passset= 
set /p passon= 
set /p pass= 
)<config.txt

if %passset%==y goto login
goto page0

:page0
echo.
echo                                            Welcome!
echo ______  _              ______ ______ 
echo [ ___ \(_)             [ ___ \[ ___ \      Welcome to PinePR! A
echo [ [_/ / _  _ __    ___ [ [_/ /[ [_/ /      simple program to get
echo [  __/ [ ][ '_ \  / _ \[  __/ [    /       your WiFi Pineapple
echo [ ]    [ ][ ] [ ][  __/[ ]    [ [\ \       running in seconds.
echo \_]    [_][_] [_] \___]\_]    \_[ \_]
echo ======================================     FIRST USE
echo ===============================%rev%
echo                                            We detected this is your 
echo                                            first use, please take the
echo                                            time to setup the program.
echo.
pause

cls
echo 
title PinePR - Setup
echo.
echo.
echo      =====================================
echo      =  Step 1/2                         =
echo      =                                   =
echo      =   Would You Like a Password?      =
echo      =                                   =
echo      =    A password is usefull if       =
echo      =    you don't want others          =
echo      =    easily using the program.      =
echo      =                                   =
echo      =====================================
echo.
echo.
set /p passon=[y/n] 
if %passon%== n goto page3
goto page1
:page1
cls
echo.
echo.
echo      =====================================
echo      =  Step 2/2                         =
echo      =                                   =
echo      =          Enter a Password         =
echo      =                                   =
echo      =          Please no spaces         =
echo      =                                   =
echo      =                                   =
echo      =                                   = 
echo      =====================================
set /p pass=Password: 
cls


echo.
echo.
echo      ======================================
echo      ==  Confirm                         ==
echo      ==                                  ==
echo      ==  You have entered:               ==
echo      ==  %pass%
echo      ==                                  ==
echo      == as your password, would you like ==
echo      ==  to use this?                    ==
echo      ==                                  ==
echo      ======================================
set /p yn=[y/n] 
if %yn%== n goto page1
goto page3

:page3

set passset=y

set /p passset=
set /p passon= 
set /p pass= 
(echo %passset%)> config.txt
(echo %passon%)>> config.txt
(echo %pass%)>> config.txt

goto login

:login

(
set /p passset=
set /p passon=
set /p pass=
)<config.txt

if %passon%== n goto home


cls

echo.
echo                                            Welcome!
echo ______  _              ______ ______ 
echo [ ___ \(_)             [ ___ \[ ___ \      Welcome to PinePR! A
echo [ [_/ / _  _ __    ___ [ [_/ /[ [_/ /      simple program to get
echo [  __/ [ ][ '_ \  / _ \[  __/ [    /       your WiFi Pineapple
echo [ ]    [ ][ ] [ ][  __/[ ]    [ [\ \       running in seconds.
echo \_]    [_][_] [_] \___]\_]    \_[ \_]
echo ======================================     
echo ===============================%rev%
echo.
echo.
set /p psswrd=Enter Password: 
if %psswrd%==%pass% goto home

cls

echo.
echo                                            Welcome!
echo ______  _              ______ ______ 
echo [ ___ \(_)             [ ___ \[ ___ \      Welcome to PinePR! A
echo [ [_/ / _  _ __    ___ [ [_/ /[ [_/ /      simple program to get
echo [  __/ [ ][ '_ \  / _ \[  __/ [    /       your WiFi Pineapple
echo [ ]    [ ][ ] [ ][  __/[ ]    [ [\ \       running in seconds.
echo \_]    [_][_] [_] \___]\_]    \_[ \_]
echo ======================================     
echo ===============================%rev%
echo.
echo.
echo Enter Password: %psswrd% [WRONG PASSWORD]
timeout 1 >nul
cls
goto login

:home
cls
title PinePR
echo.
echo.                                          
echo ______  _              ______ ______ 
echo [ ___ \(_)             [ ___ \[ ___ \      
echo [ [_/ / _  _ __    ___ [ [_/ /[ [_/ /      
echo [  __/ [ ][ '_ \  / _ \[  __/ [    /       
echo [ ]    [ ][ ] [ ][  __/[ ]    [ [\ \       
echo \_]    [_][_] [_] \___]\_]    \_[ \_]      
echo ======================================     
echo ===============================%rev%
echo.
echo [ 1 ] Start using Pineapple
echo [ 2 ] IP Config
echo [ 3 ] Settings
echo [ 4 ] Suggest Feature/Contact
echo.
echo [ 0 ] Exit
echo.
echo.
echo.
set /p menu=[ # ] 
if %menu%==1 goto home1
if %menu%==2 goto home2
if %menu%==3 goto home3
if %menu%==4 goto home4
if %menu%==0 goto home0
goto home

:home1
cls
title PinePR
echo.
echo                                          ========================= 
echo ______  _              ______ ______     =                       =
echo [ ___ \(_)             [ ___ \[ ___ \    = Your Web Browser will =
echo [ [_/ / _  _ __    ___ [ [_/ /[ [_/ /    =    now open the WiFi  =
echo [  __/ [ ][ '_ \  / _ \[  __/ [    /     =   Pineapple Software  =
echo [ ]    [ ][ ] [ ][  __/[ ]    [ [\ \     =                       =
echo \_]    [_][_] [_] \___]\_]    \_[ \_]    =                       =
echo ======================================   =                       =
echo ===============================%rev%   =                       =
echo                                          =      If not, goto     =
echo [=1=]=Start using Pineapple===============http://172.16.42.1:1471=
echo [ 2 ] IP Config                          =                       =
echo [ 3 ] Settings                           =                       =
echo [ 4 ] Suggest Feature/Contact            =                       =
echo                                          =                       =
echo [ 0 ] Exit                               =  Press any key to go  =
echo                                          =          back         =
echo                                          =========================
echo.
timeout 1 >nul
start "" http://172.16.42.1:1471
pause >nul
goto home

:home2
cls
title PinePR
echo.
echo                                          ========================= 
echo ______  _              ______ ______     =                       =
echo [ ___ \(_)             [ ___ \[ ___ \    =                       =
echo [ [_/ / _  _ __    ___ [ [_/ /[ [_/ /    =                       =
echo [  __/ [ ][ '_ \  / _ \[  __/ [    /     = [ 1 ] Renew IP Address=
echo [ ]    [ ][ ] [ ][  __/[ ]    [ [\ \     =                       =
echo \_]    [_][_] [_] \___]\_]    \_[ \_]    =                       =
echo ======================================   = [ 2 ] IPConfig Command=  
echo ===============================%rev%   =                       =
echo                                          =                       = 
echo [ 1 ] Start using Pineapple              =                       =
echo [=2=]=IP Config===========================                       =
echo [ 3 ] Settings                           = [ 0 ] Back            =
echo [ 4 ] Suggest Feature/Contact            =                       =
echo                                          =                       =
echo [ 0 ] Exit                               =                       =
echo                                          =                       =
echo                                          =========================
set /p ipm=[ # ] 
if %ipm%==1 goto home21
if %ipm%==2 goto home22
if %ipm%==0 goto home

:home21
ipconfig/release
ipconfig/renew
cls
title PinePR
echo.
echo                                          ========================= 
echo ______  _              ______ ______     =                       =
echo [ ___ \(_)             [ ___ \[ ___ \    =                       =
echo [ [_/ / _  _ __    ___ [ [_/ /[ [_/ /    =                       =
echo [  __/ [ ][ '_ \  / _ \[  __/ [    /     = [ 1 ] Renew IP Address=
echo [ ]    [ ][ ] [ ][  __/[ ]    [ [\ \     =              [DONE]   =
echo \_]    [_][_] [_] \___]\_]    \_[ \_]    =                       =
echo ======================================   = [ 2 ] IPConfig Command=  
echo ===============================%rev%   =                       =
echo                                          =                       = 
echo [ 1 ] Start using Pineapple              =                       =
echo [=2=]=IP Config===========================                       =
echo [ 3 ] Settings                           = [ 0 ] Back            =
echo [ 4 ] Suggest Feature/Contact            =                       =
echo                                          =                       =
echo [ 0 ] Exit                               =                       =
echo                                          =                       =
echo                                          =========================
timeout 2 >nul
goto home
:home22
cls
ipconfig /all
pause
goto home
:home3
cls
title PinePR
echo.
echo                                          ========================= 
echo ______  _              ______ ______     =                       =
echo [ ___ \(_)             [ ___ \[ ___ \    =                       =
echo [ [_/ / _  _ __    ___ [ [_/ /[ [_/ /    =  [ 1 ] Reset Password =
echo [  __/ [ ][ '_ \  / _ \[  __/ [    /     =                       =
echo [ ]    [ ][ ] [ ][  __/[ ]    [ [\ \     =                       =
echo \_]    [_][_] [_] \___]\_]    \_[ \_]    =                       =
echo ======================================   =                       =
echo ===============================%rev%   =                       =
echo                                          =                       =
echo [ 1 ] Start using Pineapple              =                       =
echo [ 2 ] IP Config                          =                       =
echo [=3=]=Settings============================                       =
echo [ 4 ] Suggest Feature/Contact            =                       =
echo                                          =   [ 0 ] Go Back       =
echo [ 0 ] Exit                               =                       =
echo                                          =                       =
echo                                          =========================
set /p sm=[ # ]
if %sm%==1 call reset_password.bat
goto home

:home4
cls
title PinePR
echo.
echo                                          ========================= 
echo ______  _              ______ ______     =                       =
echo [ ___ \(_)             [ ___ \[ ___ \    =                       =
echo [ [_/ / _  _ __    ___ [ [_/ /[ [_/ /    =   Loading GitHub      =
echo [  __/ [ ][ '_ \  / _ \[  __/ [    /     =                       =
echo [ ]    [ ][ ] [ ][  __/[ ]    [ [\ \     =                       =
echo \_]    [_][_] [_] \___]\_]    \_[ \_]    =                       =
echo ======================================   =                       =
echo ===============================%rev%   =                       =
echo                                          =                       =
echo [ 1 ] Start using Pineapple              =                       =
echo [ 2 ] IP Config                          =                       =
echo [ 3 ] Settings                           =                       =
echo [=4=]=Suggest=Feature/Contact=============                       =
echo                                          =                       =
echo [ 0 ] Exit                               =                       =
echo                                          =                       =
echo                                          =========================
start ""https://github.com/STERFRY333/PinePR
timeout 5 >nul
goto home
:home0
exit