# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: Check common test cases online.

    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

     @common @KP_Common_ID_26.1
     Scenario: KP_Common_ID_26.1: Verification Of Online Project In Project Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Create A Project By Choosing A Random Port
        When Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Get Connected Controller Information
        And Controller Should Go To Fadeout State
        And Check Export Button Is Enabled

	 @common @KP_Common_ID_27.1
     Scenario: KP_Common_ID_27.1: Verification Of Export Button In Project Window

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Controller Should Go To Fadeout State
	    When Click On Export Button
		And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
	    Then Controller Should Not Go To Fadeout State
	    # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
	    # Check Save, SaveAs, Export, Print Icons Is Disabled
	    # Check Home Button Is Disabled
	    # Check Open Button Is Disabled
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
		And Controller Should Go To Fadeout State
		And The Project Window Is Visible

	@common @KP_Common_ID_27.2
	Scenario: KP_Common_ID_27.2: Verification Of Export After Changing Values In Project Window

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        When Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
	    And Click On Export Button
	    And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
	    # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
		And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
	    And Click On Export Button
	    And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
	    # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
		And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle

	@common @KP_Common_ID_27.3
	Scenario: KP_Common_ID_27.3: Verification Of Export After Factory Reset In Project Window

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        And Click On Export Button
        And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
        # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        When Click On Factory Reset Button
		And Click On In Project Button In Popup Window
		# Progress Label Is Visible
		# 'Factory resetting to project' Message Should Come In Progress Label
		And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'ONLINE' mode
		Then Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle
        And Click On Export Button
        And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
        # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle

	@common @KP_Common_ID_31.4
	Scenario: KP_Common_ID_31.4: Verification Of Factory Reset In Online Mode After Saving The Changed Values In Project Window.

		Given KoolProg Had Opened
        And Disable All Serial Ports
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Check Saved Successfully Popup Is Displayed
		And Click Ok Button In Saved Successfully Popup Window
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		When Click On Factory Reset Button
		Then Check 'Do you want to change to factory settings?' Text Is Displayed In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Check Cancel Button Is Enabled In Popup Window
		And Check InProject Button Is Enabled In PopUp Window
		And Check InController Button Is Enabled In PopUp Window
		And Click On In Project Button In Popup Window
		And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'ONLINE' mode
		And Check Saved Successfully Popup Is Displayed
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Click Ok Button In Saved Successfully Popup Window
		And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle

	@common @KP_Common_ID_31.5
	Scenario: KP_Common_ID_31.5: Verification Of Factory Reset In Online Mode In Controller After Exporting The Changed Values In Project Window.


		Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Check Saved Successfully Popup Is Displayed
		And Click Ok Button In Saved Successfully Popup Window
	    And Click On Export Button
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Click OK Button In Popup Window
		And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        When Click On Factory Reset Button
        Then Check 'Do you want to change to factory settings?' Text Is Displayed In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Check Cancel Button Is Enabled In Popup Window
		And Check InProject Button Is Enabled In PopUp Window
		And Check InController Button Is Enabled In PopUp Window
		And Click On In Controller Button In Popup Window
		And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'ONLINE' mode
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Click OK Button In Popup Window
		And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle


    @common @KP_Common_ID_34.1
    Scenario: KP_Common_ID_34.1: Verification Of Offline Import Setting From Controller Window

        Given KoolProg Had Opened
        When Disable All Serial Ports
        And Click On Import Setting From Controller Button
        Then Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
        And Verify Open, Home, Help Icons Are Enable
        And Verify SaveAs, Print Icons Are Disable
        And Check Save Button Is Disabled
        And Check Export Button Is Disabled
        And Verify Message Should Come As 'Please connect a controller!' In Import Setting From Controller Window

    @common @KP_Common_ID_35.1
    Scenario: KP_Common_ID_35.1: Verification Of Online Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        When Enable Random Serial Port
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        Then Click On Import Setting From Controller Button
		And 'Connecting to controller' Message Should Come In Import Setting From Controller Window
        And 'Importing settings from controller' Message Should Come After Connecting Controller In Import Setting From Controller Window
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Controller Should Not Go To Fadeout State
        And Check If NewFileName PopUp Is Visible
        And Check Text Of NewFileName PopUp
        And Verify Ok Button In NewFileName PopUp
        And Clear The Working Directory Folder
        And Click Ok Button In NewFileName PopUp Window
        And Controller Should Go To Fadeout State
        And Get Connected Controller Information
        And Verify Code Number Should Be Displayed In File Name Editbox By Default

    @common @KP_Common_ID_35.2
    Scenario: KP_Common_ID_35.2: Verification Of New File With Code Number In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Clear The Working Directory Folder
        And Set Default FileName In NewFileName PopUp
        When Click Ok Button In NewFileName PopUp Window
        Then The Project Window Is Visible
        And Get Connected Controller Information
        And Verify Project Details Will Be Available In Import Setting From Controller Window

    @common @KP_Common_ID_35.3
    Scenario: KP_Common_ID_35.3: Verification Of New File With File Name In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        When Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        Then The Project Window Is Visible
        And Get Connected Controller Information
        And Verify Project Details Will Be Available In Import Setting From Controller Window

    @common @KP_Common_ID_35.4
    Scenario: KP_Common_ID_35.4: Create A Project And Project File Name Should Contains Space In Between The Words In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Clear The Working Directory Folder
        When Set FileName With Space In NewFileName PopUp
        And Click Ok Button In NewFileName PopUp Window
        Then The Project Window Is Visible
        And Get Connected Controller Information
        And Verify Project Details Will Be Available In Import Setting From Controller Window

    @common @KP_Common_ID_36.1
    Scenario: KP_Common_ID_36.1: Verification Of Tree View In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        When The Project Window Is Visible
        And Get Connected Controller Information
        Then Verify That Tree View Default Groups Will Expand
        And Click On All Tree Item In Tree View
        And Verify Tree View Is Collapsed

    @common @KP_Common_ID_37.1
    Scenario: KP_Common_ID_37.1: Verification Of Changed Values In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        When Change Integer Parameter Values In Online
        Then Changed Value Should Show In DataGrid With Pink TextBox And Grey Color Circle

    @common @KP_Common_ID_38.1
    Scenario: KP_Common_ID_38.1: Verification Of Home Button In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        When Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        Then Verify Home Window Should Come
        And Verify Text Of Set parameters, Copy to controller And On-Line Service On Home Screen
        And Verify KoolProg Version Number On Home Screen
        And Verify Danfoss Website Is Displaying In Home Screen

    @common @KP_Common_ID_38.2
    Scenario: KP_Common_ID_38.2: Verify Project Window Will Come After Clicking On No Button On "Do you want to save the Changes made?" Popup Window In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        And Click On Factory Reset Button
        And Verify Popup Message Should Come As 'Do you want to change to factory settings?' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Click On In Controller Button In Popup Window
        And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'Settings exported successfully to controller' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Change Integer Parameter Values In Online
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify Yes, No And X Button Are Visible In Project Window
        And Verify Yes, No And X Button Are Enable In Project Window
        And Verify Text Of Yes, No And X Button In Project Window
        When Click On No Button On PopUp Window
        Then Verify Home Window Should Come
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created New File In Import Settings Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Project Details Will Be Available In Import Setting From Controller Window
        And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle

    @common @KP_Common_ID_38.3
    Scenario: KP_Common_ID_38.3: Verify Home Window Will Come After Clicking On Yes Button On "Do you want to save the Changes made?" Popup Window In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        And Click On Factory Reset Button
        And Verify Popup Message Should Come As 'Do you want to change to factory settings?' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Click On In Controller Button In Popup Window
        And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'Settings exported successfully to controller' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Change Integer Parameter Values In Online
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify Yes, No And X Button Are Visible In Project Window
        And Verify Yes, No And X Button Are Enable In Project Window
        And Verify Text Of Yes, No And X Button In Project Window
        When Click On Yes Button On PopUp Window
        Then  Verify Home Window Should Come
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created New File In Import Settings Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Import Setting From Controller Window
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle

    @common @KP_Common_ID_39.1
    Scenario: KP_Common_ID_39.1: Verification of Open Window After Creating Project In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        When Click On Open Button In Project Window
        Then Verify Open Window
        And Verify Project File Extension In Open Window

    @common @KP_Common_ID_39.2
    Scenario: KP_Common_ID_39.2: Verification Of Project Details After Selecting The Created Project From Open Window In Import Setting From Controller Window
        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Save The Project In Temp Location Using File Copy From Import Setting From Controller
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'ONLINE' mode
        And Click On Open Button In Project Window
        And Goto Temporary Directory In Open Dialog Window
        When Select Saved Project From Temp Directory Path In Import Setting From Controller
        Then Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Import Setting From Controller Window

    @common @KP_Common_ID_39.3
    Scenario: KP_Common_ID_39.3: Verify "Do you want to save the Changes made?" Popup Window After Clicking On Open Window As Parameter Value Got Changed In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        And Change Integer Parameter Values
        When Click On Open Button In Project Window
        Then Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify Yes, No And Cancel Button Are Visible
        And Verify Yes, No And Cancel Button Are Enable
        And Verify Text Of Yes, No And Cancel Button

    @common @KP_Common_ID_39.4
    Scenario: KP_Common_ID_39.4: Verification Of Parameter Values In File After Clicking On Yes In "Do you want to save the Changes made?" Dialogue Box In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        And Save The Project In Temp Location Using File Copy From Import Setting From Controller
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'ONLINE' mode
        And Change Integer Parameter Values
        And Click On Open Button In Project Window
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        When Click On Yes Button On PopUp Window
        And Verify Open Window
        And Goto Temporary Directory In Open Dialog Window
        And Select Saved Project From Temp Directory Path In Import Setting From Controller
        And Verify Open Window Should Not Visible
        And Click On Open Button In Project Window
        And Open The Created New File In Import Settings Window
        Then Changed Value Should Show In DataGrid Without Pink TextBox And Grey Color Circle

    @common @KP_Common_ID_39.5
    Scenario: KP_Common_ID_39.5: Verification Of Parameter Values In File After Clicking On No In "Do you want to save the Changes made?" Dialogue Box In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        And Save The Project In Temp Location Using File Copy From Import Setting From Controller
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'ONLINE' mode
        And Change Integer Parameter Values
        And Click On Open Button In Project Window
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        When Click On No Button On PopUp Window
        And Verify Open Window
        And Goto Temporary Directory In Open Dialog Window
        And Select Saved Project From Temp Directory Path In Import Setting From Controller
        And Verify Open Window Should Not Visible
        And Click On Open Button In Project Window
        And Open The Created New File In Import Settings Window
        Then Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle

    @common @KP_Common_ID_39.6
    Scenario: KP_Common_ID_39.6: Verification Of Values In File After Clicking On Cancel In "Do you want to save the Changes made?" Dialogue box In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        And Save The Project In Temp Location Using File Copy From Import Setting From Controller
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'ONLINE' mode
        And Change Integer Parameter Values
        And Click On Open Button In Project Window
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        When Click On Cancel Button On Popup Window
        Then The Project Window Is Visible
        And Changed Value Should Show In DataGrid With Pink TextBox And Grey Color Circle

    @common @KP_Common_ID_39.7
    Scenario: KP_Common_ID_39.7: Verification Of Values In File After Clicking On X In "Do you want to save the Changes made?" Dialogue box In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        And Save The Project In Temp Location Using File Copy From Import Setting From Controller
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'ONLINE' mode
        And Change Integer Parameter Values
        And Click On Open Button In Project Window
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        When Click On X Button On Popup Window
        Then The Project Window Is Visible
        And Changed Value Should Show In DataGrid With Pink TextBox And Grey Color Circle

    @common @KP_Common_ID_39.8
    Scenario: KP_Common_ID_39.8: Verification Of Project Details After Writing The Project File Name In Open Popup's Edit Box In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Save The Project In Temp Location Using File Copy From Import Setting From Controller
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'ONLINE' mode
        And Click On Open Button In Project Window
        When Opening Saved Project From Temp Path In Import Setting From Controller
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        Then Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Import Setting From Controller Window

    @common @KP_Common_ID_39.9
    Scenario: KP_Common_ID_39.9: Verification Of Previous Project Details After Clicking On Cancel Button In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        And Click On Open Button In Project Window
        And Open Window Is Visible
        When Click On The Open Window Cancel Button
        Then The Project Window Is Visible
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Import Setting From Controller Window

	@common @KP_Common_ID_39.10
	Scenario: KP_Common_ID_39.10: Verification To Open Unavailable File In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        And Click On Open Button In Project Window
        And Open Window Is Visible
        When Enter A Unavailable Filename
        Then Click Open Button in Open Window
        And Verify Popup Message For Unavailable File Displays
        And Click Ok Button In Open Popup Window
        And Click Cancel Button In Open File Dialog
        And The Project Window Is Visible

    @common @KP_Common_ID_39.11
    Scenario: KP_Common_ID_39.11: The Project Already Open Popup Should Come While Opening The Current Project Itself In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        And Click On Open Button In Project Window
        And Open Window Is Visible
        When Open The Created New File In Import Settings Window
        Then Verify Popup Message Should Come As 'Project already open' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible

	@cmmon @KP_Common_ID_39.12
    Scenario: KP_Common_ID_39.12: Verification Of Renaming File Name (With Special Char - &  ;  ,  ' ) From Outside The KoolProg In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Create A Project By Choosing A Random Port
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Click On Open Button In Project Window
        And Open Window Is Visible
        When Get Filepath From Open Window And Rename The Existing File With New Invalid File Name
        And Verify Popup Message Should Come As '& * | ; : < > / " ? , '  Characters Not Supported!' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        Then The Project Window Is Visible
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Import Setting From Controller Window

    @common @KP_Common_ID_39.13
    Scenario: KP_Common_ID_39.13: Verification Of Changing  Values To Invalid Values (String Instead Of Number) In Project File From Outside The KoolProg In Project Window From Import Setting From Controller Window


        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Only EKE
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Save The Project In Temp Location Using File Copy From Import Setting From Controller
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'ONLINE' mode
        And Click On Open Button In Project Window
        And Get Integer Parameters From Database With Invalid Values
        When Modify Parameter Values In Duplicate Project File From Import Setting From Controller
        And Opening Saved Project From Temp Path In Import Setting From Controller
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        Then Verify Popup Message Should Come As 'File Modified outside the KoolProg or might be old file.' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Project Details Will Be Available In Import Setting From Controller Window

	@common @KP_Common_ID_39.14
    Scenario: KP_Common_ID_39.14: The Browsed Path Should Not Come In The Open Window If Project Not Opened In Project Window From Import Setting From Controller Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Click On Open Button In Project Window
        When Open The Created New File In Import Settings Window
        And Click Ok Button In Popup Window On Project Window
        And Save The Project In Temp Location Using File Copy From Import Setting From Controller
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'ONLINE' mode
        And Click On Open Button In Project Window
        And Browse The File That Is Saved In Temporary Location
        And Click Cancel Button In Open File Dialog
        And Click On Open Button In Project Window
        Then Verify Open Window Should Not Open With Temp Path

	@common @KP_Common_ID_39.15
    Scenario: KP_Common_ID_39.15: Verification Of Changing Values With Valid Values In File From Outside KoolProg

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Save The Project In Temp Location Using File Copy From Import Setting From Controller
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'ONLINE' mode
        And Click On Open Button In Project Window
        And Get Integer Parameters From Database With Random Value
        When Modify Parameter Values In Duplicate Project File From Import Setting From Controller
        And Opening Saved Project From Temp Path In Import Setting From Controller
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        Then Verify Popup Message Should Come As 'File Modified outside the KoolProg or might be old file.' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Import Setting From Controller Window

      @common @KP_Common_ID_39.16
      Scenario: KP_Common_ID_39.16: The Project Window Is Visible After Clicking On Cancel Button In Open Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        When Click On Open Button In Project Window
        And Open Window Is Visible
        Then Click On The Open Window Cancel Button
        And The Project Window Is Visible

	@common @KP_Common_ID_39.17
    Scenario: KP_Common_ID_39.17: Verify Project Can Be Opened From Any Location Instead Of Default Location In Project Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Save The Project In Temp Location Using File Copy From Import Setting From Controller
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'ONLINE' mode
        And Click On Open Button In Project Window
        When Opening Saved Project From Temp Path In Import Setting From Controller
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Project Details Will Be Available In Import Setting From Controller Window
        And Click On Open Button In Project Window
        Then Verify Open Window Should Open With Temp Path

    @common @KP_Common_ID_39.18
    Scenario: KP_Common_ID_39.18: Verification Of Renaming File Name With Valid File Name (Without Any Special Char) From Outside The KoolProg

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Click On Open Button In Project Window
        When Open Window Is Visible
        And Get last Saved Filepath And Valid Filename And Open The Newly Copied File In Import Setting From Controller
        Then The Project Window Is Visible

    @common @KP_Common_ID_40.1
    Scenario: KP_Common_ID_40.1: Verification Of Save Button After Changing Values And Checking The Appropriate Color Change In Import Setting From Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Change Integer Parameter Values In Online
        When Click Save Button In Project Window
        Then Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle

	@common @KP_Common_ID_40.2
    Scenario: KP_Common_ID_40.2: Verification Of Project Details After Clicking On No Button On 'No changes has been made'Popup Window In Import Setting From Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        When Click Save Button In Project Window
        Then Verify Popup Message Should Come As 'No changes has been made' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Project Details Will Be Available In Import Setting From Controller Window

    @common @KP_Common_ID_41.1
    Scenario: KP_Common_ID_41.1: Verification of Saveas Window In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        When Click On Saveas Button In Project Window
        Then Verify Saveas Window In Project Window

    @common @KP_Common_ID_41.2
    Scenario: KP_Common_ID_41.2: Verification of Saveas Project File In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        And Change Integer Parameter Values In Online
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write The Default Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        Then Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Verify Saved file With Code Number Project Name Should Display If Applicable
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle

    @common @KP_Common_ID_41.3
    Scenario: KP_Common_ID_41.3: Verify, Saveas Project File Instead Of Default File Name In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        And Change Integer Parameter Values In Online
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        Then Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Verify The File Saved With Different Project Name Should Display
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle

	@common @KP_Common_ID_41.4
    Scenario: KP_Common_ID_41.4: Verify Negative Test Cases For Save As Button With KoolProg Special Character For Both Project Name And Project Path In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Project Name Including Special Characters Along With The Path
        And Click On Save Button In SaveAs Window
        And Verify The File Name Is Not Valid, Window Dialog Popup Is Visible
        And Click On Ok Button In SaveAs Window Dialog PopUp
        Then Verify If The Entered Project Name With Special Characters Is Displayed In Edit Box Of The SaveAs Dialog

	@common @KP_Common_ID_41.5
    Scenario: KP_Common_ID_41.5: Verify Negative Test Cases For Save As Button With Window Special Character In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Project Name Including Special Characters
        And Click On Save Button In SaveAs Window
        And Verify The File Name Is Not Valid, Window Dialog Popup Is Visible
        And Click On Ok Button In SaveAs Window Dialog PopUp
        Then Verify If The Entered Project Name With Special Characters Is Displayed In Edit Box Of The SaveAs Dialog

	@common @KP_Common_ID_41.6
    Scenario: KP_Common_ID_41.6: Verify Saveas File Is Displayed From Import Setting From Controller Window In The Recent Project List In SetParameter Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        And Change Integer Parameter Values In Online
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        When Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Get Recent File List From Set Parameter Window
        Then Check The Saved File Should Display In The Set Parameter Window Recent Project List

    @KP_Common_ID_41.7
    Scenario: KP_Common_ID_41.7: Verify Saveas Project File Exists Pop Up Is Visible After Writing Created Project Name In SaveAs Dialog Editbox In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Connected Created Project Name In Dialog EditBox
        And Click On Save Button In SaveAs Window
        Then Verify Project File Name Already Exists, Do You Want To Replace It, Window Dialog Popup Is Visible

	@KP_Common_ID_41.8
    Scenario: KP_Common_ID_41.8: Verify Saveas Exits Project File With Clicking No Button In Project Already Exists Popup In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        And Change Integer Parameter Values In Online
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Connected Created Project Name In Dialog EditBox
        And Click On Save Button In SaveAs Window
        And Verify Confirm Save As PopUp Is Visible
        When Click On Confirm Save As PopUp No Button
        And Click Cancel Button In SaveAs Dialog
        Then Verify Project Details Will Be Available In Import Setting From Controller Window

    @common @KP_Common_ID_41.9
    Scenario: KP_Common_ID_41.9: Verify Saveas Exits Project File With Clicking Yes Button In Project Already Exists Popup In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        And Change Integer Parameter Values In Online
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Connected Created Project Name In Dialog EditBox
        And Click On Save Button In SaveAs Window
        And Verify Confirm Save As PopUp Is Visible
        When Click On Confirm Save As PopUp Yes Button
        Then Verify Project Details Will Be Available In Import Setting From Controller Window

    @common @KP_Common_ID_41.10
    Scenario: KP_Common_ID_41.10: Verify, Saveas Project File In Browsed Path In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        And Change Integer Parameter Values In Online
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        When Get Temp Path From Dialog Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window From Temp Path
        And Click On Save Button In SaveAs Window
        And Check Saved Successfully Popup Is Displayed
        And Click Ok Button In Saved Successfully Popup Window
        Then The Project Window Is Visible
        And Verify The File Saved With Different Project Name Should Display
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        And Click On Open Button In Project Window
        And Open Window Is Visible
        And Open Different Project File With Different Project Name Which Is Already Created From Temp Path
        And Verify Popup Message Should Come As 'Project already open' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible

    @common @KP_Common_ID_41.11
    Scenario: KP_Common_ID_41.11: Verify, Saveas Project File In Browsed Path From Import Setting From Controller Window And That Path Should Come Preference Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
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
        And Change Integer Parameter Values In Online
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Get Temp Path From Dialog Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window From Temp Path
        And Click On Save Button In SaveAs Window
        And Check Saved Successfully Popup Is Displayed
        When Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Verify The File Saved With Different Project Name Should Display
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        And Go To Home Window From Project Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        Then Verify Saveas Path And Preference Path Should Be Same


	@common @KP_Common_ID_42.1
	Scenario: KP_Common_ID_42.1: Verification Of Export Button In Import Settings From Controller Window.

	    Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Clear The Working Directory Folder
        And Set Default FileName In NewFileName PopUp
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Verify Project Details Will Be Available In Import Setting From Controller Window
        When Click On Export Button
		And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
	    Then Controller Should Not Go To Fadeout State
	    # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
	    # Check Save, SaveAs, Export, Print Icons Is Disabled
	    # Check Home Button Is Disabled
	    # Check Open Button Is Disabled
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
		And Controller Should Go To Fadeout State
		And The Project Window Is Visible

	@common @KP_Common_ID_42.2
	Scenario: KP_Common_ID_42.2 : Verification Of Export After Changing Values In Import Settings From Controller Window.

		Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Clear The Working Directory Folder
        And Set Default FileName In NewFileName PopUp
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Verify Project Details Will Be Available In Import Setting From Controller Window
        When Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
	    And Click On Export Button
	    And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
	    # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
		And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Open Recent Project From Set Parameter Window During Controller Connected Mode
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        Then Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
	    And Click On Export Button
	    And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
	    # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
		And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle

	@common @KP_Common_ID_42.3
	Scenario: KP_Common_ID_42.3: Verification Of Export After Factory Reset In Import Settings From Controller Window.

	    Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Clear The Working Directory Folder
        And Set Default FileName In NewFileName PopUp
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Verify Project Details Will Be Available In Import Setting From Controller Window
        And Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        And Click On Export Button
        And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
	    # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Clear The Working Directory Folder
        And Set Default FileName In NewFileName PopUp
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Verify Project Details Will Be Available In Import Setting From Controller Window
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        When Click On Factory Reset Button
		And Click On In Project Button In Popup Window
		# Progress Label Is Visible
		# 'Factory resetting to project' Message Should Come In Progress Label
		And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'ONLINE' mode
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle
	    And Click On Export Button
	    And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
	    # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
		Then Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On Import Setting From Controller Button
        And Check If NewFileName PopUp Is Visible
        And Clear The Working Directory Folder
        And Set Default FileName In NewFileName PopUp
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Verify Project Details Will Be Available In Import Setting From Controller Window
        And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle

    @common @KP_Common_ID_43.2
    Scenario: KP_Common_ID_43.2: Verification Of Parameter Sheet Button In Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        When Click On Print Button In Online Window
        Then Verify Parameter Sheet Is Visible

    @common @KP_Common_ID_43.5
    Scenario: KP_Common_ID_43.5: Verification Of Parameter Sheet In PDF Format From Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        When Click On Print Button In Online Window
        Then Verify Parameter Sheet Is Visible
        And Click On Export Button In Parameter Sheet Window
        And Verify Parameter Sheet In PDF Format
        And Verify Default PDF Parameter Sheet Name Is Available In Saved Path

 	@common @KP_Common_ID_44.1
    Scenario: KP_Common_ID_44.1: Verification Of Display Of Searched Menu Code In Project Window Datagrid From Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        When Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Random Menu Code In Search Editbox
        And Click On Search Button In Search Bar
        Then Verify If The Searched Menu Code Displays In Datagrid

    @common @KP_Common_ID_44.2
    Scenario: KP_Common_ID_44.2: Verification Of Display Of Searched Parameter Name In Project Window Datagrid From Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        When Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Parameter Name In Search Editbox
        And Click On Search Button In Search Bar
        Then Verify If The Searched Parameter Name Displays In Datagrid

    @common @KP_Common_ID_44.3
    Scenario: KP_Common_ID_44.3: Verification Of Datagrid After Clicking On Cancel Button In Search Bar In Project Window From Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Parse The DataGrid
        And Check Parameter Count From Datagrid
        And Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Parameter Name In Search Editbox
        And Click On Search Button In Search Bar
        When Click On Cancel Button In Search Bar
        Then Verify All The Parameter Should Come In Datagrid
        And Verify Help Of First Parameter In First Group Should Display

    @common @KP_Common_ID_44.4
    Scenario: KP_Common_ID_44.4: Verification Of Parameter Value For Searched Parameter After Changing Their Value In Project Window From Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Random Menu Code In Search Editbox
        And Click On Search Button In Search Bar
        And Verify If The Searched Parameter Name Displays In Datagrid
        When Change The Value Of Searched Parameter
        Then Changed Random Value Should Show In DataGrid With Pink TextBox And With Grey Color Circle

    @common @KP_Common_ID_45.1
    Scenario: KP_Common_ID_45.1: Verification To Set Parameter As Fav And Verifying The Same Parameters In Favorite Table In Project Window From Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Click On All Tree Item In Tree View
		And Get The Integer Parameter To Set As A Favorite
		When Check The CheckBox Of Integer Parameters To Set As Favorite
		And Click On The Favorite Group In Tree View
		#Then Verify Selected Favorite Parameters In Favorite Table
		And UnCheck The CheckBox Of Randomly Selected Parameters In Favorite Table

    @common @KP_Common_ID_45.2
    Scenario: KP_Common_ID_45.2: Verification Of "No favourites selected" PopUp On Clicking Favorite From Tree View When No Parameters Are Set As Favorite In Project Window From Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Click On All Tree Item In Tree View
		When Click On The Favorite Group In Tree View
		Then Verify Popup Message Should Come As 'No favourites selected' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible

    @common @KP_Common_ID_45.3
    Scenario: KP_Common_ID_45.3: Verification Of Removal of Favorite Parmaters and verifying The Same Parameters Not Coming In Favorite Table In Project Window From Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Click On All Tree Item In Tree View
		And Get The Integer Parameter To Set As A Favorite
        And Check The CheckBox Of Integer Parameters To Set As Favorite
		When UnCheck The CheckBox Of Randomly Selected Parameters In Favorite Table
		And Click On The Favorite Group In Tree View
		Then Verify Popup Message Should Come As 'No favourites selected' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible

    @common @KP_Common_ID_45.4
    Scenario: KP_Common_ID_45.4: Verification Of change of Favorite Parmaters and verifying The Same Changed Parameters  Coming In Favorite Table In Project Window From Import Setting From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
       	When Click On All Tree Item In Tree View
        And Change Integer Parameter Values
        And Click Save Button In Project Window
        And Check Saved Successfully Popup Is Displayed
		And Click Ok Button In Saved Successfully Popup Window
        And Check The CheckBox Of Integer Parameters To Set As Favorite
        Then Changed Value Should Show In DataGrid Without Pink TextBox And Grey Color Circle
        And UnCheck The CheckBox Of Randomly Selected Parameters In Favorite Table

	@common @KP_Common_ID_46.1
    Scenario: KP_Common_ID_46.1 : Verification Of Factory Reset In Online Mode After Saving The Changed Values In Import Settings From Controller Window.

		Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set Default FileName In NewFileName PopUp
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Verify Project Details Will Be Available In Import Setting From Controller Window
        And Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Check Saved Successfully Popup Is Displayed
		And Click Ok Button In Saved Successfully Popup Window
		And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		When Click On Factory Reset Button
		Then Check 'Do you want to change to factory settings?' Text Is Displayed In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Check Cancel Button Is Enabled In Popup Window
		And Check InProject Button Is Enabled In PopUp Window
		And Check InController Button Is Enabled In PopUp Window
		And Click On In Project Button In Popup Window
		And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'ONLINE' mode
		And Check Saved Successfully Popup Is Displayed
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Click Ok Button In Saved Successfully Popup Window
		And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle


	@common @KP_Common_ID_46.2
	Scenario: KP_Common_ID_46.2 : Verification Of Factory Reset In Online Mode In Controller After Saving The Changed Values In Import Settings From Controller Window.

		Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Clear The Working Directory Folder
        And Set Default FileName In NewFileName PopUp
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Verify Project Details Will Be Available In Import Setting From Controller Window
        And Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Check Saved Successfully Popup Is Displayed
		And Click Ok Button In Saved Successfully Popup Window
	    And Click On Export Button
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Click OK Button In Popup Window
		And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Open Recent Project From Set Parameter Window During Controller Connected Mode
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        When Click On Factory Reset Button
        Then Check 'Do you want to change to factory settings?' Text Is Displayed In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Check Cancel Button Is Enabled In Popup Window
		And Check InProject Button Is Enabled In PopUp Window
		And Check InController Button Is Enabled In PopUp Window
		And Click On In Controller Button In Popup Window
		And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'ONLINE' mode
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Click OK Button In Popup Window
		And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle


    @common @KP_Common_ID_48.1
    Scenario: KP_Common_ID_48.1: Verification Of View More In Import Setting From Controller

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        When Get Connected Controller Information
        Then Click On View More Button And Verify View More Window Opened

     @common @KP_Common_ID_55.1
     Scenario: KP_Common_ID_55.1:Verification Of Online Project In Project Window After Opening Project From Open Option In Set Parameter Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        When Enable Random Serial Port
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Create A Project By Choosing A Random Port
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
        Then Get Connected Controller Information
        And Controller Should Go To Fadeout State
        And Check Export Button Is Enabled

	@common @KP_Common_ID_56.1
	Scenario: KP_Common_ID_56.1: Verification Of Export Button After Opening From Open Option In SetParameter Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Verify Home Window Should Come
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        When Click On Export Button
        And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
	    Then Controller Should Not Go To Fadeout State
	    # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
	    # Check Save, SaveAs, Export, Print Icons Is Disabled
	    # Check Home Button Is Disabled
	    # Check Open Button Is Disabled
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
		And Controller Should Go To Fadeout State
		And The Project Window Is Visible

	@common @KP_Common_ID_56.2
	Scenario: KP_Common_ID_56.2: Verification Of Export After Changing Values After Opening From Open Option In SetParameter Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Verify Home Window Should Come
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        When Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
	    And Click On Export Button
	    And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
	    # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
		And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Verify Home Window Should Come
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
	    And Click On Export Button
	    And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
	    # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
		Then Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
		And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle

	@common @KP_Common_ID_56.3
	Scenario: KP_Common_ID_56.3: Verification Of Export After Factory Reset After Opening From Open Option In SetParameter Window.

		Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Verify Home Window Should Come
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        And Click On Export Button
        And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
	    # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Verify Home Window Should Come
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        When Click On Factory Reset Button
		And Click On In Project Button In Popup Window
		# Progress Label Is Visible
		# 'Factory resetting to project' Message Should Come In Progress Label
		And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'ONLINE' mode
		Then Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle
        And Click On Export Button
        And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
        # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle

	@common @KP_Common_ID_60.4
	Scenario: KP_Common_ID_60.4:   Verification Of Factory Reset In Online Mode After Saving The Changed Values In Project Window After Opening The file From Open Option In SetParameter Window.

		Given KoolProg Had Opened
        And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        And Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Check Saved Successfully Popup Is Displayed
		And Click Ok Button In Saved Successfully Popup Window
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		When Click On Factory Reset Button
		Then Check 'Do you want to change to factory settings?' Text Is Displayed In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Check Cancel Button Is Enabled In Popup Window
		And Check InProject Button Is Enabled In PopUp Window
		And Check InController Button Is Enabled In PopUp Window
		And Click On In Project Button In Popup Window
		And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'ONLINE' mode
		And Check Saved Successfully Popup Is Displayed
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Click Ok Button In Saved Successfully Popup Window
		And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle

	@common @KP_Common_ID_60.5
    Scenario: KP_Common_ID_60.5: Verification Of Factory Reset In Online Mode In Controller After Exporting The Changed Values In Project Window After Opening The Project From Open Option In SetParameter Window.


		Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Check Saved Successfully Popup Is Displayed
		And Click Ok Button In Saved Successfully Popup Window
	    And Click On Export Button
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Click OK Button In Popup Window
		And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        When Click On Factory Reset Button
        Then Check 'Do you want to change to factory settings?' Text Is Displayed In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Check Cancel Button Is Enabled In Popup Window
		And Check InProject Button Is Enabled In PopUp Window
		And Check InController Button Is Enabled In PopUp Window
		And Click On In Controller Button In Popup Window
		And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'ONLINE' mode
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Click OK Button In Popup Window
		And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle


     @common @KP_Common_ID_70.1
     Scenario: KP_Common_ID_70.1:Verification Of Online Project In Project Window After Opening Project Fom Recent Project In SetParameters Project.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Get Connected Controller Information
        And Controller Should Go To Fadeout State
        And Check Export Button Is Enabled

	@common @KP_Common_ID_71.1
	Scenario: KP_Common_ID_71.1: Verification Of Export Button After Opening From Recent Option In SetParameter Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        When Click On Export Button
        And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
	    Then Controller Should Not Go To Fadeout State
	    # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
	    # Check Save, SaveAs, Export, Print Icons Is Disabled
	    # Check Home Button Is Disabled
	    # Check Open Button Is Disabled
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
		And Controller Should Go To Fadeout State
		And The Project Window Is Visible

	@common @KP_Common_ID_71.2
	Scenario: KP_Common_ID_71.2: Verification Of Export After Changing Values After Opening From Recent Option In SetParameter Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        When Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
	    And Click On Export Button
	    And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
	    # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
		And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
	    And Click On Export Button
	    And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
	    # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
		And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		Then Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle




	@common @KP_Common_ID_71.3
	Scenario: KP_Common_ID_71.3: Verification Of Export After Factory Reset After Opening From Recent Option In SetParameter Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        And Click On Export Button
        And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
	    # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        When Click On Factory Reset Button
		And Click On In Project Button In Popup Window
		# Progress Label Is Visible
		# 'Factory resetting to project' Message Should Come In Progress Label
		And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'ONLINE' mode
		Then Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle
        And Click On Export Button
        And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
        # Progress Label Is Visible
		# 'Export settings to controller' Message Should Come In Progress Label
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle



	@common @KP_Common_ID_75.4
	Scenario: KP_Common_ID_75.4:   Verification Of Factory Reset In Online Mode After Saving The Changed Values In Project Window After Opening The file From Recent Project List In SetParameter Window.

		Given KoolProg Had Opened
        And Disable All Serial Ports
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Verify Home Window Should Come
        And Go To Set Parameter Window
        And Get Recent File List From Set Parameter Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Check Saved Successfully Popup Is Displayed
		And Click Ok Button In Saved Successfully Popup Window
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		When Click On Factory Reset Button
		Then Check 'Do you want to change to factory settings?' Text Is Displayed In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Check Cancel Button Is Enabled In Popup Window
		And Check InProject Button Is Enabled In PopUp Window
		And Check InController Button Is Enabled In PopUp Window
		And Click On In Project Button In Popup Window
		And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'ONLINE' mode
		And Check Saved Successfully Popup Is Displayed
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Click Ok Button In Saved Successfully Popup Window
		And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle


	 @common @KP_Common_ID_75.5
     Scenario: KP_Common_ID_75.5: Verification Of Factory Reset In Online Mode In Controller After Exporting The Changed Values In Project Window After Opening The Project From Recent Project List In SetParameter Window.


		Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Change Integer Parameter Values In Online
        And Click Save Button In Project Window
        And Check Saved Successfully Popup Is Displayed
		And Click Ok Button In Saved Successfully Popup Window
	    And Click On Export Button
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Click OK Button In Popup Window
		And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        When Click On Factory Reset Button
        Then Check 'Do you want to change to factory settings?' Text Is Displayed In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Check Cancel Button Is Enabled In Popup Window
		And Check InProject Button Is Enabled In PopUp Window
		And Check InController Button Is Enabled In PopUp Window
		And Click On In Controller Button In Popup Window
		And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'ONLINE' mode
		And Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Click OK Button In Popup Window
		And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle



    @common @KP_Common_ID_80.1
    Scenario: KP_Common_ID_80.1: Verification Of Copy To Controller Window After Connecting The Controller.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
		When Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        Then Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Check Home Button Is Enabled
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Check Single Controller Radio Button Is Selected


   @common @KP_Common_ID_81.1
    Scenario: KP_Common_ID_81.1: Verification Of Browser Window In Copy To Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Check Browse Button Is Enabled In Copy To Controller Window
        When Click On Browse Button In Copy To Controller Window
        Then Verify Open Window
		And Verify All The Supported Extensions In Window Dialog

   @common @KP_Common_ID_81.2
    Scenario: KP_Common_ID_81.2: Verification Of Browsing Unavailable File In Copy To Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Check Browse Button Is Enabled In Copy To Controller Window
        And Click On Browse Button In Copy To Controller Window
        When Enter A Unavailable Filename
        And Click Open Button in Open Window
        Then Verify Popup Message For Unavailable File Displays
       # And Click On The Okay Button In Unavailable File Popup Window
        And Click Ok Button In Open Popup Window
		And Verify Open Window

   @common @KP_Common_ID_81.3
    Scenario: KP_Common_ID_81.3: Verification Of Set As Favourite Button On Selecting Compatible File In Copy To Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
		And Create A Project By Choosing A Random Port
		And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Enable Random Serial Port
        And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Click On Browse Button In Copy To Controller Window
		When Open The Created File In Project Window
		Then Verify Set As Favourite Button Text


   @common @KP_Common_ID_81.4
    Scenario: KP_Common_ID_81.4: Verification Of Project Details Of The Browsed File In Copy To Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
		And Create A Project By Choosing A Random Port
		And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
		And Check Browse Button Is Enabled In Copy To Controller Window
		When Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
		And Verify The Browsed Project File Details In Copy To Controller

   @common @KP_Common_ID_81.5
    Scenario: KP_Common_ID_81.5: Verification Project Detials Of The Selected File After Clicking On The Cancel Button In  The Browse Window In Copy To Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
		And Create A Project By Choosing A Random Port
		And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
		And Check Browse Button Is Enabled In Copy To Controller Window
		When Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
		And Click On Browse Button In Copy To Controller Window
		And Click Cancel Button In Open File Dialog
		Then Verify The Browsed Project File Details In Copy To Controller
		And Check Set As Fav Button Is Enabled In Copy To Controller Window

   @common @KP_Common_ID_81.6
    Scenario: KP_Common_ID_81.6: Verification Of Browsing unavailable File In Copy To Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Check Browse Button Is Enabled In Copy To Controller Window
        And Click On Browse Button In Copy To Controller Window
        And Verify Open Window
        When Enter A Unavailable Filename
        And Click Open Button in Open Window
        Then Verify Popup Message For Unavailable File Displays
       # And Click On The Okay Button In Unavailable File Popup Window
       And Click Ok Button In Open Popup Window

    Scenario: KP_Common_ID_81.7: Verify Project Can Be Opened From Last Opened Project File Location In Copy To Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'ONLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Check Browse Button Is Enabled In Copy To Controller Window
        And Click On Browse Button In Copy To Controller Window
        When Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify The Browsed Project File Details In Copy To Controller
        And Click On Browse Button In Copy To Controller Window
        Then Verify Open Window Should Open With Temp Path

   @common @KP_Common_ID_82.1
    Scenario: KP_Common_ID_82.1: Verification Of Single Controller Programming In Copy To Controller Window

      	Given KoolProg Had Opened
		And Disable All Serial Ports
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
		#And New Project Is Created For Random Controller Except ERC11x
		And Create A Project By Choosing A Random Port
		And Enable The Port For Created Project
		# New Project Is Created For Random Controller Except ERC11x
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Enable Random Serial Port
        And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
		And Verify Set As Favourite Button Text
		And Click On Single Controller Programming Button In Copy To Controller Window
		When Click On Start Button In Copy To Controller Window
		And Add Required Delay For 'PROGRAMMING_CONTROLLER_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
		Then Check Browse Button Is Disabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
        And Verify Popup Message Should Come As 'Configuration successfully copied to controller.' In Copy To controller Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window

   @common @KP_Common_ID_83.1
    Scenario: KP_Common_ID_83.1: Verification Of Labels(count up,count down) After Selecting The  Multi Controller Programming In Copy To Controller Window

        Given KoolProg Had Opened
		And Disable All Serial Ports
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
		And Create A Project By Choosing A Random Port
		And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Enable Random Serial Port
        And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
		And Verify Set As Favourite Button Text
		When Click On Multiple Controller Programming Button In Copy To Controller Window
		Then Verify The CountUp And Countdown Label

   @common @KP_Common_ID_83.2
    Scenario: KP_Common_ID_83.2: Verify Not Able To Enter More Than Maximum(999) Count Number In Copy To Controller Window

        Given KoolProg Had Opened
		And Disable All Serial Ports
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
		And Create A Project By Choosing A Random Port
		And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Enable Random Serial Port
        And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
		And Check Browse Button Is Enabled In Copy To Controller Window
		When Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
		And Verify Set As Favourite Button Text
		And Click On Multiple Controller Programming Button In Copy To Controller Window
		And Verify The CountUp And Countdown Label
		And Verify Counter Should Not Accept More Than Maximum Count Value

   @common @KP_Common_ID_83.3
    Scenario: KP_Common_ID_83.3: Verify Not Able To Enter Less Than Minimum(0) Count Number In Copy To Controller Window

        Given KoolProg Had Opened
		And Disable All Serial Ports
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
		And Create A Project By Choosing A Random Port
		And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Enable Random Serial Port
        And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
		And Verify Set As Favourite Button Text
		And Click On Multiple Controller Programming Button In Copy To Controller Window
		And Verify The CountUp And Countdown Label
		And Verify Counter Should Not Accept less Than Minimum Count Value

   @common @KP_Common_ID_83.4
    Scenario: KP_Common_ID_83.4: Verify, Able To Copy File Multiple Times Using Multi Programming Feature In Copy To Controller Window

        Given KoolProg Had Opened
		And Disable All Serial Ports
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Create A Project By Choosing A Random Port
		# New Project Is Created For Random Controller Except ERC11x
		And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
		And Check Browse Button Is Enabled In Copy To Controller Window
		When Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
		And Verify Set As Favourite Button Text
		And Click On Multiple Controller Programming Button In Copy To Controller Window
		When Set the Count value as '3'
		Then Programming The File Multiple Times To Controller 'Incrementally'

	@common @KP_Common_ID_83.5
    Scenario: KP_Common_ID_83.5: Verify, Able To Copy File Multiple Times Using Multi Programming Feature In Copy To Controller Window

        Given KoolProg Had Opened
		And Disable All Serial Ports
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Create A Project By Choosing A Random Port
		And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
		And Check Browse Button Is Enabled In Copy To Controller Window
		When Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
		And Verify Set As Favourite Button Text
		And Click On Multiple Controller Programming Button In Copy To Controller Window
		And Click On Count Down Timer In Copy To Controller Window
		When Set the Count value as '3'
		Then Programming The File Multiple Times To Controller 'Decrementally'

    @common @KP_Common_ID_84.1
    Scenario: KP_Common_ID_84.1: Verify,Set As Favorite File In Copy To Controller Window.
       Given KoolProg Had Opened
		And Disable All Serial Ports
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
		And Create A Project By Choosing A Random Port
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And Enable The Port For Created Project
        And The Project Window Is Visible
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Enable Random Serial Port
        And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
		And Verify Set As Favourite Button Text
		When Click On Set As Favorite Button
		Then Verify Created File Name In The Favorite Grid


   @common @KP_Common_ID_84.2
     Scenario: KP_Common_ID_84.2: Verify, Multiple Files In Favorite Datagrid In Copy To Controller Window

        Given KoolProg Had Opened
		And Disable All Serial Ports
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
		And Create A Project By Choosing A Random Port
		And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Create '2' Multiple Projects For Connected Controller
		And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
		And Check Browse Button Is Enabled In Copy To Controller Window
		When Verify Browse Multiple Files and Set Them As Favorite
		Then Verify the Multiple Favorite Files In The Favorite Grid

    @common @KP_Common_ID_84.3
    Scenario: KP_Common_ID_84.3: Verify, Twelve Files In Favorite Datagrid In Copy To Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Create '12' Multiple Projects For Connected Controller
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Check Browse Button Is Enabled In Copy To Controller Window
        When Verify Browse Multiple Files and Set Them As Favorite
        And Verify Scroll Bar In Favorite Table
        Then Verify the Multiple Favorite Files In The Favorite Grid

   @common @KP_Common_ID_85.1
     Scenario: KP_Common_ID_85.1: Verify, User Rights Can Browse The File And Program Into The Controller In Copy To Controller Window

        Given KoolProg Had Opened
        And Handled Unexpected Password Window Error
		And Disable All Serial Ports
        And Enable Random Serial Port
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
		And Create A Project By Choosing A Random Port
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On Copy To Controller Button In Home Window
		And Check Controller Is Connecting Image Is Visible
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
		And Click On Set As Favorite Button
		And Go To Home Window From Copy To controller Window
		And Add Required Delay For 'SWITCHING_TO_HOME_FROM_ANY_OTHER_WINDOW' for 'ONLINE' mode
        And Click On The Setting Icon Button In The Main Window
        And Click On Use Password Protection Checkbox
        And Click On Show Password Checkbox
        And Get Password From Preference Window
        And Click On Save Button In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window
        And Click On Change User Button
        When Write 'User' User Name In Password Window
        And Write Password In Password Window
        Then Click On Ok Button In Password Window
        And Click On Copy To Controller Button In Home Window
		And Check Controller Is Connecting Image Is Visible
		And Check Browse Button Is Disabled In Copy To Controller Window
		And Select The Favorite File From DataGrid
		Then Click On Start Button In Copy To Controller Window
        And Add Required Delay For 'PROGRAMMING_CONTROLLER_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
		Then Click OK Button In Popup Window
		And Delete the Favorite File From Favorite Grid In Copy To Controller

    @common @KP_Common_ID_87.1
    Scenario: KP_Common_ID_87.1: Verification Of On-line Service Window After Connecting Controller

        Given KoolProg Had Opened
        And Handled Unexpected Password Window Error
        And Disable All Serial Ports
        When Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        Then On-line Service Window Is Visible
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
        And Check The Connected Controller Variant Name
        And Check The Connected Controller Image
        And Get Connected Controller Information
        And Controller Should Not Go To Fadeout State
        And Verify Chart Button Is Enabled

    @common @KP_Common_ID_88.1
    Scenario: KP_Common_ID_88.1: Verification Of Tree View In On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        When On-line Service Window Is Visible
        And Get Connected Controller Information
        Then Verify That Tree View Default Groups Will Expand
        And Click On All Tree Item In Tree View
        And Verify Tree View Is Collapsed

   @common @KP_Common_ID_89.1
    Scenario: KP_Common_ID_89.1: Verification Of Changed Values In On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        And Click On All Tree Item In Tree View
        When Change Integer Parameter Values In Online
        Then Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle

   @common @KP_Common_ID_89.2
    Scenario: KP_Common_ID_89.2: Verification Of For Changed Values In Import Setting From Controller Window After Changing Values From On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        And Click On All Tree Item In Tree View
        When Change Integer Parameter Values In Online
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        And Go To Home Window From On-Service Test Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Home Window Should Come
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Import Setting From Controller Button
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        Then Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle

   @common @KP_Common_ID_89.3
    Scenario: KP_Common_ID_89.3: Verification Of Changed Values In On-line Service Window  After Disconnect And Connect Back The Controller

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        And Click On All Tree Item In Tree View
        And Change Integer Parameter Values In Online
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        When Disable All Serial Ports
        And Enable The Port Again
        And Put To Sleep For '10' Sec
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        Then Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle

    @common @KP_Common_ID_90.1
    Scenario: KP_Common_ID_90.1: Verification Of Home Button In On-line Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        When On-line Service Window Is Visible
        And Get Connected Controller Information
        And Go To Home Window From On-Service Test Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        Then Verify Home Window Should Come
        And Verify Text Of Set parameters, Copy to controller And On-Line Service On Home Screen
        And Verify KoolProg Version Number On Home Screen
        And Verify Danfoss Website Is Displaying In Home Screen

@common @KP_Common_ID_90.2
    Scenario: KP_Common_ID_90.2: Verification Of Home Button After Changing Values From On-line Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        And Click On All Tree Item In Tree View
        And Change Integer Parameter Values In Online
        When Go To Home Window From On-Service Test Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        Then Verify Home Window Should Come
        And Verify Text Of Set parameters, Copy to controller And On-Line Service On Home Screen
        And Verify KoolProg Version Number On Home Screen
        And Verify Danfoss Website Is Displaying In Home Screen

    @common @KP_Common_ID_91.1
    Scenario: KP_Common_ID_91.1: Verification of Cancel Button on Open window From On-line Service Offline

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port Except AKCC, EKE, ERC21x
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Click On OnLine Service Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
        And Check The Connected Controller Variant Name
        And Check The Connected Controller Image
        And Click On All Tree Item In Tree View
        And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
        And Click On Chart Button In Online Service Window
        And Check Start Button Is Enabled In Chart Window
        And Click Start/Stop Button In Chart Window
        And Click Start/Stop Button In Chart Window
        And Click SaveAs Button In Chart Window
        And Check Default FileType In SaveAs Dialog In Chart Window
        And Write The File Name In SaveAs Dialog In Chart Window With Default Csv Extension
        And Click On Save Button In SaveAs Window
        And Check Saved Successfully Popup Is Displayed
        And Click Ok Button In Saved Successfully Popup Window
        And Check If Saved Chart File Is Located In Default Location
        And Click Back Button In Chart Window
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
        And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        When Write Saved Chart From Working Directory Path
        And Click On The Open Window Cancel Button
        Then Verify Open Window Should Not Visible
        And On-line Service Window Is Visible

    @common @KP_Common_ID_92.1
    Scenario: KP_Common_ID_92.1: Verification of Open Window In Project Window When Controller Is Not Connected From On-line Service

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Click On OnLine Service Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_OFFLINE_SERVICE_WINDOW' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And On-line Service Window Is Visible
        When Click On Open Button In Project Window
        Then Verify Open Window
        And Verify Chart File Extension In Open Window

    @common @KP_Common_ID_92.2
    Scenario: KP_Common_ID_92.2: Verification Of Selecting Chart In Open Popup Window In On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
		And Enable Random Serial Port Except AKCC, EKE, ERC21x
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Click On OnLine Service Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
        And Check The Connected Controller Variant Name
        And Check The Connected Controller Image
        And Click On All Tree Item In Tree View
        And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
        And Click On Chart Button In Online Service Window
        And Check Start Button Is Enabled In Chart Window
        And Click Start/Stop Button In Chart Window
        And Click Start/Stop Button In Chart Window
        And Click SaveAs Button In Chart Window
        And Check Default FileType In SaveAs Dialog In Chart Window
        And Write The File Name In SaveAs Dialog In Chart Window With Default Csv Extension
        And Click On Save Button In SaveAs Window
        And Check Saved Successfully Popup Is Displayed
        And Click Ok Button In Saved Successfully Popup Window
        And Check If Saved Chart File Is Located In Default Location
        And Click Back Button In Chart Window
        And Add Required Delay For 'SWITCHING_FROM_CHART_WINDOW_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        When Select Saved Chart From Working Directory Path
        And Verify Open Window Should Not Visible
        Then Verify Chart Window Is Visible After Opening Chart From On-line Service Window

    @common @KP_Common_ID_92.3
    Scenario: KP_Common_ID_92.3: Verification Of Writing The Chart Name In Open Popup's Edit Box In On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port Except AKCC, EKE, ERC21x
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On OnLine Service Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
        And Check The Connected Controller Variant Name
        And Check The Connected Controller Image
        And Click On All Tree Item In Tree View
        And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
        And Click On Chart Button In Online Service Window
        And Check Start Button Is Enabled In Chart Window
        And Click Start/Stop Button In Chart Window
        And Click Start/Stop Button In Chart Window
        And Click SaveAs Button In Chart Window
        And Check Default FileType In SaveAs Dialog In Chart Window
        And Write The File Name In SaveAs Dialog In Chart Window With Default Csv Extension
        And Click On Save Button In SaveAs Window
        And Check Saved Successfully Popup Is Displayed
        And Click Ok Button In Saved Successfully Popup Window
        And Check If Saved Chart File Is Located In Default Location
        And Click Back Button In Chart Window
        And Add Required Delay For 'SWITCHING_FROM_CHART_WINDOW_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        When Write Saved Chart From Working Directory Path
        And Click Open Button in Open Window
        Then Verify Chart Window Is Visible After Opening Chart From On-line Service Window

    @common @KP_Common_ID_92.4
    Scenario: KP_Common_ID_92.4: Verification of Cancel Button On Open window From On-line Service

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port Except AKCC, EKE, ERC21x
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On OnLine Service Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
        And Check The Connected Controller Variant Name
        And Check The Connected Controller Image
        And Click On All Tree Item In Tree View
        And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
        And Click On Chart Button In Online Service Window
        And Check Start Button Is Enabled In Chart Window
        And Click Start/Stop Button In Chart Window
        And Click Start/Stop Button In Chart Window
        And Click SaveAs Button In Chart Window
        And Check Default FileType In SaveAs Dialog In Chart Window
        And Write The File Name In SaveAs Dialog In Chart Window With Default Csv Extension
        And Click On Save Button In SaveAs Window
        And Check Saved Successfully Popup Is Displayed
        And Click Ok Button In Saved Successfully Popup Window
        And Check If Saved Chart File Is Located In Default Location
        And Click Back Button In Chart Window
        And Add Required Delay For 'SWITCHING_FROM_CHART_WINDOW_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Get Connected Controller Information
        And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        When Click On The Open Window Cancel Button
        Then Verify Open Window Should Not Visible
        And Verify Chart Window Should Not Visible
        And On-line Service Window Is Visible

    Scenario: KP_Common_ID_92.5: Verification to Open Unavailable Chart In On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On OnLine Service Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Get Connected Controller Information
        And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        When Enter A Unavailable Chartname
        Then Click Open Button in Open Window
        And Verify Popup Message For Unavailable File Displays
        And Click Ok Button In Open Popup Window
        And Click Cancel Button In Open File Dialog
        And On-line Service Window Is Visible

    @common
    Scenario: KP_Common_ID_92.6: Open Already Opened Chart After Opening The Current Chart Itself In The On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port Except AKCC, EKE, ERC21x
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On OnLine Service Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
        And Check The Connected Controller Variant Name
        And Check The Connected Controller Image
        And Click On All Tree Item In Tree View
        And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
        And Click On Chart Button In Online Service Window
        And Check Start Button Is Enabled In Chart Window
        And Click Start/Stop Button In Chart Window
        And Click Start/Stop Button In Chart Window
        And Click SaveAs Button In Chart Window
        And Check Default FileType In SaveAs Dialog In Chart Window
        And Write The File Name In SaveAs Dialog In Chart Window With Default Csv Extension
        And Click On Save Button In SaveAs Window
        And Check Saved Successfully Popup Is Displayed
        And Click Ok Button In Saved Successfully Popup Window
        And Check If Saved Chart File Is Located In Default Location
        And Click Back Button In Chart Window
        And Add Required Delay For 'SWITCHING_FROM_CHART_WINDOW_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        And Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And  Write Saved Chart From Working Directory Path
        And Click Open Button in Open Window
        And Verify Chart Window Is Visible After Opening Chart From On-line Service Window
        And Click Back Button In Chart Window
        When Click On Open Button In Project Window
        And Goto Working Directory In Open Dialog Window
        And  Write Saved Chart From Working Directory Path
        And Click Open Button in Open Window
        Then Verify Chart Window Is Visible After Opening Chart From On-line Service Window
        And Verify The Chart Name After Opening The Saved Chart

    Scenario: KP_Common_ID_93.1: Verification of Saveas Window From On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        And Click On All Tree Item In Tree View
        And Change Integer Parameter Values In Online
        When Click On Saveas Button In Project Window
        Then Verify Saveas Window In Project Window

    @common
    Scenario: KP_Common_ID_93.2: Verification of Saveas Project File In On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        And Click On All Tree Item In Tree View
        And Change Integer Parameter Values In Online
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write The Default Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        Then Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle

    @common
    Scenario: KP_Common_ID_93.3: Verify, Saveas Project File Instead Of Default File Name In On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        And Click On All Tree Item In Tree View
        And Change Integer Parameter Values In Online
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        Then Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle

    Scenario: KP_Common_ID_93.4: Verify Negative Test Cases For Save As Button With KoolProg Special Character For Both Project Name And Project Path In On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Project Name Including Special Characters Along With The Path
        And Click On Save Button In SaveAs Window
        And Verify The File Name Is Not Valid, Window Dialog Popup Is Visible
        And Click On Ok Button In SaveAs Window Dialog PopUp
        Then Verify If The Entered Project Name With Special Characters Is Displayed In Edit Box Of The SaveAs Dialog

    Scenario: KP_Common_ID_93.5: Verify Negative Test Cases For Save As Button With Window Special Character In On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Project Name Including Special Characters
        And Click On Save Button In SaveAs Window
        And Verify The File Name Is Not Valid, Window Dialog Popup Is Visible
        And Click On Ok Button In SaveAs Window Dialog PopUp
        Then Verify If The Entered Project Name With Special Characters Is Displayed In Edit Box Of The SaveAs Dialog

    @KP_Common_ID_93.6
    Scenario: KP_Common_ID_93.6: Verify Saveas Project File Exists Pop Up Is Visible After Writing Created Project Name In SaveAs Dialog Editbox In On-line Service Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Created Project Name In Dialog EditBox
        And Click On Save Button In SaveAs Window
        Then Verify Project File Name Already Exists, Do You Want To Replace It, Window Dialog Popup Is Visible

    Scenario: KP_Common_ID_93.7: Verify Saveas Exits Project File With Clicking No Button In Project Already Exists Popup In On-line Service Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Created Project Name In Dialog EditBox
        And Click On Save Button In SaveAs Window
        And Verify Confirm Save As PopUp Is Visible
        When Click On Confirm Save As PopUp No Button
        And Click Cancel Button In SaveAs Dialog
        Then On-line Service Window Is Visible

    @common @KP_Common_ID_93.8
    Scenario: KP_Common_ID_93.8: Verify Saveas Exits Project File With Clicking Yes Button In Project Already Exists Popup In On-line Service Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Created Project Name In Dialog EditBox
        And Click On Save Button In SaveAs Window
        And Verify Confirm Save As PopUp Is Visible
        When Click On Confirm Save As PopUp Yes Button
        Then On-line Service Window Is Visible


    @common
    Scenario: KP_Common_ID_93.9:  Verify, Saveas Project File In Browsed Path From On-line Service Window And That Path Should Come Preference Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        And Click On All Tree Item In Tree View
        And Change Integer Parameter Values In Online
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Get Temp Path From Dialog Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window From Temp Path
        And Click On Save Button In SaveAs Window
        And Check Saved Successfully Popup Is Displayed
        When Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Verify The File Saved With Different Project Name Should Display
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        And Go To Home Window From Project Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        Then Verify Saveas Path And Preference Path Should Be Same

    @common @KP_Common_ID_94.2
    Scenario: KP_Common_ID_94.2: Verification Of Parameter Sheet Button In On-line Service

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        When Click On Print Button In Online Window
        Then Verify Parameter Sheet Is Visible

    @common @KP_Common_ID_94.5
    Scenario: KP_Common_ID_94.5: Verification Of Parameter Sheet In PDF Format In On-line Service

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        When Click On Print Button In Online Window
        Then Verify Parameter Sheet Is Visible
        And Click On Export Button In Parameter Sheet Window
        And Verify Parameter Sheet In PDF Format
        And Verify Default PDF Parameter Sheet Name Is Available In Saved Path

    @common @KP_Common_ID_95.1
    Scenario: KP_Common_ID_95.1: Verification Of Display Of Searched Menu Code In Project Window Datagrid In On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        When Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Random Menu Code In Search Editbox
        And Click On Search Button In Search Bar
        Then Verify If The Searched Menu Code Displays In Datagrid

    @common @KP_Common_ID_95.2
    Scenario: KP_Common_ID_95.2: Verification Of Display Of Searched Parameter Name In Project Window Datagrid In On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        When Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Parameter Name In Search Editbox
        And Click On Search Button In Search Bar
        Then Verify If The Searched Parameter Name Displays In Datagrid

    @common @KP_Common_ID_95.3
    Scenario: KP_Common_ID_95.3: Verification Of Datagrid After Clicking On Cancel Button In Search Bar In On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        And Parse The DataGrid
        And Check Parameter Count From Datagrid
        And Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Parameter Name In Search Editbox
        And Click On Search Button In Search Bar
        When Click On Cancel Button In Search Bar
        Then Verify All The Parameter Should Come In Datagrid
        And Verify Help Of First Parameter In First Group Should Display

    @common @KP_Common_ID_95.4
    Scenario: KP_Common_ID_95.4: Verification Of Parameter Value For Searched Parameter After Changing Their Value In On-line Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        And Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Random Menu Code In Search Editbox
        And Click On Search Button In Search Bar
        And Verify If The Searched Parameter Name Displays In Datagrid
        When Change The Value Of Searched Parameter
        Then Changed Random Value Should Show In DataGrid With Pink TextBox And With Grey Color Circle

    @common @KP_Common_ID_96.1
    Scenario: KP_Common_ID_96.1: Verification To Set Parameter As Fav and verifying The Same Parameters In Favorite Table In On-line Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
		And Click On All Tree Item In Tree View
		And Get The Integer Parameter To Set As A Favorite
		When Check The CheckBox Of Integer Parameters To Set As Favorite
		And Click On The Favorite Group In Tree View
		#Then Verify Selected Favorite Parameters In Favorite Table
		And UnCheck The CheckBox Of Randomly Selected Parameters In Favorite Table

    @common @KP_Common_ID_96.2
    Scenario: KP_Common_ID_96.2: Verification Of "No favourites selected" PopUp On Clicking Favorite From Tree View When No Parameters Are Set As Favorite In On-line Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
		And Click On All Tree Item In Tree View
		When Click On The Favorite Group In Tree View
		Then Verify Popup Message Should Come As 'No favourites selected' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible

    @common @KP_Common_ID_96.3
    Scenario: KP_Common_ID_96.3: Verification Of Removal Of Favorite Parmaters And Verifying The Same Parameters Not Coming In Favorite Table
        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        And The Project Window Is Visible
		And Click On All Tree Item In Tree View
		And Get The Integer Parameter To Set As A Favorite
        And Check The CheckBox Of Integer Parameters To Set As Favorite
		When UnCheck The CheckBox Of Randomly Selected Parameters In Favorite Table
		And Click On The Favorite Group In Tree View
		Then Verify Popup Message Should Come As 'No favourites selected' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible


    @common @KP_Common_ID_96.4
    Scenario: KP_Common_ID_96.4: Verification Of Change Of Favorite Parmaters And Verifying The Same Changed Parameters  Coming In Favorite Table In Project Window From Online Service Window
        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        When Click On All Tree Item In Tree View
        And Get The Integer Parameter To Set As A Favorite
        And Check The CheckBox Of Integer Parameters To Set As Favorite
        And Change Integer Parameter Values
		Then Changed Value Should Show In DataGrid Without Pink TextBox And Grey Color Circle
		And UnCheck The CheckBox Of Randomly Selected Parameters In Favorite Table

     @common @KP_Common_ID_96.5
     Scenario: KP_Common_ID_96.5: Verification Of Favorite Parameter Across The Project File

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Get The Integer Parameter To Set As A Favorite
        When Check The CheckBox Of Integer Parameters To Set As Favorite
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        Then Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And On-line Service Window Is Visible
		And Click On All Tree Item In Tree View
		And Click On The Favorite Group In Tree View
		#And Verify Selected Favorite Parameters In Favorite Table
		And UnCheck The CheckBox Of Randomly Selected Parameters In Favorite Table



    @common @KP_Common_ID_98.1
    Scenario: KP_Common_ID_98.1: Verification Of View More In On-line Service

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        When Get Connected Controller Information
        Then Click On View More Button And Verify View More Window Opened

    	Scenario: KP_Common_ID_99.1: Verification Of Selecting Parameter For Chart Window And Chart Window Validation.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	  	And Enable Random Serial Port Except AKCC, EKE, ERC21x
	  	And Click On OnLine Service Button In Home Window
	  	And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Click On All Tree Item In Tree View
		And Parse The Database And Get Integer Parameters Details Table
		When Check The CheckBox Of Selected Parameters From DataBase For Plotting
		And Click On Chart Button In Online Service Window
		Then Check Start Button Is Enabled In Chart Window
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image In Chart Window
		And Verify If The Save Checkbox In Chart Window Is Checked
		And Verify Default List Item Is Displayed In Log Period Combobox In Chart Window
		And Verify Default List Item Is Displayed In Log Interval Combobox In Chart Window
		And Click Start/Stop Button In Chart Window
		And Check All Labels Are Displayed In Chart Window
		And Verify Default List Item Is Displayed In Zoom Level Combobox In Chart Window
		And Verify Default List Item Is Displayed In Label Combobox In Chart Window
		And Click Start/Stop Button In Chart Window
		And Check Menu Icons Are Enabled In Chart Window
		And Verify If The Grid Checkbox In Chart Window Is Unchecked
		And Verify Headers List In Chart Window Datagrid
		And Check Line Graph Label Is Visible In Chart Window

    Scenario: KP_Common_ID_99.2: Verification For Selecting Parameter More Than Limit For Plotting.

  		Given KoolProg Had Opened
	    And Disable All Serial Ports
	  	And Enable Random Serial Port Except EET, ERC11x, ETC1Hx
	  	And Click On OnLine Service Button In Home Window
	  	And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
	  	And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Click On All Tree Item In Tree View
		And Parse The Database And Get Integer Parameters Details Table
		When Check The CheckBox Of Selected Parameters From DataBase For Plotting
		And Click On Chart Button In Online Service Window
		Then Verify Popup Window Is Visible In Online Service Window
		And Check Please Select Only 10 Parameters Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Click Ok Button In Popup Window On Project Window


    Scenario: KP_Common_ID_99.4: Verification Of Back Button In Chart Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	  	And Enable Random Serial Port Except AKCC, EKE, ERC21x
	  	And Click On OnLine Service Button In Home Window
	  	And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Click On All Tree Item In Tree View
		And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
		And Click On Chart Button In Online Service Window
		And Check Start Button Is Enabled In Chart Window
		And Click Start/Stop Button In Chart Window
		And Click Start/Stop Button In Chart Window
		When Click Back Button In Chart Window
		Then Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image


    	Scenario: KP_Common_ID_99.5: Verification Of Back Button Without Stopping Graph In Chart Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	  	And Enable Random Serial Port Except AKCC, EKE, ERC21x
	  	And Click On OnLine Service Button In Home Window
	  	And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Click On All Tree Item In Tree View
		And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
		And Click On Chart Button In Online Service Window
		And Click Start/Stop Button In Chart Window
		When Click Back Button In Chart Window
		Then Verify Popup Window Is Visible In Online Service Window
		And Check Unable to complete your request, Please stop the chart and try again Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Click Ok Button In Popup Window On Project Window

    Scenario: KP_Common_ID_99.6: Verification Of Clicking On X In Popup Window In Chart Window.

		Given KoolProg Had Opened
	    And Disable All Serial Ports
	  	And Enable Random Serial Port Except AKCC, EKE, ERC21x
	  	And Click On OnLine Service Button In Home Window
	  	And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Click On All Tree Item In Tree View
		And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
		And Click On Chart Button In Online Service Window
		And Click Start/Stop Button In Chart Window
		And Click Back Button In Chart Window
		And Verify Popup Window Is Visible In Online Service Window
		And Check Unable to complete your request, Please stop the chart and try again Text Is Displayed In PopUp Window
		And Check X Button Is Enabled In Popup Window
		When Click On X Button On Popup Window
		Then Chart Window Is Visible

    Scenario: KP_Common_ID_99.7: Verification Of Clicking On Ok In Popup Window In Chart Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	  	And Enable Random Serial Port Except AKCC, EKE, ERC21x
	  	And Click On OnLine Service Button In Home Window
	  	And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Click On All Tree Item In Tree View
		And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
		And Click On Chart Button In Online Service Window
		And Click Start/Stop Button In Chart Window
		And Click Back Button In Chart Window
		And Verify Popup Window Is Visible In Online Service Window
		And Check Unable to complete your request, Please stop the chart and try again Text Is Displayed In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Check X Button Is Enabled In Popup Window
		When Click Ok Button In Popup Window On Project Window
		Then Check Start Button Is Enabled In Chart Window
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image In Chart Window
		And Verify If The Save Checkbox In Chart Window Is Checked
		And Verify Default List Item Is Displayed In Log Period Combobox In Chart Window
		And Verify Default List Item Is Displayed In Log Interval Combobox In Chart Window
		And Check All Labels Are Displayed In Chart Window
		And Verify Default List Item Is Displayed In Zoom Level Combobox In Chart Window
		And Verify Default List Item Is Displayed In Label Combobox In Chart Window
		And Click Start/Stop Button In Chart Window
		And Check Menu Icons Are Enabled In Chart Window
		And Verify If The Grid Checkbox In Chart Window Is Unchecked
		And Verify Headers List In Chart Window Datagrid
		And Check Line Graph Label Is Visible In Chart Window

   Scenario: KP_Common_ID_99.9: Verification Of Opening Dialog With The Default Path Where The Graph Is Saved And Verifying Saved Chart File Format.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	  	And Enable Random Serial Port Except AKCC, EKE, ERC21x
	  	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
	  	And Click On OnLine Service Button In Home Window
	  	And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Click On All Tree Item In Tree View
		And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
		And Click On Chart Button In Online Service Window
		When Click Start/Stop Button In Chart Window
		And Click Start/Stop Button In Chart Window
		And Fetch The System Date And Time
		And Click Back Button In Chart Window
		And Add Required Delay For 'SWITCHING_FROM_CHART_WINDOW_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And Click On Open Button In Project Window
		And Get List Of Files From Open Dialog
		Then Verify The Dialog Opens With Working Directory
		And Verify Chart File Format

    Scenario: KP_Common_ID_99.10: Verification Of Saving The Graph In Chart Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	  	And Enable Random Serial Port Except AKCC, EKE, ERC21x
	  	And Click On OnLine Service Button In Home Window
	  	And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Click On All Tree Item In Tree View
		And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
		And Click On Chart Button In Online Service Window
		And Click Start/Stop Button In Chart Window
		And Click Start/Stop Button In Chart Window
		When Click SaveAs Button In Chart Window
		Then Check Default FileType In SaveAs Dialog In Chart Window
		And Verify The Filetypes Available In SaveAs Dialog In Chart Window
		And Write The File Name In SaveAs Dialog In Chart Window With Default Csv Extension
		And Click On Save Button In SaveAs Window
		And Check Saved Successfully Popup Is Displayed
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Click Ok Button In Saved Successfully Popup Window

    Scenario: KP_Common_ID_99.11: Verification of X Button In Saved Successfully Popup In Chart Window.


	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	  	And Enable Random Serial Port Except AKCC, EKE, ERC21x
	  	And Click On OnLine Service Button In Home Window
	  	And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Click On All Tree Item In Tree View
		And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
		And Click On Chart Button In Online Service Window
		And Click Start/Stop Button In Chart Window
		And Click Start/Stop Button In Chart Window
		And Click SaveAs Button In Chart Window
		And Check Default FileType In SaveAs Dialog In Chart Window
		And Verify The Filetypes Available In SaveAs Dialog In Chart Window
		And Write The File Name In SaveAs Dialog In Chart Window With Default Csv Extension
		And Click On Save Button In SaveAs Window
		And Check Saved Successfully Popup Is Displayed
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check X Button Is Enabled In Popup Window
		When Click On X Button On Popup Window
		Then Chart Window Is Visible

    	Scenario: KP_Common_ID_99.12: Verification of Ok Button In Saved Successfully Popup In Chart Window When File Is Saved In .csv Extension.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	  	And Enable Random Serial Port Except AKCC, EKE, ERC21x
	  	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
	  	And Click On OnLine Service Button In Home Window
	  	And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Click On All Tree Item In Tree View
		And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
		And Click On Chart Button In Online Service Window
		And Click Start/Stop Button In Chart Window
		And Click Start/Stop Button In Chart Window
		And Click SaveAs Button In Chart Window
		And Check Default FileType In SaveAs Dialog In Chart Window
		And Verify The Filetypes Available In SaveAs Dialog In Chart Window
		And Write The File Name In SaveAs Dialog In Chart Window With Default Csv Extension
		And Click On Save Button In SaveAs Window
		And Check Saved Successfully Popup Is Displayed
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check X Button Is Enabled In Popup Window
		When Click Ok Button In Saved Successfully Popup Window
		Then Check If Saved Chart File Is Located In Default Location

    Scenario: KP_Common_ID_99.13: Verification of Ok Button In Saved Successfully Popup In Chart Window When File Is Saved In .png Extension.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	  	And Enable Random Serial Port Except AKCC, EKE, ERC21x
	  	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
	  	And Click On OnLine Service Button In Home Window
	  	And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Click On All Tree Item In Tree View
		And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
		And Click On Chart Button In Online Service Window
		And Click Start/Stop Button In Chart Window
		And Click Start/Stop Button In Chart Window
		And Click SaveAs Button In Chart Window
		And Check Default FileType In SaveAs Dialog In Chart Window
		And Verify The Filetypes Available In SaveAs Dialog In Chart Window
		When Write The File Name In SaveAs Dialog In Chart Window With Png Extension
		And Click On Save Button In SaveAs Window
		And Check Saved Successfully Popup Is Displayed
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Click Ok Button In Saved Successfully Popup Window
		Then Check If Saved Chart File Is Located In Default Location

    Scenario: KP_Common_ID_99.14: Verification Of Grid In Graph View In Chart Window.

	    Given KoolProg Had Opened
	   	And Disable All Serial Ports
	  	And Enable Random Serial Port Except AKCC, EKE, ERC21x
	  	And Click On OnLine Service Button In Home Window
	  	And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Click On All Tree Item In Tree View
		And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
		And Click On Chart Button In Online Service Window
		And Click Start/Stop Button In Chart Window
		When Check The Grid CheckBox In Chart Window
		Then Check Grid Is Visible In Graph In Chart Window



    Scenario: KP_Common_ID_99.21: Verification Of Log Interval ComboBox List In Chart Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	  	And Enable Random Serial Port Except AKCC, EKE, ERC21x
	  	And Click On OnLine Service Button In Home Window
	  	And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Click On All Tree Item In Tree View
		And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
		When Click On Chart Button In Online Service Window
		Then Verify Log Interval List Items In Chart Window

    Scenario: KP_Common_ID_99.23: Verification Of Selecting List Item And Verifying The List Item In Log Period Option In Chart Window Should Display.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	  	And Enable Random Serial Port Except AKCC, EKE, ERC21x
	  	And Click On OnLine Service Button In Home Window
	  	And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Click On All Tree Item In Tree View
		And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
		And Click On Chart Button In Online Service Window
		When Select A List Item In Log Period ComboBox In Chart Window
		Then Verify If The Selected List Item Is Displayed In Log Period ComboBox In Chart Window

    Scenario: KP_Common_ID_99.24: Verification Of Log Period ComboBox List In Chart Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	  	And Enable Random Serial Port Except AKCC, EKE, ERC21x
	  	And Click On OnLine Service Button In Home Window
	  	And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Click On All Tree Item In Tree View
		And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
		When Click On Chart Button In Online Service Window
		Then Verify Log Period List Items In Chart Window



	Scenario: KP_Common_ID_99.25: Verification Of Label ComboBox List In Chart Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	  	And Enable Random Serial Port Except AKCC, EKE, ERC21x
	  	And Click On OnLine Service Button In Home Window
	  	And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Click On All Tree Item In Tree View
		And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
		And Click On Chart Button In Online Service Window
		When Click Start/Stop Button In Chart Window
		Then Verify Label List Items In Chart Window

	Scenario: KP_Common_ID_99.29: Verification Of Zoom Level ComboBox List In Chart Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	  	And Enable Random Serial Port Except AKCC, EKE, ERC21x
	  	And Click On OnLine Service Button In Home Window
	  	And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Click On All Tree Item In Tree View
		And Parse The Database And Get Integer Parameters Details Table
		And Check The CheckBox Of Selected Parameters From DataBase For Plotting
		And Click On Chart Button In Online Service Window
		When Click Start/Stop Button In Chart Window
		Then Verify Zoom Level List Items In Chart Window

    Scenario: KP_Common_ID_99.35: Verification Of Selecting List Item And Verifying The List Item In Log Interval Option In Chart Window Should Display.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port Except AKCC, EKE, ERC21x
        And Click On OnLine Service Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
        And Check The Connected Controller Variant Name
        And Check The Connected Controller Image
        And Click On All Tree Item In Tree View
        And Parse The Database And Get Integer Parameters Details Table
        And Check The CheckBox Of Selected Parameters From DataBase For Plotting
        And Click On Chart Button In Online Service Window
        When Select A List Item In Log Interval ComboBox In Chart Window
        Then Verify If The Selected List Item Is Displayed In Log Interval ComboBox In Chart Window

     Scenario: KP_Common_ID_99.36: Verification Of Selecting List Item And Verifying The List Item In Label Option In Chart Window Should Display.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port Except AKCC, EKE, ERC21x
        And Click On OnLine Service Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
        And Check The Connected Controller Variant Name
        And Check The Connected Controller Image
        And Click On All Tree Item In Tree View
        And Parse The Database And Get Integer Parameters Details Table
        And Check The CheckBox Of Selected Parameters From DataBase For Plotting
        And Click On Chart Button In Online Service Window
        And Click Start/Stop Button In Chart Window
        When Select A List Item In Label ComboBox In Chart Window
        Then Verify If The Selected List Item Is Displayed In Label ComboBox In Chart Window

     Scenario: KP_Common_ID_99.37: Verification Of Selecting List Item And Verifying The List Item In Zoom Label Option In Chart Window Should Display.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port Except AKCC, EKE, ERC21x
        And Click On OnLine Service Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
        And Check The Connected Controller Variant Name
        And Check The Connected Controller Image
        And Click On All Tree Item In Tree View
        And Parse The Database And Get Integer Parameters Details Table
        And Check The CheckBox Of Selected Parameters From DataBase For Plotting
        And Click On Chart Button In Online Service Window
        And Click Start/Stop Button In Chart Window
        When Select A List Item In Zoom Label ComboBox In Chart Window
        Then Verify If The Selected List Item Is Displayed In Zoom Label ComboBox In Chart Window

    @common @KP_Common_ID_99.38
    Scenario: KP_Common_ID_99.38: Verification of 'Please Select the Parameters to Plot' Popup From On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
        And Check The Connected Controller Variant Name
        And Check The Connected Controller Image
        When Click On Chart Button In Online Service Window
        Then Verify Popup Message Should Come As 'Please Select the Parameters to Plot' In On-line Service Window
        And Verify Header Of Popup Window In On-line Service Window
        And Verify OK and X button In Popup Window In On-line Service Window

    @common @KP_Common_ID_99.39
    Scenario: KP_Common_ID_99.39: Verification Of Clicking On X Button On 'Please Select the Parameters to Plot', Popup From On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
        And Check The Connected Controller Variant Name
        And Check The Connected Controller Image
        And Click On Chart Button In Online Service Window
        And Verify Popup Message Should Come As 'Please Select the Parameters to Plot' In On-line Service Window
        And Verify Header Of Popup Window In On-line Service Window
        And Verify OK and X button In Popup Window In On-line Service Window
        When Click On X Button On Popup Window
        Then On-line Service Window Is Visible
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
        And Check The Connected Controller Variant Name
        And Check The Connected Controller Image
        And Get Connected Controller Information
        And Controller Should Not Go To Fadeout State
        And Verify Chart Button Is Enabled


    @common @KP_Common_ID_99.40
    Scenario: KP_Common_ID_99.40: Verification Of Clicking On Ok Button On 'Please Select the Parameters to Plot', Popup From On-line Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
        And Check The Connected Controller Variant Name
        And Check The Connected Controller Image
        And Click On Chart Button In Online Service Window
        And Verify Popup Message Should Come As 'Please Select the Parameters to Plot' In On-line Service Window
        And Verify Header Of Popup Window In On-line Service Window
        And Verify OK and X button In Popup Window In On-line Service Window
        When Click OK Button In Popup Window
        Then On-line Service Window Is Visible
        And Verify Menu Icons And Grid Icons In Online Service Window Is Enabled
        And Check The Connected Controller Variant Name
        And Check The Connected Controller Image
        And Get Connected Controller Information
        And Controller Should Not Go To Fadeout State
        And Verify Chart Button Is Enabled
