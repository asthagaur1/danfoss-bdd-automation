# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: Check AKCC test cases online.

    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

    @KP_AKCC_ID_40.1
     Scenario: KP_AKCC_ID_40.1: Check If Parameters Are Continuously Being Read And Written Just As The Normal Parameter Read And Write In Online Service Window And Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The 'DataType' Of 'Integer' From 'Parameter_collection'
        And Get Random Values Count '1' for 'Integer' In DataGrid For 'DataType_Integer_Collection'
        And Get The 'DataType' Of 'Float' From 'Parameter_collection'
		And Get Random Values Count '1' for 'Float' In DataGrid For 'DataType_Float_Collection'
		And Combine The Collection 'Integer_updated_collection' And 'Float_updated_collection'
		And Get The 'DataType' Of 'Enum' From 'Parameter_collection'
        And Get Random Values Count '1' for 'Enum' In DataGrid For 'DataType_Enum_Collection'
        And Combine The Collection 'Enum_updated_collection' And 'Merged_Collection'
        When Set Random Values In DataGrid For 'Merged_Collection'
        And The Project Window Is Visible
        And Click On Export Button
        And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
        And Click OK Button In Popup Window
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Navigate To On-line Service Window
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        And Parse The DataGrid
        Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get The 'DataType' Of 'Integer' From 'Parameter_collection'
        And Get Random Values Count '1' for 'Integer' In DataGrid For 'DataType_Integer_Collection'
        And Get The 'DataType' Of 'Float' From 'Parameter_collection'
		And Get Random Values Count '1' for 'Float' In DataGrid For 'DataType_Float_Collection'
		And Combine The Collection 'Integer_updated_collection' And 'Float_updated_collection'
		And Get The 'DataType' Of 'Enum' From 'Parameter_collection'
        And Get Random Values Count '1' for 'Enum' In DataGrid For 'DataType_Enum_Collection'
        And Combine The Collection 'Enum_updated_collection' And 'Merged_Collection'
        And Set Random Values In DataGrid For 'Merged_Collection'
		And Go To Home Window From On-Service Test Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Parse The DataGrid
        And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'

