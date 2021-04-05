@echo off
:: BatchGotAdmin
::-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
::--------------------------------------
echo on
echo inside_run_test_file
SET test_case=%~1
SET test_case=%~2
REM C:\gitworkspace\KoolProg-SourceCode\KoolProg-Maintenance\KoolProg_Phase_3.5\KoolProg\Automation\run

REM C:\gitworkspace\KoolProg-SourceCode\KoolProg-Maintenance\KoolProg_Phase_3.5\KoolProg\Automation\SourceCode\lib

REM C:\gitworkspace\KoolProg-SourceCode\KoolProg-Maintenance\KoolProg_Phase_3.5\KoolProg\Automation\SourceCode\lib\common

REM C:\gitworkspace\KoolProg-SourceCode\KoolProg-Maintenance\KoolProg_Phase_3.5\KoolProg\Automation\SourceCode\lib\ImputSheetParser

REM C:\gitworkspace\KoolProg-SourceCode\KoolProg-Maintenance\KoolProg_Phase_3.5\KoolProg\Automation\SourceCode\lib\KoolProgLib

REM C:\gitworkspace\KoolProg-SourceCode\KoolProg-Maintenance\KoolProg_Phase_3.5\KoolProg\Automation\SourceCode\lib\Report

REM C:\gitworkspace\KoolProg-SourceCode\KoolProg-Maintenance\KoolProg_Phase_3.5\KoolProg\Automation\SourceCode\lib\winappLib


set wd=%CD%

set squishrunner_path="C:\Users\U333152\Squish for Windows 6.5-20200227-1154\bin"

set path=%squishrunner_path%

cd ..\SourceCode\lib\common
set path=%path%;%CD%
cd %wd%
cd ..\SourceCode\lib\AKCC55
set path=%path%;%CD%
cd %wd%
cd ..\SourceCode\lib\EET
set path=%path%;%CD%
cd %wd%
cd ..\SourceCode\lib\EKE1x
set path=%path%;%CD%
cd %wd%
cd ..\SourceCode\lib\ERC11x
set path=%path%;%CD%
cd %wd%
cd ..\SourceCode\lib\ERC21x
set path=%path%;%CD%
cd %wd%
cd ..\SourceCode\lib\ETC1Hx
set path=%path%;%CD%
cd %wd%
cd ..\SourceCode\lib\Controller_Family_Libraries_Interfaces
set path=%path%;%CD%
cd %wd%
cd ..\SourceCode\lib\FactoryMethod_Classes
set path=%path%;%CD%
cd %wd%

cd ..\SourceCode\lib\InputSheetParser
set path=%path%;%CD%
cd %wd%
cd ..\SourceCode\lib\KoolProgLib
set path=%path%;%CD%
cd %wd%
cd ..\SourceCode\lib\Report
set path=%path%;%CD%
cd %wd%
cd ..\SourceCode\lib\winappLib
set path=%path%;%CD%
cd %wd%
set destination=%CD%\log
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

set PYTHONPATH=%path%
"C:\Users\U333152\Squish for Windows 6.5-20200227-1154\python\python.exe" run.py %~1 %~2

:END
PAUSE

REM squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --reportgen html,%CD%\log


REM set user_info="controllerVariant=ETC1H3"
REM squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg  --tags controller_details_in_new_project_window --reportgen html,%CD%\log --reportgen xls,%CD%\log\Excel.xls
REM echo %path%



REM pause



