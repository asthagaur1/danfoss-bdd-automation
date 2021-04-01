# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC Save

    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

    ############################################ OFFLINE ##########################################

    @KP_AKCC_ID_20.1
     Scenario: KP_AKCC_ID_20.1: Check If Saving Changes Saved In Same File And File Extension Should Be .cbk From Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Get The 'DataType' Of 'Integer' From 'Parameter_collection'
        And Set Random Values In DataGrid For 'DataType_Integer_Collection'
        When Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        Then Verify Project Path And File With Extension For Saved File Is Exist
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Verify Popup Message Should Come As 'Project already open' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
        And Verify Project Details Will Be Available In Project Window
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'


     @KP_AKCC_ID_20.3
     Scenario: KP_AKCC_ID_20.3: Check If Saving Changes Saved In Same File And File Extension Should Be .cbk From Open Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Get The 'DataType' Of 'Integer' From 'Parameter_collection'
        And Set Random Values In DataGrid For 'DataType_Integer_Collection'
        When Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Goto Working Directory In Open Dialog Window
        Then Verify Project Path And File With Extension For Saved File Is Exist
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Verify Project Details Will Be Available In Project Window
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'

     @KP_AKCC_ID_20.4
     Scenario: KP_AKCC_ID_20.4: Check If Saving Changes Saved In Same File And File Extension Should Be .cbk From Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Get The 'DataType' Of 'Integer' From 'Parameter_collection'
        And Set Random Values In DataGrid For 'DataType_Integer_Collection'
        When Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        Then Verify Project Path And File With Extension For Saved File Is Exist
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Verify Popup Message Should Come As 'Project already open' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
        And Verify Project Details Will Be Available In Project Window
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'



    ############################################# OFFLINE #########################################


	############################################# ONLINE #########################################


    @KP_AKCC_ID_20.2
     Scenario: KP_AKCC_ID_20.2: Check If Saving Changes Saved In Same File And File Extension Should Be .cbk From Import Setting From Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Get The Parameter Collection From Input Database
        And Get The 'DataType' Of 'Integer' From 'Parameter_collection'
        And Set Random Values In DataGrid For 'DataType_Integer_Collection'
        And Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        When Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        Then Verify Project Path And File With Extension For Saved File Is Exist From Import Setting From Controller
        And Open The Created New File In Import Settings Window
        And Click Open Button in Open Window
        And Verify Popup Message Should Come As 'Project already open' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
        And Verify Project Details Will Be Available In Import Setting From Controller Window
        And The Project Window Is Visible
        And Click On All Tree Item In Tree View
        And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'

	############################################# ONLINE #########################################