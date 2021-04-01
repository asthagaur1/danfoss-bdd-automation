# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: Check AKCC Language test cases.

    @common @requiredOfflineTestCase
    Scenario: Required Test Case For Running Automation With Enable And Disable Port Option

    	Given KoolProg Had Opened
    	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
    	And Deselect The Password Protection Checkbox
    	And Click On Use Password Protection Checkbox
    	And Enter 'Automation' Password In Password Textbox
    	And Enter 'Automation' Password In Confirm Password Textbox
        And Click On Save Button In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window

      @KP_AKCC_ID_6.1.1,6.2.1,6.3.1,6.4.1,6.5.1,6.16.1,6.40.1,6.52.1
    Scenario: KP_AKCC_ID_6.1.1,6.2.1,6.3.1,6.4.1,6.5.1,6.16.1,6.40.1,6.52.1: Select Danish Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_6.1.2,6.1.2,6.3.2,6.4.2,6.5.2,6.16.2,6.40.2,6.52.2
     Scenario: KP_AKCC_ID_6.1.2,6.1.2,6.3.2,6.4.2,6.5.2,6.16.2,6.40.2,6.52.2: Check KoolProg Application Texts For Danish Language In Quick Wizard Window From Project Window  And Open Project Window And Recent Project Window..

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Danish'
        Then Verify Labels Text For Selected Language In Home Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Verify Labels Text For Selected Language In Set Parameter Window
        And Click On New Button From Set Parameter Window
        And Verify Labels Text For Selected Language In Controller Selection Window
        And Select Controller Family And It's Variant
        And Verify Next Button Text For Selected Language In Controller Selection Window
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Verify Labels Text For Selected Language In Project Description Window
        And Verify Buttons Text For Selected Language Before Unchecking Quick Wizard Option In Project Description Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Verify Buttons Text For Selected Language After Unchecking Quick Wizard Option In Project Description Window
        And Select The Quick Wizard Option In Project Description Window
        And Click Finish Button In New Project Window
        And Verify Labels And Buttons Text For Selected Language When Creating Project In Quick Wizard Window
        And Click On Finish Button In Quick Settings Window
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
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
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window


     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_6.6.1,6.17.1,6.41.1,6.53.1:
    Scenario: KP_AKCC_ID_6.6.1,6.17.1,6.41.1,6.53.1: Select Danish Language From Preference Window In Create Project Window And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_6.6.2,6.17.2,6.41.2,6.53.2:
     Scenario: KP_AKCC_ID_6.6.2,6.17.2,6.41.2,6.53.2: Check Parameter And Help In Quick Settings From Create Project Window And Project Window And Open Project Window And Recent Project Window.

	    Given KoolProg Had Opened
	    And Verify KoolProg Will Change To 'Danish' Language In Home Window
	    And Click On The Setting Icon Button In The Main Window
	    And Preference Window Is Visible
	    And Get Koolprog Working Path From Preference Window And Save it
	    When Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On SetParameter Button And SetParameter Window Is Visible
	    And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Get The Quick Settings Collection From The UI
        And Click On Finish Button In Quick Settings Window
	    And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	    And Break The Communication Of Port With KoolProg
	    And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
	    And The Project Window Is Visible
	    And Get The List Of Elements From The Tree View
	    Then Verify The Headers And Groupnames In Treeview For 'Danish' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
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
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'Danish' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'Danish' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_6.7.1,6.19.1,6.43.1,6.55.1
    Scenario: KP_AKCC_ID_6.7.1,6.19.1,6.43.1,6.55.1: Select Danish Language From Preference Window In Create Project Window  And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_6.7.2,6.19.2,6.43.2,6.55.2
     Scenario: KP_AKCC_ID_6.7.2,6.19.2,6.43.2,6.55.2: Danish  Must Support "," Instead Of "." In Place Of Decimals For Quick Wizard In Create Project Wizard Window And Project Window And Open Project Window And Recent Project Window..

         Given KoolProg Had Opened
         And Verify KoolProg Will Change To 'Danish' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Get Controller Details From Variable
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On New Button From Set Parameter Window
         And Select Controller Family And It's Variant
         And Go To Controller Details Selection Window
         And Get Code Number List From Project Description Window
         And Get SW Version List From Project Description Window
         And Write Project Name
         And Write Project Description
         When Click Finish Button In New Project Window
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On Finish Button In Quick Settings Window
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         Then Verify The Float Values In Quick Wizard Are Comma Separated For 'Danish' Language
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Danish' Language
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On Open Button In Set Parameters Window
         And Write The Created Project File With Default Path In Dialog
         And Click Open Button in Open Window
         And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Danish' Language
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Danish' Language



      @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_6.8.1,6.20.1,6.44.1,6.56.1
    Scenario: KP_AKCC_ID_6.8.1,6.20.1,6.44.1,6.56.1: Select Danish Language From Preference Window In Create Project Window And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_6.8.2,6.20.2,6.44.2,6.56.2
     Scenario: KP_AKCC_ID_6.8.2,6.20.2,6.44.2,6.56.2: Danish  Must Support "," Instead Of "." In Place Of Decimals In Tooltip Of Create Project Wizard Window And Project Window And Open Project Window And Recent Project Window.

         Given KoolProg Had Opened
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Selected Language From Preference Window
         And Get Koolprog Working Path From Preference Window And Save it
         And Verify KoolProg Will Change To 'Danish' Language In Home Window
         And Get Controller Details From Variable
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On New Button From Set Parameter Window
         And Select Controller Family And It's Variant
         And Go To Controller Details Selection Window
         And Get Code Number List From Project Description Window
         And Get SW Version List From Project Description Window
         And Write Project Name
         And Write Project Description
         When Click Finish Button In New Project Window
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On Finish Button In Quick Settings Window
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Set Language And Help Files For Selected Language
         Then Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Set Language And Help Files For Selected Language
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On Open Button In Set Parameters Window
         And Write The Created Project File With Default Path In Dialog
         And Click Open Button in Open Window
         And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Click On Quick Wizard Icon
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_6.9.1
	Scenario: KP_AKCC_ID_6.9.1: Select Danish Language From Preference Window In Create Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_6.9.2
     Scenario: KP_AKCC_ID_6.9.2: Danish Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Create Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Set Language And Help Files For Selected Language
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The Quick Setting Collection From Input Database
        And Get Quick Settings Collection For 'DataType' With 'Float' Value
	    And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        When Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'


	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_6.21.1,6.45.1,6.57.1
	Scenario: KP_AKCC_ID_6.21.1,6.45.1,6.57.1: Select Danish Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_6.21.2,6.45.2,6.57.2
     Scenario: KP_AKCC_ID_6.21.2,6.45.2,6.57.2: Danish Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Project Window And Open Project Window And Recent Project Window.

       Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Set Language And Help Files For Selected Language
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The Quick Setting Collection From Input Database
        And Get Quick Settings Collection For 'DataType' With 'Float' Value
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		When Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_6.10&6.34&6.46
    Scenario: KP_AKCC_ID_6.10&6.34&6.46 Select Danish Language In Preference Window For Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_6.10.1&6.34.1&6.46.1
    Scenario: KP_AKCC_ID_6.10.1&6.34.1&6.46.1 Verfiy Labels Text In Danish In Project, Open, Recent Window And Change The Language To English

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Verify KoolProg Will Change To 'Danish' Language In Home Window
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Danish'
    	And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Goto Working Directory In Open Dialog Window
        And Open Created Project In Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Danish'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Danish'


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_6.11.1,6.35.1,6.47.1
	Scenario: KP_AKCC_ID_6.11.1,6.35.1,6.47.1: Select Danish Language In Preference Window For Project, Open And Recent Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'Danish' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_6.11.2,6.35.2,6.47.2
     Scenario: KP_AKCC_ID_6.11.2,6.35.2,6.47.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help In Project Window, Open And Recent Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
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
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'




   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_6.12&6.36&6.48
    Scenario: KP_AKCC_ID_6.12&6.36&6.48 Create A Project In English Language Then Change language to Danish In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_6.12.1&6.36.1&6.48.1
    Scenario: KP_AKCC_ID_6.12.1&6.36.1&6.48.1 : Open The File Created In English Language After Changing The Language To Danish In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Danish' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        When Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Project Details In Project Window
        And Go To Home Window From Project Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_6.13&6.37&6.49
     Scenario: KP_AKCC_ID_6.13&6.37&6.49: Change The Language To Danish In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_6.13.1&6.37.1&6.49.1
     Scenario: KP_AKCC_ID_6.13.1&6.37.1&6.49.1: Create A Danish Project, Change The Values And Save The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Danish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_6.14&6.38&6.50
     Scenario: KP_AKCC_ID_6.14&6.38&6.50: Change The Language To Danish In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_6.14.1&6.38.1&6.50.1
     Scenario: KP_AKCC_ID_6.14.1&6.38.1&6.50.1: Create A Danish Project, Change The Values And SaveAs The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Danish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Verify Project Path And File With Extension For Saved File Is Exist In SaveAs Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_6.15
    Scenario: KP_AKCC_ID_6.15: Select Danish Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_6.15.1
    Scenario: KP_AKCC_ID_6.15.1 : Select English (United States) language After Creating Project For Danish Language From Project Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Danish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Danish' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Danish' Language In Preference Window
        And Verify Button Text For 'Danish' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        When Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_6.15.2
    Scenario: KP_AKCC_ID_6.15.2 : Verify Opening Of The Created Project File From Danish Language After Updating To English (United States) Language From Create Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Project Details In Project Window

   	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_6.18.1,6.42.1,6.54.1
    Scenario: KP_AKCC_ID_6.18.1,6.42.1,6.54.1: Select Danish Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Verify Popup Message Should Come As 'Application will restart! Do you want to proceed?' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Close The Application
        And Add Required Delay For 'CLOSING_KOOLPROG' for 'OFFLINE' mode

	@KP_AKCC_ID_6.18.2,6.42.2,6.54.2
     Scenario: KP_AKCC_ID_6.18.2,6.42.2,6.54.2: Danish Must Support Comma In Place Of Decimals From Project Window And Open Project Window And Recent Project Window..

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
		Then Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Danish' Language
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Danish' Language
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Danish' Language


	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_6.39
    Scenario: KP_AKCC_ID_6.39: Select Danish Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Danish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_6.39.1
    Scenario: KP_AKCC_ID_6.39.1 : Select English (United States) language After Creating Project For Danish Language From Open Project Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Danish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Danish' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Danish' Language In Preference Window
        And Verify Button Text For 'Danish' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
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
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_6.39.2
    Scenario: KP_AKCC_ID_6.39.2 : Verify Opening Of The Created Project File From Danish Language After Updating To English (United States) Language From Open Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_6.51
    Scenario: KP_AKCC_ID_6.51: Select Danish Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_6.51.1
    Scenario: KP_AKCC_ID_6.51.1 : Select English (United States) language After Creating Project For Danish Language From Recent Project Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Danish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Verify Label Text For 'Danish' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Danish' Language In Preference Window
        And Verify Button Text For 'Danish' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        When Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_6.51.2
    Scenario: KP_AKCC_ID_6.51.2 : Verify Opening Of The Created Project File From Danish Language After Updating To English (United States) Language From Recent Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Open Recent Project From Set Parameter Window
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	  @KP_AKCC_ID_7.1.1,7.2.1,7.3.1,7.4.1,7.5.1,7.16.1,7.40.1,7.52.1
    Scenario: KP_AKCC_ID_7.1.1,7.2.1,7.3.1,7.4.1,7.5.1,7.16.1,7.40.1,7.52.1: Select French Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_7.1.2,7.1.2,7.3.2,7.4.2,7.5.2,7.16.2,7.40.2,7.52.2
     Scenario: KP_AKCC_ID_7.1.2,7.1.2,7.3.2,7.4.2,7.5.2,7.16.2,7.40.2,7.52.2: Check KoolProg Application Texts For French Language In Quick Wizard Window From Project Window  And Open Project Window And Recent Project Window..

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'French'
        Then Verify Labels Text For Selected Language In Home Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Verify Labels Text For Selected Language In Set Parameter Window
        And Click On New Button From Set Parameter Window
        And Verify Labels Text For Selected Language In Controller Selection Window
        And Select Controller Family And It's Variant
        And Verify Next Button Text For Selected Language In Controller Selection Window
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Verify Labels Text For Selected Language In Project Description Window
        And Verify Buttons Text For Selected Language Before Unchecking Quick Wizard Option In Project Description Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Verify Buttons Text For Selected Language After Unchecking Quick Wizard Option In Project Description Window
        And Select The Quick Wizard Option In Project Description Window
        And Click Finish Button In New Project Window
        And Verify Labels And Buttons Text For Selected Language When Creating Project In Quick Wizard Window
        And Click On Finish Button In Quick Settings Window
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
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
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window


     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_7.6.1,7.17.1,7.41.1,7.53.1:
    Scenario: KP_AKCC_ID_7.6.1,7.17.1,7.41.1,7.53.1: Select French Language From Preference Window In Create Project Window And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_7.6.2,7.17.2,7.41.2,7.53.2:
     Scenario: KP_AKCC_ID_7.6.2,7.17.2,7.41.2,7.53.2: Check Parameter And Help In Quick Settings From Create Project Window And Project Window And Open Project Window And Recent Project Window.

	    Given KoolProg Had Opened
	    And Verify KoolProg Will Change To 'French' Language In Home Window
	    And Click On The Setting Icon Button In The Main Window
	    And Preference Window Is Visible
	    And Get Koolprog Working Path From Preference Window And Save it
	    When Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On SetParameter Button And SetParameter Window Is Visible
	    And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Get The Quick Settings Collection From The UI
        And Click On Finish Button In Quick Settings Window
	    And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	    And Break The Communication Of Port With KoolProg
	    And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
	    And The Project Window Is Visible
	    And Get The List Of Elements From The Tree View
	    Then Verify The Headers And Groupnames In Treeview For 'French' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
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
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'French' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'French' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_7.7.1,7.19.1,7.43.1,7.55.1
    Scenario: KP_AKCC_ID_7.7.1,7.19.1,7.43.1,7.55.1: Select French Language From Preference Window In Project Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_7.7.2,7.19.2,7.43.2,7.55.2
     Scenario: KP_AKCC_ID_7.7.2,7.19.2,7.43.2,7.55.2: French  Must Support "," Instead Of "." In Place Of Decimals For Quick Wizard In Create Project Wizard Window And Project Window And Open Project Window And Recent Project Window..

         Given KoolProg Had Opened
         And Verify KoolProg Will Change To 'French' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Get Controller Details From Variable
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On New Button From Set Parameter Window
         And Select Controller Family And It's Variant
         And Go To Controller Details Selection Window
         And Get Code Number List From Project Description Window
         And Get SW Version List From Project Description Window
         And Write Project Name
         And Write Project Description
         When Click Finish Button In New Project Window
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On Finish Button In Quick Settings Window
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         Then Verify The Float Values In Quick Wizard Are Comma Separated For 'French' Language
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'French' Language
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On Open Button In Set Parameters Window
         And Write The Created Project File With Default Path In Dialog
         And Click Open Button in Open Window
         And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'French' Language
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'French' Language



      @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_7.8.1,7.20.1,7.44.1,7.56.1
    Scenario: KP_AKCC_ID_7.8.1,7.20.1,7.44.1,7.56.1: Select French Language From Preference Window In Create Project Window And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_7.8.2,7.20.2,7.44.2,7.56.2
     Scenario: KP_AKCC_ID_7.8.2,7.20.2,7.44.2,7.56.2: French  Must Support "," Instead Of "." In Place Of Decimals In Tooltip Of Create Project Wizard Window And Project Window And Open Project Window And Recent Project Window.

         Given KoolProg Had Opened
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Selected Language From Preference Window
         And Get Koolprog Working Path From Preference Window And Save it
         And Verify KoolProg Will Change To 'French' Language In Home Window
         And Get Controller Details From Variable
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On New Button From Set Parameter Window
         And Select Controller Family And It's Variant
         And Go To Controller Details Selection Window
         And Get Code Number List From Project Description Window
         And Get SW Version List From Project Description Window
         And Write Project Name
         And Write Project Description
         When Click Finish Button In New Project Window
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On Finish Button In Quick Settings Window
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Set Language And Help Files For Selected Language
         Then Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Set Language And Help Files For Selected Language
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On Open Button In Set Parameters Window
         And Write The Created Project File With Default Path In Dialog
         And Click Open Button in Open Window
         And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Click On Quick Wizard Icon
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_7.9.1
	Scenario: KP_AKCC_ID_7.9.1: Select French Language From Preference Window In Create Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_7.9.2
     Scenario: KP_AKCC_ID_7.9.2: French Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Create Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Set Language And Help Files For Selected Language
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The Quick Setting Collection From Input Database
        And Get Quick Settings Collection For 'DataType' With 'Float' Value
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        When Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Go To Home Window From Project Window
	    And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
	    And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_7.10&7.34&7.46
    Scenario: KP_AKCC_ID_7.10&7.34&7.46 Select French Language In Preference Window For Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_7.10.1&7.34.1&7.46.1
    Scenario: KP_AKCC_ID_7.10.1&7.34.1&7.46.1 Verfiy Labels Text In French In Project, Open, Recent Window And Change The Language To English

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Verify KoolProg Will Change To 'French' Language In Home Window
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'French'
    	And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Goto Working Directory In Open Dialog Window
        And Open Created Project In Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'French'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'French'


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_7.11.1,7.35.1,7.47.1
	Scenario: KP_AKCC_ID_7.11.1,7.35.1,7.47.1: Select French Language In Preference Window For Project, Open And Recent Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'French' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_7.11.2,7.35.2,7.47.2
     Scenario: KP_AKCC_ID_7.11.2,7.35.2,7.47.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help In Project Window, Open And Recent Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
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
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'




   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	@KP_AKCC_ID_7.12&7.36&7.48
    Scenario: KP_AKCC_ID_7.12&7.36&7.48 Create A Project In English Language Then Change language to French In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_7.12.1&7.36.1&7.48.1
    Scenario: KP_AKCC_ID_7.12.1&7.36.1&7.48.1 : Open The File Created In English Language After Changing The Language To French In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'French' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        When Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Project Details In Project Window
        And Go To Home Window From Project Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_7.13&7.37&7.49
     Scenario: KP_AKCC_ID_7.13&7.37&7.49: Change The Language To French In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_7.13.1&7.37.1&7.49.1
     Scenario: KP_AKCC_ID_7.13.1&7.37.1&7.49.1: Create A French Project, Change The Values And Save The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'French' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_7.14&7.38&7.50
     Scenario: KP_AKCC_ID_7.14&7.38&7.50: Change The Language To French In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_7.14.1&7.38.1&7.50.1
     Scenario: KP_AKCC_ID_7.14.1&7.38.1&7.50.1: Create A French Project, Change The Values And SaveAs The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'French' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Verify Project Path And File With Extension For Saved File Is Exist In SaveAs Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_7.15
    Scenario: KP_AKCC_ID_7.15: Select French Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_7.15.1
    Scenario: KP_AKCC_ID_7.15.1 : Select English (United States) language After Creating Project For French Language From Project Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'French' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'French' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'French' Language In Preference Window
        And Verify Button Text For 'French' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_7.15.2
    Scenario: KP_AKCC_ID_7.15.2 : Verify Opening Of The Created Project File From French Language After Updating To English (United States) Language From Create Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Project Details In Project Window

   	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_7.18.1,7.42.1,7.54.1
    Scenario: KP_AKCC_ID_7.18.1,7.42.1,7.54.1: Select French Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Verify Popup Message Should Come As 'Application will restart! Do you want to proceed?' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Close The Application
        And Add Required Delay For 'CLOSING_KOOLPROG' for 'OFFLINE' mode

	@KP_AKCC_ID_7.18.2,7.42.2,7.54.2
     Scenario: KP_AKCC_ID_7.18.2,7.42.2,7.54.2: French Must Support Comma In Place Of Decimals From Project Window And Open Project Window And Recent Project Window..

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
		Then Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'French' Language
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'French' Language
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'French' Language


	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_7.39
    Scenario: KP_AKCC_ID_7.39: Select French Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'French' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_7.39.1
    Scenario: KP_AKCC_ID_7.39.1 : Select English (United States) language After Creating Project For French Language From Open Project Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'French' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'French' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'French' Language In Preference Window
        And Verify Button Text For 'French' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
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
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_7.39.2
    Scenario: KP_AKCC_ID_7.39.2 : Verify Opening Of The Created Project File From French Language After Updating To English (United States) Language From Open Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_7.51
    Scenario: KP_AKCC_ID_7.51: Select French Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_7.51.1
    Scenario: KP_AKCC_ID_7.51.1 : Select English (United States) language After Creating Project For French Language From Recent Project Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'French' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Verify Label Text For 'French' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'French' Language In Preference Window
        And Verify Button Text For 'French' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_7.51.2
    Scenario: KP_AKCC_ID_7.51.2 : Verify Opening Of The Created Project File From French Language After Updating To English (United States) Language From Recent Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        Then Verify Project Details In Project Window

     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_7.21.1,7.45.1,7.57.1
	Scenario: KP_AKCC_ID_7.21.1,7.45.1,7.57.1: Select French Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_7.21.2,7.45.2,7.57.2
     Scenario: KP_AKCC_ID_7.21.2,7.45.2,7.57.2: French Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Project Window And Open Project Window And Recent Project Window.

       Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Set Language And Help Files For Selected Language
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The Quick Setting Collection From Input Database
        And Get Quick Settings Collection For 'DataType' With 'Float' Value
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		When Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_8.1.1,8.2.1,8.3.1,8.4.1,8.5.1,8.16.1,8.40.1,8.52.1
    Scenario: KP_AKCC_ID_8.1.1,8.2.1,8.3.1,8.4.1,8.5.1,8.16.1,8.40.1,8.52.1: Select Spanish Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_8.1.2,8.1.2,8.3.2,8.4.2,8.5.2,8.16.2,8.40.2,8.52.2
     Scenario: KP_AKCC_ID_8.1.2,8.1.2,8.3.2,8.4.2,8.5.2,8.16.2,8.40.2,8.52.2: Check KoolProg Application Texts For Spanish Language In Quick Wizard Window From Project Window  And Open Project Window And Recent Project Window..

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Spanish'
        Then Verify Labels Text For Selected Language In Home Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Verify Labels Text For Selected Language In Set Parameter Window
        And Click On New Button From Set Parameter Window
        And Verify Labels Text For Selected Language In Controller Selection Window
        And Select Controller Family And It's Variant
        And Verify Next Button Text For Selected Language In Controller Selection Window
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Verify Labels Text For Selected Language In Project Description Window
        And Verify Buttons Text For Selected Language Before Unchecking Quick Wizard Option In Project Description Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Verify Buttons Text For Selected Language After Unchecking Quick Wizard Option In Project Description Window
        And Select The Quick Wizard Option In Project Description Window
        And Click Finish Button In New Project Window
        And Verify Labels And Buttons Text For Selected Language When Creating Project In Quick Wizard Window
        And Click On Finish Button In Quick Settings Window
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
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
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window


     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_8.6.1,8.17.1,8.41.1,8.53.1:
    Scenario: KP_AKCC_ID_8.6.1,8.17.1,8.41.1,8.53.1: Select Spanish Language From Preference Window In Create Project Window And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_8.6.2,8.17.2,8.41.2,8.53.2:
     Scenario: KP_AKCC_ID_8.6.2,8.17.2,8.41.2,8.53.2: Check Parameter And Help In Quick Settings From Create Project Window And Project Window And Open Project Window And Recent Project Window.

	    Given KoolProg Had Opened
	    And Verify KoolProg Will Change To 'Spanish' Language In Home Window
	    And Click On The Setting Icon Button In The Main Window
	    And Preference Window Is Visible
	    And Get Koolprog Working Path From Preference Window And Save it
	    When Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On SetParameter Button And SetParameter Window Is Visible
	    And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Get The Quick Settings Collection From The UI
        And Click On Finish Button In Quick Settings Window
	    And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	    And Break The Communication Of Port With KoolProg
	    And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
	    And The Project Window Is Visible
	    And Get The List Of Elements From The Tree View
	    Then Verify The Headers And Groupnames In Treeview For 'Spanish' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
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
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'Spanish' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'Spanish' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_8.7.1,8.19.1,8.43.1,8.55.1
    Scenario: KP_AKCC_ID_8.7.1,8.19.1,8.43.1,8.55.1: Select Spanish Language From Preference Window In Create Project Window  And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_8.7.2,8.19.2,8.43.2,8.55.2
     Scenario: KP_AKCC_ID_8.7.2,8.19.2,8.43.2,8.55.2: Spanish  Must Support "," Instead Of "." In Place Of Decimals For Quick Wizard In Create Project Wizard Window And Project Window And Open Project Window And Recent Project Window..

         Given KoolProg Had Opened
         And Verify KoolProg Will Change To 'Spanish' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Get Controller Details From Variable
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On New Button From Set Parameter Window
         And Select Controller Family And It's Variant
         And Go To Controller Details Selection Window
         And Get Code Number List From Project Description Window
         And Get SW Version List From Project Description Window
         And Write Project Name
         And Write Project Description
         When Click Finish Button In New Project Window
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On Finish Button In Quick Settings Window
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         Then Verify The Float Values In Quick Wizard Are Comma Separated For 'Spanish' Language
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Spanish' Language
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On Open Button In Set Parameters Window
         And Write The Created Project File With Default Path In Dialog
         And Click Open Button in Open Window
         And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Spanish' Language
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Spanish' Language



      @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_8.8.1,8.20.1,8.44.1,8.56.1
    Scenario: KP_AKCC_ID_8.8.1,8.20.1,8.44.1,8.56.1: Select Spanish Language From Preference Window In Create Project Window And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_8.8.2,8.20.2,8.44.2,8.56.1
     Scenario: KP_AKCC_ID_8.8.2,8.20.2,8.44.2,8.56.1: Spanish  Must Support "," Instead Of "." In Place Of Decimals In Tooltip Of Create Project Wizard Window And Project Window And Open Project Window And Recent Project Window.

         Given KoolProg Had Opened
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Selected Language From Preference Window
         And Get Koolprog Working Path From Preference Window And Save it
         And Verify KoolProg Will Change To 'Spanish' Language In Home Window
         And Get Controller Details From Variable
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On New Button From Set Parameter Window
         And Select Controller Family And It's Variant
         And Go To Controller Details Selection Window
         And Get Code Number List From Project Description Window
         And Get SW Version List From Project Description Window
         And Write Project Name
         And Write Project Description
         When Click Finish Button In New Project Window
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On Finish Button In Quick Settings Window
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Set Language And Help Files For Selected Language
         Then Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Set Language And Help Files For Selected Language
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On Open Button In Set Parameters Window
         And Write The Created Project File With Default Path In Dialog
         And Click Open Button in Open Window
         And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Click On Quick Wizard Icon
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_8.9.1
	Scenario: KP_AKCC_ID_8.9.1: Select Spanish Language From Preference Window In Create Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_8.9.2
     Scenario: KP_AKCC_ID_8.9.2: Spanish Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Create Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Set Language And Help Files For Selected Language
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The Quick Setting Collection From Input Database
        And Get Quick Settings Collection For 'DataType' With 'Float' Value
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        When Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Go To Home Window From Project Window
	    And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
	    And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_8.10&8.34&8.46
    Scenario: KP_AKCC_ID_8.10&8.34&8.46 Select Spanish Language In Preference Window For Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_8.10.1&8.34.1&8.46.1
    Scenario: KP_AKCC_ID_8.10.1&8.34.1&8.46.1 Verfiy Labels Text In Spanish In Project, Open, Recent Window And Change The Language To English

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Verify KoolProg Will Change To 'Spanish' Language In Home Window
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Spanish'
    	And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Goto Working Directory In Open Dialog Window
        And Open Created Project In Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Spanish'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Spanish'


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_8.11.1,8.35.1,8.47.1
	Scenario: KP_AKCC_ID_8.11.1,8.35.1,8.47.1: Select Spanish Language In Preference Window For Project, Open And Recent Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'Spanish' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_8.11.2,8.35.2,8.47.2
     Scenario: KP_AKCC_ID_8.11.2,8.35.2,8.47.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help In Project Window, Open And Recent Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
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
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'


   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window



	@KP_AKCC_ID_8.12&8.36&8.48
    Scenario: KP_AKCC_ID_8.12&8.36&8.48 Create A Project In English Language Then Change language to Spanish In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_8.12.1&8.36.1&8.48.1
    Scenario: KP_AKCC_ID_8.12.1&8.36.1&8.48.1 : Open The File Created In English Language After Changing The Language To Spanish In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Spanish' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        When Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Project Details In Project Window
        And Go To Home Window From Project Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Project Details In Project Window

     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


      @KP_AKCC_ID_8.13&8.37&8.49
     Scenario: KP_AKCC_ID_8.13&8.37&8.49: Change The Language To Spanish In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_8.13.1&8.37.1&8.49.1
     Scenario: KP_AKCC_ID_8.13.1&8.37.1&8.49.1: Create A Spanish Project, Change The Values And Save The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Spanish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_8.14&8.38&8.50
     Scenario: KP_AKCC_ID_8.14&8.38&8.50: Change The Language To Spanish In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_8.14.1&8.38.1&8.50.1
     Scenario: KP_AKCC_ID_8.14.1&8.38.1&8.50.1: Create A Spanish Project, Change The Values And SaveAs The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Spanish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Verify Project Path And File With Extension For Saved File Is Exist In SaveAs Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_8.15
    Scenario: KP_AKCC_ID_8.15: Select Spanish Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_8.15.1
    Scenario: KP_AKCC_ID_8.15.1 : Select English (United States) language After Creating Project For Spanish Language From Project Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Spanish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Spanish' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Spanish' Language In Preference Window
        And Verify Button Text For 'Spanish' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_8.15.2
    Scenario: KP_AKCC_ID_8.15.2 : Verify Opening Of The Created Project File From Spanish Language After Updating To English (United States) Language From Create Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Project Details In Project Window

   	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_8.18.1,8.42.1,8.54.1
    Scenario: KP_AKCC_ID_8.18.1,8.42.1,8.54.1: Select Spanish Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Verify Popup Message Should Come As 'Application will restart! Do you want to proceed?' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Close The Application
        And Add Required Delay For 'CLOSING_KOOLPROG' for 'OFFLINE' mode

	@KP_AKCC_ID_8.18.2,8.42.2,8.54.2
     Scenario: KP_AKCC_ID_8.18.2,8.42.2,8.54.2: Spanish Must Support Comma In Place Of Decimals From Project Window And Open Project Window And Recent Project Window..

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
		Then Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Spanish' Language
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Spanish' Language
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Spanish' Language


	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_8.21.1,8.45.1,8.57.1
	Scenario: KP_AKCC_ID_8.21.1,8.45.1,8.57.1: Select Spanish Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_8.21.2,8.45.2,8.57.2
     Scenario: KP_AKCC_ID_8.21.2,8.45.2,8.57.2: Spanish Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Project Window And Open Project Window And Recent Project Window.

       Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Set Language And Help Files For Selected Language
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The Quick Setting Collection From Input Database
        And Get Quick Settings Collection For 'DataType' With 'Float' Value
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		When Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' Is Not Matching In 'Updated_input_collection' And 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' Is Not Matching In 'Updated_input_collection' And 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' Is Not Matching In 'Updated_input_collection' And 'parsed_datagrid'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window



    @KP_AKCC_ID_8.39
    Scenario: KP_AKCC_ID_8.39: Select Spanish Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_8.39.1
    Scenario: KP_AKCC_ID_8.39.1 : Select English (United States) language After Creating Project For Spanish Language From Open Project Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Spanish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Spanish' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Spanish' Language In Preference Window
        And Verify Button Text For 'Spanish' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
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
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_8.39.2
    Scenario: KP_AKCC_ID_8.39.2 : Verify Opening Of The Created Project File From Spanish Language After Updating To English (United States) Language From Open Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_8.51
    Scenario: KP_AKCC_ID_8.51: Select Spanish Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_8.51.1
    Scenario: KP_AKCC_ID_8.51.1 : Select English (United States) language After Creating Project For Spanish Language From Recent Project Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Spanish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Verify Label Text For 'Spanish' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Spanish' Language In Preference Window
        And Verify Button Text For 'Spanish' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_8.51.2
    Scenario: KP_AKCC_ID_8.51.2 : Verify Opening Of The Created Project File From Spanish Language After Updating To English (United States) Language From Recent Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	  @KP_AKCC_ID_9.1.1,9.2.1,9.3.1,9.4.1,9.5.1,9.16.1,9.40.1,9.52.1
    Scenario: KP_AKCC_ID_9.1.1,9.2.1,9.3.1,9.4.1,9.5.1,9.16.1,9.40.1,9.52.1: Select German Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_9.1.2,9.1.2,9.3.2,9.4.2,9.5.2,9.16.2,9.40.2,9.52.2
     Scenario: KP_AKCC_ID_9.1.2,9.1.2,9.3.2,9.4.2,9.5.2,9.16.2,9.40.2,9.52.2: Check KoolProg Application Texts For German Language In Quick Wizard Window From Project Window  And Open Project Window And Recent Project Window..

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'German'
        Then Verify Labels Text For Selected Language In Home Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Verify Labels Text For Selected Language In Set Parameter Window
        And Click On New Button From Set Parameter Window
        And Verify Labels Text For Selected Language In Controller Selection Window
        And Select Controller Family And It's Variant
        And Verify Next Button Text For Selected Language In Controller Selection Window
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Verify Labels Text For Selected Language In Project Description Window
        And Verify Buttons Text For Selected Language Before Unchecking Quick Wizard Option In Project Description Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Verify Buttons Text For Selected Language After Unchecking Quick Wizard Option In Project Description Window
        And Select The Quick Wizard Option In Project Description Window
        And Click Finish Button In New Project Window
        And Verify Labels And Buttons Text For Selected Language When Creating Project In Quick Wizard Window
        And Click On Finish Button In Quick Settings Window
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
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
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window

     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_9.6.2,9.17.2,9.41.2,9.53.2:
     Scenario: KP_AKCC_ID_9.6.2,9.17.2,9.41.2,9.53.2: Check Parameter And Help In Quick Settings From Create Project Window And Project Window And Open Project Window And Recent Project Window.

	    Given KoolProg Had Opened
	    And Verify KoolProg Will Change To 'German' Language In Home Window
	    And Click On The Setting Icon Button In The Main Window
	    And Preference Window Is Visible
	    And Get Koolprog Working Path From Preference Window And Save it
	    When Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On SetParameter Button And SetParameter Window Is Visible
	    And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Get The Quick Settings Collection From The UI
        And Click On Finish Button In Quick Settings Window
	    And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	    And Break The Communication Of Port With KoolProg
	    And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
	    And The Project Window Is Visible
	    And Get The List Of Elements From The Tree View
	    Then Verify The Headers And Groupnames In Treeview For 'German' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
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
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'German' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'German' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_9.7.1,9.19.1,9.43.1,9.55.1
    Scenario: KP_AKCC_ID_9.7.1,9.19.1,9.43.1,9.55.1: Select German Language From Preference Window In Create Project Window  And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_9.7.2,9.19.2,9.43.2,9.55.2
     Scenario: KP_AKCC_ID_9.7.2,9.19.2,9.43.2,9.55.2: German  Must Support "," Instead Of "." In Place Of Decimals For Quick Wizard In Create Project Wizard Window And Project Window And Open Project Window And Recent Project Window..

         Given KoolProg Had Opened
         And Verify KoolProg Will Change To 'German' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Get Controller Details From Variable
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On New Button From Set Parameter Window
         And Select Controller Family And It's Variant
         And Go To Controller Details Selection Window
         And Get Code Number List From Project Description Window
         And Get SW Version List From Project Description Window
         And Write Project Name
         And Write Project Description
         When Click Finish Button In New Project Window
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On Finish Button In Quick Settings Window
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         Then Verify The Float Values In Quick Wizard Are Comma Separated For 'German' Language
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'German' Language
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On Open Button In Set Parameters Window
         And Write The Created Project File With Default Path In Dialog
         And Click Open Button in Open Window
         And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'German' Language
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'German' Language



      @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_9.8.1,9.20.1,9.44.1,9.56.1
    Scenario: KP_AKCC_ID_9.8.1,9.20.1,9.44.1,9.56.1: Select German Language From Preference Window In Create Project Window And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_9.8.2,9.20.2,9.44.2,9.56.2
     Scenario: KP_AKCC_ID_9.8.2,9.20.2,9.44.2,9.56.2: German  Must Support "," Instead Of "." In Place Of Decimals In Tooltip Of Create Project Wizard Window And Project Window And Open Project Window And Recent Project Window.

         Given KoolProg Had Opened
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Selected Language From Preference Window
         And Get Koolprog Working Path From Preference Window And Save it
         And Verify KoolProg Will Change To 'German' Language In Home Window
         And Get Controller Details From Variable
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On New Button From Set Parameter Window
         And Select Controller Family And It's Variant
         And Go To Controller Details Selection Window
         And Get Code Number List From Project Description Window
         And Get SW Version List From Project Description Window
         And Write Project Name
         And Write Project Description
         When Click Finish Button In New Project Window
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On Finish Button In Quick Settings Window
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Set Language And Help Files For Selected Language
         Then Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Set Language And Help Files For Selected Language
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On Open Button In Set Parameters Window
         And Write The Created Project File With Default Path In Dialog
         And Click Open Button in Open Window
         And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Click On Quick Wizard Icon
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_9.9.1
	Scenario: KP_AKCC_ID_9.9.1: Select German Language From Preference Window In Create Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_9.9.2
     Scenario: KP_AKCC_ID_9.9.2: German Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Create Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Set Language And Help Files For Selected Language
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The Quick Setting Collection From Input Database
        And Get Quick Settings Collection For 'DataType' With 'Float' Value
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        When Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Go To Home Window From Project Window
	    And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
	    And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_9.10&9.34&9.46
    Scenario: KP_AKCC_ID_9.10&9.34&9.46 Select German Language In Preference Window For Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_9.10.1&9.34.1&9.46.1
    Scenario: KP_AKCC_ID_9.10.1&9.34.1&9.46.1 Verfiy Labels Text In German In Project, Open, Recent Window And Change The Language To English

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Verify KoolProg Will Change To 'German' Language In Home Window
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'German'
    	And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Goto Working Directory In Open Dialog Window
        And Open Created Project In Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'German'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'German'


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_9.11.1,9.35.1,9.47.1
	Scenario: KP_AKCC_ID_9.11.1,9.35.1,9.47.1: Select German Language In Preference Window For Project, Open And Recent Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'German' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_9.11.2,9.35.2,9.47.2
     Scenario: KP_AKCC_ID_9.11.2,9.35.2,9.47.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help In Project Window, Open And Recent Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
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
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'


   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_9.12&9.36&9.48
    Scenario: KP_AKCC_ID_9.12&9.36&9.48 Create A Project In English Language Then Change language to German In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'German' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_9.12.1&9.36.1&9.48.1
    Scenario: KP_AKCC_ID_9.12.1&9.36.1&9.48.1 : Open The File Created In English Language After Changing The Language To German In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'German' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        When Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Project Details In Project Window
        And Go To Home Window From Project Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Project Details In Project Window

     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_9.13&9.37&9.49
     Scenario: KP_AKCC_ID_9.13&9.37&9.49: Change The Language To German In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_9.13.1&9.37.1&9.49.1
     Scenario: KP_AKCC_ID_9.13.1&9.37.1&9.49.1: Create A German Project, Change The Values And Save The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'German' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_9.14&9.38&9.50
     Scenario: KP_AKCC_ID_9.14&9.38&9.50: Change The Language To German In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_9.14.1&9.38.1&9.50.1
     Scenario: KP_AKCC_ID_9.14.1&9.38.1&9.50.1: Create A German Project, Change The Values And SaveAs The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'German' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Verify Project Path And File With Extension For Saved File Is Exist In SaveAs Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_9.15
    Scenario: KP_AKCC_ID_9.15: Select German Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_9.15.1
    Scenario: KP_AKCC_ID_9.15.1 : Select English (United States) language After Creating Project For German Language From Project Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'German' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'German' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'German' Language In Preference Window
        And Verify Button Text For 'German' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        When Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_9.15.2
    Scenario: KP_AKCC_ID_9.15.2 : Verify Opening Of The Created Project File From German Language After Updating To English (United States) Language From Create Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Project Details In Project Window

   	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_9.18.1,9.42.1,9.54.1
    Scenario: KP_AKCC_ID_9.18.1,9.42.1,9.54.1: Select German Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Verify Popup Message Should Come As 'Application will restart! Do you want to proceed?' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Close The Application
        And Add Required Delay For 'CLOSING_KOOLPROG' for 'OFFLINE' mode

	@KP_AKCC_ID_9.18.2,9.42.2,9.54.2
     Scenario: KP_AKCC_ID_9.18.2,9.42.2,9.54.2: German Must Support Comma In Place Of Decimals From Project Window And Open Project Window And Recent Project Window..

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
		Then Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'German' Language
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'German' Language
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'German' Language


	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_9.21.1,9.45.1,9.57.1
	Scenario: KP_AKCC_ID_9.21.1,9.45.1,9.57.1: Select German Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_9.21.2,9.45.2,9.57.2
     Scenario: KP_AKCC_ID_9.21.2,9.45.2,9.57.2: German Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Project Window And Open Project Window And Recent Project Window.

       Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Set Language And Help Files For Selected Language
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The Quick Setting Collection From Input Database
        And Get Quick Settings Collection For 'DataType' With 'Float' Value
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		When Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_9.39
    Scenario: KP_AKCC_ID_9.39: Select German Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'German' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_9.39.1
    Scenario: KP_AKCC_ID_9.39.1 : Select English (United States) language After Creating Project For German Language From Open Project Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'German' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'German' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'German' Language In Preference Window
        And Verify Button Text For 'German' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
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
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_9.39.2
    Scenario: KP_AKCC_ID_9.39.2 : Verify Opening Of The Created Project File From German Language After Updating To English (United States) Language From Open Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_9.51
    Scenario: KP_AKCC_ID_9.51: Select German Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'German' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_9.51.1
    Scenario: KP_AKCC_ID_9.51.1 : Select English (United States) language After Creating Project For German Language From Recent Project Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'German' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Verify Label Text For 'German' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'German' Language In Preference Window
        And Verify Button Text For 'German' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_9.51.2
    Scenario: KP_AKCC_ID_9.51.2 : Verify Opening Of The Created Project File From German Language After Updating To English (United States) Language From Recent Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	     @KP_AKCC_ID_10.1.1,10.2.1,10.3.1,10.4.1,10.5.1,10.16.1,10.40.1,10.52.1
    Scenario: KP_AKCC_ID_10.1.1,10.2.1,10.3.1,10.4.1,10.5.1,10.16.1,10.40.1,10.52.1: Select Portuguese Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_10.1.2,10.1.2,10.3.2,10.4.2,10.5.2,10.16.2,10.40.2,10.52.2
     Scenario: KP_AKCC_ID_10.1.2,10.1.2,10.3.2,10.4.2,10.5.2,10.16.2,10.40.2,10.52.2: Check KoolProg Application Texts For Portuguese Language In Quick Wizard Window From Project Window  And Open Project Window And Recent Project Window..

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Portuguese'
        Then Verify Labels Text For Selected Language In Home Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Verify Labels Text For Selected Language In Set Parameter Window
        And Click On New Button From Set Parameter Window
        And Verify Labels Text For Selected Language In Controller Selection Window
        And Select Controller Family And It's Variant
        And Verify Next Button Text For Selected Language In Controller Selection Window
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Verify Labels Text For Selected Language In Project Description Window
        And Verify Buttons Text For Selected Language Before Unchecking Quick Wizard Option In Project Description Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Verify Buttons Text For Selected Language After Unchecking Quick Wizard Option In Project Description Window
        And Select The Quick Wizard Option In Project Description Window
        And Click Finish Button In New Project Window
        And Verify Labels And Buttons Text For Selected Language When Creating Project In Quick Wizard Window
        And Click On Finish Button In Quick Settings Window
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
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
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window


     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_10.6.1,10.17.1,10.41.1,10.53.1:
    Scenario: KP_AKCC_ID_10.6.1,10.17.1,10.41.1,10.53.1: Select Portuguese Language From Preference Window In Create Project Window And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_10.6.2,10.17.2,10.41.2,10.53.2:
     Scenario: KP_AKCC_ID_10.6.2,10.17.2,10.41.2,10.53.2: Check Parameter And Help In Quick Settings From Create Project Window And Project Window And Open Project Window And Recent Project Window.

	    Given KoolProg Had Opened
	    And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
	    And Click On The Setting Icon Button In The Main Window
	    And Preference Window Is Visible
	    And Get Koolprog Working Path From Preference Window And Save it
	    When Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On SetParameter Button And SetParameter Window Is Visible
	    And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Get The Quick Settings Collection From The UI
        And Click On Finish Button In Quick Settings Window
	    And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	    And Break The Communication Of Port With KoolProg
	    And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
	    And The Project Window Is Visible
	    And Get The List Of Elements From The Tree View
	    Then Verify The Headers And Groupnames In Treeview For 'Portuguese' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
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
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'Portuguese' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'Portuguese' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_10.7.1,10.19.1,10.43.1,10.55.1
    Scenario: KP_AKCC_ID_10.7.1,10.19.1,10.43.1,10.55.1: Select Portuguese Language From Preference Window In Create Project Window  And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_10.7.2,10.19.2,10.43.2,10.55.2
     Scenario: KP_AKCC_ID_10.7.2,10.19.2,10.43.2,10.55.2: Portuguese  Must Support "," Instead Of "." In Place Of Decimals For Quick Wizard In Create Project Wizard Window And Project Window And Open Project Window And Recent Project Window..

         Given KoolProg Had Opened
         And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Get Controller Details From Variable
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On New Button From Set Parameter Window
         And Select Controller Family And It's Variant
         And Go To Controller Details Selection Window
         And Get Code Number List From Project Description Window
         And Get SW Version List From Project Description Window
         And Write Project Name
         And Write Project Description
         When Click Finish Button In New Project Window
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On Finish Button In Quick Settings Window
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         Then Verify The Float Values In Quick Wizard Are Comma Separated For 'Portuguese' Language
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Portuguese' Language
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On Open Button In Set Parameters Window
         And Write The Created Project File With Default Path In Dialog
         And Click Open Button in Open Window
         And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Portuguese' Language
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Portuguese' Language



      @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_10.8.1,10.20.1,10.44.1,10.56.1
    Scenario: KP_AKCC_ID_10.8.1,10.20.1,10.44.1,10.56.1: Select Portuguese Language From Preference Window In Create Project Window And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_10.8.2,10.20.2,10.44.2,10.56.2
     Scenario: KP_AKCC_ID_10.8.2,10.20.2,10.44.2,10.56.2: Portuguese  Must Support "," Instead Of "." In Place Of Decimals In Tooltip Of Create Project Wizard Window And Project Window And Open Project Window And Recent Project Window.

         Given KoolProg Had Opened
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Selected Language From Preference Window
         And Get Koolprog Working Path From Preference Window And Save it
         And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
         And Get Controller Details From Variable
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On New Button From Set Parameter Window
         And Select Controller Family And It's Variant
         And Go To Controller Details Selection Window
         And Get Code Number List From Project Description Window
         And Get SW Version List From Project Description Window
         And Write Project Name
         And Write Project Description
         When Click Finish Button In New Project Window
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On Finish Button In Quick Settings Window
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Set Language And Help Files For Selected Language
         Then Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Set Language And Help Files For Selected Language
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On Open Button In Set Parameters Window
         And Write The Created Project File With Default Path In Dialog
         And Click Open Button in Open Window
         And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Click On Quick Wizard Icon
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_10.9.1
	Scenario: KP_AKCC_ID_10.9.1: Select Portuguese Language From Preference Window In Create Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_10.9.2
     Scenario: KP_AKCC_ID_10.9.2: Portuguese Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Create Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Set Language And Help Files For Selected Language
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The Quick Setting Collection From Input Database
        And Get Quick Settings Collection For 'DataType' With 'Float' Value
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        When Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Go To Home Window From Project Window
	    And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
	    And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	    @KP_AKCC_ID_10.10&10.34&10.46
    Scenario: KP_AKCC_ID_10.10&10.34&10.46 Select Portuguese Language In Preference Window For Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_10.10.1&10.34.1&10.46.1
    Scenario: KP_AKCC_ID_10.10.1&10.34.1&10.46.1 Verfiy Labels Text In Portuguese In Project, Open, Recent Window And Change The Language To English

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Portuguese'
    	And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Goto Working Directory In Open Dialog Window
        And Open Created Project In Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Portuguese'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Portuguese'


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_10.11.1,10.35.1,10.47.1
	Scenario: KP_AKCC_ID_10.11.1,10.35.1,10.47.1: Select Portuguese Language In Preference Window For Project, Open And Recent Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'Portuguese' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_10.11.2,10.35.2,10.47.2
     Scenario: KP_AKCC_ID_10.11.2,10.35.2,10.47.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help In Project Window, Open And Recent Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
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
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'


   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_10.12&10.36&10.48
    Scenario: KP_AKCC_ID_10.12&10.36&10.48 Create A Project In English Language Then Change language to Portuguese In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_10.12.1&10.36.1&10.48.1
    Scenario: KP_AKCC_ID_10.12.1&10.36.1&10.48.1 : Open The File Created In English Language After Changing The Language To Portuguese In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        When Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Project Details In Project Window
        And Go To Home Window From Project Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_10.13&10.37&10.49
     Scenario: KP_AKCC_ID_10.13&10.37&10.49: Change The Language To Portugese In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portugese' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_10.13.1&10.37.1&10.49.1
     Scenario: KP_AKCC_ID_10.13.1&10.37.1&10.49.1: Create A Portugese Project, Change The Values And Save The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Portugese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_10.14&10.38&10.50
     Scenario: KP_AKCC_ID_10.14&10.38&10.50: Change The Language To Portugese In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portugese' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_10.14.1&10.38.1&10.50.1
     Scenario: KP_AKCC_ID_10.14.1&10.38.1&10.50.1: Create A Portugese Project, Change The Values And SaveAs The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Portugese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Verify Project Path And File With Extension For Saved File Is Exist In SaveAs Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_10.15
    Scenario: KP_AKCC_ID_10.15: Select Portuguese Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_10.15.1
    Scenario: KP_AKCC_ID_10.15.1 : Select English (United States) language After Creating Project For Portuguese Language From Project Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Portuguese' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Portuguese' Language In Preference Window
        And Verify Button Text For 'Portuguese' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        When Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_10.15.2
    Scenario: KP_AKCC_ID_10.15.2 : Verify Opening Of The Created Project File From Portuguese Language After Updating To English (United States) Language From Create Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Project Details In Project Window

   	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_10.18.1,10.42.1,10.54.1
    Scenario: KP_AKCC_ID_10.18.1,10.42.1,10.54.1: Select Portuguese Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Verify Popup Message Should Come As 'Application will restart! Do you want to proceed?' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Close The Application
        And Add Required Delay For 'CLOSING_KOOLPROG' for 'OFFLINE' mode

	@KP_AKCC_ID_10.18.2,10.42.2,10.54.2
     Scenario: KP_AKCC_ID_10.18.2,10.42.2,10.54.2: Portuguese Must Support Comma In Place Of Decimals From Project Window And Open Project Window And Recent Project Window..

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
		Then Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Portuguese' Language
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Portuguese' Language
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Portuguese' Language


	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_10.21.1,10.45.1,10.57.1
	Scenario: KP_AKCC_ID_10.21.1,10.45.1,10.57.1: Select Portuguese Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_10.21.2,10.45.2,10.57.2
     Scenario: KP_AKCC_ID_10.21.2,10.45.2,10.57.2: Portuguese Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Project Window And Open Project Window And Recent Project Window.

       Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Set Language And Help Files For Selected Language
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The Quick Setting Collection From Input Database
        And Get Quick Settings Collection For 'DataType' With 'Float' Value
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		When Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_10.39
    Scenario: KP_AKCC_ID_10.39: Select Portuguese Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Portuguese' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_10.39.1
    Scenario: KP_AKCC_ID_10.39.1 : Select English (United States) language After Creating Project For Portuguese Language From Open Project Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Portuguese' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Portuguese' Language In Preference Window
        And Verify Button Text For 'Portuguese' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
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
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_10.39.2
    Scenario: KP_AKCC_ID_10.39.2 : Verify Opening Of The Created Project File From Portuguese Language After Updating To English (United States) Language From Open Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_10.51
    Scenario: KP_AKCC_ID_10.51: Select Portuguese Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_10.51.1
    Scenario: KP_AKCC_ID_10.51.1 : Select English (United States) language After Creating Project For Portuguese Language From Recent Project Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Verify Label Text For 'Portuguese' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Portuguese' Language In Preference Window
        And Verify Button Text For 'Portuguese' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_10.51.2
    Scenario: KP_AKCC_ID_10.51.2 : Verify Opening Of The Created Project File From Portuguese Language After Updating To English (United States) Language From Recent Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Open Recent Project From Set Parameter Window
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	     @KP_AKCC_ID_11.1.1,11.2.1,11.3.1,11.4.1,11.5.1,11.16.1,11.40.1,11.52.1
    Scenario: KP_AKCC_ID_11.1.1,11.2.1,11.3.1,11.4.1,11.5.1,11.16.1,11.40.1,11.52.1: Select Russian Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_11.1.2,11.1.2,11.3.2,11.4.2,11.5.2,11.16.2,11.40.2,11.52.2
     Scenario: KP_AKCC_ID_11.1.2,11.1.2,11.3.2,11.4.2,11.5.2,11.16.2,11.40.2,11.52.2: Check KoolProg Application Texts For Russian Language In Quick Wizard Window From Project Window  And Open Project Window And Recent Project Window..

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Russian'
        Then Verify Labels Text For Selected Language In Home Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Verify Labels Text For Selected Language In Set Parameter Window
        And Click On New Button From Set Parameter Window
        And Verify Labels Text For Selected Language In Controller Selection Window
        And Select Controller Family And It's Variant
        And Verify Next Button Text For Selected Language In Controller Selection Window
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Verify Labels Text For Selected Language In Project Description Window
        And Verify Buttons Text For Selected Language Before Unchecking Quick Wizard Option In Project Description Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Verify Buttons Text For Selected Language After Unchecking Quick Wizard Option In Project Description Window
        And Select The Quick Wizard Option In Project Description Window
        And Click Finish Button In New Project Window
        And Verify Labels And Buttons Text For Selected Language When Creating Project In Quick Wizard Window
        And Click On Finish Button In Quick Settings Window
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
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
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window


     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_11.6.1,11.17.1,11.41.1,11.53.1:
    Scenario: KP_AKCC_ID_11.6.1,11.17.1,11.41.1,11.53.1: Select Russian Language From Preference Window In Create Project Window And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_11.6.2,11.17.2,11.41.2,11.53.2:
     Scenario: KP_AKCC_ID_11.6.2,11.17.2,11.41.2,11.53.2: Check Parameter And Help In Quick Settings From Create Project Window And Project Window And Open Project Window And Recent Project Window.

	    Given KoolProg Had Opened
	    And Verify KoolProg Will Change To 'Russian' Language In Home Window
	    And Click On The Setting Icon Button In The Main Window
	    And Preference Window Is Visible
	    And Get Koolprog Working Path From Preference Window And Save it
	    When Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On SetParameter Button And SetParameter Window Is Visible
	    And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Get The Quick Settings Collection From The UI
        And Click On Finish Button In Quick Settings Window
	    And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	    And Break The Communication Of Port With KoolProg
	    And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
	    And The Project Window Is Visible
	    And Get The List Of Elements From The Tree View
	    Then Verify The Headers And Groupnames In Treeview For 'Russian' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
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
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'Russian' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'Russian' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_11.7.1,11.19.1,11.43.1,11.55.1
    Scenario: KP_AKCC_ID_11.7.1,11.19.1,11.43.1,11.55.1: Select Russian Language From Preference Window In Create Project Window  And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_11.7.2,11.19.2,11.43.2,11.55.2
     Scenario: KP_AKCC_ID_11.7.2,11.19.2,11.43.2,11.55.2: Russian  Must Support "," Instead Of "." In Place Of Decimals For Quick Wizard In Create Project Wizard Window And Project Window And Open Project Window And Recent Project Window..

         Given KoolProg Had Opened
         And Verify KoolProg Will Change To 'Russian' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Get Controller Details From Variable
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On New Button From Set Parameter Window
         And Select Controller Family And It's Variant
         And Go To Controller Details Selection Window
         And Get Code Number List From Project Description Window
         And Get SW Version List From Project Description Window
         And Write Project Name
         And Write Project Description
         When Click Finish Button In New Project Window
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On Finish Button In Quick Settings Window
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         Then Verify The Float Values In Quick Wizard Are Comma Separated For 'Russian' Language
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Russian' Language
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On Open Button In Set Parameters Window
         And Write The Created Project File With Default Path In Dialog
         And Click Open Button in Open Window
         And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Russian' Language
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Russian' Language



      @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_11.8.1,11.20.1,11.44.1,11.56.1
    Scenario: KP_AKCC_ID_11.8.1,11.20.1,11.44.1,11.56.1: Select Russian Language From Preference Window In Create Project Window And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_11.8.2,11.20.2,11.44.2,11.56.2
     Scenario: KP_AKCC_ID_11.8.2,11.20.2,11.44.2,11.56.2: Russian  Must Support "," Instead Of "." In Place Of Decimals In Tooltip Of Create Project Wizard Window And Project Window And Open Project Window And Recent Project Window.

         Given KoolProg Had Opened
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Selected Language From Preference Window
         And Get Koolprog Working Path From Preference Window And Save it
         And Verify KoolProg Will Change To 'Russian' Language In Home Window
         And Get Controller Details From Variable
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On New Button From Set Parameter Window
         And Select Controller Family And It's Variant
         And Go To Controller Details Selection Window
         And Get Code Number List From Project Description Window
         And Get SW Version List From Project Description Window
         And Write Project Name
         And Write Project Description
         When Click Finish Button In New Project Window
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On Finish Button In Quick Settings Window
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Set Language And Help Files For Selected Language
         Then Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Set Language And Help Files For Selected Language
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On Open Button In Set Parameters Window
         And Write The Created Project File With Default Path In Dialog
         And Click Open Button in Open Window
         And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Click On Quick Wizard Icon
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_11.9.1
	Scenario: KP_AKCC_ID_11.9.1: Select Russian Language From Preference Window In Create Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_11.9.2
     Scenario: KP_AKCC_ID_11.9.2: Russian Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Create Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Set Language And Help Files For Selected Language
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The Quick Setting Collection From Input Database
        And Get Quick Settings Collection For 'DataType' With 'Float' Value
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        When Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Go To Home Window From Project Window
	    And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
	    And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_11.10&11.34&11.46
    Scenario: KP_AKCC_ID_11.10&11.34&11.46 Select Russian Language In Preference Window For Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_11.10.1&11.34.1&11.46.1
    Scenario: KP_AKCC_ID_11.10.1&11.34.1&11.46.1 Verfiy Labels Text In Russian In Project, Open, Recent Window And Change The Language To English

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Verify KoolProg Will Change To 'Russian' Language In Home Window
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Russian'
    	And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Goto Working Directory In Open Dialog Window
        And Open Created Project In Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Russian'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Russian'


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_11.11.1,11.35.1,11.47.1
	Scenario: KP_AKCC_ID_11.11.1,11.35.1,11.47.1: Select Russian Language In Preference Window For Project, Open And Recent Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'Russian' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_11.11.2,11.35.2,11.47.2
     Scenario: KP_AKCC_ID_11.11.2,11.35.2,11.47.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help In Project Window, Open And Recent Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
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
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'


   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_11.12&11.36&11.48
    Scenario: KP_AKCC_ID_11.12&11.36&11.48 Create A Project In English Language Then Change language to Russian In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_11.12.1&11.36.1&11.48.1
    Scenario: KP_AKCC_ID_11.12.1&11.36.1&11.48.1 : Open The File Created In English Language After Changing The Language To Russian In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Russian' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        When Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Project Details In Project Window
        And Go To Home Window From Project Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_11.13&11.37&11.49
     Scenario: KP_AKCC_ID_11.13&11.37&11.49: Change The Language To Russian In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_11.13.1&11.37.1&11.49.1
     Scenario: KP_AKCC_ID_11.13.1&11.37.1&11.49.1: Create A Russian Project, Change The Values And Save The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Russian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_11.14&11.38&11.50
     Scenario: KP_AKCC_ID_11.14&11.38&11.50: Change The Language To Russian In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_11.14.1&11.38.1&11.50.1
     Scenario: KP_AKCC_ID_11.14.1&11.38.1&11.50.1: Create A Russian Project, Change The Values And SaveAs The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Russian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Verify Project Path And File With Extension For Saved File Is Exist In SaveAs Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_11.15
    Scenario: KP_AKCC_ID_11.15: Select Russian Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_11.15.1
    Scenario: KP_AKCC_ID_11.15.1 : Select English (United States) language After Creating Project For Russian Language From Project Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Russian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Russian' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Russian' Language In Preference Window
        And Verify Button Text For 'Russian' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        When Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_11.15.2
    Scenario: KP_AKCC_ID_11.15.2 : Verify Opening Of The Created Project File From Russian Language After Updating To English (United States) Language From Create Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Project Details In Project Window

   	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_11.18.1,11.42.1,11.54.1
    Scenario: KP_AKCC_ID_11.18.1,11.42.1,11.54.1: Select Russian Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Verify Popup Message Should Come As 'Application will restart! Do you want to proceed?' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Close The Application
        And Add Required Delay For 'CLOSING_KOOLPROG' for 'OFFLINE' mode

	@KP_AKCC_ID_11.18.2,11.42.2,11.54.2
     Scenario: KP_AKCC_ID_11.18.2,11.42.2,11.54.2: Russian Must Support Comma In Place Of Decimals From Project Window And Open Project Window And Recent Project Window..

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
		Then Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Russian' Language
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Russian' Language
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Russian' Language


	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

		@KP_AKCC_ID_11.21.1,11.45.1,11.57.1
	Scenario: KP_AKCC_ID_11.21.1,11.45.1,11.57.1: Select Russian Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_11.21.2,11.45.2,11.57.2
     Scenario: KP_AKCC_ID_11.21.2,11.45.2,11.57.2: Russian Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Project Window And Open Project Window And Recent Project Window.

       Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Set Language And Help Files For Selected Language
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The Quick Setting Collection From Input Database
        And Get Quick Settings Collection For 'DataType' With 'Float' Value
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		When Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_11.39
    Scenario: KP_AKCC_ID_11.39: Select Russian Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Russian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_11.39.1
    Scenario: KP_AKCC_ID_11.39.1 : Select English (United States) language After Creating Project For Russian Language From Open Project Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Russian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Russian' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Russian' Language In Preference Window
        And Verify Button Text For 'Russian' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
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
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_11.39.2
    Scenario: KP_AKCC_ID_11.39.2 : Verify Opening Of The Created Project File From Russian Language After Updating To English (United States) Language From Open Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_11.51
    Scenario: KP_AKCC_ID_11.51: Select Russian Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_11.51.1
    Scenario: KP_AKCC_ID_11.51.1 : Select English (United States) language After Creating Project For Russian Language From Recent Project Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Russian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Verify Label Text For 'Russian' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Russian' Language In Preference Window
        And Verify Button Text For 'Russian' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_11.51.2
    Scenario: KP_AKCC_ID_11.51.2 : Verify Opening Of The Created Project File From Russian Language After Updating To English (United States) Language From Recent Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	     @KP_AKCC_ID_12.1.1,12.2.1,12.3.1,12.4.1,12.5.1,12.13.1,12.29.1,12.37.1
    Scenario: KP_AKCC_ID_12.1.1,12.2.1,12.3.1,12.4.1,12.5.1,12.13.1,12.29.1,12.37.1: Select Chinese Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Chinese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_12.1.2,12.1.2,12.3.2,12.4.2,12.5.2,12.13.2,12.29.2,12.37.2
     Scenario: KP_AKCC_ID_12.1.2,12.1.2,12.3.2,12.4.2,12.5.2,12.13.2,12.29.2,12.37.2: Check KoolProg Application Texts For Chinese Language In Quick Wizard Window From Project Window  And Open Project Window And Recent Project Window..

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Chinese'
        Then Verify Labels Text For Selected Language In Home Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Verify Labels Text For Selected Language In Set Parameter Window
        And Click On New Button From Set Parameter Window
        And Verify Labels Text For Selected Language In Controller Selection Window
        And Select Controller Family And It's Variant
        And Verify Next Button Text For Selected Language In Controller Selection Window
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Verify Labels Text For Selected Language In Project Description Window
        And Verify Buttons Text For Selected Language Before Unchecking Quick Wizard Option In Project Description Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Verify Buttons Text For Selected Language After Unchecking Quick Wizard Option In Project Description Window
        And Select The Quick Wizard Option In Project Description Window
        And Click Finish Button In New Project Window
        And Verify Labels And Buttons Text For Selected Language When Creating Project In Quick Wizard Window
        And Click On Finish Button In Quick Settings Window
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
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
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window


     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_12.6.1,12.14.1,12.30.1,12.38.1:
    Scenario: KP_AKCC_ID_12.6.1,12.14.1,12.30.1,12.38.1: Select Chinese Language From Preference Window In Create Project Window And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Chinese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_12.6.2,12.14.2,12.30.2,12.38.2:
     Scenario: KP_AKCC_ID_12.6.2,12.14.2,12.30.2,12.38.2: Check Parameter And Help In Quick Settings From Create Project Window And Project Window And Open Project Window And Recent Project Window.

	    Given KoolProg Had Opened
	    And Verify KoolProg Will Change To 'Chinese' Language In Home Window
	    And Click On The Setting Icon Button In The Main Window
	    And Preference Window Is Visible
	    And Get Koolprog Working Path From Preference Window And Save it
	    When Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On SetParameter Button And SetParameter Window Is Visible
	    And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Get The Quick Settings Collection From The UI
        And Click On Finish Button In Quick Settings Window
	    And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	    And Break The Communication Of Port With KoolProg
	    And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
	    And The Project Window Is Visible
	    And Get The List Of Elements From The Tree View
	    Then Verify The Headers And Groupnames In Treeview For 'Chinese' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
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
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'Chinese' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'Chinese' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_12.8.1,12.24.1,12.32.1
	Scenario: KP_AKCC_ID_12.8.1,12.24.1,12.32.1: Select Chinese Language In Preference Window For Project, Open And Recent Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'Chinese' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_12.8.2,12.24.2,12.32.2
     Scenario: KP_AKCC_ID_12.8.2,12.24.2,12.32.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help In Project Window, Open And Recent Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
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
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_12.10&12.34&12.46
    Scenario: KP_AKCC_ID_12.10&12.34&12.46 Select Chinese Language In Preference Window For Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Chinese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_12.10.1&12.34.1&12.46.1
    Scenario: KP_AKCC_ID_12.10.1&12.34.1&12.46.1 Verfiy Labels Text In Chinese In Project, Open, Recent Window And Change The Language To English

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Verify KoolProg Will Change To 'Chinese' Language In Home Window
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Chinese'
    	And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Goto Working Directory In Open Dialog Window
        And Open Created Project In Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Chinese'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Chinese'


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	@KP_AKCC_ID_12.12&12.36&12.48
    Scenario: KP_AKCC_ID_12.12&12.36&12.48 Create A Project In English Language Then Change language to Chinese In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Chinese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_12.12.1&12.36.1&12.48.1
    Scenario: KP_AKCC_ID_12.12.1&12.36.1&12.48.1 : Open The File Created In English Language After Changing The Language To Chinese In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Chinese' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        When Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Project Details In Project Window
        And Go To Home Window From Project Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_12.13&12.37&12.49
     Scenario: KP_AKCC_ID_12.13&12.37&12.49: Change The Language To Chinese In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Chinese' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_12.13.1&12.37.1&12.49.1
     Scenario: KP_AKCC_ID_12.13.1&12.37.1&12.49.1: Create A Chinese Project, Change The Values And Save The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Chinese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_12.14&12.38&12.50
     Scenario: KP_AKCC_ID_12.14&12.38&12.50: Change The Language To Chinese In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Chinese' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_12.14.1&12.38.1&12.50.1
     Scenario: KP_AKCC_ID_12.14.1&12.38.1&12.50.1: Create A Chinese Project, Change The Values And SaveAs The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Chinese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Verify Project Path And File With Extension For Saved File Is Exist In SaveAs Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_12.15
    Scenario: KP_AKCC_ID_12.15: Select Chinese Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Chinese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_12.15.1
    Scenario: KP_AKCC_ID_12.15.1 : Select English (United States) language After Creating Project For Chinese Language From Project Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Chinese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Chinese' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Chinese' Language In Preference Window
        And Verify Button Text For 'Chinese' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        When Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_12.15.2
    Scenario: KP_AKCC_ID_12.15.2 : Verify Opening Of The Created Project File From Chinese Language After Updating To English (United States) Language From Create Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Project Details In Project Window

   	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_12.39
    Scenario: KP_AKCC_ID_12.39: Select Chinese Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Chinese' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_12.39.1
    Scenario: KP_AKCC_ID_12.39.1 : Select English (United States) language After Creating Project For Chinese Language From Open Project Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Chinese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Chinese' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Chinese' Language In Preference Window
        And Verify Button Text For 'Chinese' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
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
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_12.39.2
    Scenario: KP_AKCC_ID_12.39.2 : Verify Opening Of The Created Project File From Chinese Language After Updating To English (United States) Language From Open Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_12.51
    Scenario: KP_AKCC_ID_12.51: Select Chinese Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Chinese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_12.51.1
    Scenario: KP_AKCC_ID_12.51.1 : Select English (United States) language After Creating Project For Chinese Language From Recent Project Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Chinese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Verify Label Text For 'Chinese' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Chinese' Language In Preference Window
        And Verify Button Text For 'Chinese' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_12.51.2
    Scenario: KP_AKCC_ID_12.51.2 : Verify Opening Of The Created Project File From Chinese Language After Updating To English (United States) Language From Recent Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Open Recent Project From Set Parameter Window
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	     @KP_AKCC_ID_13.1.1,13.2.1,13.3.1,13.4.1,13.5.1,13.16.1,13.40.1,13.52.1
    Scenario: KP_AKCC_ID_13.1.1,13.2.1,13.3.1,13.4.1,13.5.1,13.16.1,13.40.1,13.52.1: Select Italian Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_13.1.2,13.2.2,13.3.2,13.4.2,13.5.2,13.16.2,13.40.2,13.52.2
     Scenario: KP_AKCC_ID_13.1.2,13.2.2,13.3.2,13.4.2,13.5.2,13.16.2,13.40.2,13.52.2: Check KoolProg Application Texts For Italian Language In Quick Wizard Window From Project Window  And Open Project Window And Recent Project Window..

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Italian'
        Then Verify Labels Text For Selected Language In Home Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Verify Labels Text For Selected Language In Set Parameter Window
        And Click On New Button From Set Parameter Window
        And Verify Labels Text For Selected Language In Controller Selection Window
        And Select Controller Family And It's Variant
        And Verify Next Button Text For Selected Language In Controller Selection Window
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Verify Labels Text For Selected Language In Project Description Window
        And Verify Buttons Text For Selected Language Before Unchecking Quick Wizard Option In Project Description Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Verify Buttons Text For Selected Language After Unchecking Quick Wizard Option In Project Description Window
        And Select The Quick Wizard Option In Project Description Window
        And Click Finish Button In New Project Window
        And Verify Labels And Buttons Text For Selected Language When Creating Project In Quick Wizard Window
        And Click On Finish Button In Quick Settings Window
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
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
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window


     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_13.6.1,13.17.1,13.41.1,13.53.1:
    Scenario: KP_AKCC_ID_13.6.1,13.17.1,13.41.1,13.53.1: Select Italian Language From Preference Window In Create Project Window And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_13.6.2,13.17.2,13.41.2,13.53.2:
     Scenario: KP_AKCC_ID_13.6.2,13.17.2,13.41.2,13.53.2: Check Parameter And Help In Quick Settings From Create Project Window And Project Window And Open Project Window And Recent Project Window.

	    Given KoolProg Had Opened
	    And Verify KoolProg Will Change To 'Italian' Language In Home Window
	    And Click On The Setting Icon Button In The Main Window
	    And Preference Window Is Visible
	    And Get Koolprog Working Path From Preference Window And Save it
	    When Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On SetParameter Button And SetParameter Window Is Visible
	    And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Get The Quick Settings Collection From The UI
        And Click On Finish Button In Quick Settings Window
	    And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	    And Break The Communication Of Port With KoolProg
	    And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
	    And The Project Window Is Visible
	    And Get The List Of Elements From The Tree View
	    Then Verify The Headers And Groupnames In Treeview For 'Italian' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
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
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'Italian' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'Italian' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_13.7.1,13.19.1,13.43.1,13.55.1
    Scenario: KP_AKCC_ID_13.7.1,13.19.1,13.43.1,13.55.1: Select Italian Language From Preference Window In Create Project Window  And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_13.7.2,13.19.2,13.43.2,13.55.2
     Scenario: KP_AKCC_ID_13.7.2,13.19.2,13.43.2,13.55.2: Italian  Must Support "," Instead Of "." In Place Of Decimals For Quick Wizard In Create Project Wizard Window And Project Window And Open Project Window And Recent Project Window..

         Given KoolProg Had Opened
         And Verify KoolProg Will Change To 'Italian' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Get Controller Details From Variable
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On New Button From Set Parameter Window
         And Select Controller Family And It's Variant
         And Go To Controller Details Selection Window
         And Get Code Number List From Project Description Window
         And Get SW Version List From Project Description Window
         And Write Project Name
         And Write Project Description
         When Click Finish Button In New Project Window
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On Finish Button In Quick Settings Window
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         Then Verify The Float Values In Quick Wizard Are Comma Separated For 'Italian' Language
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Italian' Language
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On Open Button In Set Parameters Window
         And Write The Created Project File With Default Path In Dialog
         And Click Open Button in Open Window
         And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Italian' Language
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Italian' Language



      @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_13.8.1,13.20.1,13.44.1,13.56.1
    Scenario: KP_AKCC_ID_13.8.1,13.20.1,13.44.1,13.56.1: Select Italian Language From Preference Window In Create Project Window And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_13.8.2,13.20.2,13.44.2,13.56.2
     Scenario: KP_AKCC_ID_13.8.2,13.20.2,13.44.2,13.56.2: Italian  Must Support "," Instead Of "." In Place Of Decimals In Tooltip Of Create Project Wizard Window And Project Window And Open Project Window And Recent Project Window.

         Given KoolProg Had Opened
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Selected Language From Preference Window
         And Get Koolprog Working Path From Preference Window And Save it
         And Verify KoolProg Will Change To 'Italian' Language In Home Window
         And Get Controller Details From Variable
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On New Button From Set Parameter Window
         And Select Controller Family And It's Variant
         And Go To Controller Details Selection Window
         And Get Code Number List From Project Description Window
         And Get SW Version List From Project Description Window
         And Write Project Name
         And Write Project Description
         When Click Finish Button In New Project Window
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On Finish Button In Quick Settings Window
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Set Language And Help Files For Selected Language
         Then Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Set Language And Help Files For Selected Language
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Click On SetParameter Button And SetParameter Window Is Visible
         And Click On Open Button In Set Parameters Window
         And Write The Created Project File With Default Path In Dialog
         And Click Open Button in Open Window
         And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Click On Quick Wizard Icon
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_13.9.1
	Scenario: KP_AKCC_ID_13.9.1: Select Italian Language From Preference Window In Create Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_13.9.2
     Scenario: KP_AKCC_ID_13.9.2: Italian Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Create Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Set Language And Help Files For Selected Language
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The Quick Setting Collection From Input Database
        And Get Quick Settings Collection For 'DataType' With 'Float' Value
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        When Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Go To Home Window From Project Window
	    And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
	    And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_13.10&13.34&13.46
    Scenario: KP_AKCC_ID_13.10&13.34&13.46 Select Italian Language In Preference Window For Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_13.10.1&13.34.1&13.46.1
    Scenario: KP_AKCC_ID_13.10.1&13.34.1&13.46.1 Verfiy Labels Text In Italian In Project, Open, Recent Window And Change The Language To English

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Verify KoolProg Will Change To 'Italian' Language In Home Window
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Italian'
    	And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Goto Working Directory In Open Dialog Window
        And Open Created Project In Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Italian'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Italian'


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_13.11.1,13.35.1,13.47.1
	Scenario: KP_AKCC_ID_13.11.1,13.35.1,13.47.1: Select Italian Language In Preference Window For Project, Open And Recent Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'Italian' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_13.11.2,13.35.2,13.47.2
     Scenario: KP_AKCC_ID_13.11.2,13.35.2,13.47.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help In Project Window, Open And Recent Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
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
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'


   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_13.12&13.36&13.48
    Scenario: KP_AKCC_ID_13.12&13.36&13.48 Create A Project In English Language Then Change language to Italian In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_13.12.1&13.36.1&13.48.1
    Scenario: KP_AKCC_ID_13.12.1&13.36.1&13.48.1 : Open The File Created In English Language After Changing The Language To Italian In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Italian' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        When Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Project Details In Project Window
        And Go To Home Window From Project Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Project Details In Project Window

     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_13.13&13.37&13.49
     Scenario: KP_AKCC_ID_13.13&13.37&13.49: Change The Language To Italian In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_13.13.1&13.37.1&13.49.1
     Scenario: KP_AKCC_ID_13.13.1&13.37.1&13.49.1: Create A Italian Project, Change The Values And Save The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Italian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_13.14&13.38&13.50
     Scenario: KP_AKCC_ID_13.14&13.38&13.50: Change The Language To Italian In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_13.14.1&13.38.1&13.50.1
     Scenario: KP_AKCC_ID_13.14.1&13.38.1&13.50.1: Create A Italian Project, Change The Values And SaveAs The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Italian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Verify Project Path And File With Extension For Saved File Is Exist In SaveAs Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_13.15
    Scenario: KP_AKCC_ID_13.15: Select Italian Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_13.15.1
    Scenario: KP_AKCC_ID_13.15.1 : Select English (United States) language After Creating Project For Italian Language From Project Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Italian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Italian' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Italian' Language In Preference Window
        And Verify Button Text For 'Italian' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        When Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_13.15.2
    Scenario: KP_AKCC_ID_13.15.2 : Verify Opening Of The Created Project File From Italian Language After Updating To English (United States) Language From Create Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Project Details In Project Window

   	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_13.18.1,13.42.1,13.54.1
    Scenario: KP_AKCC_ID_13.18.1,13.42.1,13.54.1: Select Italian Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Verify Popup Message Should Come As 'Application will restart! Do you want to proceed?' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Close The Application
        And Add Required Delay For 'CLOSING_KOOLPROG' for 'OFFLINE' mode

	@KP_AKCC_ID_13.18.2,13.42.2,13.54.2
     Scenario: KP_AKCC_ID_13.18.2,13.42.2,13.54.2: Italian Must Support Comma In Place Of Decimals From Project Window And Open Project Window And Recent Project Window..

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
		Then Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Italian' Language
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Italian' Language
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Italian' Language


	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_13.21.1,13.45.1,13.57.1
	Scenario: KP_AKCC_ID_13.21.1,13.45.1,13.57.1: Select Italian Language From Preference Window In Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_13.21.2,13.45.2,13.57.2
     Scenario: KP_AKCC_ID_13.21.2,13.45.2,13.57.2: Italian Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Project Window And Open Project Window And Recent Project Window.

       Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Set Language And Help Files For Selected Language
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The Quick Setting Collection From Input Database
        And Get Quick Settings Collection For 'DataType' With 'Float' Value
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		When Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Set Random Values In The QuickSetting For 'QuickSetting_Collection' With Comma Supported Values
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Click On Quick Wizard Icon
        And Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Click On Finish Button In Quick Settings Window
	    And Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
		And The Project Window Is Visible
		And Click On Quick Wizard Icon
		And Get The Quick Settings Collection From The UI
		And Click On X Button In Quick Settings Window
		And Parse The DataGrid
	    And Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_13.39
    Scenario: KP_AKCC_ID_13.39: Select Italian Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Italian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_13.39.1
    Scenario: KP_AKCC_ID_13.39.1 : Select English (United States) language After Creating Project For Italian Language From Open Project Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Italian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Italian' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Italian' Language In Preference Window
        And Verify Button Text For 'Italian' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
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
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_13.39.2
    Scenario: KP_AKCC_ID_13.39.2 : Verify Opening Of The Created Project File From Italian Language After Updating To English (United States) Language From Open Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_13.51
    Scenario: KP_AKCC_ID_13.51: Select Italian Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_13.51.1
    Scenario: KP_AKCC_ID_13.51.1 : Select English (United States) language After Creating Project For Italian Language From Recent Project Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Italian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Verify Label Text For 'Italian' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Italian' Language In Preference Window
        And Verify Button Text For 'Italian' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_13.51.2
    Scenario: KP_AKCC_ID_13.51.2 : Verify Opening Of The Created Project File From Italian Language After Updating To English (United States) Language From Recent Project Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_14.1,14.2,14.3,14.4,14.5,14.12,14.26,14.33
     Scenario: KP_AKCC_ID_14.1,14.2,14.3,14.4,14.5,14.12,14.26,14.33: Check KoolProg Application Texts For English UK Language In Quick Wizard Window From Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'English UK'
        Then Verify Labels Text For Selected Language In Home Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Verify Labels Text For Selected Language In Set Parameter Window
        And Click On New Button From Set Parameter Window
        And Verify Labels Text For Selected Language In Controller Selection Window
        And Select Controller Family And It's Variant
        And Verify Next Button Text For Selected Language In Controller Selection Window
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Verify Labels Text For Selected Language In Project Description Window
        And Verify Buttons Text For Selected Language Before Unchecking Quick Wizard Option In Project Description Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Verify Buttons Text For Selected Language After Unchecking Quick Wizard Option In Project Description Window
        And Select The Quick Wizard Option In Project Description Window
        And Click Finish Button In New Project Window
        And Verify Labels And Buttons Text For Selected Language When Creating Project In Quick Wizard Window
        And Click On Finish Button In Quick Settings Window
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window

    @KP_AKCC_ID_14.6.1,14.13.1,14.27.1,14.34.1:
    Scenario: KP_AKCC_ID_14.6.1,14.13.1,14.27.1,14.34.1: Select English UK Language From Preference Window In Create Project Window And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'English UK' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_14.6.2,14.13.2,14.27.2,14.34.2:
     Scenario: KP_AKCC_ID_14.6.2,14.13.2,14.27.2,14.34.2: Check Parameter And Help In Quick Settings From Create Project Window And Project Window And Open Project Window And Recent Project Window.

	    Given KoolProg Had Opened
	    And Verify KoolProg Will Change To 'English UK' Language In Home Window
	    And Click On The Setting Icon Button In The Main Window
	    And Preference Window Is Visible
	    And Get Koolprog Working Path From Preference Window And Save it
	    When Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On SetParameter Button And SetParameter Window Is Visible
	    And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Get The Quick Settings Collection From The UI
        And Click On Finish Button In Quick Settings Window
	    And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	    And Break The Communication Of Port With KoolProg
	    And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
	    And The Project Window Is Visible
	    And Get The List Of Elements From The Tree View
	    Then Verify The Headers And Groupnames In Treeview For 'English UK' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
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
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'English UK' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'English UK' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_14.7&14.21&14.28
    Scenario: KP_AKCC_ID_14.7&14.21&14.28 Verfiy Labels Text In English UK In Project, Open, Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Verify KoolProg Will Change To 'English UK' Language In Home Window
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'English UK'
    	And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Goto Working Directory In Open Dialog Window
        And Open Created Project In Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'English UK'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'English UK'


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_14.8.1,14.22.1,14.29.1
	Scenario: KP_AKCC_ID_14.8.1,14.22.1,14.29.1: Select English UK Language In Preference Window For Project, Open And Recent Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'English UK' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_14.8.2,14.22.2,14.29.2
     Scenario: KP_AKCC_ID_14.8.2,14.22.2,14.29.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help In Project Window, Open And Recent Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
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
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'


   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	@KP_AKCC_ID_14.09&14.23&14.30
    Scenario: KP_AKCC_ID_14.09&14.23&14.30 Create A Project In English UK Then Change language to English US In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application


    @KP_AKCC_ID_14.09.1&14.23.1&14.30.1
    Scenario: KP_AKCC_ID_14.09.1&14.23.1&14.30.1 : Open The Project In English US And Verify Project Details In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English US' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        When Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Project Details In Project Window
        And Go To Home Window From Project Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Project Details In Project Window

     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_14.10&14.24&14.31
     Scenario: KP_AKCC_ID_14.10.1&14.24.1&14.31.1: Create A English UK Project, Change The Values And Save The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English UK' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_14.11.1&14.25&14.32
     Scenario: KP_AKCC_ID_14.11.1&14.25&14.32: Create A English UK Project, Change The Values And SaveAs The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English UK' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Verify Project Path And File With Extension For Saved File Is Exist In SaveAs Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_14.43,14.44,14.45,14.46,14.47,14.54,14.68,14.75
    Scenario: KP_AKCC_ID_14.43,14.44,14.45,14.46,14.47,14.54,14.68,14.75: Select English US Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_14.43.1,14.44.1,14.45.1,14.46.1,14.47.1,14.54.1,14.68.1,14.75.1
     Scenario: KP_AKCC_ID_14.43.1,14.44.1,14.45.1,14.46.1,14.47.1,14.54.1,14.68.1,14.75.1: Check KoolProg Application Texts For English US Language In Quick Wizard Window From Project Window,Open And Recent Project Window.

        Given KoolProg Had Opened
        When Verify KoolProg Will Change To 'English US'
        Then Verify Labels Text For Selected Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Verify Labels Text For Selected Language In Set Parameter Window
        And Click On New Button From Set Parameter Window
        And Verify Labels Text For Selected Language In Controller Selection Window
        And Select Controller Family And It's Variant
        And Verify Next Button Text For Selected Language In Controller Selection Window
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Verify Labels Text For Selected Language In Project Description Window
        And Verify Buttons Text For Selected Language Before Unchecking Quick Wizard Option In Project Description Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Verify Buttons Text For Selected Language After Unchecking Quick Wizard Option In Project Description Window
        And Select The Quick Wizard Option In Project Description Window
        And Click Finish Button In New Project Window
        And Verify Labels And Buttons Text For Selected Language When Creating Project In Quick Wizard Window
        And Click On Finish Button In Quick Settings Window
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Quick Wizard Icon
        And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_14.48.1,14.55.1,14.69.1,14.76.1:
    Scenario: KP_AKCC_ID_14.48.1,14.55.1,14.69.1,14.76.1:Select English US Language From Preference Window In Create Project Window And Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_14.48.2,14.55.2,14.69.2,14.76.2:
     Scenario: KP_AKCC_ID_14.48.2,14.55.2,14.69.2,14.76.2: Check Parameter And Help In Quick Settings From Create Project Window And Project Window And Open Project Window And Recent Project Window.

	    Given KoolProg Had Opened
	    And Verify KoolProg Will Change To 'English US' Language In Home Window
	    And Click On The Setting Icon Button In The Main Window
	    And Preference Window Is Visible
	    And Get Koolprog Working Path From Preference Window And Save it
	    When Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On SetParameter Button And SetParameter Window Is Visible
	    And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Get The Quick Settings Collection From The UI
        And Click On Finish Button In Quick Settings Window
	    And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
	    And Break The Communication Of Port With KoolProg
	    And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
	    And The Project Window Is Visible
	    And Get The List Of Elements From The Tree View
	    Then Verify The Headers And Groupnames In Treeview For 'English US' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
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
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'English US' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'English US' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'

     @KP_AKCC_ID_14.49&14.63&14.70
    Scenario: KP_AKCC_ID_14.49&14.63&14.70 Select English US Language In Preference Window For Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'English US' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_14.49.1&14.63.1&14.70.1
    Scenario: KP_AKCC_ID_14.49.1&14.63.1&14.70.1 Verfiy Labels Text In English US In Project, Open, Recent Window And Change The Language To English

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Verify KoolProg Will Change To 'English US' Language In Home Window
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'English US'
    	And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Goto Working Directory In Open Dialog Window
        And Open Created Project In Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'English US'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'English US'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_14.50.1,14.64.1,14.71.1
	Scenario: KP_AKCC_ID_14.50.1,14.64.1,14.71.1: Select English UK Language In Preference Window For Project, Open And Recent Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'English UK' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_14.50.2,14.64.2,14.71.2
     Scenario: KP_AKCC_ID_14.50.2,14.64.2,14.71.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help In Project Window, Open And Recent Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
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
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'


   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	    @KP_AKCC_ID_14.51.1&14.72.1&14.80.1
    Scenario: KP_AKCC_ID_14.51.1&14.72.1&14.80.1 Create A Project In English US In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English UK' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_14.51.2&14.72.2&14.80.2
    Scenario: @KP_AKCC_ID_14.51.2&14.72.2&14.80.2 : Open The File Created In English UK In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English UK' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        When Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Project Details In Project Window
        And Go To Home Window From Project Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Project Details In Project Window

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_14.52&14.66&14.73
     Scenario: KP_AKCC_ID_14.52&14.66&14.73: Change The Language To English US In Project, Open And Recent Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'English US' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_14.52&14.66&14.73.1
     Scenario: KP_AKCC_ID_14.52.1&14.66.1&14.73.1: Create A English US Project, Change The Values And Save The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English US' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_14.53.1&14.67.1&14.74.1
     Scenario: KP_AKCC_ID_14.53.1&14.67.1&14.74.1: Create A English US Project, Change The Values And SaveAs The File And Open The File In Project, Open And Recent Window

		Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English US' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		When Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Verify Project Path And File With Extension For Saved File Is Exist In SaveAs Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

     @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_14.56&14.72&14.80
    Scenario: KP_AKCC_ID_14.56&14.72&14.80 Change The Language To English US In Project Window, Open And Recent Window

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

