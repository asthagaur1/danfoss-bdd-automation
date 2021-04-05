
call variable.bat
taskkill /f /im _squishserver.exe

start squishserver.exe

echo *********P Y T H O N    P A T H ******************
echo %PYTHONPATH%
echo **************************************************

echo specify the testsuite and testcase file here

set suite_name="suite_KoolProg"
set testcase_file="tst_common_test_cases"

echo optional test scenaios to run paticular ....
echo add tags by comma seterated ..
REM set tags= "scenaio1,scenaio2,scenaio3,...."
REM KP_Common_ID_2.1,KP_Common_ID_2.2,KP_Common_ID_2.3"
REM set tags="KP_Common_ID_4.8"


python common_test_run.py
taskkill /f /im _squishserver.exe

exit /b 0
taskkill /f /im _squishserver.exe
