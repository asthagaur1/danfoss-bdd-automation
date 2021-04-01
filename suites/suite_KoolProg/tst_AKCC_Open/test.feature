# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC Open


    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

    ##################################### ONLINE ##############################################



    @KP_AKCC_ID_19.2
     Scenario: KP_AKCC_ID_19.2: Verification Of Connected Controller Details After Opening File From Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'ONLINE' mode
        And Click On Open Button In Project Window
        When Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window
        Then Verify Opened Project File Is Compatible To Connected Controller

     @KP_AKCC_ID_19.3
     Scenario: KP_AKCC_ID_19.3: Verification Of Connected Controller Details After Opening File From Import Setting From Controller Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
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
        And Verify Project Details Will Be Available In Import Setting From Controller Window
        Then Verify Opened Project File Is Compatible To Connected Controller

     @KP_AKCC_ID_19.4
     Scenario: KP_AKCC_ID_19.4: Verification Of Connected Controller Details After Opening File From Open Window.

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
        And Get Connected Controller Information
        And Save The Project In Temp Location Using File Copy
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        When Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        And Verify Project Details Will Be Available In Project Window
        And Get Connected Controller Information
        Then Verify Opened Project File Is Compatible To Connected Controller

     @KP_AKCC_ID_19.5
     Scenario: KP_AKCC_ID_19.5: Verification Of Connected Controller Details After Opening File From Recent Project Window.

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
        And Get Connected Controller Information
        And Save The Project In Temp Location Using File Copy
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        When Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        And Verify Project Details Will Be Available In Project Window
        And Get Connected Controller Information
        Then Verify Opened Project File Is Compatible To Connected Controller

     @KP_AKCC_ID_19.6
     Scenario: KP_AKCC_ID_19.6: Verification Of Connected Controller Details After Opening File From Copy To Controller Window.

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
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'ONLINE' mode
        And Go To Home Window From Project Window
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        When Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify The Browsed Project File Details In Copy To Controller
        Then Verify Opened Project File Is Compatible To Connected Controller

     @KP_AKCC_ID_19.7
     Scenario: KP_AKCC_ID_19.7: Verification Of Non Compatible Message After Opening Non Compatible File From Copy To Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Go To Set Parameter Window
        And Click On New Button From Set Parameter Window
        And Create Project Not Compatible To Connected Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        When Open The Created File In Project Window
        Then Verify Non Compliant Controller Details





    ##################################### ONLINE ###############################################