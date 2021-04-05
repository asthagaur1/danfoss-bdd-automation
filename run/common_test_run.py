import datetime
import json
import os
import subprocess

import common
import inputConfig
import testInput

# Automation input sheet location
input_sheet_path = "..\\test_input_config\\AutomationInputSheet.xlsx"

en_var = "squishrunner_path"
path_value = os.environ[en_var]
path_value = path_value.replace('"', "")
squish = path_value + "\\squishrunner.exe"
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
List_index = input.get_indices_totest_yes_and_isdefault_yes("yes")
print("List_index ={}".format(List_index))

date_time = datetime.datetime.now().strftime("%B_%d_%Y_%H-%M-%S")  # str(datetime.datetime.now())
date_time = common.remove_spaces_with_underscore(date_time)
report_path = report_location + "\\" + date_time

# suite_name = "suite_KoolProg"

en_var = "suite_name"
suite_name = os.environ[en_var]
suite_name = suite_name.replace('"', "")
print("suite_name ={}".format(suite_name))

en_var = "testcase_file"
testcase_file = os.environ[en_var]
testcase_file = testcase_file.replace('"', "")
print("testcase_file ={}".format(testcase_file))

en_var = "tags"
tags = os.environ[en_var]
tags = tags.replace('"', "")
print("tags ={}".format(tags))

tags_list = tags.split(',')
print("tags_list={}".format(tags_list))

for ev in List_index:
    report = report_path
    os.environ[inputConfig.envi_variable_name] = "[{}]".format(ev)
    print("passing environment variable is os.environ[inputConfig.envi_variable_name] = {}".format(
        os.environ[inputConfig.envi_variable_name]))
    selected_controller = input.get_controller_details_from_index(ev)
    controller = selected_controller["controllerVariant"]
    report = report + "\\" + controller
    report = report + "\\" + suite_name
    report = report.replace(" ", "_")
    report = report + "\\" + "index_{}".format(ev)
    # os.mkdir(report)
    os.makedirs(report)
    print("report_location ={}".format(report))
    report = "html," + report
    # subprocess.run(
    #     [squish, "--debugLog", "alpw", "--testsuite", "..\\suites\\" + suite_name, "--tags",
    #      "controller_details_in_new_project_window", "--reportgen", report])

    args = [squish, "--debugLog", "alpw", "--testsuite", "..\\suites\\" + suite_name,
            "--testcase", testcase_file, ]
    if tags:
        args.append("--tags")
        args.append(tags)

    args.append("--reportgen")
    args.append(report)
    print("args ={}".format(args))
    subprocess.run(args)
