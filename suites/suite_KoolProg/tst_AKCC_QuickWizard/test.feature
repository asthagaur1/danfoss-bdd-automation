# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC Quick Wizard


    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

	######################################### OFFLINE ##################################################

	@KP_AKCC_ID_17.2
     Scenario: KP_AKCC_ID_17.2: Verification Of Quick Setting Window After Importing Offline CDF From New Project Window

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        When Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        When Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Set CodeNumber In Project Description Window
        And Get SW Version List From Project Description Window
        And Verify Software Version Combobox Has Imported Cdf
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        Then Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Verify Quick Wizard Header Label From New Project Window
        And Verify Quick Setting Parameters Label From New Project Window
        And Verify X button in Quick Setup Window
        And Verify Finish Button In Quick Setup Window
        And Verify Wired Image Is Visible And Enabled
        And Verify Scrollbar in Quick Setup Window
        And Verify Controller Variant In Quick Setup Window
        And Verify Controller Code Number In Quick Setup Window
        And Verify Software Version In Quick Setup Window
        And Delete Imported New Code Number And Software Version

     @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

     @KP_AKCC_ID_17.4,@KP_AKCC_ID_17.5
     Scenario: KP_AKCC_ID_17.4,KP_AKCC_ID_17.5: Check If Tooltip Of BoxType Parameter Is Displayed As Along With Max And Min Range And Tooltip Of Enum Parameters Is Not Displayed From Create Project Wizard Window.

         Given KoolProg Had Opened
         And Get Controller Details From Variable
         And Click On SetParameter Button And SetParameter Window Is Visible
         When Click On New Button From Set Parameter Window
         And Select Controller Family And It's Variant
         And Go To Controller Details Selection Window
         And Select Code Number And Software Version In Project Description Window
         And Write Project Name
         And Write Project Description
         And Click Finish Button In New Project Window
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         Then Verify Tooltip Of Enum Parameter Is Not Displayed
         And Click On Finish Button In Quick Settings Window
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Verify Tooltip Of Quick Wizard Displayed Along With Min And Max Range

    @KP_AKCC_ID_17.6:
	Scenario: KP_AKCC_ID_17.6:  Check If Wizard Parameters And Description Are Displayed Correctly With Default Values From Create Project Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
	    And Preference Window Is Visible
	    And Get Koolprog Working Path From Preference Window And Save it
	    When Get Controller Details From Variable
	    And Get The Quick Setting Collection From Input Database
	    And Click On SetParameter Button And SetParameter Window Is Visible
	    And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Get The Quick Settings Collection From The UI
        And Check The Parameter And Help In Quick Wizard Window
        Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'QuickSetting_Collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'QuickSetting_Collection'

     @KP_AKCC_ID_17.9,17.10,17.11
    Scenario: KP_AKCC_ID_17.9,17.10,17.11: Check If Clicking On Offline Wizard And Changing Values, Clicking On Finish, Changes Values In The Create Project Quick Wizard ,Datagrid And Quick Wizard In Create Project Window.

         Given KoolProg Had Opened
         And Get Controller Details From Variable
         And Click On SetParameter Button And SetParameter Window Is Visible
         When Click On New Button From Set Parameter Window
         And Select Controller Family And It's Variant
         And Go To Controller Details Selection Window
         And Select Code Number And Software Version In Project Description Window
         And Write Project Name
         And Write Project Description
         And Click Finish Button In New Project Window
         And Get The Quick Setting Collection From Input Database
         When Set Random Values In QuickSetting For 'QuickSetting_Collection'
	     And Get The Quick Settings Collection From The UI
	     And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'
	     And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'
         And Click On Finish Button In Quick Settings Window
         And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	     And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	     And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	     And The Project Window Is Visible
	     And Break The Communication Of Port With KoolProg
	     And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Parse The DataGrid
	     And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	     And Remove 'ItemType' Of 'P' From 'Changed_quickSetting_collection'
	     Then Check The 'Changed_quickSetting_collection' Is Present In The 'parsed_datagrid'
	     And Click On Quick Wizard Icon
	     And Get The Quick Settings Collection From The UI
	     And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'
	     And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'


     @KP_AKCC_ID_17.12
    Scenario: KP_AKCC_ID_17.12: Check If After Making Changes, Clicking On Cancel, Reverts Back The Changes In Create Project Wizard Window.

         Given KoolProg Had Opened
         And Get Controller Details From Variable
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On New Button From Set Parameter Window
         And Select Controller Family And It's Variant
         And Go To Controller Details Selection Window
         And Select Code Number And Software Version In Project Description Window
         And Write Project Name
         And Write Project Description
         And Click Finish Button In New Project Window
         And Get The Quick Setting Collection From Input Database
         When Set Random Values In QuickSetting For 'QuickSetting_Collection'
         And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	     And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	     And Click On X Button In Quick Settings Window
	     Then Verify Popup Message Should Come As 'Project will be created with default value' In 'QuickSettingsWindow'
	     And Click OK Button In Popup Window
	     And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	     And The Project Window Is Visible
	     And Parse The DataGrid
	     And Check The 'Changed_quickSetting_collection' Is Not Present In The 'parsed_datagrid'

     @KP_AKCC_ID_17.13
    Scenario: KP_AKCC_ID_17.13: Verify Quick Wizard Button Is Enable In Project Window

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        When The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		Then Verify Quick Wizard Icon Is Visible
		And Verify Quick Wizard Button Is Enabled

	 @KP_AKCC_ID_17.15,@KP_AKCC_ID_17.16
     Scenario: KP_AKCC_ID_17.15,KP_AKCC_ID_17.16: Check If Tooltip Of BoxType Parameter Is Displayed As Along With Max And Min Range And Tooltip Of Enum Parameters Is Not Displayed From Project Window.

         Given KoolProg Had Opened
         And Get Controller Details From Variable
         And New Project Is Created For Selected Controller Details
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Click On Quick Wizard Icon
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On Finish Button In Quick Settings Window
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         Then Verify Tooltip Of Enum Parameter Is Not Displayed
         And Verify Tooltip Of Quick Wizard Displayed Along With Min And Max Range

      @KP_AKCC_ID_17.18,17.44,17.57
    Scenario: KP_AKCC_ID_17.18,17.44,17.57: Check If Clicking On Offline Wizard And Changing Values, Clicking On Finish, Changes Values In The Datagrid In Project Window And Open Project Window And Recent Project Window.

         Given KoolProg Had Opened
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Koolprog Working Path From Preference Window And Save it
         And Get Controller Details From Variable
         And New Project Is Created For Selected Controller Details
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Get The Quick Setting Collection From Input Database
         And Click On Quick Wizard Icon
         When Set Random Values In QuickSetting For 'QuickSetting_Collection'
         And Click On Finish Button In Quick Settings Window
         And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	     And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	     And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	     And The Project Window Is Visible
	     And Break The Communication Of Port With KoolProg
	     And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Parse The DataGrid
	     And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	     And Remove 'ItemType' Of 'P' From 'Changed_quickSetting_collection'
	     Then Check The 'Changed_quickSetting_collection' Is Present In The 'parsed_datagrid'
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
	     And Get The Quick Setting Collection From Input Database
         And Set Random Values In QuickSetting For 'QuickSetting_Collection'
         And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	     And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	     And Click On Finish Button In Quick Settings Window
	     And Click OK Button In Popup Window
	     And Parse The DataGrid
	     And Remove 'ItemType' Of 'P' From 'Changed_quickSetting_collection'
	     And Check The 'Changed_quickSetting_collection' Is Present In The 'parsed_datagrid'
	     And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Parse The DataGrid
         And Remove 'ItemType' Of 'P' From 'Changed_quickSetting_collection'
         And Check The 'Changed_quickSetting_collection' Is Present In The 'parsed_datagrid'

     @KP_AKCC_ID_17.19,17.45,17.58
    Scenario: KP_AKCC_ID_17.19,17.45,17.58: Check If Clicking On Datagrid And Changing Values, Clicking On Finish, Changes Values In The Quick Wizard In Project Window And Open Project Window And Recent Project Window.

         Given KoolProg Had Opened
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Koolprog Working Path From Preference Window And Save it
         And Get Controller Details From Variable
         And New Project Is Created For Selected Controller Details
         And Get The Quick Setting Collection From Input Database
	     And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	     And The Project Window Is Visible
	     And Break The Communication Of Port With KoolProg
	     And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Parse The DataGrid
         And Get The Parameter Collection From Input Database
         And Get The Quick Settings Collection With Respect To Datagrid
         When Set Random Values In DataGrid For 'quick_setting_collection'
         And The Project Window Is Visible
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Changed_values_collection'
         And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Changed_values_collection'
         And Click On Finish Button In Quick Settings Window
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
         And Set Random Values In DataGrid For 'quick_setting_collection'
         And The Project Window Is Visible
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Changed_values_collection'
         And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Changed_values_collection'
         And Click On Finish Button In Quick Settings Window
	     And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Set Random Values In DataGrid For 'quick_setting_collection'
         And The Project Window Is Visible
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Changed_values_collection'
         And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Changed_values_collection'

     @KP_AKCC_ID_17.20,17.46,17.59
    Scenario: KP_AKCC_ID_17.20,17.46,17.59: Check If After Making Changes, Clicking On Cancel, Reverts Back The Changes In Project Window And Open Project Window And Recent Project Window.

         Given KoolProg Had Opened
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Koolprog Working Path From Preference Window And Save it
         And Get Controller Details From Variable
         And New Project Is Created For Selected Controller Details
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	     And The Project Window Is Visible
	     And Break The Communication Of Port With KoolProg
	     And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
	     And Click On Quick Wizard Icon
	     And Get The Quick Setting Collection From Input Database
         When Set Random Values In QuickSetting For 'QuickSetting_Collection'
         And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	     And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	     And Click On X Button In Quick Settings Window
	     And Click OK Button In Popup Window
	     And Parse The DataGrid
	     Then Check The 'Changed_quickSetting_collection' Is Not Present In The 'parsed_datagrid'
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
	     And Get The Quick Setting Collection From Input Database
         And Set Random Values In QuickSetting For 'QuickSetting_Collection'
         And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	     And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	     And Click On X Button In Quick Settings Window
	     And Click OK Button In Popup Window
	     And Parse The DataGrid
	     And Check The 'Changed_quickSetting_collection' Is Not Present In The 'parsed_datagrid'
	     And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Click On Quick Wizard Icon
	     And Get The Quick Setting Collection From Input Database
         And Set Random Values In QuickSetting For 'QuickSetting_Collection'
         And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	     And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	     And Click On X Button In Quick Settings Window
	     And Click OK Button In Popup Window
	     And Parse The DataGrid
	     And Check The 'Changed_quickSetting_collection' Is Not Present In The 'parsed_datagrid'

    @KP_AKCC_ID_17.39
    Scenario: KP_AKCC_ID_17.39: Verify Quick Wizard Button Is Enable From Open Window

		Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Goto Working Directory In Open Dialog Window
        And Open Created Project In Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        When The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		Then Verify Quick Wizard Icon Is Visible
		And Verify Quick Wizard Button Is Enabled

	@KP_AKCC_ID_17.41,@KP_AKCC_ID_17.42
    Scenario: KP_AKCC_ID_17.41,KP_AKCC_ID_17.42: Check If Tooltip Of BoxType Parameter Is Displayed As Along With Max And Min Range And Tooltip Of Enum Parameters Is Not Displayed From Open Project Window.

         Given KoolProg Had Opened
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Koolprog Working Path From Preference Window And Save it
         And Get Controller Details From Variable
         And New Project Is Created For Selected Controller Details
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Click On Quick Wizard Icon
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On Finish Button In Quick Settings Window
         And The Project Window Is Visible
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On Open Button In Set Parameters Window
         And Write The Created Project File With Default Path In Dialog
         And Click Open Button in Open Window
         And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
         When The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         Then Verify Tooltip Of Quick Wizard Displayed Along With Min And Max Range
         And Verify Tooltip Of Enum Parameter Is Not Displayed

    @KP_AKCC_ID_17.52
    Scenario: KP_AKCC_ID_17.52: Verify Quick Wizard Button Is Enable In Recent Window

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        When The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Quick Wizard Icon Is Visible
        And Verify Quick Wizard Button Is Enabled

     @KP_AKCC_ID_17.54
     Scenario: KP_AKCC_ID_17.54: Check If Tooltip Of BoxType Parameter Is Displayed As Along With Max And Min Range And Tooltip Of Enum Parameters Is Not Displayed From Recent Project Window.

         Given KoolProg Had Opened
         And Get Controller Details From Variable
         And New Project Is Created For Selected Controller Details
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Click On Quick Wizard Icon
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And The Project Window Is Visible
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         When Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         Then Verify Tooltip Of Quick Wizard Displayed Along With Min And Max Range
         And Verify Tooltip Of Enum Parameter Is Not Displayed

	######################################### OFFLINE ##################################################

	######################################### ONLINE ##################################################

	 @KP_AKCC_ID_17.21
    Scenario: KP_AKCC_ID_17.21: Check Controller Does Not Disconnect After Clicking On Quick Wizard Button From The Project Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Get Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Quick Wizard Icon Is Visible
		And Verify Quick Wizard Button Is Enabled
        When Click On Quick Wizard Icon
        Then Verify Quick Setting Window Is Visible And Enabled
        And Verify Controller Is Connected With KoolProg

    @KP_AKCC_ID_17.26
    Scenario: KP_AKCC_ID_17.26: Verify Quick Wizard Button Is Enable In Import Setting From Controller

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        When The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        Then Verify Quick Wizard Icon Is Visible
		And Verify Quick Wizard Button Is Enabled

	 @KP_AKCC_ID_17.28,@KP_AKCC_ID_17.29
     Scenario: KP_AKCC_ID_17.28,KP_AKCC_ID_17.29: Check If Tooltip Of BoxType Parameter Is Displayed As Along With Max And Min Range And Tooltip Of Enum Parameters Is Not Displayed In Import Settings From Controller Window.

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
         When Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         Then Verify Tooltip Of Quick Wizard Displayed Along With Min And Max Range
         And Verify Tooltip Of Enum Parameter Is Not Displayed

     @KP_AKCC_ID_17.31,17.70
    Scenario: KP_AKCC_ID_17.31,17.70: Check If Clicking On Offline Wizard And Changing Values, Clicking On Finish, Changes Values In The Datagrid In Import Settings From Controller Window And Online Service Window.

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
         And Get The Quick Setting Collection From Input Database
         And Click On Quick Wizard Icon
         When Set Random Values In QuickSetting For 'QuickSetting_Collection'
         And Click On Finish Button In Quick Settings Window
         And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	     And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	     And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
	     And The Project Window Is Visible
         And Parse The DataGrid
	     And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	     And Remove 'ItemType' Of 'P' From 'Changed_quickSetting_collection'
	     Then Check The 'Changed_quickSetting_collection' Is Present In The 'parsed_datagrid'
	     And The Project Window Is Visible
	     And Go To Home Window From Project Window
	     And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And Click On Quick Wizard Icon
         And Set Random Values In QuickSetting For 'QuickSetting_Collection'
         And Click On Finish Button In Quick Settings Window
         And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	     And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	     And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
	     And Click On All Tree Item In Tree View
	     And Parse The DataGrid
	     And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	     And Remove 'ItemType' Of 'P' From 'Changed_quickSetting_collection'
	     And Check The 'Changed_quickSetting_collection' Is Present In The 'parsed_datagrid'


     @KP_AKCC_ID_17.32,17.71
    Scenario: KP_AKCC_ID_17.32,17.71: Check If Clicking On Datagrid And Changing Values, Clicking On Finish, Changes Values In The Quick Wizard In Import  And Online Service Window.

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
         And Parse The DataGrid
         And Get The Parameter Collection From Input Database
         And Get The Quick Setting Collection From Input Database
         And Get The Quick Settings Collection With Respect To Datagrid
         When Set Random Values In DataGrid For 'quick_setting_collection'
         And The Project Window Is Visible
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Remove 'ItemType' Of 'P' From 'Changed_quickSetting_collection'
         Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Changed_values_collection'
         And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Changed_values_collection'
         And Click On Finish Button In Quick Settings Window
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And Click On All Tree Item In Tree View
         And Parse The DataGrid
         And Get The Parameter Collection From Input Database
         And Get The Quick Setting Collection From Input Database
         And Get The Quick Settings Collection With Respect To Datagrid
         And Set Random Values In DataGrid For 'quick_setting_collection'
         And The Project Window Is Visible
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Remove 'ItemType' Of 'P' From 'Changed_quickSetting_collection'
         And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Changed_values_collection'
         And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Changed_values_collection'


     @KP_AKCC_ID_17.33,17.72
    Scenario: KP_AKCC_ID_17.33,17.72: Check If After Making Changes, Clicking On Cancel, Reverts Back The Changes In Import Settings From Controller Window And Online Service Window.

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
	     And Click On Quick Wizard Icon
	     And Get The Quick Setting Collection From Input Database
         When Set Random Values In QuickSetting For 'QuickSetting_Collection'
         And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	     And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	     And Click On X Button In Quick Settings Window
	     And Click OK Button In Popup Window
	     And Parse The DataGrid
	     Then Check The 'Changed_quickSetting_collection' Is Not Present In The 'parsed_datagrid'
	     And Go To Home Window From Project Window
	     And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
	     And Navigate To On-line Service Window
	     And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
	     And Click On All Tree Item In Tree View
	     And On-line Service Window Is Visible
	     And Click On Quick Wizard Icon
	     And Get The Quick Setting Collection From Input Database
         And Set Random Values In QuickSetting For 'QuickSetting_Collection'
         And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	     And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	     And Click On X Button In Quick Settings Window
	     And Click OK Button In Popup Window
	     And Parse The DataGrid
	     And Check The 'Changed_quickSetting_collection' Is Not Present In The 'parsed_datagrid'


    @KP_AKCC_ID_17.34
    Scenario: KP_AKCC_ID_17.34: Check Controller Does Not Disconnect After Clicking On Quick Wizard Button In Import Settings From Controller Model

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
        And Verify Quick Wizard Icon Is Visible
		And Verify Quick Wizard Button Is Enabled
        When Click On Quick Wizard Icon
        Then Verify Quick Setting Window Is Visible And Enabled
        And Verify Controller Is Connected With KoolProg

    @KP_AKCC_ID_17.47
    Scenario: KP_AKCC_ID_17.47: Check Controller Does Not Disconnect After Clicking On Quick Wizard Icon From Open Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Get Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Goto Working Directory In Open Dialog Window
        And Open Created Project In Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Verify Quick Wizard Icon Is Visible
		And Verify Quick Wizard Button Is Enabled
        When Click On Quick Wizard Icon
        Then Verify Quick Setting Window Is Visible And Enabled
        And Verify Controller Is Connected With KoolProg

    @KP_AKCC_ID_17.60
    Scenario: KP_AKCC_ID_17.60: Check Controller Does Not Disconnect After Clicking On Quick Wizard Icon From Recent Window

		Given KoolProg Had Opened
 		And Disable All Serial Ports
 		And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Get Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Quick Wizard Icon Is Visible
		And Verify Quick Wizard Button Is Enabled
        When Click On Quick Wizard Icon
        Then Verify Quick Setting Window Is Visible And Enabled
        And Verify Controller Is Connected With KoolProg

	@KP__AKCC_ID_17.65
    Scenario: KP_AKCC_ID_17.65: Verification Of Quick Wizard Button Is Enable By In On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        When The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        Then Verify Quick Wizard Icon Is Visible
		And Verify Quick Wizard Button Is Enabled

	 @KP_AKCC_ID_17.67,@KP_AKCC_ID_17.68
     Scenario: KP_AKCC_ID_17.67,KP_AKCC_ID_17.68: Check If Tooltip Of BoxType Parameter Is Displayed As Along With Max And Min Range And Tooltip Of Enum Parameters Is Not Displayed From Online Service Window.

         Given KoolProg Had Opened
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         When Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Verify Quick Wizard Icon Is Visible
         And Click On Quick Wizard Icon
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And On-line Service Window Is Visible
         And Click On All Tree Item In Tree View
         And Add Required Delay For 'DATAGRID_TO_GET_LOADED' for 'ONLINE' mode
         Then Verify Tooltip Of Quick Wizard Displayed Along With Min And Max Range
         And Verify Tooltip Of Enum Parameter Is Not Displayed

    @KP_AKCC_ID_17.73
    Scenario: KP_AKCC_ID_17.73: Check Controller Does Not Disconnect After Clicking On Quick Wizard Icon From Online Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Verify Quick Wizard Icon Is Visible
		And Verify Quick Wizard Button Is Enabled
        When Click On Quick Wizard Icon
        Then Verify Quick Setting Window Is Visible And Enabled
        And Verify Controller Is Connected With KoolProg


	######################################### ONLINE ##################################################
