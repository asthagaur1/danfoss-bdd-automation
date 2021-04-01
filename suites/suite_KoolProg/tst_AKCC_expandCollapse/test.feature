# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC Expand/Collapse

    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports


    ############################################ OFFLINE ############################################

    @KP_AKCC_ID_23.1
    Scenario: KP_AKCC_ID_23.1: Verify Expand and Collapse Button Functionality After Importing Offline CDF File In Project Window

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get Offline CDF File
        When Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And The Project Window Is Visible
        Then Check If Project Details Expand And Collapse Button Is Visible and Enabled
        And Check If Project Details Is Expanded
        And Verify Project Details Collapses When Collapse Is Clicked
        And Check If Help Expander Button Is Visible And Enabled
        And Verify If Help Expander Is Expanded
        And Verify Window Help Expander Collapses When Clicked Collapse Button


	@KP_AKCC_ID_23.4
    Scenario: KP_AKCC_ID_23.4: Verify Expand and Collapse Button Functionality After Importing Offline CDF File In Open Window From Set Parameter Window

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get Offline CDF File
        When Import Offline CDF File
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
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Check If Project Details Expand And Collapse Button Is Visible and Enabled
        And Check If Project Details Is Expanded
        And Verify Project Details Collapses When Collapse Is Clicked
        And Check If Help Expander Button Is Visible And Enabled
        And Verify If Help Expander Is Expanded
        And Verify Window Help Expander Collapses When Clicked Collapse Button

	@KP_AKCC_ID_23.6
    Scenario: KP_AKCC_ID_23.6: Verify Expand and Collapse Button Functionality After Importing Offline CDF File In In Recent Window

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get Offline CDF File
        When Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Check If Project Details Expand And Collapse Button Is Visible and Enabled
        And Check If Project Details Is Expanded
        And Verify Project Details Collapses When Collapse Is Clicked
        And Check If Help Expander Button Is Visible And Enabled
        And Verify If Help Expander Is Expanded
        And Verify Window Help Expander Collapses When Clicked Collapse Button

    ############################################ OFFLINE ############################################


    ############################################ ONLINE ############################################

	@KP_AKCC_ID_23.2
     Scenario: KP_AKCC_ID_23.2: Verify Project Details, Help And Connected Controller Details Will Expand And Collapse After Clicking on Expand And Collapse Button In Project Window

		Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Check If Project Details Expand And Collapse Button Is Visible and Enabled
        When Check If Project Details Is Expanded
		Then Verify Controller Details Are Visible When Project Details Is Expanded
        And Verify Project Details Collapses When Collapse Is Clicked
        And Verify Controller Details Are Not Visible When Project Details Is Collapsed
        And Check If Help Expander Button Is Visible And Enabled
        And Verify If Help Expander Is Expanded
        And Verify Window Help Expander Collapses When Clicked Collapse Button

     @KP_AKCC_ID_23.3
	 Scenario: KP_AKCC_ID_23.3: Verify Project Details, Help And Connected Controller Details Will Expand And Collapse After Clicking on Expand And Collapse Button In Import Settings From Controller

	   	Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Check If Project Details Expand And Collapse Button Is Visible and Enabled
        When Check If Project Details Is Expanded
		Then Verify Controller Details Are Visible When Project Details Is Expanded
        And Verify Project Details Collapses When Collapse Is Clicked
        And Verify Controller Details Are Not Visible When Project Details Is Collapsed
        And Check If Help Expander Button Is Visible And Enabled
        And Verify If Help Expander Is Expanded
        And Verify Window Help Expander Collapses When Clicked Collapse Button

     @KP_AKCC_ID_23.5
     Scenario: KP_AKCC_ID_23.5: Verify Project Details, Help And Connected Controller Details Will Expand And Collapse After Clicking on Expand And Collapse Button In Open Window

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
        And Verify Open Window
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
        And The Project Window Is Visible
        And Check If Project Details Expand And Collapse Button Is Visible and Enabled
        When Check If Project Details Is Expanded
		Then Verify Controller Details Are Visible When Project Details Is Expanded
        And Verify Project Details Collapses When Collapse Is Clicked
        And Verify Controller Details Are Not Visible When Project Details Is Collapsed
        And Check If Help Expander Button Is Visible And Enabled
        And Verify If Help Expander Is Expanded
        And Verify Window Help Expander Collapses When Clicked Collapse Button

     @KP_AKCC_ID_23.7
     Scenario: KP_AKCC_ID_23.7: Verify Project Details, Help And Connected Controller Details Will Expand And Collapse After Clicking on Expand And Collapse Button In Recent Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
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
        And Check If Project Details Expand And Collapse Button Is Visible and Enabled
        When Check If Project Details Is Expanded
		Then Verify Controller Details Are Visible When Project Details Is Expanded
        And Verify Project Details Collapses When Collapse Is Clicked
        And Verify Controller Details Are Not Visible When Project Details Is Collapsed
        And Check If Help Expander Button Is Visible And Enabled
        And Verify If Help Expander Is Expanded
        And Verify Window Help Expander Collapses When Clicked Collapse Button

	 @KP_AKCC_ID_23.8
	 Scenario: KP_AKCC_ID_23.8: Verify Project Details, Help And Connected Controller Details Will Expand And Collapse After Clicking on Expand And Collapse Button In Online Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Check If Project Details Expand And Collapse Button Is Visible and Enabled
        When Check If Project Details Description Is Expanded In Online Service
		Then Verify Controller Details Are Visible When Project Details Is Expanded
        And Verify Project Details Collapses When Collapse Is Clicked
        And Verify Controller Details Are Not Visible When Project Details Is Collapsed
        And Check If Help Expander Button Is Visible And Enabled
        And Verify If Help Expander Is Expanded
        And Verify Window Help Expander Collapses When Clicked Collapse Button


    ############################################ ONLINE ############################################
