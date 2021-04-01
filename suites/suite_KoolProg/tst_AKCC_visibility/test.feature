# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC Visibility

    #################################### OFFLINE ####################################################

    @KP_AKCC_ID_24.1 @KP_AKCC_ID_24.2
	Scenario: KP_AKCC_ID_24.1,KP_AKCC_ID_24.2: Check Visibility Of Quick Wizard Plus Quick Setting Rules Together In New Project Window.


	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Get Controller Details From Variable
	    And Get The Quick Setting Collection From Input Database
	    And Click On SetParameter Button And SetParameter Window Is Visible
	    And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Verify Quick Settings Window Is Visible
	    When Set Random Values In QuickSetting For 'QuickSetting_Collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Get The Quick Settings Collection From The UI
	    And Click On Finish Button In Quick Settings Window
	    And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	    And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'

    @KP_AKCC_ID_24.5 @KP_AKCC_ID_24.6
	Scenario: KP_AKCC_ID_24.5,KP_AKCC_ID_24.6: Check Visibility Of Quick Wizard Plus Quick Setting Rules Together In Project Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Get Controller Details From Variable
	    And Get The Quick Setting Collection From Input Database
	    And New Project Is Created For Selected Controller Details
	    And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	    And Break The Communication Of Port With KoolProg
	    And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
	    And Click On Quick Wizard Icon
	    When Set Random Values In QuickSetting For 'QuickSetting_Collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Get The Quick Settings Collection From The UI
	    And Click On Finish Button In Quick Settings Window
	    And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'

	@KP_AKCC_ID_24.13 @KP_AKCC_ID_24.14
	Scenario: KP_AKCC_ID_24.13,KP_AKCC_ID_24.14: Check Visibility Of Quick Wizard Plus Quick Setting Rules Together In Project Window After Opening Project From SetParameters Open Option.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
	    And Get Controller Details From Variable
	    And Get The Quick Setting Collection From Input Database
	    And New Project Is Created For Selected Controller Details
	    And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
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
	    And Click On Quick Wizard Icon
	    When Set Random Values In QuickSetting For 'QuickSetting_Collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Get The Quick Settings Collection From The UI
	    And Click On Finish Button In Quick Settings Window
	    And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'

	@KP_AKCC_ID_24.17 @KP_AKCC_ID_24.18
	Scenario: KP_AKCC_ID_24.17,KP_AKCC_ID_24.18: Check Visibility Of Quick Wizard Plus Quick Setting Rules Together In Project Window After Opening Project From Recent Project Lists.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Get Controller Details From Variable
	    And Get The Quick Setting Collection From Input Database
	    And New Project Is Created For Selected Controller Details
	    And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	    And Break The Communication Of Port With KoolProg
	    And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
	    And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
	    And Click On Quick Wizard Icon
	    When Set Random Values In QuickSetting For 'QuickSetting_Collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Get The Quick Settings Collection From The UI
	    And Click On Finish Button In Quick Settings Window
	    And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'

    @KP_AKCC_ID_24.3 @KP_AKCC_ID_24.4
	Scenario: KP_AKCC_ID_24.3,KP_AKCC_ID_24.4: Check Visibility Of Parameters And Groups In DataGrid In Project Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Get Controller Details From Variable
	    And New Project Is Created For Selected Controller Details
	    And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	    And Break The Communication Of Port With KoolProg
	    And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    When Set Random Values In DataGrid For 'Parameter_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Parse The DataGrid
	    Then Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'

	@KP_AKCC_ID_24.11 @KP_AKCC_ID_24.12
	Scenario: KP_AKCC_ID_24.11,KP_AKCC_ID_24.12: Check Visibility Of Parameters And Groups In DataGrid In Project Window After Opening Project From SetParameters Open Option.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
	    And Get Controller Details From Variable
	    And New Project Is Created For Selected Controller Details
	    And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
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
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    When Set Random Values In DataGrid For 'Parameter_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Parse The DataGrid
	    Then Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'

	@KP_AKCC_ID_24.15 @KP_AKCC_ID_24.16
	Scenario: KP_AKCC_ID_24.15,KP_AKCC_ID_24.16: Check Visibility Of Parameters And Groups In DataGrid In Project Window After Opening Project From Recent Project Lists.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Get Controller Details From Variable
	    And New Project Is Created For Selected Controller Details
	    And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	    And Break The Communication Of Port With KoolProg
	    And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
	    And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    When Set Random Values In DataGrid For 'Parameter_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Parse The DataGrid
	    Then Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'

    #################################### OFFLINE ####################################################


    #################################### ONLINE ####################################################

    @KP_AKCC_ID_24.7 @KP_AKCC_ID_24.8
	Scenario: KP_AKCC_ID_24.7,KP_AKCC_ID_24.8: Check Visibility Of Parameters And Groups In DataGrid In Import Settings From Controller Window.

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
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On All Tree Item In Tree View
	    When Set Random Values In DataGrid For 'Parameter_collection'
	    And Parse The DataGrid
	    Then Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'

	@KP_AKCC_ID_24.9 @KP_AKCC_ID_24.10
	Scenario: KP_AKCC_ID_24.9,KP_AKCC_ID_24.10: Check Visibility Of Quick Wizard Plus Quick Setting Rules Together In Import Settings From Controller Window.

		Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Get The Quick Setting Collection From Input Database
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Click On All Tree Item In Tree View
	    And Click On Quick Wizard Icon
	    When Set Random Values In QuickSetting For 'QuickSetting_Collection'
	    And Get The Quick Settings Collection From The UI
	    And Click On Finish Button In Quick Settings Window
	    And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'


	 @KP_AKCC_ID_24.19 @KP_AKCC_ID_24.20
	Scenario: KP_AKCC_ID_24.19,KP_AKCC_ID_24.20: Check Visibility Of Parameters And Groups In DataGrid In Online Service Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Get Controller Details From Variable
	    And Enable The Port For Created Project
	    And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On All Tree Item In Tree View
	    When Set Random Values In DataGrid For 'Parameter_collection'
	    And Parse The DataGrid
	    Then Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'

     @KP_AKCC_ID_24.21 @KP_AKCC_ID_24.22
	Scenario: KP_AKCC_ID_24.21,KP_AKCC_ID_24.22: Check Visibility Of Quick Wizard Plus Quick Setting Rules Together In Online Service Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Get Controller Details From Variable
	    And Get The Quick Setting Collection From Input Database
	    And Enable The Port For Created Project
		And Navigate To On-line Service Window
		And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And On-line Service Window Is Visible
		And Click On All Tree Item In Tree View
	    And Click On Quick Wizard Icon
	    When Set Random Values In QuickSetting For 'QuickSetting_Collection'
	    And Get The Quick Settings Collection From The UI
	    And Click On Finish Button In Quick Settings Window
	    And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'


    #################################### ONLINE ###################################################