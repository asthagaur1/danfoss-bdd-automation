# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: Duplicate parameters


    ############################################## OFFLINE ############################################3

    @KP_AKCC_ID_27.1
     Scenario: KP_AKCC_ID_27.1: Check If Parameter Value Change In One Group Changes Its Value In All The Other Groups In DataGrid In Project Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get Parameters That Are Present In More Than One Group In 'Parameter_collection'
		And Remove 'ItemType' Of 'R' From 'Duplicate_Parameters_Collection'
		When Set Random Values In DataGrid For 'Duplicate_Parameters_Collection'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'

	@KP_AKCC_ID_27.5
     Scenario: KP_AKCC_ID_27.5: Check If Parameter Value Change In One Group Changes Its Value In All The Other Groups In DataGrid In Project Window After Opening Project From Open Option In SetParameters Window.


		Given KoolProg Had Opened
     	And Disable All Serial Ports
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
		And Get The Parameter Collection From Input Database
		And Get Parameters That Are Present In More Than One Group In 'Parameter_collection'
		And Remove 'ItemType' Of 'R' From 'Duplicate_Parameters_Collection'
		When Set Random Values In DataGrid For 'Duplicate_Parameters_Collection'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'

	@KP_AKCC_ID_27.7
     Scenario: KP_AKCC_ID_27.7: Check If Parameter Value Change In One Group Changes Its Value In All The Other Groups In DataGrid In Project Window After Opening Project From Recent Project Lists.

		Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get Parameters That Are Present In More Than One Group In 'Parameter_collection'
		And Remove 'ItemType' Of 'R' From 'Duplicate_Parameters_Collection'
		When Set Random Values In DataGrid For 'Duplicate_Parameters_Collection'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'


	############################################## OFFLINE ############################################

	############################################## ONLINE ############################################


	@KP_AKCC_ID_27.3
     Scenario: KP_AKCC_ID_27.3: Check If Parameter Value Change In One Group Changes Its Value In All The Other Groups In DataGrid In Import Settings From Controller Window.

		Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get Parameters That Are Present In More Than One Group In 'Parameter_collection'
		And Remove 'ItemType' Of 'R' From 'Duplicate_Parameters_Collection'
		When Set Random Values In DataGrid For 'Duplicate_Parameters_Collection'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'

	@KP_AKCC_ID_27.9
     Scenario: KP_AKCC_ID_27.9: Check If Parameter Value Change In One Group Changes Its Value In All The Other Groups In DataGrid In Online Service Window.

		Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
		And Get The Parameter Collection From Input Database
		And Click On All Tree Item In Tree View
		And Get Parameters That Are Present In More Than One Group In 'Parameter_collection'
		And Remove 'ItemType' Of 'R' From 'Duplicate_Parameters_Collection'
		When Set Random Values In DataGrid For 'Duplicate_Parameters_Collection'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'

	############################################## ONLINE ############################################
