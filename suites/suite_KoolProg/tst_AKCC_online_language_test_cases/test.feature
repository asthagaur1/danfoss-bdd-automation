# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: Check AKCC Language Online test cases.

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



    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_6.22
    Scenario: KP_AKCC_ID_6.22 Select Danish Language From Preference Window For Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_6.22.1
    Scenario: KP_AKCC_ID_6.22.1 Verfiy Labels Text In Danish In Import Settings From Controller

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Danish' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Danish'


   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_6.23.1,6.61.1
	Scenario: KP_AKCC_ID_6.23.1,6.61.1: Select Danish Language In Preference Window For Import Settings From Controller Window And Online Service Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'Danish' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_6.23.2,6.61.2
     Scenario: KP_AKCC_ID_6.23.2,6.61.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help For Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
		And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And On-line Service Window Is Visible
		And Click On All Tree Item In Tree View
        And Parse The DataGrid
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_6.24
    Scenario: KP_AKCC_ID_6.24 : Create A Project In English Language Then Change Language To Danish In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        When Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_6.24.1
    Scenario: KP_AKCC_ID_6.24.1 : Open The File Created In English Language After Changing The Language To Danish In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Danish' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		When Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_6.25
     Scenario: KP_AKCC_ID_6.25: Change The Language To Danish In In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_6.25.1
     Scenario: KP_AKCC_ID_6.25.1: Create A Danish Project, Change The Values And Save The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Danish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_6.26
     Scenario: KP_AKCC_ID_6.26: Change The Language To Danish In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_6.26.1
     Scenario: KP_AKCC_ID_6.26.1: Create A Danish Project, Change The Values And SaveAs The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Danish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
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
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

   @KP_AKCC_ID_6.27
    Scenario: KP_AKCC_ID_6.27: Select Danish Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Danish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_6.27.1
    Scenario: KP_AKCC_ID_6.27.1 : Select English (United States) language After Creating Project For Danish Language In Import Settings From Controller Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Verify KoolProg Will Change To 'Danish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Danish' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Danish' Language In Preference Window
        And Verify Button Text For 'Danish' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_6.27.2
    Scenario: KP_AKCC_ID_6.27.2 : Verify Opening Of The Created Project File From Danish Language After Updating To English (United States) Language In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_6.28.1,6.65.1
    Scenario: KP_AKCC_ID_6.28.1,6.65.1: Select Danish Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_6.28.2,6.65.2
     Scenario: KP_AKCC_ID_6.28.2,6.65.2: Check KoolProg Application Texts For 'Danish' In Quick Wizard Window From Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And Verify KoolProg Will Change To 'Danish' Language In Home Window
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         Then Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
         And Click On Finish Button In Quick Settings Window
         And The Project Window Is Visible
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Verify Quick Wizard Icon Is Visible
		 And Verify Quick Wizard Button Is Enabled
         And Click On Quick Wizard Icon
         And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_6.29.1,6.66.1
    Scenario: KP_AKCC_ID_6.29.1,6.66.1: Select Danish Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_6.29.2,6.66.2:
     Scenario: KP_AKCC_ID_6.29.2,6.66.2: Check Parameter And Help In Quick Settings In Import settings From Controller Window And Online Service Window.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
		And Enable The Port For Created Project
	    And Verify KoolProg Will Change To 'Danish' Language In Home Window
	    And Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    When Click On Import Setting From Controller Button
	    And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
	    And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'Danish' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    Then Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
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
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_6.30.1,6.67.1
    Scenario: KP_AKCC_ID_6.30.1,6.67.1: Select Danish Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_6.30.2,6.67.2
     Scenario: KP_AKCC_ID_6.30.2,6.67.2: Danish Must Support Comma In Place Of Decimals In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Click On Save Button In Preference Window
        And Click OK Button In Popup Window
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
		Then Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Danish' Language
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
		And Click On 'All' Tree Item In Tree View For Selected Language
        And Parse The DataGrid
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Danish' Language


	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_6.31.1,6.68.1
    Scenario: KP_AKCC_ID_6.31.1,6.68.1: Select Danish Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_6.31.2,6.68.2
     Scenario: KP_AKCC_ID_6.31.2,6.68.2: Danish  Must Support "," Instead Of "." In Place Of Decimals From Quick Wizard Window In Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And KoolProg Main Window Is Visible
         And Verify KoolProg Will Change To 'Danish' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Set Language And Help Files For Selected Language
         And Get The Parameter Collection From Input Database
         Then Verify The Float Values In Quick Wizard Are Comma Separated For 'Danish' Language
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Click On Quick Wizard Icon
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And On-line Service Window Is Visible
         And Set Language And Help Files For Selected Language
         And Get The Parameter Collection From Input Database
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Danish' Language

	  @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_6.32.1,6.69.1
    Scenario: KP_AKCC_ID_6.32.1,6.69.1: Select Danish Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_6.32.2,6.69.2
     Scenario: KP_AKCC_ID_6.32.2,6.69.2: Danish  Must Support "," Instead Of "." In Place Of Decimals In Tooltip In Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And KoolProg Main Window Is Visible
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And Verify KoolProg Will Change To 'Danish' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Selected Language From Preference Window
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         Then Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Click On Quick Wizard Icon
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And On-line Service Window Is Visible
         And Click On 'All' Tree Item In Tree View For Selected Language
         And Set Language And Help Files For Selected Language
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_6.33.1,6.70.1
    Scenario: KP_AKCC_ID_6.33.1,6.70.1: Select Danish Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_6.33.2,6.70.2
    Scenario: KP_AKCC_ID_6.33.2,6.70.2: Danish Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Click On Save Button In Preference Window
        And Click OK Button In Popup Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
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
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
		And Click On 'All' Tree Item In Tree View For Selected Language
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

	@KP_AKCC_ID_6.58
    Scenario: KP_AKCC_ID_6.58 Select Danish Language From Preference Window In Copy To Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_6.58.1
    Scenario: KP_AKCC_ID_6.58.1 Verfiy Labels Text In Danish In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Danish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
	    And The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Copy To Controller Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In Online Window In 'Danish' In Copy To Controller


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	@KP_AKCC_ID_6.59
    Scenario: KP_AKCC_ID_6.59 Create A Project In English Language Then Change Language To Danish In Copy To Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click On Yes Button On PopUp Window
        And Close The Application

    @KP_AKCC_ID_6.59.1
    Scenario: KP_AKCC_ID_6.59.1 : Open The File Created In English Language After Changing The Language To Danish In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Danish' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The KoolProg Version
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        When Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        Then Verify Project Details In Project Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_6.60
    Scenario: KP_AKCC_ID_6.60 Select Danish Language From Preference Window For Online Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Danish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application


    @KP_AKCC_ID_6.60.1
    Scenario: KP_AKCC_ID_6.60.1 Verfiy Labels Text In Danish In Online Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Danish' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Online Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Danish' In Online Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_6.61
    Scenario: KP_AKCC_ID_6.61 : Create A Project In English Language Then Change language to Danish In Online Service

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Get The KoolProg Version
        And Split FileName And Extension
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_6.61.1
    Scenario: KP_AKCC_ID_6.61.1 : Open The File Created In English Language After Changing The Language To Danish In Online Service

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

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_6.63
     Scenario: KP_AKCC_ID_6.63: Change The Language To Danish In Online Service

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_6.63.1
     Scenario: KP_AKCC_ID_6.63.1: Create A Danish Project, Change The Values And SaveAs The File In Online Service

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Danish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        When Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From On-Service Test Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_6.64
    Scenario: KP_AKCC_ID_6.64: Select Danish Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language From Language Option
        And Click On Save Button In Preference Window
        And Check Popup Message Should Come As 'Application Restart Message' With Respect To 'English UK' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Verify 'Saved Successfully Message' With Respect To 'English UK' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button For 'English UK' In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_6.64.1
    Scenario: KP_AKCC_ID_6.64.1 : Select English (United States) language After Creating Project For Danish Language From Online Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Danish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Danish' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Danish' Language In Preference Window
        And Verify Button Text For 'Danish' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Korrekt gemt' In Online Service Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Get The KoolProg Version
        And Split FileName And Extension
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Check Popup Message Should Come As 'Application Restart Message' With Respect To 'Danish' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Verify 'Saved Successfully Message' With Respect To 'Danish' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button For 'English UK' In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_6.64.2
    Scenario: KP_AKCC_ID_6.64.2 : Verify Opening Of The Created Project File From Danish Language After Updating To English (United States) Language From Online Service Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

   	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_7.22
    Scenario: KP_AKCC_ID_7.22 Select French Language From Preference Window For Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_7.22.1
    Scenario: KP_AKCC_ID_7.22.1 Verfiy Labels Text In French In Import Settings From Controller

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'French' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'French'


   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_7.23.1,7.61.1
	Scenario: KP_AKCC_ID_7.23.1,7.61.1: Select French Language In Preference Window For Import Settings From Controller Window And Online Service Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'French' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_7.23.2,7.61.2
     Scenario: KP_AKCC_ID_7.23.2,7.61.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help For Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
		And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And On-line Service Window Is Visible
		And Click On All Tree Item In Tree View
        And Parse The DataGrid
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	@KP_AKCC_ID_7.24
    Scenario: KP_AKCC_ID_7.24 : Create A Project In English Language Then Change Language To French In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        When Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_7.24.1
    Scenario: KP_AKCC_ID_7.24.1 : Open The File Created In English Language After Changing The Language To French In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'French' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		When Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        Then Verify Project Details In Project Window

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_7.25
     Scenario: KP_AKCC_ID_7.25: Change The Language To French In In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_7.25.1
     Scenario: KP_AKCC_ID_7.25.1: Create A French Project, Change The Values And Save The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'French' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_7.26
     Scenario: KP_AKCC_ID_7.26: Change The Language To French In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_7.26.1
     Scenario: KP_AKCC_ID_7.26.1: Create A French Project, Change The Values And SaveAs The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'French' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	@KP_AKCC_ID_7.27.1
    Scenario: KP_AKCC_ID_7.27.1: Select French Language From Preference Window In Import Settings From Controller Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Danish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_7.27.1
    Scenario: KP_AKCC_ID_7.27.1 : Select English (United States) language After Creating Project For French Language In Import Settings From Controller Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Verify KoolProg Will Change To 'French' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'French' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'French' Language In Preference Window
        And Verify Button Text For 'French' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_7.27.2
    Scenario: KP_AKCC_ID_7.27.2 : Verify Opening Of The Created Project File From French Language After Updating To English (United States) Language In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_7.28.1,7.65.1
    Scenario: KP_AKCC_ID_7.28.1,7.65.1: Select French Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_7.28.2,7.65.2
     Scenario: KP_AKCC_ID_7.28.2,7.65.2: Check KoolProg Application Texts For 'French' In Quick Wizard Window From Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And Verify KoolProg Will Change To 'French' Language In Home Window
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         Then Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
         And Click On Finish Button In Quick Settings Window
         And The Project Window Is Visible
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Verify Quick Wizard Icon Is Visible
		 And Verify Quick Wizard Button Is Enabled
         And Click On Quick Wizard Icon
         And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_7.29.1,7.66.1
    Scenario: KP_AKCC_ID_7.29.1,7.66.1: Select French Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_7.29.2,7.66.2:
     Scenario: KP_AKCC_ID_7.29.2,7.66.2: Check Parameter And Help In Quick Settings In Import settings From Controller Window And Online Service Window.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
		And Enable The Port For Created Project
	    And Verify KoolProg Will Change To 'French' Language In Home Window
	    And Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On Import Setting From Controller Button
	    And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
	    When Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'French' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    Then Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
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
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_7.30.1,7.67.1
    Scenario: KP_AKCC_ID_7.30.1,7.67.1: Select French Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_7.30.2,7.67.2
     Scenario: KP_AKCC_ID_7.30.2,7.67.2: French Must Support Comma In Place Of Decimals In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Click On Save Button In Preference Window
        And Click OK Button In Popup Window
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
		Then Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'French' Language
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
		And Click On 'All' Tree Item In Tree View For Selected Language
        And Parse The DataGrid
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'French' Language


	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_7.31.1,7.68.1
    Scenario: KP_AKCC_ID_7.31.1,7.68.1: Select French Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_7.31.2,7.68.2
     Scenario: KP_AKCC_ID_7.31.2,7.68.2: French  Must Support "," Instead Of "." In Place Of Decimals From Quick Wizard Window In Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And KoolProg Main Window Is Visible
         And Verify KoolProg Will Change To 'French' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Set Language And Help Files For Selected Language
         And Get The Parameter Collection From Input Database
         Then Verify The Float Values In Quick Wizard Are Comma Separated For 'French' Language
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Click On Quick Wizard Icon
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And On-line Service Window Is Visible
         And Set Language And Help Files For Selected Language
         And Get The Parameter Collection From Input Database
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'French' Language

	  @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_7.32.1,7.69.1
    Scenario: KP_AKCC_ID_7.32.1,7.69.1: Select French Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_7.32.2,7.69.2
     Scenario: KP_AKCC_ID_7.32.2,7.69.2: French  Must Support "," Instead Of "." In Place Of Decimals In Tooltip In Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And KoolProg Main Window Is Visible
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And Verify KoolProg Will Change To 'French' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Selected Language From Preference Window
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         Then Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Click On Quick Wizard Icon
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And On-line Service Window Is Visible
         And Click On 'All' Tree Item In Tree View For Selected Language
         And Set Language And Help Files For Selected Language
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_7.33.1,7.70.1
    Scenario: KP_AKCC_ID_7.33.1,7.70.1: Select French Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_7.33.2,7.70.2
    Scenario: KP_AKCC_ID_7.33.2,7.70.2: French Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Click On Save Button In Preference Window
        And Click OK Button In Popup Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
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
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
		And Click On 'All' Tree Item In Tree View For Selected Language
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

	@KP_AKCC_ID_7.58
    Scenario: KP_AKCC_ID_7.58 Select French Language From Preference Window In Copy To Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_7.58.1
    Scenario: KP_AKCC_ID_7.58.1 Verfiy Labels Text In French In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'French' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
	    And The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Copy To Controller Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In Online Window In 'French' In Copy To Controller


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	@KP_AKCC_ID_7.59
    Scenario: KP_AKCC_ID_7.59 Create A Project In English Language Then Change Language To French In Copy To Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click On Yes Button On PopUp Window
        And Close The Application

    @KP_AKCC_ID_7.59.1
    Scenario: KP_AKCC_ID_7.59.1 : Open The File Created In English Language After Changing The Language To French In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'French' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The KoolProg Version
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        When Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        Then Verify Project Details In Project Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_7.60
    Scenario: KP_AKCC_ID_7.60 Select French Language From Preference Window For Online Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'French' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application


    @KP_AKCC_ID_7.60.1
    Scenario: KP_AKCC_ID_7.60.1 Verfiy Labels Text In French In Online Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'French' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Online Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'French' In Online Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_7.61
    Scenario: KP_AKCC_ID_7.61 : Create A Project In English Language Then Change language to French In Online Service

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Get The KoolProg Version
        And Split FileName And Extension
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'French' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_7.61.1
    Scenario: KP_AKCC_ID_7.61.1 : Open The File Created In English Language After Changing The Language To French In Online Service

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


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_7.63
    Scenario: KP_AKCC_ID_7.63: Select French Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_7.63.1
     Scenario: KP_AKCC_ID_7.63.1: Create A French Project, Change The Values And SaveAs The File In Online Service

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'French' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        When Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From On-Service Test Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_7.64
    Scenario: KP_AKCC_ID_7.64: Select French Language From Preference Window In Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French' Language From Language Option
        And Click On Save Button In Preference Window
        And Check Popup Message Should Come As 'Application Restart Message' With Respect To 'English UK' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Verify 'Saved Successfully Message' With Respect To 'English UK' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button For 'English UK' In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_7.64.1
    Scenario: KP_AKCC_ID_7.64.1 : Select English (United States) language After Creating Project For French Language From Online Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
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
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Korrekt gemt' In Online Service Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Get The KoolProg Version
        And Split FileName And Extension
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Check Popup Message Should Come As 'Application Restart Message' With Respect To 'French' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Verify 'Saved Successfully Message' With Respect To 'French' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button For 'English UK' In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_7.64.2
    Scenario: KP_AKCC_ID_7.64.2 : Verify Opening Of The Created Project File From French Language After Updating To English (United States) Language From Online Service Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

   	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

		@KP_AKCC_ID_8.22
    Scenario: KP_AKCC_ID_8.22 Select Spanish Language From Preference Window For Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_8.22.1
    Scenario: KP_AKCC_ID_8.22.1 Verfiy Labels Text In Spanish In Import Settings From Controller

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Spanish' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Spanish'


   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_8.23.1,8.61.1
	Scenario: KP_AKCC_ID_8.23.1,8.61.1: Select Spanish Language In Preference Window For Import Settings From Controller Window And Online Service Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'Spanish' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_8.23.2,8.61.2
     Scenario: KP_AKCC_ID_8.23.2,8.61.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help For Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
		And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And On-line Service Window Is Visible
		And Click On All Tree Item In Tree View
        And Parse The DataGrid
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	@KP_AKCC_ID_8.24
    Scenario: KP_AKCC_ID_8.24 : Create A Project In English Language Then Change Language To Spanish In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        When Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_8.24.1
    Scenario: KP_AKCC_ID_8.24.1 : Open The File Created In English Language After Changing The Language To Spanish In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Spanish' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		When Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        Then Verify Project Details In Project Window

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


     @KP_AKCC_ID_8.25
     Scenario: KP_AKCC_ID_8.25: Change The Language To Spanish In In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_8.25.1
     Scenario: KP_AKCC_ID_8.25.1: Create A Spanish Project, Change The Values And Save The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Spanish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_8.26
     Scenario: KP_AKCC_ID_8.26: Change The Language To Spanish In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_8.26.1
     Scenario: KP_AKCC_ID_8.26.1: Create A Spanish Project, Change The Values And SaveAs The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Spanish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_8.27.1:
    Scenario: KP_AKCC_ID_8.27.1: Select Spanish Language From Preference Window In Import Settings From Controller Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Selected Language From Preference Window
        When Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_8.27.2
    Scenario: KP_AKCC_ID_8.27.2 : Select English (US) language After Creating Project For Spanish Language In Import Settings From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Spanish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Spanish' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Spanish' Language In Preference Window
        And Verify Button Text For 'Spanish' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_8.27.3
    Scenario: KP_AKCC_ID_8.27.3 : Verify Opening Of The Created Project File From Spanish Language After Updating To English (US) Language In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_8.28.1,8.65.1
    Scenario: KP_AKCC_ID_8.28.1,8.65.1: Select Spanish Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_8.28.2,8.65.2
     Scenario: KP_AKCC_ID_8.28.2,8.65.2: Check KoolProg Application Texts For 'Spanish' In Quick Wizard Window From Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And Verify KoolProg Will Change To 'Spanish' Language In Home Window
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         Then Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
         And Click On Finish Button In Quick Settings Window
         And The Project Window Is Visible
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Verify Quick Wizard Icon Is Visible
		 And Verify Quick Wizard Button Is Enabled
         And Click On Quick Wizard Icon
         And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_8.29.1,8.66.1
    Scenario: KP_AKCC_ID_8.29.1,8.66.1: Select Spanish Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_8.29.2,8.66.2:
     Scenario: KP_AKCC_ID_8.29.2,8.66.2: Check Parameter And Help In Quick Settings In Import settings From Controller Window And Online Service Window.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
		And Enable The Port For Created Project
	    And Verify KoolProg Will Change To 'Spanish' Language In Home Window
	    And Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On Import Setting From Controller Button
	    And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
	    When Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'Spanish' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    Then Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
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
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_8.30.1,8.67.1
    Scenario: KP_AKCC_ID_8.30.1,8.67.1: Select Spanish Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_8.30.2,8.67.2
     Scenario: KP_AKCC_ID_8.30.2,8.67.2: Spanish Must Support Comma In Place Of Decimals In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Click On Save Button In Preference Window
        And Click OK Button In Popup Window
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
		Then Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Spanish' Language
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
		And Click On 'All' Tree Item In Tree View For Selected Language
        And Parse The DataGrid
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Spanish' Language


	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_8.31.1,8.68.1
    Scenario: KP_AKCC_ID_8.31.1,8.68.1: Select Spanish Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_8.31.2,8.68.2
     Scenario: KP_AKCC_ID_8.31.2,8.68.2: Spanish  Must Support "," Instead Of "." In Place Of Decimals From Quick Wizard Window In Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And KoolProg Main Window Is Visible
         And Verify KoolProg Will Change To 'Spanish' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Set Language And Help Files For Selected Language
         And Get The Parameter Collection From Input Database
         Then Verify The Float Values In Quick Wizard Are Comma Separated For 'Spanish' Language
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Click On Quick Wizard Icon
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And On-line Service Window Is Visible
         And Set Language And Help Files For Selected Language
         And Get The Parameter Collection From Input Database
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Spanish' Language

	  @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_8.32.1,8.69.1
    Scenario: KP_AKCC_ID_8.32.1,8.69.1: Select Spanish Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_8.32.2,8.69.2
     Scenario: KP_AKCC_ID_8.32.2,8.69.2: Spanish  Must Support "," Instead Of "." In Place Of Decimals In Tooltip In Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And KoolProg Main Window Is Visible
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And Verify KoolProg Will Change To 'Spanish' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Selected Language From Preference Window
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         Then Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Click On Quick Wizard Icon
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And On-line Service Window Is Visible
         And Click On 'All' Tree Item In Tree View For Selected Language
         And Set Language And Help Files For Selected Language
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_8.33.1,8.70.1
    Scenario: KP_AKCC_ID_8.33.1,8.70.1: Select Spanish Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_8.33.2,8.70.2
    Scenario: KP_AKCC_ID_8.33.2,8.70.2: Spanish Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Click On Save Button In Preference Window
        And Click OK Button In Popup Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
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
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
		And Click On 'All' Tree Item In Tree View For Selected Language
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

	@KP_AKCC_ID_8.58
    Scenario: KP_AKCC_ID_8.58 Select Spanish Language From Preference Window In Copy To Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_8.58.1
    Scenario: KP_AKCC_ID_8.58.1 Verfiy Labels Text In Spanish In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Spanish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
	    And The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Copy To Controller Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In Online Window In 'Spanish' In Copy To Controller


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	@KP_AKCC_ID_8.59
    Scenario: KP_AKCC_ID_8.59 Create A Project In English Language Then Change Language To Spanish In Copy To Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click On Yes Button On PopUp Window
        And Close The Application

    @KP_AKCC_ID_8.59.1
    Scenario: KP_AKCC_ID_8.59.1 : Open The File Created In English Language After Changing The Language To Spanish In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Spanish' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The KoolProg Version
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        When Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        Then Verify Project Details In Project Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_8.60
    Scenario: KP_AKCC_ID_8.60 Select Spanish Language From Preference Window For Online Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Spanish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application


    @KP_AKCC_ID_8.60.1
    Scenario: KP_AKCC_ID_8.60.1 Verfiy Labels Text In Spanish In Online Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Spanish' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Online Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Spanish' In Online Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_8.61
    Scenario: KP_AKCC_ID_8.61 : Create A Project In English Language Then Change language to Spanish In Online Service

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Get The KoolProg Version
        And Split FileName And Extension
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Spanish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_8.61.1
    Scenario: KP_AKCC_ID_8.61.1 : Open The File Created In English Language After Changing The Language To Spanish In Online Service

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


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_8.63
     Scenario: KP_AKCC_ID_8.63: Change The Language To Spanish In Online Service

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_8.63.1
     Scenario: KP_AKCC_ID_8.63.1: Create A Spanish Project, Change The Values And SaveAs The File In Online Service

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Spanish' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        When Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From On-Service Test Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_8.64
    Scenario: KP_AKCC_ID_8.64: Select Spanish Language From Preference Window In Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish' Language From Language Option
        And Click On Save Button In Preference Window
        And Check Popup Message Should Come As 'Application Restart Message' With Respect To 'English UK' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Verify 'Saved Successfully Message' With Respect To 'English UK' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button For 'English UK' In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_8.64.1
    Scenario: KP_AKCC_ID_8.64.1 : Select English (United States) language After Creating Project For Spanish Language From Online Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
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
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Korrekt gemt' In Online Service Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Get The KoolProg Version
        And Split FileName And Extension
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Check Popup Message Should Come As 'Application Restart Message' With Respect To 'Spanish' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Verify 'Saved Successfully Message' With Respect To 'Spanish' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button For 'English UK' In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_8.64.2
    Scenario: KP_AKCC_ID_8.64.2 : Verify Opening Of The Created Project File From Spanish Language After Updating To English (United States) Language From Online Service Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

   	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

		@KP_AKCC_ID_9.22
    Scenario: KP_AKCC_ID_9.22 Select German Language From Preference Window For Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_9.22.1
    Scenario: KP_AKCC_ID_9.22.1 Verfiy Labels Text In German In Import Settings From Controller

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'German' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'German'


   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_9.23.1,9.61.1
	Scenario: KP_AKCC_ID_9.23.1,9.61.1: Select German Language In Preference Window For Import Settings From Controller Window And Online Service Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'German' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_9.23.2,9.61.2
     Scenario: KP_AKCC_ID_9.23.2,9.61.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help For Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
		And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And On-line Service Window Is Visible
		And Click On All Tree Item In Tree View
        And Parse The DataGrid
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	@KP_AKCC_ID_9.24
    Scenario: KP_AKCC_ID_9.24 : Create A Project In English Language Then Change Language To German In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        When Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'German' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_9.24.1
    Scenario: KP_AKCC_ID_9.24.1 : Open The File Created In English Language After Changing The Language To German In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'German' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		When Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        Then Verify Project Details In Project Window

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

      @KP_AKCC_ID_9.25
     Scenario: KP_AKCC_ID_9.25: Change The Language To German In In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_9.25.1
     Scenario: KP_AKCC_ID_9.25.1: Create A German Project, Change The Values And Save The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'German' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_9.26
     Scenario: KP_AKCC_ID_9.26: Change The Language To German In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_9.26.1
     Scenario: KP_AKCC_ID_9.26.1: Create A German Project, Change The Values And SaveAs The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'German' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

      @KP_AKCC_ID_9.27.1
    Scenario: KP_AKCC_ID_9.27.1: Select German Language From Preference Window In Import Settings From Controller Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Danish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_9.27.1
    Scenario: KP_AKCC_ID_9.27.1 : Select English (United States) language After Creating Project For German Language In Import Settings From Controller Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Verify KoolProg Will Change To 'German' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'German' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'German' Language In Preference Window
        And Verify Button Text For 'German' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_9.27.2
    Scenario: KP_AKCC_ID_9.27.2 : Verify Opening Of The Created Project File From German Language After Updating To English (United States) Language In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_9.28.1,9.65.1
    Scenario: KP_AKCC_ID_9.28.1,9.65.1: Select German Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_9.28.2,9.65.2
     Scenario: KP_AKCC_ID_9.28.2,9.65.2: Check KoolProg Application Texts For 'German' In Quick Wizard Window From Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And Verify KoolProg Will Change To 'German' Language In Home Window
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         Then Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
         And Click On Finish Button In Quick Settings Window
         And The Project Window Is Visible
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Verify Quick Wizard Icon Is Visible
		 And Verify Quick Wizard Button Is Enabled
         And Click On Quick Wizard Icon
         And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

		 @KP_AKCC_ID_9.29.1,9.66.1
    Scenario: KP_AKCC_ID_9.29.1,9.66.1: Select German Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_9.29.2,9.66.2:
     Scenario: KP_AKCC_ID_9.29.2,9.66.2: Check Parameter And Help In Quick Settings In Import settings From Controller Window And Online Service Window.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
		And Enable The Port For Created Project
	    And Verify KoolProg Will Change To 'German' Language In Home Window
	    And Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On Import Setting From Controller Button
	    And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
	    When Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'German' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    Then Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
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
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_9.30.1,9.67.1
    Scenario: KP_AKCC_ID_9.30.1,9.67.1: Select German Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_9.30.2,9.67.2
     Scenario: KP_AKCC_ID_9.30.2,9.67.2: German Must Support Comma In Place Of Decimals In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Click On Save Button In Preference Window
        And Click OK Button In Popup Window
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
		Then Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'German' Language
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
		And Click On 'All' Tree Item In Tree View For Selected Language
        And Parse The DataGrid
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'German' Language


	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_9.31.1,9.68.1
    Scenario: KP_AKCC_ID_9.31.1,9.68.1: Select German Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_9.31.2,9.68.2
     Scenario: KP_AKCC_ID_9.31.2,9.68.2: German  Must Support "," Instead Of "." In Place Of Decimals From Quick Wizard Window In Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And KoolProg Main Window Is Visible
         And Verify KoolProg Will Change To 'German' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Set Language And Help Files For Selected Language
         And Get The Parameter Collection From Input Database
         Then Verify The Float Values In Quick Wizard Are Comma Separated For 'German' Language
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Click On Quick Wizard Icon
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And On-line Service Window Is Visible
         And Set Language And Help Files For Selected Language
         And Get The Parameter Collection From Input Database
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'German' Language

	  @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_9.32.1,9.69.1
    Scenario: KP_AKCC_ID_9.32.1,9.69.1: Select German Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_9.32.2,9.69.2
     Scenario: KP_AKCC_ID_9.32.2,9.69.2: German  Must Support "," Instead Of "." In Place Of Decimals In Tooltip In Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And KoolProg Main Window Is Visible
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And Verify KoolProg Will Change To 'German' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Selected Language From Preference Window
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         Then Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Click On Quick Wizard Icon
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And On-line Service Window Is Visible
         And Click On 'All' Tree Item In Tree View For Selected Language
         And Set Language And Help Files For Selected Language
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_9.33.1,9.70.1
    Scenario: KP_AKCC_ID_9.33.1,9.70.1: Select German Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_9.33.2,9.70.2
    Scenario: KP_AKCC_ID_9.33.2,9.70.2: German Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Click On Save Button In Preference Window
        And Click OK Button In Popup Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
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
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
		And Click On 'All' Tree Item In Tree View For Selected Language
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

	@KP_AKCC_ID_9.58
    Scenario: KP_AKCC_ID_9.58 Select German Language From Preference Window In Copy To Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_9.58.1
    Scenario: KP_AKCC_ID_9.58.1 Verfiy Labels Text In German In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'German' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
	    And The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Copy To Controller Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In Online Window In 'German' In Copy To Controller


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	@KP_AKCC_ID_9.59
    Scenario: KP_AKCC_ID_9.59 Create A Project In English Language Then Change Language To German In Copy To Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'German' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click On Yes Button On PopUp Window
        And Close The Application

    @KP_AKCC_ID_9.59.1
    Scenario: KP_AKCC_ID_9.59.1 : Open The File Created In English Language After Changing The Language To German In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'German' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The KoolProg Version
        When Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        Then Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        And Verify Project Details In Project Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_9.60
    Scenario: KP_AKCC_ID_9.60 Select German Language From Preference Window For Online Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'German' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application


    @KP_AKCC_ID_9.60.1
    Scenario: KP_AKCC_ID_9.60.1 Verfiy Labels Text In German In Online Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'German' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Online Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'German' In Online Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_9.61
    Scenario: KP_AKCC_ID_9.61 : Create A Project In English Language Then Change language to German In Online Service

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Get The KoolProg Version
        And Split FileName And Extension
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'German' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_9.61.1
    Scenario: KP_AKCC_ID_9.61.1 : Open The File Created In English Language After Changing The Language To German In Online Service

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

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_9.63
     Scenario: KP_AKCC_ID_9.63: Change The Language To German In Online Service

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_9.63.1
     Scenario: KP_AKCC_ID_9.63.1: Create A German Project, Change The Values And SaveAs The File In Online Service

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'German' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        When Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From On-Service Test Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_9.64
    Scenario: KP_AKCC_ID_9.64: Select German Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German' Language From Language Option
        And Click On Save Button In Preference Window
        And Check Popup Message Should Come As 'Application Restart Message' With Respect To 'English UK' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Verify 'Saved Successfully Message' With Respect To 'English UK' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button For 'English UK' In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_9.64.1
    Scenario: KP_AKCC_ID_9.64.1 : Select English (United States) language After Creating Project For German Language From Online Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'German' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'German' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'German' Language In Preference Window
        And Verify Button Text For 'German' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Korrekt gemt' In Online Service Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Get The KoolProg Version
        And Split FileName And Extension
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Check Popup Message Should Come As 'Application Restart Message' With Respect To 'German' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Verify 'Saved Successfully Message' With Respect To 'German' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button For 'English UK' In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_9.64.2
    Scenario: KP_AKCC_ID_9.64.2 : Verify Opening Of The Created Project File From German Language After Updating To English (United States) Language From Online Service Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

   	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

		@KP_AKCC_ID_10.22
    Scenario: KP_AKCC_ID_10.22 Select Portuguese Language From Preference Window For Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_10.22.1
    Scenario: KP_AKCC_ID_10.22.1 Verfiy Labels Text In Portuguese In Import Settings From Controller

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Portuguese'


   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_10.23.1,10.61.1
	Scenario: KP_AKCC_ID_10.23.1,10.61.1: Select Portuguese Language In Preference Window For Import Settings From Controller Window And Online Service Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'Portuguese' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_10.23.2,10.61.2
     Scenario: KP_AKCC_ID_10.23.2,10.61.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help For Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
		And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And On-line Service Window Is Visible
		And Click On All Tree Item In Tree View
        And Parse The DataGrid
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_10.24
    Scenario: KP_AKCC_ID_10.24 : Create A Project In English Language Then Change Language To Portuguese In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        When Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_10.24.1
    Scenario: KP_AKCC_ID_10.24.1 : Open The File Created In English Language After Changing The Language To Portuguese In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		When Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        Then Verify Project Details In Project Window

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_10.25
     Scenario: KP_AKCC_ID_10.25: Change The Language To Portugese In In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portugese' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_10.25.1
     Scenario: KP_AKCC_ID_10.25.1: Create A Portugese Project, Change The Values And Save The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Portugese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_10.26
     Scenario: KP_AKCC_ID_10.26: Change The Language To Portugese In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portugese' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_10.26.1
     Scenario: KP_AKCC_ID_10.26.1: Create A Portugese Project, Change The Values And SaveAs The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Portugese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_10.27.1
    Scenario: KP_AKCC_ID_10.27.1: Select Portuguese Language From Preference Window In Import Settings From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        When Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Check Popup Message Should Come As 'Application Restart Message' With Respect To 'English UK' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Verify 'Saved Successfully Message' With Respect To 'English UK' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button For 'English UK' In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_10.27.2
    Scenario: KP_AKCC_ID_10.27.2 : Select English (US) language After Creating Project For Portuguese Language In Import Settings From Controller Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Portuguese' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Portuguese' Language In Preference Window
        And Verify Button Text For 'Portuguese' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_10.27.2
    Scenario: KP_AKCC_ID_10.27.2 : Verify Opening Of The Created Project File From Portuguese Language After Updating To English (United States) Language In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_10.28.1,10.65.1
    Scenario: KP_AKCC_ID_10.28.1,10.65.1: Select Portuguese Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_10.28.2,10.65.2
     Scenario: KP_AKCC_ID_10.28.2,10.65.2: Check KoolProg Application Texts For 'Portuguese' In Quick Wizard Window From Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         Then Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
         And Click On Finish Button In Quick Settings Window
         And The Project Window Is Visible
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Verify Quick Wizard Icon Is Visible
		 And Verify Quick Wizard Button Is Enabled
         And Click On Quick Wizard Icon
         And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_10.29.1,10.66.1
    Scenario: KP_AKCC_ID_10.29.1,10.66.1: Select Portuguese Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_10.29.2,10.66.2:
     Scenario: KP_AKCC_ID_10.29.2,10.66.2: Check Parameter And Help In Quick Settings In Import settings From Controller Window And Online Service Window.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
		And Enable The Port For Created Project
	    And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
	    And Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On Import Setting From Controller Button
	    And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
	    When Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'Portuguese' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    Then Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
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
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_10.30.1,10.67.1
    Scenario: KP_AKCC_ID_10.30.1,10.67.1: Select Portuguese Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_10.30.2,10.67.2
     Scenario: KP_AKCC_ID_10.30.2,10.67.2: Portuguese Must Support Comma In Place Of Decimals In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Click On Save Button In Preference Window
        And Click OK Button In Popup Window
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
		Then Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Portuguese' Language
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
		And Click On 'All' Tree Item In Tree View For Selected Language
        And Parse The DataGrid
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Portuguese' Language


	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_10.31.1,10.68.1
    Scenario: KP_AKCC_ID_10.31.1,10.68.1: Select Portuguese Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_10.31.2,10.68.2
     Scenario: KP_AKCC_ID_10.31.2,10.68.2: Portuguese  Must Support "," Instead Of "." In Place Of Decimals From Quick Wizard Window In Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And KoolProg Main Window Is Visible
         And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Set Language And Help Files For Selected Language
         And Get The Parameter Collection From Input Database
         Then Verify The Float Values In Quick Wizard Are Comma Separated For 'Portuguese' Language
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Click On Quick Wizard Icon
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And On-line Service Window Is Visible
         And Set Language And Help Files For Selected Language
         And Get The Parameter Collection From Input Database
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Portuguese' Language

	  @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_10.32.1,10.69.1
    Scenario: KP_AKCC_ID_10.32.1,10.69.1: Select Portuguese Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_10.32.2,10.69.2
     Scenario: KP_AKCC_ID_10.32.2,10.69.2: Portuguese  Must Support "," Instead Of "." In Place Of Decimals In Tooltip In Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And KoolProg Main Window Is Visible
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Selected Language From Preference Window
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         Then Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Click On Quick Wizard Icon
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And On-line Service Window Is Visible
         And Click On 'All' Tree Item In Tree View For Selected Language
         And Set Language And Help Files For Selected Language
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_10.33.1,10.70.1
    Scenario: KP_AKCC_ID_10.33.1,10.70.1: Select Portuguese Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_10.33.2,10.70.2
    Scenario: KP_AKCC_ID_10.33.2,10.70.2: Portuguese Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Click On Save Button In Preference Window
        And Click OK Button In Popup Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
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
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
		And Click On 'All' Tree Item In Tree View For Selected Language
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

	@KP_AKCC_ID_10.58
    Scenario: KP_AKCC_ID_10.58 Select Portuguese Language From Preference Window In Copy To Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_10.58.1
    Scenario: KP_AKCC_ID_10.58.1 Verfiy Labels Text In Portuguese In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
	    And The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Copy To Controller Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In Online Window In 'Portuguese' In Copy To Controller


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	@KP_AKCC_ID_10.59
    Scenario: KP_AKCC_ID_10.59 Create A Project In English Language Then Change Language To Portuguese In Copy To Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click On Yes Button On PopUp Window
        And Close The Application

    @KP_AKCC_ID_10.59.1
    Scenario: KP_AKCC_ID_10.59.1 : Open The File Created In English Language After Changing The Language To Portuguese In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The KoolProg Version
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        When Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        Then Verify Project Details In Project Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_10.60
    Scenario: KP_AKCC_ID_10.60 Select Portuguese Language From Preference Window For Online Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Portuguese' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application


    @KP_AKCC_ID_10.60.1
    Scenario: KP_AKCC_ID_10.60.1 Verfiy Labels Text In Portuguese In Online Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Online Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Portuguese' In Online Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_10.61
    Scenario: KP_AKCC_ID_10.61 : Create A Project In English Language Then Change language to Portuguese In Online Service

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Get The KoolProg Version
        And Split FileName And Extension
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Portuguese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_10.61.1
    Scenario: KP_AKCC_ID_10.61.1 : Open The File Created In English Language After Changing The Language To Portuguese In Online Service

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

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_10.63
     Scenario: KP_AKCC_ID_10.63: Change The Language To Portugese In Online Service

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portugese' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_10.63.1
     Scenario: KP_AKCC_ID_10.63.1: Create A Portugese Project, Change The Values And SaveAs The File In Online Service

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Portugese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        When Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From On-Service Test Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_10.64
    Scenario: KP_AKCC_ID_10.64: Select Portuguese Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese' Language From Language Option
        And Click On Save Button In Preference Window
        And Check Popup Message Should Come As 'Application Restart Message' With Respect To 'English UK' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Verify 'Saved Successfully Message' With Respect To 'English UK' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button For 'English UK' In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_10.64.1
    Scenario: KP_AKCC_ID_10.64.1 : Select English (United States) language After Creating Project For Portuguese Language From Online Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Portuguese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Portuguese' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Portuguese' Language In Preference Window
        And Verify Button Text For 'Portuguese' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Korrekt gemt' In Online Service Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Get The KoolProg Version
        And Split FileName And Extension
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Check Popup Message Should Come As 'Application Restart Message' With Respect To 'Portuguese' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Verify 'Saved Successfully Message' With Respect To 'Portuguese' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button For 'English UK' In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_10.64.2
    Scenario: KP_AKCC_ID_10.64.2 : Verify Opening Of The Created Project File From Portuguese Language After Updating To English (United States) Language From Online Service Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

   	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

		@KP_AKCC_ID_11.22
    Scenario: KP_AKCC_ID_11.22 Select Russian Language From Preference Window For Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_11.22.1
    Scenario: KP_AKCC_ID_11.22.1 Verfiy Labels Text In Russian In Import Settings From Controller

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Russian' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Russian'


   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_11.23.1,11.61.1
	Scenario: KP_AKCC_ID_11.23.1,11.61.1: Select Russian Language In Preference Window For Import Settings From Controller Window And Online Service Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'Russian' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_11.23.2,11.61.2
     Scenario: KP_AKCC_ID_11.23.2,11.61.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help For Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
		And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And On-line Service Window Is Visible
		And Click On All Tree Item In Tree View
        And Parse The DataGrid
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	@KP_AKCC_ID_11.24
    Scenario: KP_AKCC_ID_11.24 : Create A Project In English Language Then Change Language To Russian In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        When Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_11.24.1
    Scenario: KP_AKCC_ID_11.24.1 : Open The File Created In English Language After Changing The Language To Russian In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Russian' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		When Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_11.25
     Scenario: KP_AKCC_ID_11.25: Change The Language To Russian In In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_11.25.1
     Scenario: KP_AKCC_ID_11.25.1: Create A Russian Project, Change The Values And Save The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Russian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_11.26
     Scenario: KP_AKCC_ID_11.26: Change The Language To Russian In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_11.26.1
     Scenario: KP_AKCC_ID_11.26.1: Create A Russian Project, Change The Values And SaveAs The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Russian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

   @KP_AKCC_ID_11.27
    Scenario: KP_AKCC_ID_11.27: Select Russian Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Danish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_11.27.1
    Scenario: KP_AKCC_ID_11.27.1 : Select English (United States) language After Creating Project For Russian Language In Import Settings From Controller Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Verify KoolProg Will Change To 'Russian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Russian' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Russian' Language In Preference Window
        And Verify Button Text For 'Russian' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_11.27.2
    Scenario: KP_AKCC_ID_11.27.2 : Verify Opening Of The Created Project File From Russian Language After Updating To English (United States) Language In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_11.28.1,11.65.1
    Scenario: KP_AKCC_ID_11.28.1,11.65.1: Select Russian Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_11.28.2,11.65.2
     Scenario: KP_AKCC_ID_11.28.2,11.65.2: Check KoolProg Application Texts For 'Russian' In Quick Wizard Window From Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And Verify KoolProg Will Change To 'Russian' Language In Home Window
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         Then Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
         And Click On Finish Button In Quick Settings Window
         And The Project Window Is Visible
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Verify Quick Wizard Icon Is Visible
		 And Verify Quick Wizard Button Is Enabled
         And Click On Quick Wizard Icon
         And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_11.29.1,11.66.1
    Scenario: KP_AKCC_ID_11.29.1,11.66.1: Select Russian Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_11.29.2,11.66.2:
     Scenario: KP_AKCC_ID_11.29.2,11.66.2: Check Parameter And Help In Quick Settings In Import settings From Controller Window And Online Service Window.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
		And Enable The Port For Created Project
	    And Verify KoolProg Will Change To 'Russian' Language In Home Window
	    And Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On Import Setting From Controller Button
	    And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
	    When Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'Russian' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    Then Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
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
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_11.30.1,11.67.1
    Scenario: KP_AKCC_ID_11.30.1,11.67.1: Select Russian Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_11.30.2,11.67.2
     Scenario: KP_AKCC_ID_11.30.2,11.67.2: Russian Must Support Comma In Place Of Decimals In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Click On Save Button In Preference Window
        And Click OK Button In Popup Window
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
		Then Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Russian' Language
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
		And Click On 'All' Tree Item In Tree View For Selected Language
        And Parse The DataGrid
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Russian' Language


	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_11.31.1,11.68.1
    Scenario: KP_AKCC_ID_11.31.1,11.68.1: Select Russian Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_11.31.2,11.68.2
     Scenario: KP_AKCC_ID_11.31.2,11.68.2: Russian  Must Support "," Instead Of "." In Place Of Decimals From Quick Wizard Window In Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And KoolProg Main Window Is Visible
         And Verify KoolProg Will Change To 'Russian' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Set Language And Help Files For Selected Language
         And Get The Parameter Collection From Input Database
         Then Verify The Float Values In Quick Wizard Are Comma Separated For 'Russian' Language
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Click On Quick Wizard Icon
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And On-line Service Window Is Visible
         And Set Language And Help Files For Selected Language
         And Get The Parameter Collection From Input Database
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Russian' Language

	  @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_11.32.1,11.69.1
    Scenario: KP_AKCC_ID_11.32.1,11.69.1: Select Russian Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_11.32.2,11.69.2
     Scenario: KP_AKCC_ID_11.32.2,11.69.2: Russian  Must Support "," Instead Of "." In Place Of Decimals In Tooltip In Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And KoolProg Main Window Is Visible
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And Verify KoolProg Will Change To 'Russian' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Selected Language From Preference Window
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         Then Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Click On Quick Wizard Icon
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And On-line Service Window Is Visible
         And Click On 'All' Tree Item In Tree View For Selected Language
         And Set Language And Help Files For Selected Language
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_11.33.1,11.70.1
    Scenario: KP_AKCC_ID_11.33.1,11.70.1: Select Russian Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_11.33.2,11.70.2
    Scenario: KP_AKCC_ID_11.33.2,11.70.2: Russian Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Click On Save Button In Preference Window
        And Click OK Button In Popup Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
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
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
		And Click On 'All' Tree Item In Tree View For Selected Language
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
	    And Verify 'Value' Is Not Matching In 'quick_settings_ui' Of Quick Setting Collection And 'Changed_quickSetting_collection'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_11.58
    Scenario: KP_AKCC_ID_11.58 Select Russian Language From Preference Window In Copy To Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_11.58.1
    Scenario: KP_AKCC_ID_11.58.1 Verfiy Labels Text In Russian In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Russian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
	    And The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Copy To Controller Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In Online Window In 'Russian' In Copy To Controller


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	@KP_AKCC_ID_11.59
    Scenario: KP_AKCC_ID_11.59 Create A Project In English Language Then Change Language To Russian In Copy To Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click On Yes Button On PopUp Window
        And Close The Application

    @KP_AKCC_ID_11.59.1
    Scenario: KP_AKCC_ID_11.59.1 : Open The File Created In English Language After Changing The Language To Russian In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Russian' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The KoolProg Version
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        When Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        Then Verify Project Details In Project Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_11.60
    Scenario: KP_AKCC_ID_11.60 Select Russian Language From Preference Window For Online Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Russian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application


    @KP_AKCC_ID_11.60.1
    Scenario: KP_AKCC_ID_11.60.1 Verfiy Labels Text In Russian In Online Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Russian' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Online Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Russian' In Online Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_11.61
    Scenario: KP_AKCC_ID_11.61 : Create A Project In English Language Then Change language to Russian In Online Service

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Get The KoolProg Version
        And Split FileName And Extension
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Russian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_11.61.1
    Scenario: KP_AKCC_ID_11.61.1 : Open The File Created In English Language After Changing The Language To Russian In Online Service

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

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_11.63
     Scenario: KP_AKCC_ID_11.63: Change The Language To Russian In Online Service

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_11.63.1
     Scenario: KP_AKCC_ID_11.63.1: Create A Russian Project, Change The Values And SaveAs The File In Online Service

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Russian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        When Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From On-Service Test Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_11.64
    Scenario: KP_AKCC_ID_11.64: Select Russian Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian' Language From Language Option
        And Click On Save Button In Preference Window
        And Check Popup Message Should Come As 'Application Restart Message' With Respect To 'English UK' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Verify 'Saved Successfully Message' With Respect To 'English UK' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button For 'English UK' In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_11.64.1
    Scenario: KP_AKCC_ID_11.64.1 : Select English (United States) language After Creating Project For Russian Language From Online Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Russian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Russian' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Russian' Language In Preference Window
        And Verify Button Text For 'Russian' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Korrekt gemt' In Online Service Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Get The KoolProg Version
        And Split FileName And Extension
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Check Popup Message Should Come As 'Application Restart Message' With Respect To 'Russian' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Verify 'Saved Successfully Message' With Respect To 'Russian' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button For 'English UK' In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_11.64.2
    Scenario: KP_AKCC_ID_11.64.2 : Verify Opening Of The Created Project File From Russian Language After Updating To English (United States) Language From Online Service Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

   	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_12.15
    Scenario: KP_AKCC_ID_12.15 Select Chinese Language From Preference Window For Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Chinese' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_12.15.1
    Scenario: KP_AKCC_ID_12.15.1 Verfiy Labels Text In Chinese In Import Settings From Controller

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Chinese' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Chinese'


   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_12.16.1,12.42.1
	Scenario: KP_AKCC_ID_12.16.1,12.42.1: Select Chinese Language In Preference Window For Import Settings From Controller Window And Online Service Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'Chinese' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_12.16.2,12.42.2
     Scenario: KP_AKCC_ID_12.16.2,12.42.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help For Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
		And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And On-line Service Window Is Visible
		And Click On All Tree Item In Tree View
        And Parse The DataGrid
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	 @KP_AKCC_ID_12.17
    Scenario: KP_AKCC_ID_12.17 : Create A Project In English Language Then Change Language To Chinese In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        When Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'Chinese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_12.17.1
    Scenario: KP_AKCC_ID_12.17.1 : Open The File Created In English Language After Changing The Language To Chinese In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Chinese' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		When Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        Then Verify Project Details In Project Window

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_12.18
     Scenario: KP_AKCC_ID_12.18: Change The Language To Chinese In In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Chinese' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_12.18.1
     Scenario: KP_AKCC_ID_12.18.1: Create A Chinese Project, Change The Values And Save The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Chinese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_12.19
     Scenario: KP_AKCC_ID_12.19: Change The Language To Chinese In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Chinese' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_12.19.1
     Scenario: KP_AKCC_ID_12.19.1: Create A Chinese Project, Change The Values And SaveAs The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Chinese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

   @KP_AKCC_ID_12.20
    Scenario: KP_AKCC_ID_12.20: Select Chinese Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Danish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_12.20.1
    Scenario: KP_AKCC_ID_12.20.1 : Select English (United States) language After Creating Project For Chinese Language In Import Settings From Controller Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Verify KoolProg Will Change To 'Chinese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Chinese' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Chinese' Language In Preference Window
        And Verify Button Text For 'Chinese' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_12.20.2
    Scenario: KP_AKCC_ID_12.20.2 : Verify Opening Of The Created Project File From Chinese Language After Updating To English (United States) Language In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_12.21.1,12.46.1
    Scenario: KP_AKCC_ID_12.21.1,12.46.1: Select Chinese Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Chinese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_12.21.2,12.46.2
     Scenario: KP_AKCC_ID_12.21.2,12.46.2: Check KoolProg Application Texts For 'Chinese' In Quick Wizard Window From Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And Verify KoolProg Will Change To 'Chinese' Language In Home Window
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         Then Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
         And Click On Finish Button In Quick Settings Window
         And The Project Window Is Visible
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Verify Quick Wizard Icon Is Visible
		 And Verify Quick Wizard Button Is Enabled
         And Click On Quick Wizard Icon
         And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	  @KP_AKCC_ID_12.22.1,12.47.1
    Scenario: KP_AKCC_ID_12.22.1,12.47.1: Select Chinese Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Chinese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_12.22.2,12.47.2:
     Scenario: KP_AKCC_ID_12.22.2,12.47.2: Check Parameter And Help In Quick Settings In Import settings From Controller Window And Online Service Window.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Enable The Port For Created Project
	    And Verify KoolProg Will Change To 'Chinese' Language In Home Window
	    And Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    When Click On Import Setting From Controller Button
	    And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
	    And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'Chinese' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    Then Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
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
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI

	@KP_AKCC_ID_12.39
    Scenario: KP_AKCC_ID_12.39 Select Chinese Language From Preference Window In Copy To Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Chinese' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_12.39.1
    Scenario: KP_AKCC_ID_12.39.1 Verfiy Labels Text In Chinese In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Chinese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
	    And The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Copy To Controller Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In Online Window In 'Chinese' In Copy To Controller


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	@KP_AKCC_ID_12.40
    Scenario: KP_AKCC_ID_12.40 Create A Project In English Language Then Change Language To Chinese In Copy To Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Chinese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click On Yes Button On PopUp Window
        And Close The Application

    @KP_AKCC_ID_12.40.1
    Scenario: KP_AKCC_ID_12.40.1 : Open The File Created In English Language After Changing The Language To Chinese In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Chinese' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The KoolProg Version
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        When Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        Then Verify Project Details In Project Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_12.41
    Scenario: KP_AKCC_ID_12.41 Select Chinese Language From Preference Window For Online Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Chinese' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application


    @KP_AKCC_ID_12.41.1
    Scenario: KP_AKCC_ID_12.41.1 Verfiy Labels Text In Chinese In Online Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Chinese' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Online Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Chinese' In Online Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_12.43
    Scenario: KP_AKCC_ID_12.43 : Create A Project In English Language Then Change language to Chinese In Online Service

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Get The KoolProg Version
        And Split FileName And Extension
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Chinese' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_12.43.1
    Scenario: KP_AKCC_ID_12.43.1 : Open The File Created In English Language After Changing The Language To Chinese In Online Service

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


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_12.44
    Scenario: KP_AKCC_ID_12.44: Select Chinese Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Chinese' Language From Language Option
        And Click On Save Button In Preference Window
        And Check Popup Message Should Come As 'Application Restart Message' With Respect To 'English UK' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Verify 'Saved Successfully Message' With Respect To 'English UK' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button For 'English UK' In Popup Window In Preference Window
        And Close The Application

	@KP_AKCC_ID_12.44.1
     Scenario: KP_AKCC_ID_12.44.1: Create A Chinese Project, Change The Values And SaveAs The File In Online Service

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Chinese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        When Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From On-Service Test Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_12.45
    Scenario: KP_AKCC_ID_12.45: Select Chinese Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Chinese' Language From Language Option
        And Click On Save Button In Preference Window
        And Check Popup Message Should Come As 'Application Restart Message' With Respect To 'English UK' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Verify 'Saved Successfully Message' With Respect To 'English UK' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button For 'English UK' In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_12.45.1
    Scenario: KP_AKCC_ID_12.45.1 : Select English (United States) language After Creating Project For Chinese Language From Online Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Chinese' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Chinese' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Chinese' Language In Preference Window
        And Verify Button Text For 'Chinese' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Korrekt gemt' In Online Service Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Get The KoolProg Version
        And Split FileName And Extension
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Check Popup Message Should Come As 'Application Restart Message' With Respect To 'Chinese' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Verify 'Saved Successfully Message' With Respect To 'Chinese' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button For 'English UK' In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_12.45.2
    Scenario: KP_AKCC_ID_12.45.2 : Verify Opening Of The Created Project File From Chinese Language After Updating To English (United States) Language From Online Service Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

   	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

		@KP_AKCC_ID_13.22
    Scenario: KP_AKCC_ID_13.22 Select Italian Language From Preference Window For Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_13.22.1
    Scenario: KP_AKCC_ID_13.22.1 Verfiy Labels Text In Italian In Import Settings From Controller

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Italian' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Italian'


   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_13.23.1,13.61.1
	Scenario: KP_AKCC_ID_13.23.1,13.61.1: Select Italian Language In Preference Window For Import Settings From Controller Window And Online Service Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'Italian' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_13.23.2,13.61.2
     Scenario: KP_AKCC_ID_13.23.2,13.61.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help For Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
		And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And On-line Service Window Is Visible
		And Click On All Tree Item In Tree View
        And Parse The DataGrid
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	@KP_AKCC_ID_13.24
    Scenario: KP_AKCC_ID_13.24 : Create A Project In English Language Then Change Language To Italian In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        When Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_13.24.1
    Scenario: KP_AKCC_ID_13.24.1 : Open The File Created In English Language After Changing The Language To Italian In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Italian' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		When Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        Then Verify Project Details In Project Window

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

   @KP_AKCC_ID_13.27
    Scenario: KP_AKCC_ID_13.27: Select Italian Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Danish' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_13.27.1
    Scenario: KP_AKCC_ID_13.27.1 : Select English (United States) language After Creating Project For Italian Language In Import Settings From Controller Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Verify KoolProg Will Change To 'Italian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Italian' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Italian' Language In Preference Window
        And Verify Button Text For 'Italian' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_13.27.2
    Scenario: KP_AKCC_ID_13.27.2 : Verify Opening Of The Created Project File From Italian Language After Updating To English (United States) Language In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_13.28.1,13.65.1
    Scenario: KP_AKCC_ID_13.28.1,13.65.1: Select Italian Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_13.28.2,13.65.2
     Scenario: KP_AKCC_ID_13.28.2,13.65.2: Check KoolProg Application Texts For 'Italian' In Quick Wizard Window From Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And Verify KoolProg Will Change To 'Italian' Language In Home Window
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         Then Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
         And Click On Finish Button In Quick Settings Window
         And The Project Window Is Visible
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Verify Quick Wizard Icon Is Visible
		 And Verify Quick Wizard Button Is Enabled
         And Click On Quick Wizard Icon
         And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

		 @KP_AKCC_ID_13.29.1,13.66.1
    Scenario: KP_AKCC_ID_13.29.1,13.66.1: Select Italian Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_13.29.2,13.66.2:
     Scenario: KP_AKCC_ID_13.29.2,13.66.2: Check Parameter And Help In Quick Settings In Import settings From Controller Window And Online Service Window.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
		And Enable The Port For Created Project
	    And Verify KoolProg Will Change To 'Italian' Language In Home Window
	    And Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On Import Setting From Controller Button
	    And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
	    When Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'Italian' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    Then Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
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
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_13.30.1,13.67.1
    Scenario: KP_AKCC_ID_13.30.1,13.67.1: Select Italian Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	@KP_AKCC_ID_13.30.2,13.67.2
     Scenario: KP_AKCC_ID_13.30.2,13.67.2: Italian Must Support Comma In Place Of Decimals In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Click On Save Button In Preference Window
        And Click OK Button In Popup Window
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
		Then Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Italian' Language
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
		And Click On 'All' Tree Item In Tree View For Selected Language
        And Parse The DataGrid
		And Verify 'Parameter_collection' Are Present In The 'parsed_datagrid' For Property 'Value' For 'Italian' Language
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application


    @KP_AKCC_ID_13.24.1
    Scenario: KP_AKCC_ID_13.24.1 : Open The File Created In English Language After Changing The Language To Italian In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Russian' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		When Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_13.25
     Scenario: KP_AKCC_ID_13.25: Change The Language To Italian In In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_13.25.1
     Scenario: KP_AKCC_ID_13.25.1: Create A Italian Project, Change The Values And Save The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Italian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_13.31.1,13.68.1
    Scenario: KP_AKCC_ID_13.31.1,13.68.1: Select Italian Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_13.31.2,13.68.2
     Scenario: KP_AKCC_ID_13.31.2,13.68.2: Italian  Must Support "," Instead Of "." In Place Of Decimals From Quick Wizard Window In Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And KoolProg Main Window Is Visible
         And Verify KoolProg Will Change To 'Italian' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And Set Language And Help Files For Selected Language
         And Get The Parameter Collection From Input Database
         Then Verify The Float Values In Quick Wizard Are Comma Separated For 'Italian' Language
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Click On Quick Wizard Icon
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And On-line Service Window Is Visible
         And Set Language And Help Files For Selected Language
         And Get The Parameter Collection From Input Database
         And Verify The Float Values In Quick Wizard Are Comma Separated For 'Italian' Language

	  @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_13.32.1,13.69.1
    Scenario: KP_AKCC_ID_13.32.1,13.69.1: Select Italian Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_13.32.2,13.69.2
     Scenario: KP_AKCC_ID_13.32.2,13.69.2: Italian  Must Support "," Instead Of "." In Place Of Decimals In Tooltip In Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And KoolProg Main Window Is Visible
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And Verify KoolProg Will Change To 'Italian' Language In Home Window
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Selected Language From Preference Window
         And Verify Changed Language Should Display In Language Combobox
         And Get Koolprog Working Path From Preference Window And Save it
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         Then Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals
         And Go To Home Window From Project Window
		 And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Click On Quick Wizard Icon
         And Verify Quick Settings Window Is Visible
         And Get The Quick Settings Collection From The UI
         And Click On X Button In Quick Settings Window
         And On-line Service Window Is Visible
         And Click On 'All' Tree Item In Tree View For Selected Language
         And Set Language And Help Files For Selected Language
         And Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals

     @KP_AKCC_ID_13.26.1
     Scenario: KP_AKCC_ID_13.26.1: Create A Italian Project, Change The Values And SaveAs The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Italian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_13.33.1,13.70.1
    Scenario: KP_AKCC_ID_13.33.1,13.70.1: Select Italian Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_13.33.2,13.70.2
    Scenario: KP_AKCC_ID_13.33.2,13.70.2: Italian Must Support Comma In Place Of Decimals In Quick Wizard Window For Changed Values In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Click On Save Button In Preference Window
        And Click OK Button In Popup Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Set Language And Help Files For Selected Language
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
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
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
		And Click On 'All' Tree Item In Tree View For Selected Language
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

	@KP_AKCC_ID_13.58
    Scenario: KP_AKCC_ID_13.58 Select Italian Language From Preference Window In Copy To Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_13.58.1
    Scenario: KP_AKCC_ID_13.58.1 Verfiy Labels Text In Italian In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Italian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
	    And The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Copy To Controller Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In Online Window In 'Italian' In Copy To Controller


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


	@KP_AKCC_ID_13.59
    Scenario: KP_AKCC_ID_13.59 Create A Project In English Language Then Change Language To Italian In Copy To Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click On Yes Button On PopUp Window
        And Close The Application

    @KP_AKCC_ID_13.59.1
    Scenario: KP_AKCC_ID_13.59.1 : Open The File Created In English Language After Changing The Language To Italian In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Italian' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The KoolProg Version
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        When Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        Then Verify Project Details In Project Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_13.60
    Scenario: KP_AKCC_ID_13.60 Select Italian Language From Preference Window For Online Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Italian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application


    @KP_AKCC_ID_13.60.1
    Scenario: KP_AKCC_ID_13.60.1 Verfiy Labels Text In Italian In Online Window

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Italian' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Online Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'Italian' In Online Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_13.61
    Scenario: KP_AKCC_ID_13.61 : Create A Project In English Language Then Change language to Italian In Online Service

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Get The KoolProg Version
        And Split FileName And Extension
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'Italian' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_13.61.1
    Scenario: KP_AKCC_ID_13.61.1 : Open The File Created In English Language After Changing The Language To Italian In Online Service

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


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_13.63
     Scenario: KP_AKCC_ID_13.63: Change The Language To Italian In Online Service

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_13.63.1
     Scenario: KP_AKCC_ID_13.63.1: Create A Italian Project, Change The Values And SaveAs The File In Online Service

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'Italian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        When Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From On-Service Test Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

   @KP_AKCC_ID_13.64
    Scenario: KP_AKCC_ID_13.64: Select Italian Language From Preference Window In Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian' Language From Language Option
        And Click On Save Button In Preference Window
        And Check Popup Message Should Come As 'Application Restart Message' With Respect To 'English UK' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Verify 'Saved Successfully Message' With Respect To 'English UK' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button For 'English UK' In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_13.64.1
    Scenario: KP_AKCC_ID_13.64.1 : Select English (United States) language After Creating Project For Italian Language From Online Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'Italian' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Label Text For 'Italian' Language In Preference Window
        And Verify Label Text Of Only For AKCC For 'Italian' Language In Preference Window
        And Verify Button Text For 'Italian' Language In Preference Window
        And Verify Changed Language Should Display In Language Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Korrekt gemt' In Online Service Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Get The KoolProg Version
        And Split FileName And Extension
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Check Popup Message Should Come As 'Application Restart Message' With Respect To 'Italian' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Verify 'Saved Successfully Message' With Respect To 'Italian' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button For 'English UK' In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_13.64.2
    Scenario: KP_AKCC_ID_13.64.2 : Verify Opening Of The Created Project File From Italian Language After Updating To English (United States) Language From Online Service Window.

        Given KoolProg Had Opened
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_14.14
    Scenario: KP_AKCC_ID_14.14 Verfiy Labels Text In English UK In Import Settings

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'English UK' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'English UK'

    @KP_AKCC_ID_14.15.1,14.38.1
	Scenario: KP_AKCC_ID_14.15.1,14.38.1: Select English UK Language In Preference Window For Import Settings From Controller Window And Online Service Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'English UK' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_14.15.2,14.38.2
     Scenario: KP_AKCC_ID_14.15.2,14.38.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help For Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
		And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And On-line Service Window Is Visible
		And Click On All Tree Item In Tree View
        And Parse The DataGrid
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_14.16
    Scenario: KP_AKCC_ID_14.16 : Create A Project In English US Then Change language to English UK In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        When Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application


    @KP_AKCC_ID_14.16.1
    Scenario: KP_AKCC_ID_14.16.1 : Open The File Created In English US Language After Changing The Language In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English US' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		When Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        Then Verify Project Details In Project Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

     @KP_AKCC_ID_14.17
     Scenario: KP_AKCC_ID_14.17: Create A English UK Project, Change The Values And Save The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English UK' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
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
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
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
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

	@KP_AKCC_ID_14.18.1
     Scenario: KP_AKCC_ID_14.18.1: Create A English UK Project, Change The Values And SaveAs The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English US' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

	@KP_AKCC_ID_14.19,14.41
     Scenario: KP_AKCC_ID_14.19,14.41: Check KoolProg Application Texts For 'English UK' In Quick Wizard Window From Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And Verify KoolProg Will Change To 'English UK'
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         Then Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Verify Quick Wizard Icon Is Visible
		 And Verify Quick Wizard Button Is Enabled
         And Click On Quick Wizard Icon
         And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window

     @KP_AKCC_ID_14.20,14.42:
     Scenario: KP_AKCC_ID_14.20,14.42: Check Parameter And Help In Quick Settings In Import settings From Controller Window And Online Service Window.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
		And Enable The Port For Created Project
	    And Verify KoolProg Will Change To 'English US' Language In Home Window
	    And Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    When Click On Import Setting From Controller Button
	    And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
	    And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'English US' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    Then Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
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
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI

     @KP_AKCC_ID_14.35
    Scenario: KP_AKCC_ID_14.35 Verfiy Labels Text In English UK In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English UK' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
	    And The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Copy To Controller Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In Online Window In 'English UK' In Copy To Controller

    @KP_AKCC_ID_14.36.1
    Scenario: KP_AKCC_ID_14.36.1 : Open The File Created In English UK Language In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English US' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The KoolProg Version
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        When Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        Then Verify Project Details In Project Window

    @KP_AKCC_ID_14.37
    Scenario: KP_AKCC_ID_14.37 Verfiy Labels Text In English UK In Online Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English UK' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Online Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'English UK' In Online Window


     @KP_AKCC_ID_14.39
     Scenario: KP_AKCC_ID_14.39: Create A English UK Project, Change The Values And SaveAs The File In Online Service

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English UK' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        When Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
		And Click On All Tree Item In Tree View
        Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From On-Service Test Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @KP_AKCC_ID_14.39.1
    Scenario: KP_AKCC_ID_14.39.1: Create A Project In English UK Language Then Change Language To English US In Copy To Controller

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click On Yes Button On PopUp Window
        And Close The Application

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_14.40
    Scenario: KP_AKCC_ID_14.40 : Create A Project In English UK Language Then Change language to English US In Online Service

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Online Service Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Get The KoolProg Version
        And Split FileName And Extension
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application


    @KP_AKCC_ID_14.40.1
    Scenario: KP_AKCC_ID_14.40.1 : Open The File Created In English UK In Online Service

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'English US' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        When Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'Online' mode
        And The Project Window Is Visible
        Then Verify Project Details In Project Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_14.56
    Scenario: KP_AKCC_ID_14.56 Select English US Language From Preference Window For Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'English US' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_14.56.1
    Scenario: KP_AKCC_ID_14.56.1 Verfiy Labels Text In English US In Import Settings From Controller

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'English US' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'English US'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_14.57.1,14.80.1
	Scenario: KP_AKCC_ID_14.57.1,14.80.1: Select English US Language In Preference Window For Import Settings From Controller Window And Online Service Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'English US' Language From Language Option
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	 @KP_AKCC_ID_14.57.2,14.80.2
     Scenario: KP_AKCC_ID_14.57.2,14.80.2: Change The Language In KoolProg And Import CDF And Verify Parameter And Help For Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
		And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Selected Language From Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Set Language And Help Files For Selected Language
		And Go To Set Parameter Window
        And Click On Import Controller Model
        When Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
        Then Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And On-line Service Window Is Visible
		And Click On All Tree Item In Tree View
        And Parse The DataGrid
        And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
        And Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'

   @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_14.58
    Scenario: KP_AKCC_ID_14.58 : Change The Language From English UK To Enlgish US In Import Settings From Controller

	    Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
	    And Click On The Setting Icon Button In The Main Window
        When Select 'English US' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_14.58.1
    Scenario: KP_AKCC_ID_14.58.1 : Create A Project In English US In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'English UK' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

	@KP_AKCC_ID_14.58.2
    Scenario: KP_AKCC_ID_14.58.2 : Open The File In English UK Language After Changing The Language In Import Settings From Controller

        Given KoolProg Had Opened
        And KoolProg Main Window Is Visible
        And Verify KoolProg Will Change To 'English UK' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
		When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        Then Verify Project Details In Project Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_14.59
     Scenario: KP_AKCC_ID_14.59: Change The Language To English US In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'English US' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_14.59.1
     Scenario: KP_AKCC_ID_14.59.1: Create A English US Project, Change The Values And Save The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English US' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
		And Click Save Button In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

      @KP_AKCC_ID_14.60
     Scenario: KP_AKCC_ID_14.60: Change The Language To English US In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'English US' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_14.60.1
     Scenario: KP_AKCC_ID_14.60.1: Create A English US Project, Change The Values And SaveAs The File In Import Settings From Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English US' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
		Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_14.61.1,14.83.1
    Scenario: KP_AKCC_ID_14.61.1,14.83.1: Select English US Language From Preference Window In Import Settings From Controller Window And Online Service Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

	 @KP_AKCC_ID_14.61.2,14.83.2
     Scenario: KP_AKCC_ID_14.61.2,14.83.2: Check KoolProg Application Texts For 'English US' In Quick Wizard Window From Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
         And Disable All Serial Ports
         And Get Controller Details From Variable
         And Enable The Port For Created Project
         And Verify KoolProg Will Change To 'English US'
         And Click On Import Setting From Controller Button
         And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
         And Check If NewFileName PopUp Is Visible
         And Set A FileName In NewFileName PopUp EditBox
         And Click Ok Button In NewFileName PopUp Window
         And The Project Window Is Visible
         When Click On Quick Wizard Icon
         Then Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Verify Quick Wizard Icon Is Visible
		 And Verify Quick Wizard Button Is Enabled
         And Click On Quick Wizard Icon
         And Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window



    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_14.62.2,14.84.2:
    Scenario: KP_AKCC_ID_14.62.2,14.84.2: : Create A Project In English US In Import Settings From Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'English US' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application


	 	@KP_AKCC_ID_14.62.2,14.84.2:
     Scenario: KP_AKCC_ID_14.62.2,14.84.2: Check Parameter And Help In Quick Settings In Import settings From Controller Window And Online Service Window.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
		And Enable The Port For Created Project
	    And Verify KoolProg Will Change To 'English US' Language In Home Window
	    And Get Controller Details From Variable
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    And Remove 'ItemType' Of 'R' From 'Parameter_collection'
	    And Click On Import Setting From Controller Button
	    And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
	    When Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
	    And Click On Finish Button In Quick Settings Window
	    And Get The List Of Elements From The Tree View
	    And Verify The Headers And Groupnames In Treeview For 'English US' language
	    And Get Headers From The Datagrid
	    And Verify The Headers From The Datagrid
	    And Check The Parameter And Help In Quick Wizard Window
	    And Click On 'All' Tree Item In Tree View For Selected Language
	    And Parse The DataGrid
	    Then Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Quick Wizard Icon
	    And Get The Quick Settings Collection From The UI
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
		And Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_14.77
    Scenario: KP_AKCC_ID_14.77 Select English US Language From Preference Window In Copy To Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'English US' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_14.77.1
    Scenario: KP_AKCC_ID_14.77.1 Verfiy Labels Text In English US In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English US' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
	    And The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Copy To Controller Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In Online Window In 'English US' In Copy To Controller


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	@KP_AKCC_ID_14.78
    Scenario: KP_AKCC_ID_14.78 Change The Language From English UK To English US In Copy To Controller

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'English US' Language In The Preference Window
        And Click On Save Button In Preference Window
        Then Click Yes Button In Popup Window In Preference Window
        And Close The Application


    @KP_AKCC_ID_14.78.1
    Scenario: KP_AKCC_ID_14.78.1 Create A Project In English US In Copy To Controller

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English UK' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click On Yes Button On PopUp Window
        And Close The Application


    @KP_AKCC_ID_14.78.2
    Scenario: KP_AKCC_ID_14.78.2 : Open The File In English UK And Verify Project Details In Copy To Controller

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English UK' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The KoolProg Version
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        When Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        Then Verify Project Details In Project Window

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

    @KP_AKCC_ID_14.79
    Scenario: KP_AKCC_ID_14.79 Select English US Language From Preference Window For Online Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'English US' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

    @KP_AKCC_ID_14.79.1
    Scenario: KP_AKCC_ID_14.79.1 Verfiy Labels Text In English US In Online Window

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English US' Language In Home Window
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        When The Project Window Is Visible
        Then Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Online Window
        And Verify Product Name, Variant, Software Version And Project Name Labels Text In 'English US' In Online Window


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window


    @KP_AKCC_ID_14.81
    Scenario: KP_AKCC_ID_14.81 Change The Language From English UK To English US In Online Service

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
        When Select 'English US' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application


    @KP_AKCC_ID_14.81.1
    Scenario: KP_AKCC_ID_14.81.1 : Create A Project In English US In Online Service

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Get The KoolProg Version
        And Split FileName And Extension
        And Set The Project Working Directory Path And Version In The Text File
        And Click On The Setting Icon Button In The Main Window
        Then Select 'English UK' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application


    @KP_AKCC_ID_14.81.2
    Scenario: KP_AKCC_ID_14.81.2 : Open The File Created In English UK Language And Verify Project Details In Online Service

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English UK' Language In Home Window
        And Get The Project Working Directory And Koolprog Version From Text File
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        When Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        Then Verify Project Details In Project Window

	@common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

	 @KP_AKCC_ID_14.82
     Scenario: KP_AKCC_ID_14.82: Change The Language To English US In Online Service

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'English US' Language In The Preference Window
        Then Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Close The Application

     @KP_AKCC_ID_14.82.1
     Scenario: KP_AKCC_ID_14.82.1: Create A English US Project, Change The Values And SaveAs The File In Online Service

        Given KoolProg Had Opened
        And Verify KoolProg Will Change To 'English US' Language In Home Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        When Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
		And Set Random Values In DataGrid For 'Parameter_collection'
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From On-Service Test Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
		And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'

    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window



