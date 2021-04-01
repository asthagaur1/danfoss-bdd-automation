# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC MYKEY


    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports


    @KP_AKCC_ID_48.1
     Scenario: KP_AKCC_ID_48.1: Check If Controller Connected To KoolProg Through MYKEY In Create Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        When Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Selected Controller Information Is Matching
        And Verify Connected Controller And Project Details Is Matching

    @KP_AKCC_ID_48.2
    Scenario: KP_AKCC_ID_48.2: Check If Controller Disconnect To KoolProg After Disconnecting From MYKEY In Create Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        When Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Check Export Button Is Disabled
        And Verify Connected Controller Information Is Not Available

    @KP_AKCC_ID_48.3
    Scenario: KP_AKCC_ID_48.3: Verify Controller Connects With KoolProg After Disconnecting to KoolProg From Create Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Check Export Button Is Disabled
        And Verify Connected Controller Information Is Not Available
        When Enable The Port Again
        And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
        Then Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Selected Controller Information Is Matching
        And Verify Connected Controller And Project Details Is Matching

     @KP_AKCC_ID_48.8
     Scenario: KP_AKCC_ID_48.8: Check If Controller Connected To KoolProg Through MYKEY In Import Settings From Controller Window.

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
        Then Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Selected Controller Information Is Matching
        And Verify Connected Controller And Project Details Is Matching

    @KP_AKCC_ID_48.9
    Scenario: KP_AKCC_ID_48.9: Check If Controller Disconnect To KoolProg After Disconnecting From MYKEY In Import Settings From Controller Window.

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
        When Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Check Export Button Is Disabled
        And Verify Connected Controller Information Is Not Available

    @KP_AKCC_ID_48.10
    Scenario: KP_AKCC_ID_48.10: Verify Controller Connects With KoolProg After Disconnecting to KoolProg In Import Settings From Controller Window.

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
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Check Export Button Is Disabled
        And Verify Connected Controller Information Is Not Available
        When Enable The Port Again
        And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
        Then Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Selected Controller Information Is Matching
        And Verify Connected Controller And Project Details Is Matching

     @KP_AKCC_ID_48.15
     Scenario: KP_AKCC_ID_48.15: Check If Controller Connected To KoolProg Through MYKEY In Open Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        When Enable The Port For Created Project
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
        Then Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Selected Controller Information Is Matching
        And Verify Connected Controller And Project Details Is Matching

    @KP_AKCC_ID_48.16
    Scenario: KP_AKCC_ID_48.16: Check If Controller Disconnect To KoolProg After Disconnecting From MYKEY In Open Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
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
        When Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Check Export Button Is Disabled
        And Verify Connected Controller Information Is Not Available

    @KP_AKCC_ID_48.17
    Scenario: KP_AKCC_ID_48.17: Verify Controller Connects With KoolProg After Disconnecting to KoolProg From Open Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Check Export Button Is Disabled
        And Verify Connected Controller Information Is Not Available
        When Enable The Port Again
        And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
        Then Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Selected Controller Information Is Matching
        And Verify Connected Controller And Project Details Is Matching


     @KP_AKCC_ID_48.22
     Scenario: KP_AKCC_ID_48.22: Check If Controller Connected To KoolProg Through MYKEY In Recent Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        When Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Selected Controller Information Is Matching
        And Verify Connected Controller And Project Details Is Matching

    @KP_AKCC_ID_48.23
    Scenario: KP_AKCC_ID_48.23: Check If Controller Disconnect To KoolProg After Disconnecting From MYKEY In Recent Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        When Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Check Export Button Is Disabled
        And Verify Connected Controller Information Is Not Available

    @KP_AKCC_ID_48.24
    Scenario: KP_AKCC_ID_48.24: Verify Controller Connects With KoolProg After Disconnecting to KoolProg From Recent Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Check Export Button Is Disabled
        And Verify Connected Controller Information Is Not Available
        When Enable The Port Again
        And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
        Then Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Selected Controller Information Is Matching
        And Verify Connected Controller And Project Details Is Matching

     @KP_AKCC_ID_48.29
     Scenario: KP_AKCC_ID_48.29: Check If Controller Connected To KoolProg Through MYKEY In Copy To Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When Enable The Port For Created Project
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        Then Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Selected Controller Information Is Matching


     @KP_AKCC_ID_48.30
     Scenario: KP_AKCC_ID_48.30: Check If Controller Disconnect To KoolProg After Disconnecting From MYKEY In Copy To Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        When Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Please Connect A Controller Label Is Visible In Copy To Controller Window
        And Verify Please Connect A Controller Label Text Is Displayed In Copy To Controller Window

    @KP_AKCC_ID_48.31
    Scenario: KP_AKCC_ID_48.31: Verify Controller Connects With KoolProg After Disconnecting to KoolProg From Copy To Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Please Connect A Controller Label Is Visible In Copy To Controller Window
        And Verify Please Connect A Controller Label Text Is Displayed In Copy To Controller Window
        When Enable The Port Again
        And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
        Then Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Selected Controller Information Is Matching


     @KP_AKCC_ID_48.36
     Scenario: KP_AKCC_ID_48.36: Check If Controller Connected To KoolProg Through MYKEY In Online Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        Then Verify Menu Icons In Online Service Window Is Enabled
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Selected Controller Information Is Matching

    @KP_AKCC_ID_48.37
    Scenario: KP_AKCC_ID_48.37: Check If Controller Disconnect To KoolProg After Disconnecting From MYKEY In Online Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        When Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Please Connect A Controller Label Is Visible
        And Verify Please Connect A Controller Label Text Is Displayed

    @KP_AKCC_ID_48.38
    Scenario: KP_AKCC_ID_48.38: Verify Controller Connects With KoolProg After Disconnecting to KoolProg From Online Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Please Connect A Controller Label Is Visible
        And Verify Please Connect A Controller Label Text Is Displayed
        When Enable The Port Again
        And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
        Then Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Selected Controller Information Is Matching