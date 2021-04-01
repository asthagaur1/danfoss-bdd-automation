# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC Connected Controller

    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

    ####################################### OFFLINE ##############################################

    @KP_AKCC_ID_26.1,26.2,26.19,26.20,26.28,26.29
	Scenario: KP_AKCC_ID_26.1,26.2,26.19,26.20,26.28,26.29: Check If Enum Values Are Not Empty And Available In The Right Order With Respect To CDF File From Project window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'DataType' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Parse The DataGrid
        And Verify 'DataType' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Parse The DataGrid
        And Verify 'DataType' In 'Parameter_collection' And 'parsed_datagrid'


	@KP_AKCC_ID_26.6,26.24,26.33
     Scenario: KP_AKCC_ID_26.6,26.24,26.33:  Verify Parameter name, Min, Max , Default and Value For Default Data in DataGrid With The CDF File From Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        And Update The Dynamic Min And Max Values In The CDF Collection
        Then Verify 'Min' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Max' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Value' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Default' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Parse The DataGrid
        And Verify 'Min' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Max' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Value' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Default' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Parse The DataGrid
        And Verify 'Min' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Max' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Value' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Default' In 'Parameter_collection' And 'parsed_datagrid'

     @KP_AKCC_ID_26.7,26.25,26.34
     Scenario: KP_AKCC_ID_26.7,26.25,26.34:  Verify Parameter Value For Changed Values in DataGrid With The CDF File From Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Get The 'DataType' Of 'Integer' From 'Parameter_collection'
        And Get Random Values Count '2' for 'Integer' In DataGrid For 'DataType_Integer_Collection'
        And Get The 'DataType' Of 'Float' From 'Parameter_collection'
		And Get Random Values Count '2' for 'Float' In DataGrid For 'DataType_Float_Collection'
		And Combine The Collection 'Integer_updated_collection' And 'Float_updated_collection'
		And Get The 'DataType' Of 'Enum' From 'Parameter_collection'
        And Get Random Values Count '2' for 'Enum' In DataGrid For 'DataType_Enum_Collection'
        And Combine The Collection 'Enum_updated_collection' And 'Merged_Collection'
        When Set Random Values In DataGrid For 'Merged_Collection'
        And Click Save Button In Project Window
        And Click OK Button In Popup Window
        And Parse The DataGrid
        Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Parse The DataGrid
        And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Parse The DataGrid
        And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'


    ####################################### OFFLINE ##############################################


    ####################################### ONLINE ##############################################

    @KP_AKCC_ID_26.10,26.11,26.37,26.38
	Scenario: KP_AKCC_ID_26.10,26.11,26.37,26.38: Check If Enum Values Are Not Empty And Available In The Right Order With Respect To CDF File From Project window And Open Project Window And Recent Project Window.

	    Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'DataType' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        And Parse The DataGrid
        And Verify 'DataType' In 'Parameter_collection' And 'parsed_datagrid'

    @KP_AKCC_ID_26.15,26.42
     Scenario: KP_AKCC_ID_26.15,26.42:  Verify Parameter name, Min, Max , Default and Value For Default Data in DataGrid With The CDF File From Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        And Update The Dynamic Min And Max Values In The CDF Collection
        Then Verify 'Min' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Max' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Value' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Default' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        And Parse The DataGrid
        And Verify 'Min' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Max' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Value' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Default' In 'Parameter_collection' And 'parsed_datagrid'


	  @KP_AKCC_ID_26.16
     Scenario: KP_AKCC_ID_26.16:  Verify Parameter name, Min, Max , Default and Value For Changed Values in DataGrid With The CDF File In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Get The 'DataType' Of 'Integer' From 'Parameter_collection'
        And Get Random Values Count '2' for 'Integer' In DataGrid For 'DataType_Integer_Collection'
        And Get The 'DataType' Of 'Float' From 'Parameter_collection'
		And Get Random Values Count '2' for 'Float' In DataGrid For 'DataType_Float_Collection'
		And Combine The Collection 'Integer_updated_collection' And 'Float_updated_collection'
		And Get The 'DataType' Of 'Enum' From 'Parameter_collection'
        And Get Random Values Count '2' for 'Enum' In DataGrid For 'DataType_Enum_Collection'
        And Combine The Collection 'Enum_updated_collection' And 'Merged_Collection'
        And Set Random Values In DataGrid For 'Merged_Collection'
        And Click Save Button In Project Window
        And Click OK Button In Popup Window
        And Parse The DataGrid
        Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'

	 @KP_AKCC_ID_26.43
     Scenario: KP_AKCC_ID_26.43:  Verify Parameter name, Min, Max , Default and Value For Changed Values in DataGrid With The CDF File In Online Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When Enable The Port For Created Project
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        And Get The 'DataType' Of 'Integer' From 'Parameter_collection'
        And Get Random Values Count '2' for 'Integer' In DataGrid For 'DataType_Integer_Collection'
        And Get The 'DataType' Of 'Float' From 'Parameter_collection'
		And Get Random Values Count '2' for 'Float' In DataGrid For 'DataType_Float_Collection'
		And Combine The Collection 'Integer_updated_collection' And 'Float_updated_collection'
		And Get The 'DataType' Of 'Enum' From 'Parameter_collection'
        And Get Random Values Count '2' for 'Enum' In DataGrid For 'DataType_Enum_Collection'
        And Combine The Collection 'Enum_updated_collection' And 'Merged_Collection'
        And Set Random Values In DataGrid For 'Merged_Collection'
        And Click Save Button In Project Window
        And Click OK Button In Popup Window
        And Parse The DataGrid
        Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'

    ####################################### ONLINE ##############################################
