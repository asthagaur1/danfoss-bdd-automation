
echo on

set wd=%CD%
set squishrunner_path=%SQUISH_PATH%
set destination=%CD%\log


cd ..\SourceCode\lib\common
set PYTHONPATH=%CD%
cd %wd%
cd ..\SourceCode\lib\InputSheetParser
set PYTHONPATH=%PYTHONPATH%;%CD%
cd %wd%
cd ..\SourceCode\lib\KoolProgLib
set PYTHONPATH=%PYTHONPATH%;%CD%
cd %wd%
cd ..\SourceCode\lib\Report
set PYTHONPATH=%PYTHONPATH%;%CD%
cd %wd%
cd ..\SourceCode\lib\winappLib
set PYTHONPATH=%PYTHONPATH%;%CD%
cd %wd%

set path=%path%










