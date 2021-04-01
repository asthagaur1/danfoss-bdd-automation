# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC ItemType


    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

    @KP_AKCC_ID_35.1
     Scenario: KP_AKCC_ID_35.1: Check If All Parameters Have All ItemType Properties In CDF.

		Given KoolProg Had Opened
        And Get Controller Details From Variable
		When Get The Parameter Collection From Input Database
		Then Verify If All Parameters Have 'ItemType' Property In 'Parameter_collection'
		And Verify All The 'ItemType' Is Available In 'Parameter_collection'


	@KP_AKCC_ID_35.2
     Scenario: KP_AKCC_ID_35.2: Check If Changes Made To Parameters With ItemType 'S', Are Copied To The Simulator Or The Controller From Export In Project Window.

        Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Get The 'ItemType' Of 'S' From 'Parameter_collection'
		And Get The 'DataType' Of 'Integer' From 'ItemType_S_Collection'
        And Get Random Values Count '1' for 'Integer' In DataGrid For 'DataType_Integer_Collection'
        And Get The 'DataType' Of 'Float' From 'ItemType_S_Collection'
		And Get Random Values Count '1' for 'Float' In DataGrid For 'DataType_Float_Collection'
		And Combine The Collection 'Integer_updated_collection' And 'Float_updated_collection'
		And Get The 'DataType' Of 'Enum' From 'ItemType_S_Collection'
        And Get Random Values Count '1' for 'Enum' In DataGrid For 'DataType_Enum_Collection'
        And Combine The Collection 'Enum_updated_collection' And 'Merged_Collection'
		When Set Random Values In DataGrid For 'Merged_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Click Ok Button In Popup Window In 'PROJECT_WINDOW'
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Click On All Tree Item In Tree View
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'


	@KP_AKCC_ID_35.3
     Scenario: KP_AKCC_ID_35.3: Check If Changes Made To Parameters With ItemType P Or F , Are Not Changed In Project Window After Clicking On Save Button.

        Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Get The 'ItemType' Of 'P' From 'Parameter_collection'
		And Get The 'ItemType' Of 'F' From 'Parameter_collection'
		And Combine The Collection 'ItemType_F_Collection' And 'ItemType_P_Collection'
		When Set Random Values In DataGrid For 'Merged_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'

	@KP_AKCC_ID_35.4
     Scenario: KP_AKCC_ID_35.4: Check If Changes Made To Parameters With ItemType 'S', Are Copied To The Simulator Or The Controller From Export In Import Settings From Controller Window.


		Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Go To Set Parameter Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Get The 'ItemType' Of 'S' From 'Parameter_collection'
		And Get The 'DataType' Of 'Integer' From 'ItemType_S_Collection'
        And Get Random Values Count '1' for 'Integer' In DataGrid For 'DataType_Integer_Collection'
        And Get The 'DataType' Of 'Float' From 'ItemType_S_Collection'
		And Get Random Values Count '1' for 'Float' In DataGrid For 'DataType_Float_Collection'
		And Combine The Collection 'Integer_updated_collection' And 'Float_updated_collection'
		And Get The 'DataType' Of 'Enum' From 'ItemType_S_Collection'
        And Get Random Values Count '1' for 'Enum' In DataGrid For 'DataType_Enum_Collection'
        And Combine The Collection 'Enum_updated_collection' And 'Merged_Collection'
		When Set Random Values In DataGrid For 'Merged_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Click Ok Button In Popup Window In 'PROJECT_WINDOW'
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Click On All Tree Item In Tree View
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'

	@KP_AKCC_ID_35.5
     Scenario: KP_AKCC_ID_35.5: Check If Changes Made To Parameters With ItemType P Or F , Are Not Changed In Import Settings From Controller Window After Clicking On Save Button.


		Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Go To Set Parameter Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Get The 'ItemType' Of 'P' From 'Parameter_collection'
		And Get The 'ItemType' Of 'F' From 'Parameter_collection'
		And Combine The Collection 'ItemType_F_Collection' And 'ItemType_P_Collection'
		When Set Random Values In DataGrid For 'Merged_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'


	@KP_AKCC_ID_35.6
     Scenario: KP_AKCC_ID_35.6: Check If Changes Made To Parameters With ItemType 'S', Are Copied To The Simulator Or The Controller From Export After Opening Project From SetParameters Window.


		Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Get The 'ItemType' Of 'S' From 'Parameter_collection'
		And Get The 'DataType' Of 'Integer' From 'ItemType_S_Collection'
        And Get Random Values Count '1' for 'Integer' In DataGrid For 'DataType_Integer_Collection'
        And Get The 'DataType' Of 'Float' From 'ItemType_S_Collection'
		And Get Random Values Count '1' for 'Float' In DataGrid For 'DataType_Float_Collection'
		And Combine The Collection 'Integer_updated_collection' And 'Float_updated_collection'
		And Get The 'DataType' Of 'Enum' From 'ItemType_S_Collection'
        And Get Random Values Count '1' for 'Enum' In DataGrid For 'DataType_Enum_Collection'
        And Combine The Collection 'Enum_updated_collection' And 'Merged_Collection'
		When Set Random Values In DataGrid For 'Merged_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Click Ok Button In Popup Window In 'PROJECT_WINDOW'
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Click On All Tree Item In Tree View
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'

	@KP_AKCC_ID_35.7
     Scenario: KP_AKCC_ID_35.7: Check If Changes Made To Parameters With ItemType P Or F , Are Not Changed In Project Window After Clicking On Save Button After Opening Project From SetParameters Window.


		Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Get The 'ItemType' Of 'P' From 'Parameter_collection'
		And Get The 'ItemType' Of 'F' From 'Parameter_collection'
		And Combine The Collection 'ItemType_F_Collection' And 'ItemType_P_Collection'
		When Set Random Values In DataGrid For 'Merged_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'

	@KP_AKCC_ID_35.8
     Scenario: KP_AKCC_ID_35.8: Check If Changes Made To Parameters With ItemType 'S', Are Copied To The Simulator Or The Controller From Export After Opening Project From Recent Project Lists.


		Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
     	And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Get The 'ItemType' Of 'S' From 'Parameter_collection'
		And Get The 'DataType' Of 'Integer' From 'ItemType_S_Collection'
        And Get Random Values Count '1' for 'Integer' In DataGrid For 'DataType_Integer_Collection'
        And Get The 'DataType' Of 'Float' From 'ItemType_S_Collection'
		And Get Random Values Count '1' for 'Float' In DataGrid For 'DataType_Float_Collection'
		And Combine The Collection 'Integer_updated_collection' And 'Float_updated_collection'
		And Get The 'DataType' Of 'Enum' From 'ItemType_S_Collection'
        And Get Random Values Count '1' for 'Enum' In DataGrid For 'DataType_Enum_Collection'
        And Combine The Collection 'Enum_updated_collection' And 'Merged_Collection'
		When Set Random Values In DataGrid For 'Merged_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Click Ok Button In Popup Window In 'PROJECT_WINDOW'
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Click On All Tree Item In Tree View
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'



	@KP_AKCC_ID_35.9
     Scenario: KP_AKCC_ID_35.9: Check If Changes Made To Parameters With ItemType  P Or F , Are Not Changed In Project Window After Clicking On Save Button After Opening Project From Recent Project Lists.


		Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
     	And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Get The 'ItemType' Of 'P' From 'Parameter_collection'
		And Get The 'ItemType' Of 'F' From 'Parameter_collection'
		And Combine The Collection 'ItemType_F_Collection' And 'ItemType_P_Collection'
		When Set Random Values In DataGrid For 'Merged_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'

	@KP_AKCC_ID_35.10
     Scenario: KP_AKCC_ID_35.10: Check If Changes Made To Parameters With ItemType 'S', Is Copied To Controller In Copy To Controller Window.

		Given KoolProg Had Opened
        And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Get The 'ItemType' Of 'S' From 'Parameter_collection'
		And Get The 'DataType' Of 'Integer' From 'ItemType_S_Collection'
        And Get Random Values Count '1' for 'Integer' In DataGrid For 'DataType_Integer_Collection'
        And Get The 'DataType' Of 'Float' From 'ItemType_S_Collection'
		And Get Random Values Count '1' for 'Float' In DataGrid For 'DataType_Float_Collection'
		And Combine The Collection 'Integer_updated_collection' And 'Float_updated_collection'
		And Get The 'DataType' Of 'Enum' From 'ItemType_S_Collection'
        And Get Random Values Count '1' for 'Enum' In DataGrid For 'DataType_Enum_Collection'
        And Combine The Collection 'Enum_updated_collection' And 'Merged_Collection'
		When Set Random Values In DataGrid For 'Merged_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        And Open The Created File In Project Window
        And Add Required Delay For 'IMPORTING_PROJECT_FILE' for 'ONLINE' mode
		And Click On Start Button In Copy To Controller Window
		And Add Required Delay For 'PROGRAMMING_CONTROLLER_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'Configuration successfully copied to controller.' In Copy To controller Window
        And Click OK Button In Popup Window
        And Go To Home Window From Copy To controller Window
        And Add Required Delay For 'SWITCHING_TO_HOME_FROM_ANY_OTHER_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Click On All Tree Item In Tree View
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'

	@KP_AKCC_ID_35.11
     Scenario: KP_AKCC_ID_35.11: Check If Changes Made To Parameters With ItemType 'S', Is Copied To Controller In Online Service Window.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
		And Enable The Port For Created Project
		And Navigate To On-line Service Window
		And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And On-line Service Window Is Visible
		And Get The Parameter Collection From Input Database
		And Click On All Tree Item In Tree View
		And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Get The 'ItemType' Of 'S' From 'Parameter_collection'
		And Get The 'DataType' Of 'Integer' From 'ItemType_S_Collection'
		And Get Random Values Count '1' for 'Integer' In DataGrid For 'DataType_Integer_Collection'
		And Get The 'DataType' Of 'Float' From 'ItemType_S_Collection'
		And Get Random Values Count '1' for 'Float' In DataGrid For 'DataType_Float_Collection'
		And Combine The Collection 'Integer_updated_collection' And 'Float_updated_collection'
		And Get The 'DataType' Of 'Enum' From 'ItemType_S_Collection'
		And Get Random Values Count '1' for 'Enum' In DataGrid For 'DataType_Enum_Collection'
		And Combine The Collection 'Enum_updated_collection' And 'Merged_Collection'
		When Set Random Values In DataGrid For 'Merged_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Go To Home Window From On-Service Test Window
		And Add Required Delay For 'SWITCHING_TO_HOME_FROM_ANY_OTHER_WINDOW' for 'ONLINE' mode
		And Go To Set Parameter Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Click On All Tree Item In Tree View
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'


	@KP_AKCC_ID_35.12
     Scenario: KP_AKCC_ID_35.12: Check If Changes Made To Parameters ItemType Should Not Be  P Or F , Are Not Changed In Online Service Window.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
		And Enable The Port For Created Project
		And Navigate To On-line Service Window
		And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And On-line Service Window Is Visible
		And Get The Parameter Collection From Input Database
		And Click On All Tree Item In Tree View
		And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Get The 'ItemType' Of 'P' From 'Parameter_collection'
		And Get The 'ItemType' Of 'F' From 'Parameter_collection'
		And Combine The Collection 'ItemType_F_Collection' And 'ItemType_P_Collection'
		When Set Random Values In DataGrid For 'Merged_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'

	@KP_AKCC_ID_35.13
	Scenario: KP_AKCC_ID_35.13: Verify If Parameters With ItemType R Are Read-Only And Values Are Not Writable In Online Service Window.

	    Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
		And Enable The Port For Created Project
		And Navigate To On-line Service Window
		And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And On-line Service Window Is Visible
		And Get The Parameter Collection From Input Database
		And Click On All Tree Item In Tree View
		When Get The 'ItemType' Of 'R' From 'Parameter_collection'
		And Parse The DataGrid
		Then Verify 'ItemType_R_Collection' Are Not Writeable In 'parsed_datagrid'

