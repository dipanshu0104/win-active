@echo off
title Windows Activator
setlocal

:: Check for administrative privileges
openfiles >nul 2>&1
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:backtrack
:menu
echo.                                                
echo                                              ......:::::::::     
echo                                 ....  ::::::::::::::::::::::     
echo                      ..:::::::::::::  ::::::::::::::::::::::     
echo                     .:::::::::::::::  ::::::::::::::::::::::    Tool- Name : Windows Activator
echo                     .:::::::::::::::  ::::::::::::::::::::::    Author : dipanshu0104 
echo                     .:::::::::::::::  ::::::::::::::::::::::    Github : https://github.com/dipanshu0104 
echo                     .:::::::::::::::  ::::::::::::::::::::::     
echo                     .:::::::::::::::  ::::::::::::::::::::::     
echo                     .:::::::::::::::  ::::::::::::::::::::::     
echo.                                                                  
echo                     .:::::::::::::::  ::::::::::::::::::::::     
echo                     .:::::::::::::::  ::::::::::::::::::::::     
echo                     .:::::::::::::::  ::::::::::::::::::::::     
echo                     .:::::::::::::::  ::::::::::::::::::::::     
echo                     .:::::::::::::::  ::::::::::::::::::::::     
echo                     .:::::::::::::::  ::::::::::::::::::::::     
echo                     .:::::::::::::::  ::::::::::::::::::::::     
echo                              .....::  ::::::::::::::::::::::     
echo                                            .....::::::::::::     
echo                                                           ..     
echo.                                                  
echo.

 echo         Select your Windows version:
 echo         1. Windows 7
 echo         2. Windows 8/8.1
 echo         3. Windows 10
 echo         4. Windows 11
 echo.
 set /p version="|       Enter the number of your Windows version: "

if not defined version goto masg2
if "%version%"=="1" goto win7
if "%version%"=="2" goto win8
if "%version%"=="3" goto win10
if "%version%"=="4" goto win11
echo Invalid selection.
goto menu

:masg2
echo.
echo     Please select any operation to continue.
echo.
ping localhost -n 4 > nul
set version=
cls
goto backtrack


:win7
set "kmskey=FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4"
goto activate

:win8
set "kmskey=GCRJD-8NW9H-F2CDX-CCM8D-9D6T9"
goto activate

:win10
set "kmskey=W269N-WFGWX-YVC9B-4J6C9-T83GX"
goto activate

:win11
set "kmskey=W269N-WFGWX-YVC9B-4J6C9-T83GX"
goto activate

:activate
echo Activating Windows with KMS key %kmskey%...
slmgr /ipk %kmskey%
slmgr /skms kms8.MSGuides.com
slmgr /ato
echo Activation process complete.
goto end

:end
echo Press any key to exit...
pause >nul
endlocal
