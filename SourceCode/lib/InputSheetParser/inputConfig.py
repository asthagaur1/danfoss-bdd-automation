required_fields_from_input_sheet = ["controllerFamily", "controllerVariant", "controllerCodeNo", "softwareVersion",
                                    "controllerPV", "controllerApplication", "database", "toTest", "PortNumber",
                                    "Isdefault"]

INPUT_KEYID_FOR_YES = 7
INPUT_KEYID_FOR_CONTRO_FAMLIY = 0
INPUT_KEYID_FOR_CONTRO_VARIANT = 1
INPUT_KEYID_FOR_CNTLR_APP = 5

product_image_path = "C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\DevopsAutomation\\Resources\\testdata\\Controller_Images\\{}_ProductImage.png"
wire_image_path = "C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\DevopsAutomation\\Resources\\testdata\\Controller_Images\\{}_SupportImage.png"
product_details = "C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\DevopsAutomation\\Resources\\testdata\\verificationPoints\\{}_Description"
app_product_details = "C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\DevopsAutomation\\Resources\\testdata\\verificationPoints\\{}_{}_Description"
online_product_image_path = "C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\DevopsAutomation\\Resources\\testdata\\OnlineControllers\\{}_ProductImage.png"
app_mode_wire_image_path = "C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\DevopsAutomation\\Resources\\testdata\\Controller_Images\\{} application {}.png"

project_file_path = "../../../temp/{}"
project_file_temp_folder = "C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\DevopsAutomation\\temp"
project_file_temp_path = project_file_temp_folder + "\\{}"
project_working_path = "../../../koolprog_working_dir/{}"
project_working_folder_path = "../../../koolprog_working_dir"

koolprog_details_with_project_details_path = "C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\DevopsAutomation\\temp\\koolprog_details_with_project_details.txt"

app_data_path = "C:\\ProgramData\Appdata"
project_file_name = "Rhonda GreenCaitlin"
app_code_enable_disable_key = "Isdefault"
app_code_enable_disable_value = "yes"

simulator_path = "C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\DevopsAutomation\\test_input_config\\AKCC55\SIMULATOR-FILES\\{}-{}\\SIMULATOR.EXE"

CAN_baudrate = ["Auto", "250K"]
###############################################################################################################

envi_variable_name = "user_info"

###############################################################################################################
# ######## ETC1H1x controller

user_context_file_path = "../../../temp/context_file.txt"
controller_var_key_list = ["controllerCodeNo", "softwareVersion", "controllerPV", "controllerApplication", "database"]

# # kyes are in order to select the project details.
product_details_selection_keys = ["controllerApplication", "power", "spindle", "controllerCodeNo",
                                  "softwareVersion", "controllerPV"]

# database file path location.
database_path = "../../../Databases/{}.csv"

product_details_selection_types = {"controllerApplication": "ComboBox",
                                   "power": "ComboBox",
                                   "spindle": "ComboBox",
                                   "controllerCodeNo": "ComboBox",
                                   "softwareVersion": "ComboBox",
                                   "controllerPV": "ComboBox",
                                   }

unavailable_project_file_name = "unavailable.xml"

unavailable_chart_name = "unavailable.csv"

project_xml_file_parse_keys = {
    "param": "SET",
    "prod_details": {
        "controllerFamily": "Name0",
        "controllerVariant": "Name1",
        "controllerApplication": "Application",
        "power": "PowerSupply",
        "spindle": "",
        "controllerCodeNo": "CodeNumber",
        "softwareVersion": "SWVersion",
        "controllerPV": "PVVersion",
        "description": "Description"
    }
}

codenumber_popup_expected_controller_families = ["ETC1Hx", "ERC11x", "ERC21x"]

number_of_decimal_digit_after_point_for_sw_version = 2

project_file_filters = {
    "ETC1Hx": "xml",
    "EET": "xml",
    "ERC11x": "xml",
    "ERC21x": "xml",
    "EKE1x": "xml",
    "AK-CC55": "cbk"
}

dot_as_project_name = "."

##################### Saveas File Path In Preference Window ############

selected_path = "C:\KoolProg\Configurations"
new_saveas_file_path = "C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\DevopsAutomation\\koolprog_working_dir"
prj_details_temp_path = "C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\DevopsAutomation\\temp"
##################### Saveas File Path In Preference Window ############


######### CDF File ###########


######### CDF File ###########

##################### KoolProg Setup File###############################
installation_path = "C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\DevopsAutomation\\Independent_of_AUT\\KoolProg Setup.exe"
##################### KoolProg Setup File###############################
upgrade_path = "C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\DevopsAutomation\\Independent_of_AUT\\Upgrade_KoolProg\\KoolProg Setup.exe"
downgrade_path = "C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\DevopsAutomation\\Independent_of_AUT\\Downgrade_KoolProg\\KoolProg Setup.exe"
#################### KoolProg Setup File################################

##################### KoolProg uninstall File###############################
uninstall_file = 'C:\\Program Files (x86)\\Danfoss\\KoolProg\\unins000.exe'
##################### KoolProg uninstall File###############################


##################### Saveas File Path In Preference Window ############
######### CDF File ###########
#cdf_file_path = "../../../test_input_config/AKCC55/" #changed to below for checking failures
cdf_file_path = "C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\DevopsAutomation\\test_input_config\\AKCC55\\"
######### CDF File ###########
app_data_path = "C:\\ProgramData\\Appdata"

working_dir_path = "C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\DevopsAutomation\\koolprog_working_dir"
####################### CDF File Extension ###############################

CDF_File_Extension = ".cdf"

####################### CDF File Extension ###############################

######### QS File ###########

qs_file = "quicksettings.js"

######### QS File ###########


############## File Extension ########### 

FW_Upgrade_File_Extension = ".BIN"

############## File Extension ########### 

