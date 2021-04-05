import datetime
import json
import os
import subprocess
import common
import inputConfig
import testInput
import sys
from testInput import InputExcelData

# Automation input sheet location
input_sheet_path = "..\\test_input_config\\AutomationInputSheet.xlsx"
print("inside the run file")
testcase= sys.argv[1]
tag=sys.argv[2]
en_var = "squishrunner_path"
path_value = os.environ[en_var]
path_value = path_value.replace('"', "")
squish = path_value + "\squishrunner.exe"
print("path_value ={}".format(path_value))

en_var = "destination"
report_location = os.environ[en_var]
report_location = report_location.replace('"', "")
print("report_location ={}".format(report_location))

# suite_dir = working_dir + "\\" +

print("squish = {}".format(squish))
report_arg = "html," + report_location
print("report_arg ={}".format(report_arg))

input = testInput.InputExcelData(input_sheet_path)
List_index = input.get_indices_of_Totest("yes")

print("List_index ={}".format(List_index))

date_time = datetime.datetime.now().strftime("%B_%d_%Y_%H-%M-%S")  # str(datetime.datetime.now())
date_time = common.remove_spaces_with_underscore(date_time)
report_path = report_location + "\\" + date_time
suite_name = "suite_KoolProg"


for ev in List_index:
        report = report_path
        selected_controller = input.get_controller_details_from_index(ev)
        controller = selected_controller["controllerVariant"]
        report = report + "\\" + controller
        report = report + "\\" + suite_name
        report = report.replace(" ", "_")
        # os.mkdir(report)
        os.makedirs(report)
        print("report_location ={}".format(report))
        report = "html," + report
        print(int(ev))
        details = input.get_controller_details_from_index(int(ev))
        print(details)
        testcase_family = testcase.split("_")
        print(testcase_family[1])
        if testcase_family[1] == "common":
            os.environ[inputConfig.envi_variable_name] = "[{}]".format(ev)
            os.environ[inputConfig.envi_variable_name] = str(ev)
            print("inside common")
            subprocess.run(
            [squish, "--debugLog", "alpw", "--testsuite", "..\\suites\\" + suite_name , "--testcase" ,testcase, "--tags" ,tag, "--reportgen", report])
            
        elif testcase_family[1] != "common":
            if details["controllerFamily"] != testcase_family[1]:
                print("inside controller specific")
                continue
            else:
                print("inside controller specific with YES in inputsheet")
                print(ev)
                os.environ[inputConfig.envi_variable_name] = "[{}]".format(ev)
                os.environ[inputConfig.envi_variable_name] = str(ev)
                print("passing environment variable is os.environ[inputConfig.envi_variable_name] = {}".format(
                    os.environ[inputConfig.envi_variable_name]))
                subprocess.run(
                    [squish, "--debugLog", "alpw", "--testsuite", "..\\suites\\" + suite_name , "--testcase" ,testcase, "--tags" ,tag, "--reportgen", report])
                print("passed")
        else:
            print("wrong input")
         # subprocess.run(squish,var)

 # "--testcase", "..\\suites\\" + testcase_file,