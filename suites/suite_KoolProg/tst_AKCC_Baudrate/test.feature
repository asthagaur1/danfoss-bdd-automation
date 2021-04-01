# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC Baudrate

    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports


   @KP_AKCC_ID_3.2
     Scenario: KP_AKCC_ID_3.2: Verify Controller Connects With KoolProg When Baudrate Set To Auto In Preference Window From Create Project Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Project Details Is Matching
        Then Verify Connected Controller And Selected Controller Information Is Matching



     @KP_AKCC_ID_3.3
     Scenario: KP_AKCC_ID_3.3: Verify Controller Connects With KoolProg When Baudrate Set To '250K' In Preference Window From Create Project Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select '250K' Can Baudrate From Can Baudrate Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Project Details Is Matching
        Then Verify Connected Controller And Selected Controller Information Is Matching


    @common @handlingBaudrate
    Scenario: Handling Baudrate

   		Given KoolProg Had Opened
   		When Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Click On Save Button In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window

     @KP_AKCC_ID_3.5
     Scenario: KP_AKCC_ID_3.5:  Verify Controller Does Not Connects With KoolProg When Baudrate Set Other than Auto or 250K In Preference Window From Create Project Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select Random CAN Baudrate From CAN Baudrate Combobox Other Than Auto Or 250K
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Verify Connected Controller Information Is Not Available

    @common @handlingBaudrate
    Scenario: Handling Baudrate

   		Given KoolProg Had Opened
   		When Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Click On Save Button In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window


     @KP_AKCC_ID_3.7
     Scenario: KP_AKCC_ID_3.7: Verify Controller Connects With KoolProg When Baudrate Set To Auto In Preference Window In Import Settings From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Project Details Is Matching
        Then Verify Connected Controller And Selected Controller Information Is Matching

     @KP_AKCC_ID_3.8
     Scenario: KP_AKCC_ID_3.8: Verify Controller Connects With KoolProg When Baudrate Set To '250K'  In Preference Window In Import Settings From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select '250K' Can Baudrate From Can Baudrate Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Project Details Is Matching
        Then Verify Connected Controller And Selected Controller Information Is Matching


     @common @handlingBaudrate
    Scenario: Handling Baudrate

   		Given KoolProg Had Opened
   		When Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Click On Save Button In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window

     @KP_AKCC_ID_3.10
     Scenario: KP_AKCC_ID_3.10:  Verify Controller Does Not Connects With KoolProg When Baudrate Set Other than Auto or 250K In Preference Window In Import Settings From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select Random CAN Baudrate From CAN Baudrate Combobox Other Than Auto Or 250K
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Verify Connected Controller Information Is Not Available


     @common @handlingBaudrate
    Scenario: Handling Baudrate

   		Given KoolProg Had Opened
   		When Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Click On Save Button In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window

     @KP_AKCC_ID_3.12
     Scenario: KP_AKCC_ID_3.12: Verify Controller Connects With KoolProg When Baudrate Set To Auto  In Preference Window From  Open Project Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
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
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Project Details Is Matching
        Then Verify Connected Controller And Selected Controller Information Is Matching

     @KP_AKCC_ID_3.13
     Scenario: KP_AKCC_ID_3.13: Verify Controller Connects With KoolProg When Baudrate Set To '250K'  In Preference Window From  Open Project Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
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
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Project Details Is Matching
        Then Verify Connected Controller And Selected Controller Information Is Matching

     @KP_AKCC_ID_3.15
     Scenario: KP_AKCC_ID_3.15:  Verify Controller Does Not Connects With KoolProg When Baudrate Set Other than Auto or 250K In Preference Window From Open Project Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select Random CAN Baudrate From CAN Baudrate Combobox Other Than Auto Or 250K
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
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
        Then Verify Connected Controller Information Is Not Available


     @common @handlingBaudrate
    Scenario: Handling Baudrate

   		Given KoolProg Had Opened
   		When Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Click On Save Button In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window

     @KP_AKCC_ID_3.17
     Scenario: KP_AKCC_ID_3.17: Verify Controller Connects With KoolProg When Baudrate Set To Auto  In Preference Window From Recent Project Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Project Details Is Matching
        Then Verify Connected Controller And Selected Controller Information Is Matching

     @KP_AKCC_ID_3.18
     Scenario: KP_AKCC_ID_3.18: Verify Controller Connects With KoolProg When Baudrate Set To '250K'  In Preference Window From  Recent Project Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select '250K' Can Baudrate From Can Baudrate Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And Project Details Is Matching
        Then Verify Connected Controller And Selected Controller Information Is Matching

     @common @handlingBaudrate
    Scenario: Handling Baudrate

   		Given KoolProg Had Opened
   		When Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Click On Save Button In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window

     @KP_AKCC_ID_3.20
     Scenario: KP_AKCC_ID_3.20:  Verify Controller Does Not Connects With KoolProg When Baudrate Set Other than Auto or 250K In Preference Window From Recent Project Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select Random CAN Baudrate From CAN Baudrate Combobox Other Than Auto Or 250K
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Verify Connected Controller Information Is Not Available


     @common @handlingBaudrate
    Scenario: Handling Baudrate

   		Given KoolProg Had Opened
   		When Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Click On Save Button In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window

     @KP_AKCC_ID_3.22
     Scenario: KP_AKCC_ID_3.22: Verify Controller Connects With KoolProg When Baudrate Set To Auto  In Preference Window From  Copy To Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        When Open The Created File In Project Window
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And CopyToController Details Is Matching
        Then Verify Connected Controller And Selected Controller Information Is Matching

     @KP_AKCC_ID_3.23
     Scenario: KP_AKCC_ID_3.23: Verify Controller Connects With KoolProg When Baudrate Set To '250K'  In Preference Window From  Copy To Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select '250K' Can Baudrate From Can Baudrate Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        When Open The Created File In Project Window
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Verify Connected Controller And CopyToController Details Is Matching
        Then Verify Connected Controller And Selected Controller Information Is Matching

    @common @handlingBaudrate
    Scenario: Handling Baudrate

   		Given KoolProg Had Opened
   		When Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Click On Save Button In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window

    @KP_AKCC_ID_3.25
    Scenario: KP_AKCC_ID_3.25:  Verify Controller Does Not Connects With KoolProg When Baudrate Set Other than Auto or 250K In Preference Window From Copy To Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select Random CAN Baudrate From CAN Baudrate Combobox Other Than Auto Or 250K
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        Then Verify Connected Controller Information Is Not Available

     @common @handlingBaudrate
    Scenario: Handling Baudrate

   		Given KoolProg Had Opened
   		When Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Click On Save Button In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window

     @KP_AKCC_ID_3.27
     Scenario: KP_AKCC_ID_3.27: Verify Controller Connects With KoolProg When Baudrate Set To Auto  In Preference Window From  Online Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        Then Verify Connected Controller And Selected Controller Information Is Matching

     @KP_AKCC_ID_3.28
     Scenario: KP_AKCC_ID_3.28: Verify Controller Connects With KoolProg When Baudrate Set To '250K'  In Preference Window From  Online Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select '250K' Can Baudrate From Can Baudrate Combobox
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get Connected Controller Information
        Then Verify Connected Controller And Selected Controller Information Is Matching


    @common @handlingBaudrate
    Scenario: Handling Baudrate

   		Given KoolProg Had Opened
   		When Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Click On Save Button In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window

    @KP_AKCC_ID_3.30
    Scenario: KP_AKCC_ID_3.30:  Verify Controller Does Not Connects With KoolProg When Baudrate Set Other than Auto or 250K In Preference Window From Online Service Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Select Random CAN Baudrate From CAN Baudrate Combobox Other Than Auto Or 250K
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        Then Verify Connected Controller Information Is Not Available


     @common @handlingBaudrate
    Scenario: Handling Baudrate

   		Given KoolProg Had Opened
   		When Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        Then Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Click On Save Button In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window
