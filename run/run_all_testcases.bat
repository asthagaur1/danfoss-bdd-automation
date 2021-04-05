
call variable.bat

echo *********P Y T H O N    P A T H ******************
echo %PYTHONPATH%
echo **************************************************

REM echo specify the testsuite and testcase file here

set suite_name="suite_KoolProg"
set testcase_file="tst_AKCC_Baudrate"

echo optional test scenaios to run paticular ....
echo add tags by comma seterated ..
REM set tags= "scenaio1,scenaio2,scenaio3,...."
REM KP_Common_ID_2.1,KP_Common_ID_2.2,KP_Common_ID_2.3"
REM set tags="KP_Common_ID_4.8"



set destination=%CD%\AKCC_CDF_UI_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"


squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_UI --testcase tst_AKCC_cdf --local --reportgen html,%CD%\AKCC_CDF_UI_REPORT --reportgen xls,%CD%\log\Excel.xls

set destination=%CD%\AKCC_HELP_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"


squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_Help --local --reportgen html,%CD%\AKCC_HELP_REPORT --reportgen xls,%CD%\log\Excel.xls

set destination=%CD%\AKCC_TREEVIEW_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"


squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_TreeView --local --reportgen html,%CD%\AKCC_TREEVIEW_REPORT --reportgen xls,%CD%\log\Excel.xls


set destination=%CD%\AKCC_BAUDRATE_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"


squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_Baudrate --local --reportgen html,%CD%\AKCC_BAUDRATE_REPORT --reportgen xls,%CD%\log\Excel.xls




set destination=%CD%\AKCC_EXPANDCOLLAPSE_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_expandCollapse --local --reportgen html,%CD%\AKCC_EXPANDCOLLAPSE_REPORT --reportgen xls,%CD%\log\Excel.xls



set destination=%CD%\AKCC_SAVEAS_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_SaveAs --local --reportgen html,%CD%\AKCC_SAVEAS_REPORT --reportgen xls,%CD%\log\Excel.xls


set destination=%CD%\AKCC_SAVE_CSW_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_Save --testcase tst_AKCC_ControllerSelectionWindow --local --reportgen html,%CD%\AKCC_SAVE_CSW_REPORT --reportgen xls,%CD%\log\Excel.xls



set destination=%CD%\AKCC_OPEN_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_Open --local --reportgen html,%CD%\AKCC_OPEN_REPORT --reportgen xls,%CD%\log\Excel.xls




set destination=%CD%\AKCC_ALARM_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_Alarm --local --reportgen html,%CD%\AKCC_ALARM_REPORT --reportgen xls,%CD%\log\Excel.xls



set destination=%CD%\AKCC_READOUTS_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_Readouts --local --reportgen html,%CD%\AKCC_READOUTS_REPORT --reportgen xls,%CD%\log\Excel.xls




set destination=%CD%\AKCC_COPYTYPE_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_CopyType --local --reportgen html,%CD%\AKCC_COPYTYPE_REPORT --reportgen xls,%CD%\log\Excel.xls







set destination=%CD%\AKCC_FAV_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_Fav --local --reportgen html,%CD%\AKCC_FAV_REPORT --reportgen xls,%CD%\log\Excel.xls



set destination=%CD%\AKCC_PROJECTWINDOW_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_ProjectWindow --local --reportgen html,%CD%\AKCC_PROJECTWINDOW_REPORT --reportgen xls,%CD%\log\Excel.xls

set destination=%CD%\AKCC_QuickWizard_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_QuickWizard --local --reportgen html,%CD%\AKCC_QuickWizard_REPORT --reportgen xls,%CD%\log\Excel.xls







set destination=%CD%\AKCC_IMC_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_Import_Controller_Model --local --reportgen html,%CD%\AKCC_IMC_REPORT --reportgen xls,%CD%\log\Excel.xls

set destination=%CD%\AKCC_connectedController_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_connectedController --local --reportgen html,%CD%\AKCC_connectedController_REPORT --reportgen xls,%CD%\log\Excel.xls






set destination=%CD%\AKCC_PP_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_Plug_And_Play --local --reportgen html,%CD%\AKCC_PP_REPORT --reportgen xls,%CD%\log\Excel.xls




set destination=%CD%\AKCC_MYKEY_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_MYKEY --local --reportgen html,%CD%\AKCC_MYKEY_REPORT --reportgen xls,%CD%\log\Excel.xls








set destination=%CD%\AKCC_ITEMTYPE_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_ItemType --local --reportgen html,%CD%\AKCC_ITEMTYPE_REPORT --reportgen xls,%CD%\log\Excel.xls



set destination=%CD%\AKCC_CONVERTSETTINGS_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_ConvertSetting --local --reportgen html,%CD%\AKCC_CONVERTSETTINGS_REPORT --reportgen xls,%CD%\log\Excel.xls

set destination=%CD%\AKCC_MAINSWITCH_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_mainSwitch --local --reportgen html,%CD%\AKCC_MAINSWITCH_REPORT --reportgen xls,%CD%\log\Excel.xls


set destination=%CD%\AKCC_FW_Upgrade_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_FW_Upgrade --local --reportgen html,%CD%\AKCC_FW_Upgrade_REPORT --reportgen xls,%CD%\log\Excel.xls

set destination=%CD%\AKCC_LANGOFFLINE_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_offline_language_test_cases --local --reportgen html,%CD%\AKCC_LANGOFFLINE_REPORT --reportgen xls,%CD%\log\Excel.xls

set destination=%CD%\AKCC_LANGONLINE_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_online_language_test_cases --local --reportgen html,%CD%\AKCC_LANGONLINE_REPORT --reportgen xls,%CD%\log\Excel.xls





set destination=%CD%\AKCC_UPGDOWNG_OFFLINE_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_UpgradeDowngrade_test_cases --local --reportgen html,%CD%\AKCC_UPGDOWNG_OFFLINE_REPORT --reportgen xls,%CD%\log\Excel.xls

set destination=%CD%\AKCC_UPGDOWNG_ONLINE_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_UpgradeDowngrade_online_test_cases --local --reportgen html,%CD%\AKCC_UPGDOWNG_ONLINE_REPORT --reportgen xls,%CD%\log\Excel.xls


set destination=%CD%\AKCC_BINFILE_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_Bin_File --local --reportgen html,%CD%\AKCC_BINFILE_REPORT --reportgen xls,%CD%\log\Excel.xls


set destination=%CD%\AKCC_COPYING_REPORT
echo %destination%
del /q %destination%\*
for /d %%x in (%destination%\*) do @rd /s /q "%%x"

squishrunner --debugLog alpw --testsuite ..\suites\suite_KoolProg --testcase tst_AKCC_Copying --local --reportgen html,%CD%\AKCC_COPYING_REPORT --reportgen xls,%CD%\log\Excel.xls

REM python common_test_run.py