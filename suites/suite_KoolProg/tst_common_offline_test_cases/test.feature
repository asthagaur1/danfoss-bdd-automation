# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin

Feature: Check common test cases offline.

    @common @requiredOfflineTestCase
    Scenario: Required Offline Test Case

        Given KoolProg Had Opened
        And Disable All Serial Ports

    @common
    Scenario: KP_Common_ID_1.1: Verification of Set Parameter Window And Validate All The Button And Label Texts

        Given KoolProg Had Opened
        And Click On SetParameter Button And SetParameter Window Is Visible
        Then Verify Text Of All the Buttons, Headings, Lables In Set Parameter Window

    @common
    Scenario: KP_Common_ID_1.2: Verification Of Tooltips On Set Parameter Window

        Given KoolProg Had Opened
        And Go To Set Parameter Window
        When KoolProg Set Parameter Window Is Visible
        Then Verify, Toolip Of New Button
        And Verify, Toolip Of Close Button
        And Verify, Toolip Of Open Button
        And Verify, Toolip Of Import Controller Model Button
        And Verify, Toolip Of Import Setting From Controller Button

    @common
    Scenario: KP_Common_ID_1.3: When the set parameter window is open, the user should not able to access main window elements like buttons

        Given KoolProg Had Opened
        And Go To Set Parameter Window
        When KoolProg Set Parameter Window Is Visible
        And Click On The Setting Icon Button In The Main Window
        Then Check Preference Window Is Not Visible
        And KoolProg Set Parameter Window Is Visible

    @common @KP_Common_ID_1.4
    Scenario: KP_Common_ID_1.4: Verification of recent projects tooltip in set parameter window
    1- Tooltip for recent project should be project file path where we have saved project file.
    2- Save file as in preference window and toolip for last opened project should be same.
    steps will be like u need to create project and get the path adn file name with extension then with
    library u ll get the file tooltip list with that u need to compare.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Verify Home Window Should Come
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Home Window Should Come
        And Go To Set Parameter Window
        And Get Recent File List From Set Parameter Window
        Then Check The Recent File ToolTip In Set Parameter Window

    @common @KP_Common_ID_2.1
    Scenario: KP_Common_ID_2.1: Verification of X (Close) button on Set parameter window

        Given KoolProg Had Opened
        And Go To Set Parameter Window
        And KoolProg Set Parameter Window Is Visible
        When Click Close Button In Setparameter Window
        Then Verify Home Window Should Come

    @common @KP_Common_ID_2.2
    Scenario: KP_Common_ID_2.2- Verify home Window should come after clicking on X (Close) button on New Project controller selection window

        Given KoolProg Had Opened
        And KoolProg New Project Window Is Open
        When Click Close Button In New Project Window
        Then Verify Home Window Should Come

    @common @KP_Common_ID_2.3
    Scenario: KP_Common_ID_2.3-Verify home window should come after clicking on X (Close) button in new Project Controller details selection window.

        Given KoolProg Had Opened
        And KoolProg New Project Window Is Open
        And Select A Random Controller
        And Go To Controller Details Selection Window
        When Click Close Button In New Project Window
        Then Verify Home Window Should Come

    @common @KP_Common_ID_3.1
    Scenario: KP_Common_ID_3.1: Verification of Open Window From Project Window

        Given KoolProg Had Opened
		And New Project Is Created For Random Controller Except AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        Then Verify Open Window


    @common @KP_Common_ID_3.2
    Scenario: KP_Common_ID_3.2: Verification Of Project Details After Selecting Project File Project Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Goto Temporary Directory In Open Dialog Window
        When Select Saved Project From Temp Directory Path
        Then Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window

    @common @KP_Common_ID_3.3
    Scenario: KP_Common_ID_3.3: Verification of project details after writing the project file name in open popup's edit box in Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        Then Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window

    @common
    Scenario: KP_Common_ID_3.4: Verification of previous project details after clicking on cancel button on open window

        Given KoolProg Had Opened
        When New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Open Window Is Visible
        And Click On The Open Window Cancel Button
        Then The Project Window Is Visible
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window

    Scenario: KP_Common_ID_3.5: Verification to Open Unavailable File In Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Open Window Is Visible
        When Enter A Unavailable Filename
        Then Click Open Button in Open Window
        And Verify Popup Message For Unavailable File Displays
        And Click Ok Button In Open Popup Window
        And Click Cancel Button In Open File Dialog
        And The Project Window Is Visible

    @common
    Scenario: KP_Common_ID_3.6: The Project Already Open Popup Should Come While Opening The Current Project Itself In The Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Open Window Is Visible
        When Open The Created File In Project Window
        Then Verify Popup Message Should Come As 'Project already open' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible

    Scenario: KP_Common_ID_3.7: Verification Of Renaming File Name (With Special Char - &  ;  ,  ' ) From Outside The KoolProg

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        When New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Open Window Is Visible
        And Get Filepath From Open Window And Rename The Existing File With New Invalid File Name
        And Verify Popup Message Should Come As '& * | ; : < > / " ? , '  Characters Not Supported!' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        Then The Project Window Is Visible
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window

    @common @KP_Common_ID_3.8
    Scenario: KP_Common_ID_3.8: Verification Of Changing  Values To Invalid Values (String Instead Of Number) In Project File From Outside The KoolProg In Project Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except EKE, AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Get Integer Parameters From Database With Invalid Values
        When Modify Parameter Values In Duplicate Project File
        And Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        Then Verify Popup Message Should Come As 'File is not valid.' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Project Details Will Be Available In Project Window

    Scenario: KP_Common_ID_3.9: The Browsed Path Should Not Come In The Open Window If Project Not Opened In Project Window.


        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Open The Created File In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Save the project in Temp Location Using Save As Option
        And Click On Open Button In Project Window
        And Browse The File That Is Saved In Temporary Location
        And Click Cancel Button In Open File Dialog
        When Click On Open Button In Project Window
        Then Verify Open Window Should Not Open With Temp Path

    Scenario: KP_Common_ID_3.10: Verification Of Changing Values With Valid Values In File From Outside KoolProg

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Only EKE
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Get Integer Parameters From Database With Random Value
        When Modify Parameter Values In Duplicate Project File
        And Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        Then Verify Popup Message Should Come As 'File Modified outside the KoolProg or might be old file.' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window

     @common @KP_Common_ID_3.11
      Scenario: KP_Common_ID_3.11: The Project Window Is Visible After Clicking On Cancel Button In Open Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Open Button In Project Window
        And Open Window Is Visible
        Then Click On The Open Window Cancel Button
        And The Project Window Is Visible

    Scenario: KP_Common_ID_3.12: Verify Project Can Be Opened From Any Location Instead Of Default Location In Project Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Verify Project Details Will Be Available In Project Window
        When Click On Open Button In Project Window
        Then Verify Open Window Should Open With Temp Path

    @common
    Scenario: KP_Common_ID_3.13: Verification Of Renaming File Name With Valid File Name (Without Any Special Char) From Outside The KoolProg

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        When Open Window Is Visible
        And Get last saved filepath and valid filename and open the newly copied file
        Then The Project Window Is Visible

    @common @KP_Common_ID_3.14
    Scenario: KP_Common_ID_3.14: Verify "Do you want to save the Changes made?" Popup Window After Clicking On Open Window As Parameter Value Got Changed

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        When Click On Open Button In Project Window
        Then Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify Yes, No And Cancel Button Are Visible
        And Verify Yes, No And Cancel Button Are Enable
        And Verify Text Of Yes, No And Cancel Button

    @common @KP_Common_ID_3.15
    Scenario: KP_Common_ID_3.15: Verification Of Parameter Values In File After Clicking On Yes In "Do you want to save the Changes made?" Dialogue Box

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Click On Open Button In Project Window
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        When Click On Yes Button On PopUp Window
        And Verify Open Window
        And Goto Temporary Directory In Open Dialog Window
        And Select Saved Project From Temp Directory Path
        And Verify Open Window Should Not Visible
        And Click On Open Button In Project Window
        And Open The Created File In Project Window
        Then Changed Value Should Show In DataGrid Without Pink TextBox And Grey Color Circle

    @common @KP_Common_ID_3.16
    Scenario: KP_Common_ID_3.16: Verification Of Parameter Values In File After Clicking On No In "Do you want to save the Changes made?" Dialogue Box

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Click On Open Button In Project Window
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        When Click On No Button On PopUp Window
        And Verify Open Window
        And Goto Temporary Directory In Open Dialog Window
        And Select Saved Project From Temp Directory Path
        And Verify Open Window Should Not Visible
        And Click On Open Button In Project Window
        And Open The Created File In Project Window
        Then Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle

    @common @KP_Common_ID_3.17
    Scenario: KP_Common_ID_3.17: Verification Of Values In File After Clicking On Cancel In "Do you want to save the Changes made?" Dialogue Box

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Click On Open Button In Project Window
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        When Click On Cancel Button On Popup Window
        Then The Project Window Is Visible
        And Changed Value Should Show In DataGrid With Pink TextBox And Grey Color Circle

    @common
    Scenario: KP_Common_ID_3.18: Verification Of Values In File After Clicking On X In "Do you want to save the Changes made?" Dialogue Box

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Click On Open Button In Project Window
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        When Click On X Button On Popup Window
        Then The Project Window Is Visible
        And Changed Value Should Show In DataGrid With Pink TextBox And Grey Color Circle

    Scenario: KP_Common_ID_4.1: Verification of Open Window After Clicking On Open Button From Set Parameter Window

        Given KoolProg Had Opened
        And Go To Set Parameter Window
        And KoolProg Set Parameter Window Is Visible
        When Click On Open Button In Set Parameters Window
        Then Verify Open Window
        And Verify Project File Extension In Open Window

    @common @KP_Common_ID_4.2
    Scenario: KP_Common_ID_4.2: Verification Of Project Details After Selecting Project File From Open Option In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On Open Button In Set Parameters Window
        And Goto Working Directory In Open Dialog Window
        Then Select Saved Project From Working Directory Path
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window

    @common
    Scenario: KP_Common_ID_4.3: Verification of Project Details After Writing Project File From Open Window In Project Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        When Open Created Project In Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        Then The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window

    @common
    Scenario: KP_Common_ID_4.4: Verify, The Existence Of Set Parameter Window On Clicking The Open Window Cancel Button.

        Given Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open Window Is Visible
        And Click On The Open Window Cancel Button
        Then KoolProg Set Parameter Window Is Visible
        And Verify Open Window Should Not Visible

    Scenario: KP_Common_ID_4.5: Verification to Open Unavailable File In SetParameters Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Go To Set Parameter Window
        And KoolProg Set Parameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open Window Is Visible
        When Enter A Unavailable Filename
        Then Click Open Button in Open Window
        And Verify Popup Message For Unavailable File Displays
        And Click Ok Button In Open Popup Window
        And Click Cancel Button In Open File Dialog
        And KoolProg Set Parameter Window Is Visible

    @common
    Scenario: KP_Common_ID_4.6: Verify project file is opened from setParameter Window after renaming the file name with any special char

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Go To Set Parameter Window
        And KoolProg Set Parameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open Window Is Visible
        And Get Saved Filepath Which Have Invalid Filename And Open It
        When Verify Popup Message Should Come As '& * | ; : < > / " ? , '  Characters Not Supported!' In Set Parameter Window
        And Verify Header Of Popup Window In Set Parameter Window
        And Verify OK and X button In Popup Window In Set Parameter Window
        Then Click Ok Button In Popup Window On Home Window
        And Verify Home Window Should Come
        And Verify Open Window Should Not Visible

    @common @KP_Common_ID_4.7
    Scenario: KP_Common_ID_4.7: Verification Of Changing  Values To Invalid Values (String Instead Of Number) In Project File From  Outside The KoolProg In Set Parameter Screen

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except EKE, AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Go To Set Parameter Window
        And KoolProg Set Parameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        When Open Window Is Visible
        And Get Integer Parameters From Database With Invalid Values
        When Modify Parameter Values In Duplicate Project File
        And Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        Then Verify Popup Message Should Come As 'File is not valid.' In Set Parameter Window
        And Verify Header Of Popup Window In Set Parameter Window
        And Verify OK and X button In Popup Window In Set Parameter Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Home Window Should Come
        And Verify Open Window Should Not Visible

    @common @KP_Common_ID_4.8
    Scenario: KP_Common_ID_4.8: The browsed path should not come in the open window if project not opened in SetParameters window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Open The Created File In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Save the project in Temp Location Using Save As Option
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        When Goto Temporary Directory In Open Dialog Window
        And Click Cancel Button In Open File Dialog
        And Click On Open Button In Set Parameters Window
        Then Verify Open Window Should Not Open With Temp Path

    Scenario: KP_Common_ID_4.9: Verification Of Changing Values With Valid Values In File From  Outside KoolProg

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Only EKE
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Get Integer Parameters From Database With Random Value
        When Modify Parameter Values In Duplicate Project File
        And Verify Home Window Should Come
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        Then Verify Popup Message Should Come As 'File Modified outside the KoolProg or might be old file.' In Set Parameter Window
        And Verify Header Of Popup Window In Set Parameter Window
        And Verify OK and X button In Popup Window In Set Parameter Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Home Window Should Come
        And Verify Open Window Should Not Visible

    Scenario: KP_Common_ID_4.10: Verify Setparameter Window is visible after clicking on x button in Open Window.

        Given KoolProg Had Opened
        And Go To Set Parameter Window
        When KoolProg Set Parameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open Window Is Visible
        Then Click On The Open Window Cancel Button
        And KoolProg Set Parameter Window Is Visible

    Scenario: KP_Common_ID_4.11: Verify Project Can Be Opened From Any Location Instead Of Default Location In SetParameters Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Save the project in Temp Location Using Save As Option
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify Project Details Will Be Available In Project Window

    @common
    Scenario: KP_Common_ID_4.12: Verify project file is opened from setParameter Window after renaming the file name with valid file name(without any special char.)

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Go To Set Parameter Window
        And KoolProg Set Parameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        When Open Window Is Visible
        And Get last saved filepath and valid filename and open the newly copied file
        Then The Project Window Is Visible

    @common
    Scenario: KP_Common_ID_5.1-Verification of Home Window

        Given KoolProg Had Opened
        Then Verify Home Window Should Come
        And Verify Text Of Set parameters, Copy to controller And On-Line Service On Home Screen
        And Verify KoolProg Version Number On Home Screen
        And Verify Danfoss Website Is Displaying In Home Screen

    @common
    Scenario: KP_Common_ID_6.1: Verification of Help Window After Clicking On Help Button

        Given KoolProg Had Opened
        And Verify Home Window Should Come
        When Click On Help Button
        Then Verify Help Window is Enable
        And Verify Header In Help Window

    @common
    Scenario: KP_Common_ID_7.1-Verification of About Window

        Given KoolProg Had Opened
        And Verify Home Window Should Come
        When Click On About Button
        Then Verify About Window is Enable
        And Verify Text In About Window
        And Verify Text Of KoolProg Verison
        And Verify Text Of CopyRight

    @common @KP_Common_ID_8.1
    Scenario: KP_Common_ID_8.1: Verification of Preference Window

        Given KoolProg Had Opened
        When Click On The Setting Icon Button In The Main Window
        Then Preference Window Is Visible
        And Verify Header Text In Preference Window
        And Verify Label Text In Preference Window
        And Verify Button Text In Preference Window
        And Verify Default Values For Each Label

    @common @KP_Common_ID_8.2
    Scenario: KP_Common_ID_8.2: Select Chinese Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Chinese (Simplified) Legacy' Language From Language Option
        Then Click On Save Button In Preference Window
        And Verify Popup Message Should Come As 'Application will restart! Do you want to proceed?' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Close The Application

    @common @KP_Common_ID_8.2.1
    Scenario: KP_Common_ID_8.2.1: Verification of Chinese Language In Home Window

        Given KoolProg Had Opened
        When KoolProg Main Window Is Visible
        Then Verify KoolProg Will Change To 'Chinese (Simplified) Legacy'
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Changed Language Should Display In Language Combobox


    @common @KP_Common_ID_8.3
    Scenario: KP_Common_ID_8.3: Select Danish Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish (Denmark)' Language From Language Option
        Then Click On Save Button In Preference Window
        And Verify Popup Message Should Come As '应用程序将重启！你想继续吗？' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Check '已成功保存' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify 好 and X button In Popup Window In Preference Window
        And Close The Application

    @common @KP_Common_ID_8.3.1
    Scenario: KP_Common_ID_8.3.1: Verification of Danish Language In Home Window

        Given KoolProg Had Opened
        When KoolProg Main Window Is Visible
        Then Verify KoolProg Will Change To 'Danish (Denmark)'
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Changed Language Should Display In Language Combobox

    @common @KP_Common_ID_8.4
    Scenario: KP_Common_ID_8.4: Select English (United Kingdom) Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'English (United Kingdom)' Language From Language Option
        Then Click On Save Button In Preference Window
        And Verify Popup Message Should Come As 'Application will restart! Do you want to proceed?' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Check 'Korrekt gemt' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Close The Application

    @common @KP_Common_ID_8.4.1
    Scenario: KP_Common_ID_8.4.1: Verification of English (United Kingdom) Language In Home Window

        Given KoolProg Had Opened
        When KoolProg Main Window Is Visible
        Then Verify KoolProg Will Change To 'English (United Kingdom)'
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Changed Language Should Display In Language Combobox

    @common @KP_Common_ID_8.5
    Scenario: KP_Common_ID_8.5: Select French Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'French (France)' Language From Language Option
        Then Click On Save Button In Preference Window
        And Verify Popup Message Should Come As 'Application will restart! Do you want to proceed?' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Close The Application

    @common @KP_Common_ID_8.5.1
    Scenario: KP_Common_ID_8.5.1: Verification of French Language In Home Window

        Given KoolProg Had Opened
        When KoolProg Main Window Is Visible
        Then Verify KoolProg Will Change To 'French (France)'
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Changed Language Should Display In Language Combobox

    @common @KP_Common_ID_8.6
    Scenario: KP_Common_ID_8.6: Select German Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'German (Germany)' Language From Language Option
        Then Click On Save Button In Preference Window
        And Verify Popup Message Should Come As 'Application will restart! Do you want to proceed?' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Close The Application

    @common @KP_Common_ID_8.6.1
    Scenario: KP_Common_ID_8.6.1: Verification of German Language In Home Window

        Given KoolProg Had Opened
        When KoolProg Main Window Is Visible
        Then Verify KoolProg Will Change To 'German (Germany)'
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Changed Language Should Display In Language Combobox

    @common @KP_Common_ID_8.7
    Scenario: KP_Common_ID_8.7: Select Italian Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Italian (Italy)' Language From Language Option
        Then Click On Save Button In Preference Window
        And Verify Popup Message Should Come As 'Application will restart! Do you want to proceed?' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Close The Application

    @common @KP_Common_ID_8.7.1
    Scenario: KP_Common_ID_8.7.1: Verification of Italian Language In Home Window

        Given KoolProg Had Opened
        When KoolProg Main Window Is Visible
        Then Verify KoolProg Will Change To 'Italian (Italy)'
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Changed Language Should Display In Language Combobox

    @common @KP_Common_ID_8.8
    Scenario: KP_Common_ID_8.8: Select Portuguese Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Portuguese (Brazil)' Language From Language Option
        Then Click On Save Button In Preference Window
        And Verify Popup Message Should Come As 'Application will restart! Do you want to proceed?' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Close The Application

    @common @KP_Common_ID_8.8.1
    Scenario: KP_Common_ID_8.8.1: Verification of Portuguese Language In Home Window

        Given KoolProg Had Opened
        When KoolProg Main Window Is Visible
        Then Verify KoolProg Will Change To 'Portuguese (Brazil)'
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Changed Language Should Display In Language Combobox

    @common @KP_Common_ID_8.9
    Scenario: KP_Common_ID_8.9: Select Russian Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Russian (Russia)' Language From Language Option
        Then Click On Save Button In Preference Window
        And Verify Popup Message Should Come As 'Application will restart! Do you want to proceed?' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Close The Application

    @common @KP_Common_ID_8.9.1
    Scenario: KP_Common_ID_8.9.1: Verification of Russian Language In Home Window

        Given KoolProg Had Opened
        When KoolProg Main Window Is Visible
        Then Verify KoolProg Will Change To 'Russian (Russia)'
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Changed Language Should Display In Language Combobox

    @common @KP_Common_ID_8.10
    Scenario: KP_Common_ID_8.10: Select Spanish Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Spanish (Spain, International Sort)' Language From Language Option
        Then Click On Save Button In Preference Window
        And Verify Popup Message Should Come As 'Application will restart! Do you want to proceed?' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Close The Application

    @common @KP_Common_ID_8.10.1
    Scenario: KP_Common_ID_8.10.1: Verification of Spanish Language In Home Window

        Given KoolProg Had Opened
        When KoolProg Main Window Is Visible
        Then Verify KoolProg Will Change To 'Spanish (Spain, International Sort)'
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Changed Language Should Display In Language Combobox

    @common @KP_Common_ID_8.11
    Scenario: KP_Common_ID_8.11: Select  English (United States) Language From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'English (United States)' Language From Language Option
        Then Click On Save Button In Preference Window
        And Verify Popup Message Should Come As 'Application will restart! Do you want to proceed?' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Close The Application

    @common @KP_Common_ID_8.11.1
    Scenario: KP_Common_ID_8.11.1: Verification of  English (United States) Language In Home Window

        Given KoolProg Had Opened
        When KoolProg Main Window Is Visible
        Then Verify KoolProg Will Change To 'English (United States)'
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Changed Language Should Display In Language Combobox

    @common @KP_Common_ID_8.13
    Scenario: KP_Common_ID_8.13: Verification Of Changing Save As File Path From Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Click On Browse Button In Preference Window
        Then Select New Path In Preference Window
        And Click On Save Button In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Changed Path Should Come In Preference Window
        And KoolProg Main Window Is Visible

    @common @KP_Common_ID_8.14
    Scenario: KP_Common_ID_8.14: Verification Of Changed Path Is Available For Saveas Option In Project Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Click On Browse Button In Preference Window
        Then Select New Path In Preference Window
        And Click On Save Button In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window
        And KoolProg Main Window Is Visible
        And New Project Is Created For Random Controller Except EET, EKE, AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        Then Verify Changed Path Should Come In Saveas Popup Window From Project Window

    @common @KP_Common_ID_8.15
    Scenario: KP_Common_ID_8.15: Verification Of Changing The Units Form Metric To Imperial

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Imperial' Unit From Unit Combobox
        And Click On Save Button In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window
        Then KoolProg Main Window Is Visible
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify KoolProg Should Change To Selected Unit

    @common @KP_Common_ID_8.16
    Scenario: KP_Common_ID_8.16: Verification Of Changing The Units Form Imperial To Metric

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Metric' Unit From Unit Combobox
        And Click On Save Button In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window
        Then KoolProg Main Window Is Visible
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify KoolProg Should Change To Selected Unit

    @common @KP_Common_ID_8.17
    Scenario: KP_Common_ID_8.17: Verify, 'KoolProg will close' Message Will Not Come After Changing Any Other Option Instead Of Language.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Click On Browse Button In Preference Window
        And Select New Path In Preference Window
        And Select 'Imperial' Unit From Unit Combobox
        And Select Random Can Baudrate From Can Baudrate Combobox
        Then Click On Save Button In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window
        And KoolProg Main Window Is Visible
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Changed Path Should Come In Preference Window
        And Verify Changed Unit Should Display In Unit Combobox
        And Verify Changed Can Baudrate Should Display In Can Baudrate Combobox
        And Select 'Metric' Unit From Unit Combobox
        And Select 'Auto' Can Baudrate From Can Baudrate Combobox
        And Click On Save Button In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window
        And KoolProg Main Window Is Visible


    @common @KP_Common_ID_8.18
    Scenario: KP_Common_ID_8.18: Verification Of Cancel Button In Preferenece Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Click On Browse Button In Preference Window
        And Select New Path In Preference Window
        And  Select 'Imperial' Unit From Unit Combobox
        And Select Random Can Baudrate From Can Baudrate Combobox
        Then Click On Cancel Button On Preference Window
        And KoolProg Main Window Is Visible
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
		And Verify Changed Unit Should Not Display In Unit Combobox
        And Verify Changed Can Baudrate Should Not Display In Can Baudrate Combobox

    @common @KP_Common_ID_8.19
    Scenario: KP_Common_ID_8.19: Verfify Selected Language From Preference Window Should Not Change After Clicking On No Button On Ppopup Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'English (United Kingdom)' Language From Language Option
        Then Click On Save Button In Preference Window
        And Verify Popup Message Should Come As 'Application will restart! Do you want to proceed?' In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Click No Button In Popup Window In Preference Window
        And Verify Home Window Should Come
        And Verify Text Of Set parameters, Copy to controller And On-Line Service On Home Screen
        And Verify KoolProg Version Number On Home Screen
        And Verify Danfoss Website Is Displaying In Home Screen
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Verify Changed Language Should Not Display In Language Combobox

    @common @KP_Common_ID_9.1
    Scenario: KP_Common_ID_9.1: Verification Of Use Password Protection Option

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Click On Use Password Protection Checkbox
        Then Verify Password Protection Option
        And Click On Save Button In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window
        And Verify Home Window Should Come
        And Verify Change User Button Should Come
        And Verify Admin User Text Should Come
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Click On Use Password Protection Checkbox
        And Click On Save Button In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window

    @common @KP_Common_ID_9.2
    Scenario: KP_Common_ID_9.2: Verification Of Password Should Display After Clicking On Show Password Checkbox

        Given KoolProg Had Opened
        And Handled Unexpected Password Window Error
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Click On Use Password Protection Checkbox
        And Verify Password Protection Option
        And Verify Password Should Not Show
        When Click On Show Password Checkbox
        Then Verify Default Password Should Come
        And Verify Password And Confirm Password Should Be Same


    @common @KP_Common_ID_9.3
    Scenario: KP_Common_ID_9.3: Verification Of Empty Password In Preference Window

        Given KoolProg Had Opened
        And Handled Unexpected Password Window Error
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Click On Use Password Protection Checkbox
        And Verify Password Protection Option
        When Remove Password From Password and Confirm Password EditBox
        And Click On Save Button In Preference Window
        Then Check 'Password is empty!' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Click Ok Button In Popup Window On Home Window

    @common @KP_Common_ID_9.4
    Scenario: KP_Common_ID_9.4: Verification Of Mismatch Password In Preference Window

        Given KoolProg Had Opened
        And Handled Unexpected Password Window Error
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Click On Use Password Protection Checkbox
        And Verify Password Protection Option
        When Enter 'password1' Password In Password Textbox
        And Enter 'password2' Password In Confirm Password Textbox
        And Click On Show Password Checkbox
        And Click On Save Button In Preference Window
        Then Check 'Passwords does not match!' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window

    @common @KP_Common_ID_9.5
    Scenario: KP_Common_ID_9.5: Verification Of User Access Permission After Login As A User

        Given KoolProg Had Opened
        And Handled Unexpected Password Window Error
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Click On Use Password Protection Checkbox
        And Verify Password Protection Option
        And Click On Show Password Checkbox
        And Get Password From Preference Window
        And Click On Save Button In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window
        And Verify Home Window Should Come
        And Verify Change User Button Should Come
        And Verify Admin User Text Should Come
        And Click On Change User Button
        And Verify Change Password Window Is Visible
        And Verify Header Of Popup Window In Password Window
        And Verify Label Text In Password Window
        And Verify Button Text In Password Window
        When Write 'User' User Name In Password Window
        And Write Password In Password Window
        Then Click On Ok Button In Password Window
        And Verify Home Window Should Come
        And Verify User Access Permission Button After Login As A User
        And Verify User Name In Home Screen
        And Click On Change User Button
        And Verify Change Password Window Is Visible
        And Write 'Admin' User Name In Password Window
        And Write Password In Password Window
        And Click On Ok Button In Password Window
        And Verify Home Window Should Come
        And Verify User Name In Home Screen
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Click On Use Password Protection Checkbox
        And Click On Save Button In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window

    @common @KP_Common_ID_9.6
    Scenario: KP_Common_ID_9.6: Verification Of Admin Access Permission After Login As A Admin

        Given KoolProg Had Opened
        And Handled Unexpected Password Window Error
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Click On Use Password Protection Checkbox
        And Verify Password Protection Option
        And Click On Show Password Checkbox
        And Get Password From Preference Window
        And Click On Save Button In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Verify Header Of Popup Window In Preference Window
        And Verify OK and X button In Popup Window In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window
        And Verify Home Window Should Come
        And Verify Change User Button Should Come
        And Verify Admin User Text Should Come
        And Click On Change User Button
        And Verify Change Password Window Is Visible
        And Verify Header Of Popup Window In Password Window
        And Verify Label Text In Password Window
        And Verify Button Text In Password Window
        When Write 'Admin' User Name In Password Window
        And Write Password In Password Window
        Then Click On Ok Button In Password Window
        And Verify Home Window Should Come
        And Verify User Name In Home Screen
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Click On Use Password Protection Checkbox
        And Click On Save Button In Preference Window
        And Check 'Saved Successfully' Popup Is Displayed In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window

    @common
    Scenario: KP_Common_ID_10.1-Verification of New Project window

        Given KoolProg Had Opened
        And Handled Unexpected Password Window Error
        When KoolProg New Project Window Is Open
        Then KoolProg New Project Window Is Visible
        And Check New Project Header Text
        And Check New Project Select Controller Model Label Text
        And KoolProg should contain New Project Window controller Family List
        And Check Close Button ToolTip In New Project Window

    @common
    Scenario: KP_Common_ID_11.1: Verification of project description window

        Given KoolProg Had Opened
        And Handled Unexpected Password Window Error
        When KoolProg New Project Window Is Open
        And Select A Random Controller
        And Go To Controller Details Selection Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        Then Verify Give Your Project Filename and Description, Project Name And Description Label Are Visible
        And Check if Project Name,Description,Give your project filename and description labels are available
        And Verify Textbox of Project Name And Project Description Is Visible
        And Check Back Button Is Visible In Controller Details Selection Window
        And Check Cancel Button Is Visible In Controller Details Selection Window
        And Verify Text Of Back And Cancel Button

    @common
    Scenario: KP_Common_ID_12.1: Project Name String Length Should Not Exceeed 20 Characters

        Given KoolProg Had Opened
        And Handled Unexpected Password Window Error
        When KoolProg New Project Window Is Open
        And Select A Random Controller
        And Go To Controller Details Selection Window
        And Set Project Name With '30' Characters Length
        And Verify Project Name should Accept Only 20 Characters

    @common
    Scenario: KP_Common_ID_12.2: popup message should come if project name field is empty.

        Given KoolProg Had Opened
        When KoolProg New Project Window Is Open
        And Select A Random Controller
        And Go To Controller Details Selection Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Verify Project Name Is Empty
        And Click Finish Button In New Project Window
        Then Verify Popup Message Should Come As 'Please Enter Project Name' In Project Description Window
        And Verify Header Of Popup Window In Project Description Window
        And Click Ok Button In Popup Window On Home Window

   @common @KP_Common_ID_12.3
     Scenario: KP_Common_ID_12.3: Check If The Popup Is Displayed When Special Characters Are Entered In Project Name Textbox In Controller Details Selection Window.

        Given KoolProg Had Opened
        When KoolProg New Project Window Is Open
        And Select A Random Controller
        And Go To Controller Details Selection Window
        Then Verify Project Name Should Not Accept Special Characters
        And KoolProg New Project Window Is Visible
        And Check if Project Name,Description,Give your project filename and description labels are available
        And Check Cancel Button Is Visible In Controller Details Selection Window
        And Check Back Button Is Visible In Controller Details Selection Window
        And Check Finish Button Is Visible In Controller Details Selection Window

    @common @KP_Common_ID_12.4
    Scenario: KP_Common_ID_12.4: Verify "'.' Filename Not Supported'" Popup Should Come After Writing . As Project Name

        Given KoolProg Had Opened
        And KoolProg New Project Window Is Open
        And Select A Random Controller
        And Go To Controller Details Selection Window
        And Write Project Name As Dot
        And Click Finish Button In New Project Window
        Then Verify Popup Message Should Come As ''.' Filename Not Supported!' In Project Description Window
        And Verify Header Of Popup Window In Project Description Window
        And  Click Ok Button In Popup Window In New Project Details Selection Window
        And Verify Give Your Project Filename and Description, Project Name And Description Label Are Visible
        And Check if Project Name,Description,Give your project filename and description labels are available
        And Verify Textbox of Project Name And Project Description Is Visible
        And Check Back Button Is Visible In Controller Details Selection Window
        And Check Cancel Button Is Visible In Controller Details Selection Window
        And Verify Text Of Back And Cancel Button

    @common
    Scenario: KP_Common_ID_12.5: Create A Project With Adding Space Between In Project Name

        Given KoolProg Had Opened
        And KoolProg New Project Window Is Open
        And Select A Random Controller
        And Go To Controller Details Selection Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        When Write Project Name With Space Between In Project Name
        And Click Finish Button In New Project Window
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        Then Verify the Project Name In Project Window

    @common
    Scenario: KP_Common_ID_13.1: Project Description Should Accept Only 250 Characters

        Given KoolProg Had Opened
        When KoolProg New Project Window Is Open
        And Select A Random Controller
        And Go To Controller Details Selection Window
        And Set Project Description Statement As '300' Characters Length
        And Add Required Delay For 'WRITING_AND_VERIFIYING_PROJECT_DESCRIPTION_LENGTH' for 'OFFLINE' mode
        Then Verify Project Description should Accept Only 250 Characters

    Scenario: KP_Common_ID_13.2: Verify whether the project will create if the project description is empty in controller details selection window.

        Given KoolProg Had Opened
        And KoolProg New Project Window Is Open
        And Select A Random Controller
        And Go To Controller Details Selection Window
        And Write Project Name
        When Check Textbox for Project Description Is Empty
        And Click Finish Button In New Project Window
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        Then The Project Window Is Visible

    @common @KP_Common_ID_13.3
     Scenario: KP_Common_ID_13.3: Check if the popup is displayed when special characters are entered in project description textbox in controller details selection window.

        Given KoolProg Had Opened
        When KoolProg New Project Window Is Open
        And Select A Random Controller
        And Go To Controller Details Selection Window
        Then Verify Project Description Should Not Accept Special Characters
        And KoolProg New Project Window Is Visible
        And Check if Project Name,Description,Give your project filename and description labels are available
        And Check Cancel Button Is Visible In Controller Details Selection Window
        And Check Back Button Is Visible In Controller Details Selection Window
        And Check Finish Button Is Visible In Controller Details Selection Window

    @common @KP_Common_ID_14.1
    Scenario: KP_Common_ID_14.1: Verify "Please enter project name" Popup Window Will Come If Project Name Is Not Written

        Given KoolProg Had Opened
        And KoolProg New Project Window Is Open
        And Select A Random Controller
        And Go To Controller Details Selection Window
        When Click Finish Button In New Project Window
        Then Verify Popup Message Should Come As 'Please Enter Project Name' In Project Description Window
        And Verify Header Of Popup Window In Project Description Window
        And Verify OK and X button In Popup Window In Project Description Window
        And Click Ok Button In Popup Window In New Project Details Selection Window
        And Verify, Blinking Cursor In Project Name Text Box In New Project Details Selection Window

    @common
    Scenario: KP_Common_ID_14.2: Verify project name and description in the project window will be the same as the project description window

        Given KoolProg Had Opened
        When New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        Then Verify the Project Name and Description in project window

    Scenario: KP_Common_ID_15.1: Verify controller family with its variant is remain selected in new Project controller selection window after clicking back button in new Project controller details selection window.

        Given KoolProg Had Opened
        And KoolProg New Project Window Is Open
        And Select A Random Controller
        And Go To Controller Details Selection Window
        And Write Project Name
        And Write Project Description
        When Click Back Button In New Project Window
        Then Verify Controller Family With Variant Is Remain Selected

    Scenario: KP_Common_ID_15.2: Verify Controller Family With Its Variant Is Remain Selected In New Project Controller Selection Window After Collapsing Controller Family And Clicking Back Button In New Project Controller Details Selection Window.

        Given KoolProg Had Opened
        And KoolProg New Project Window Is Open
        And Select A Random Controller
        When Collapse Selected Controller Family
        And Go To Controller Details Selection Window
        And Write Project Name
        And Write Project Description
        And Click Back Button In New Project Window
        And Expand Selected Controller Family
        Then Verify Controller Family With Variant Is Remain Selected

    @common
    Scenario: KP_Common_ID_16.1: Open KoolProg, go to controller details selection window, enter project name and description and click back button. Choose a differet controller Family and variant and go to controller details selection window and verify if the entered project and description is displayed.

        Given KoolProg Had Opened
        When KoolProg New Project Window Is Open
        And Select A Random Controller
        And Go To Controller Details Selection Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        Then Enter Project Name,Project Description And For Various Controller Selection, Verify, Project Name And Project Description Display The Same Content Entered.

    @common
    Scenario: KP_Common_ID_17.1: Verify Home screen of KoolProg should come,After clicking on Cancel button.

        Given KoolProg Had Opened
        When KoolProg New Project Window Is Open
        And Select A Random Controller
        And Go To Controller Details Selection Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Write Project Name
        And Write Project Description
        And Click Cancel Button In New Project Window
        Then Verify Home Window Should Come

    @common
    Scenario: KP_Common_ID_18.1: Verify Project will create after entering project name and project description and clicking on FINISH button.

        Given KoolProg Had Opened
        When KoolProg New Project Window Is Open
        And Select A Random Controller
        And Go To Controller Details Selection Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        Then The Project Window Is Visible

    @common
    Scenario: KP_Common_ID_19.1: Create a new project with entering Existing project name and message popup "File already exists. Do you want to override" should come.
        Dependency on KP_Common_ID_18.1 scenario

        Given Controller Is Selected From Existing Project
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        When Write Project Name And Description From Existing Project
        And Click Finish Button In New Project Window
        And Verify Popup Window Is Visible
        Then Verify Popup Message Should Come As 'File already exists. Do you want to overwrite?' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify Yes, No And X Button Are Visible
        And Verify Yes, No And X Button Are Enable
        And Verify Text Of Yes, No And X Button
        And Click Yes Button In Popup Window In New Project Details Selection Window
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible


    @common
    Scenario: KP_Common_ID_19.2: Verify Entered Project Name And Project Description Should Come After Clicking On 'File already exists. Do you want to overwrite?' Popup Window

        Given KoolProg Had Opened
        When KoolProg New Project Window Is Open
        And Select A Random Controller
        And Go To Controller Details Selection Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Controller Is Selected From Existing Project
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        When Write Project Name And Description From Existing Project
        And Click Finish Button In New Project Window
        And Verify Popup Window Is Visible
        Then Verify Popup Message Should Come As 'File already exists. Do you want to overwrite?' In Project Description Window
        And Verify Header Of Popup Window In Project Description Window
        And Click No Button In Popup Window In New Project Details Selection Window
        And Verify Project Name And Project Description Displays The Content That Is Entered Before

    @common
    Scenario: KP_Common_ID_20.1: Verification Of Project Window

        Given KoolProg Had Opened
        And New Project Is Created For Random Controller Except AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        When The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Menu Bar Icons Visible In Project Window
        And Verify Menu Bar Icons Enable And Disable In Project Window
        And Verify Set Parameter Label In Project Window
        And Verify Project Name Label Should Be Visible In Project Window
        And Verify Search And View More Is Visible
        And Verify Search And View More Are Enable
        And Verify That Tree View Default Groups Will Expand

    @common @KP_Common_ID_21.1
    Scenario: KP_Common_ID_21.1: Verification Of Tree View In Project Window

        Given KoolProg Had Opened
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        When The Project Window Is Visible
        Then Verify That Tree View Default Groups Will Expand
        And Click On All Tree Item In Tree View
        And Verify Tree View Is Collapsed

    @common
    Scenario: KP_Common_ID_22.1: Verification Of Changed Values In Project Window

        Given KoolProg Had Opened
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        When The Project Window Is Visible
        Then Change Integer Parameter Values
        And Changed Value Should Show In DataGrid With Pink TextBox And Grey Color Circle


    @common @KP_Common_ID_23.1
    Scenario: KP_Common_ID_23.1: Verification Of Home Button In Project Window

        Given KoolProg Had Opened
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        Then Verify Home Window Should Come
        And Verify Text Of Set parameters, Copy to controller And On-Line Service On Home Screen
        And Verify KoolProg Version Number On Home Screen
        And Verify Danfoss Website Is Displaying In Home Screen

    @common @KP_Common_ID_23.2
    Scenario: KP_Common_ID_23.2: Verify Project Window Will Come After Clicking On No Button On "Do you want to save the Changes made?" Popup Window In Project Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify Yes, No And X Button Are Visible In Project Window
        And Verify Yes, No And X Button Are Enable In Project Window
        And Verify Text Of Yes, No And X Button In Project Window
        When Click On No Button On PopUp Window
        Then Verify Home Window Should Come
        And Verify KoolProg Version Number On Home Screen
        And Verify Danfoss Website Is Displaying In Home Screen
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Project Details Will Be Available In Project Window
        And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle

    @common @KP_Common_ID_23.3
    Scenario: KP_Common_ID_23.3: Verify Home Window Will Come After Clicking On Yes Button On "Do you want to save the Changes made?" Popup Window In Project Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Yes, No And X Button Are Visible In Project Window
        And Verify Yes, No And X Button Are Enable In Project Window
        And Verify Text Of Yes, No And X Button In Project Window
        And Verify Header Of Popup Window In Project Window
        When Click On Yes Button On PopUp Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        Then  Verify Home Window Should Come
        And Verify Text Of Set parameters, Copy to controller And On-Line Service On Home Screen
        And Verify KoolProg Version Number On Home Screen
        And Verify Danfoss Website Is Displaying In Home Screen
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle

    Scenario: KP_Common_ID_24.1: Verification Of Save Button After Changing Values And Checking The Appropriate Color Change In Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        When Click Save Button In Project Window
        Then Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle

    Scenario: KP_Common_ID_24.2: Verification Of Project Details After Clicking On No Button On 'No changes has been made'Popup Window In Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click Save Button In Project Window
        Then Verify Popup Message Should Come As 'No changes has been made' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Project Details Will Be Available In Project Window

    Scenario: KP_Common_ID_25.1: Verification of Saveas Window In Project Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        When Click On Saveas Button In Project Window
        Then Verify Saveas Window In Project Window

    @common
    Scenario: KP_Common_ID_25.2: Verification of Saveas Project File In Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
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

    @common
    Scenario: KP_Common_ID_25.3: Verify, Saveas Project File Instead Of Default File Name In Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
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

    Scenario: KP_Common_ID_25.4: Verify Negative Test Cases For Save As Button With KoolProg Special Character For Both Project Name And Project Path

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Project Name Including Special Characters Along With The Path
        And Click On Save Button In SaveAs Window
        And Verify The File Name Is Not Valid, Window Dialog Popup Is Visible
        And Click On Ok Button In SaveAs Window Dialog PopUp
        Then Verify If The Entered Project Name With Special Characters Is Displayed In Edit Box Of The SaveAs Dialog

    Scenario: KP_Common_ID_25.5: Verify Negative Test Cases For Save As Button With Window Special Character

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Project Name Including Special Characters
        And Click On Save Button In SaveAs Window
        And Verify The File Name Is Not Valid, Window Dialog Popup Is Visible
        And Click On Ok Button In SaveAs Window Dialog PopUp
        Then Verify If The Entered Project Name With Special Characters Is Displayed In Edit Box Of The SaveAs Dialog

    Scenario: KP_Common_ID_25.6: Verify Saveas File Is Displayed In The Recent Project List In SetParameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
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
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Get Recent File List From Set Parameter Window
        Then Check The Saved File Should Display In The Set Parameter Window Recent Project List

    @KP_Common_ID_25.7
    Scenario: KP_Common_ID_25.7: Verify Saveas Project File Exists Pop Up Is Visible After Writing Created Project Name In SaveAs Dialog Editbox.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Created Project Name In Dialog EditBox
        And Click On Save Button In SaveAs Window
        Then Verify Project File Name Already Exists, Do You Want To Replace It, Window Dialog Popup Is Visible

    Scenario: KP_Common_ID_25.8: Verify Saveas Exits Project File With Clicking No Button In Project Already Exists Popup In Project Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Created Project Name In Dialog EditBox
        And Click On Save Button In SaveAs Window
        And Verify Confirm Save As PopUp Is Visible
        When Click On Confirm Save As PopUp No Button
        And Click Cancel Button In SaveAs Dialog
        Then Verify Project Details Will Be Available In Project Window

    @common @KP_Common_ID_25.9
    Scenario: KP_Common_ID_25.9: Verify Saveas Exits Project File With Clicking Yes Button In Project Already Exists Popup In Project Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Created Project Name In Dialog EditBox
        And Click On Save Button In SaveAs Window
        And Verify Confirm Save As PopUp Is Visible
        When Click On Confirm Save As PopUp Yes Button
        Then Verify Project Details Will Be Available In Project Window

    @common @KP_Common_ID_25.10
    Scenario: KP_Common_ID_25.10: Verify, Saveas Project File In Browsed Path In Project Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
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

    @common @KP_Common_ID_25.11
    Scenario: KP_Common_ID_25.11: Verify, Saveas Project File In Browsed Path From Project Window And That Path Should Come Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
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


    @common @KP_Common_ID_28.2
    Scenario: KP_Common_ID_28.2: Verification Of Parameter Sheet Button In Project Window


        Given KoolProg Had Opened
        And New Project Is Created For Random Controller Except EET, EKE, AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Print Button
        Then Verify Popup Message Should Come As 'Print' In Print Window
        And Verify Header Of Popup Window In Print Window
        And Verify Text Of Button In Print Window
        And Click On Parameter Sheet Button
        And Verify Parameter Sheet Is Visible

    @common @KP_Common_ID_28.6
    Scenario: KP_Common_ID_28.6: Verification Of Parameter Sheet In PDF Format From Project Window

        Given KoolProg Had Opened
        And New Project Is Created For Random Controller Except EET, EKE, AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Print Button
        And Verify Popup Message Should Come As 'Print' In Print Window
        And Verify Header Of Popup Window In Print Window
        When Click On Parameter Sheet Button
        Then Verify Parameter Sheet Is Visible
        And Click On Export Button In Parameter Sheet Window
        And Verify Parameter Sheet In PDF Format
        And Verify Default PDF Parameter Sheet Name Is Available In Saved Path

    @common @KP_Common_ID_29.1
    Scenario: KP_Common_ID_29.1: Verification Of Display Of Searched Menu Code In Project Window Datagrid In Project Window

        Given KoolProg Had Opened
        And New Project Is Created For Random Controller Except AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Random Menu Code In Search Editbox
        And Click On Search Button In Search Bar
        Then Verify If The Searched Menu Code Displays In Datagrid

    @common @KP_Common_ID_29.2
    Scenario: KP_Common_ID_29.2: Verification Of Display Of Searched Parameter Name In Project Window Datagrid In Project Window

        Given KoolProg Had Opened
        And New Project Is Created For Random Controller Except AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Parameter Name In Search Editbox
        And Click On Search Button In Search Bar
        Then Verify If The Searched Parameter Name Displays In Datagrid

    @common @KP_Common_ID_29.3
    Scenario: KP_Common_ID_29.3: Verification Of Datagrid After Clicking On Cancel Button In Search Bar In Project Window

        Given KoolProg Had Opened
        And New Project Is Created For Random Controller Except AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Parse The DataGrid
        And Check Parameter Count From Datagrid
        And Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Parameter Name In Search Editbox
        And Click On Search Button In Search Bar
        When Click On Cancel Button In Search Bar
        Then Verify All The Parameter Should Come In Datagrid
        And Verify Help Of First Parameter In First Group Should Display

    @common @KP_Common_ID_29.4
    Scenario: KP_Common_ID_29.4: Verification Of Parameter Value For Searched Parameter After Changing Their Value In Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Random Menu Code In Search Editbox
        And Click On Search Button In Search Bar
        And Verify If The Searched Parameter Name Displays In Datagrid
        When Change The Value Of Searched Parameter
        Then Changed Random Value Should Show In DataGrid With Pink TextBox And With Grey Color Circle

    @common @KP_Common_ID_30.1
    Scenario: KP_Common_ID_30.1: Verification To Set Parameter As Fav And Verifying The Same Parameters Are Coming In Favorite Table In Project Window

        Given KoolProg Had Opened
        And New Project Is Created For Random Controller Except AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On All Tree Item In Tree View
        And Get The Integer Parameter To Set As A Favorite
        When Check The CheckBox Of Integer Parameters To Set As Favorite
		And Click On The Favorite Group In Tree View
		#Then Verify Selected Favorite Parameters In Favorite Table
		And UnCheck The CheckBox Of Randomly Selected Parameters In Favorite Table

    @common @KP_Common_ID_30.2
    Scenario: KP_Common_ID_30.2: Verification Of "No favourites selected" PopUp On Clicking Favorite From Tree View When No Parameters Are Set As Favorite.

        Given KoolProg Had Opened
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
		And Click On All Tree Item In Tree View
		When Click On The Favorite Group In Tree View
		Then Verify Popup Message Should Come As 'No favourites selected' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible


    @common @KP_Common_ID_30.3
    Scenario: KP_Common_ID_30.3: Verification Of Removal of Favorite Parmaters And Verifying The Same Parameters Not Coming In Favorite Table.

        Given KoolProg Had Opened
        And New Project Is Created For Random Controller Except AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
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

    @common @KP_Common_ID_30.4
    Scenario: KP_Common_ID_30.4: Verification Of Changing Values For Favorite Parameter In Favorite Table From Project Window.

        Given KoolProg Had Opened
        And New Project Is Created For Random Controller Except AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        When Click On All Tree Item In Tree View
        And Get The Integer Parameter To Set As A Favorite
        And Check The CheckBox Of Integer Parameters To Set As Favorite
        And Change Integer Parameter Values
        And Click Save Button In Project Window
        Then Check Saved Successfully Popup Is Displayed
		And Click Ok Button In Saved Successfully Popup Window
		And Changed Value Should Show In DataGrid Without Pink TextBox And Grey Color Circle
		And UnCheck The CheckBox Of Randomly Selected Parameters In Favorite Table


	Scenario: KP_Common_ID_31.1: Verification Of Factory Reset In Offline Mode After Accepting The Changes In Project Window.

	    Given KoolProg Had Opened
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
		When Click On Factory Reset Button
		Then Check 'KoolProg' Header Text In PopUp Window
		And Verify Yes, No And X Button Are Enable In Project Window
		And Check 'Discard changes?' Text Is Displayed In PopUp Window
		And Click On Yes Button On PopUp Window
		And Check 'Do you want to change to factory settings?' Text Is Displayed In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Check Cancel Button Is Enabled In Popup Window
		And Check InProject Button Is Enabled In PopUp Window
		And Click On In Project Button In Popup Window
		And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'OFFLINE' mode
		And Check Saved Successfully Popup Is Displayed
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Click Ok Button In Saved Successfully Popup Window
		And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle

	Scenario: KP_Common_ID_31.2: Verification Of Factory Reset In Offline Mode Without Accepting The Changes In Project Window.


	    Given KoolProg Had Opened
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
		When Click On Factory Reset Button
		And Check 'KoolProg' Header Text In PopUp Window
		And Verify Yes, No And X Button Are Enable In Project Window
		And Check 'Discard changes?' Text Is Displayed In PopUp Window
		And Click On No Button On PopUp Window
		Then Changed Value Should Show In DataGrid With Pink TextBox And Grey Color Circle

	Scenario: KP_Common_ID_31.3: Verification Of Factory Reset In Offline Mode After Saving The Changed Values In Project Window.

	    Given KoolProg Had Opened
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Click Save Button In Project Window
        And Check Saved Successfully Popup Is Displayed
		And Click Ok Button In Saved Successfully Popup Window
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		When Click On Factory Reset Button
		Then Check 'Do you want to change to factory settings?' Text Is Displayed In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Check Cancel Button Is Enabled In Popup Window
		And Check InProject Button Is Enabled In PopUp Window
		And Click On In Project Button In Popup Window
		And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'OFFLINE' mode
		And Check Saved Successfully Popup Is Displayed
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Click Ok Button In Saved Successfully Popup Window
		And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle


    @common @KP_Common_ID_33.1
    Scenario: KP_Common_ID_33.1: Verification Of View More In Project Window

        Given KoolProg Had Opened
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        When The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Click On View More Button And Verify View More Window Opened

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

    @common @KP_Common_ID_49.1
    Scenario: KP_Common_ID_49.1: Verification Of Tree View In Opened Project Window After Clicking On Open Button From Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        When The Project Window Is Visible
        Then Verify That Tree View Default Groups Will Expand
        And Click On All Tree Item In Tree View
        And Verify Tree View Is Collapsed

    @common
    Scenario: KP_Common_ID_50.1: Verification Of Changed Values In Opened Project Window After Clicking On Open Button From Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        When Click Open Button in Open Window
        Then The Project Window Is Visible
        And Change Integer Parameter Values
        And Changed Value Should Show In DataGrid With Pink TextBox And Grey Color Circle

    @common @KP_Common_ID_51.1
    Scenario: KP_Common_ID_51.1: Verification Of Home Button After Opening Project File From Open Button In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        Then Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And  Verify Home Window Should Come
        And Verify Text Of Set parameters, Copy to controller And On-Line Service On Home Screen
        And Verify KoolProg Version Number On Home Screen
        And Verify Danfoss Website Is Displaying In Home Screen


    @common @KP_Common_ID_51.2
    Scenario: KP_Common_ID_51.2: Verify Project Window Will Come After Clicking On No Button On "Do you want to save the Changes made?" After Opening Project File From Open Button In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Yes, No And X Button Are Visible In Project Window
        And Verify Yes, No And X Button Are Enable In Project Window
        And Verify Text Of Yes, No And X Button In Project Window
        And Verify Header Of Popup Window In Project Window
        When Click On No Button On PopUp Window
        Then Verify KoolProg Version Number On Home Screen
        And Verify Danfoss Website Is Displaying In Home Screen
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Project Details Will Be Available In Project Window
        And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle


    @common @KP_Common_ID_51.3
    Scenario: KP_Common_ID_51.3: Verify Home Window Will Come After Clicking On Yes Button On "Do you want to save the Changes made?" Popup Window After Opening Project File From Open Button In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Yes, No And X Button Are Visible In Project Window
        And Verify Yes, No And X Button Are Enable In Project Window
        And Verify Text Of Yes, No And X Button In Project Window
        And Verify Header Of Popup Window In Project Window
        When Click On Yes Button On PopUp Window
        Then Verify Home Window Should Come
        And Verify Text Of Set parameters, Copy to controller And On-Line Service On Home Screen
        And Verify KoolProg Version Number On Home Screen
        And Verify Danfoss Website Is Displaying In Home Screen
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle

    @common @KP_Common_ID_52.1
    Scenario: KP_Common_ID_52.1: Verification of Open Window After Opening Project File From Open Button In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        When Click On Open Button In Project Window
        Then Verify Open Window
        And Verify Project File Extension In Open Window

    @common @KP_Common_ID_52.2
    Scenario: KP_Common_ID_52.2: Verification Of Project Details After Selecting Project File After Opening Project File From Open Button In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And New Project Is Created For Random Controller
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
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Goto Temporary Directory In Open Dialog Window
        When Select Saved Project From Temp Directory Path
        Then Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window

    @common @KP_Common_ID_52.3
    Scenario: KP_Common_ID_52.3: Verify "Do you want to save the Changes made?" Popup Window After Clicking On Open Window As Parameter Value Got Changed After Opening Project File From Open Button In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And Change Integer Parameter Values
        When Click On Open Button In Project Window
        Then Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify Yes, No And Cancel Button Are Visible
        And Verify Yes, No And Cancel Button Are Enable
        And Verify Text Of Yes, No And Cancel Button

    @common @KP_Common_ID_52.4
    Scenario: KP_Common_ID_52.4: Verification Of Parameter Values In File After Clicking On Yes In "Do you want to save the Changes made?" Dialogue box After Opening Project File From Open Button In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Click On Open Button In Project Window
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        When Click On Yes Button On PopUp Window
        And Verify Open Window
        And Goto Temporary Directory In Open Dialog Window
        And Select Saved Project From Temp Directory Path
        And Verify Open Window Should Not Visible
        And Click On Open Button In Project Window
        And Open The Created File In Project Window
        Then Changed Value Should Show In DataGrid Without Pink TextBox And Grey Color Circle


    @common @KP_Common_ID_52.5
    Scenario: KP_Common_ID_52.5: Verification Of Parameter Values In File After Clicking On No In "Do you want to save the Changes made?" Dialogue Box After Opening Project File From Open Button In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Click On Open Button In Project Window
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        When Click On No Button On PopUp Window
        And Verify Open Window
        And Goto Temporary Directory In Open Dialog Window
        And Select Saved Project From Temp Directory Path
        And Verify Open Window Should Not Visible
        And Click On Open Button In Project Window
        And Open The Created File In Project Window
        Then Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle

    @common @KP_Common_ID_52.6
    Scenario: KP_Common_ID_52.6: Verification Of Values In File After Clicking On Cancel In "Do you want to save the Changes made?" Dialogue Box After Opening Project File From Open Button In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And Change Integer Parameter Values
        And Click On Open Button In Project Window
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        When Click On Cancel Button On Popup Window
        Then The Project Window Is Visible
        And Changed Value Should Show In DataGrid With Pink TextBox And Grey Color Circle

    @common
    Scenario: KP_Common_ID_52.7: Verification Of Values In File After Clicking On X In "Do you want to save the Changes made?" Dialogue Box After Opening Project File From Open Button In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And Change Integer Parameter Values
        And Click On Open Button In Project Window
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        When Click On X Button On Popup Window
        Then The Project Window Is Visible
        And Changed Value Should Show In DataGrid With Pink TextBox And Grey Color Circle

    @common @KP_Common_ID_52.8
    Scenario: KP_Common_ID_52.8: Verification Of Project Details After Writing The Project File Name In Open Popup's Edit Box After Opening Project File From Open Button In Set Parameter Window


        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        When Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        Then Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window

    @common
    Scenario: KP_Common_ID_52.9: Verification Of Previous Project Details After Clicking On Cancel Button On Open Window After Opening Project File From Open Button In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And Click On Open Button In Project Window
        And Open Window Is Visible
        When Click On The Open Window Cancel Button
        Then The Project Window Is Visible
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window

    Scenario: KP_Common_ID_52.10: Verification To Open Unavailable File After Opening Project File From Open Button In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And Click On Open Button In Project Window
        And Open Window Is Visible
        When Enter A Unavailable Filename
        Then Click Open Button in Open Window
        And Verify Popup Message For Unavailable File Displays
        And Click Ok Button In Open Popup Window
        And Click Cancel Button In Open File Dialog
        And The Project Window Is Visible

    @common
    Scenario: KP_Common_ID_52.11: The Project Already Open Popup Should Come While Opening The Current Project Itself After Opening Project File From Open Button In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And Click On Open Button In Project Window
        And Open Window Is Visible
        When Open The Created File In Project Window
        Then Verify Popup Message Should Come As 'Project already open' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible

    Scenario: KP_Common_ID_52.12: Verification Of Renaming File Name (With Special Char - &  ;  ,  ' ) From Outside The KoolProg After Opening Project File From Open Button In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And Click On Open Button In Project Window
        And Open Window Is Visible
        And Get Filepath From Open Window And Rename The Existing File With New Invalid File Name
        When Verify Popup Message Should Come As '& * | ; : < > / " ? , '  Characters Not Supported!' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        Then The Project Window Is Visible
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window

    Scenario: KP_Common_ID_52.13: Verification Of Renaming File Name (With Special Char - &  ;  ,  ' ) From Outside The KoolProg After Opening Project File From Open Button In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And Click On Open Button In Project Window
        And Open Window Is Visible
        And Get Filepath From Open Window And Rename The Existing File With New Invalid File Name
        And Verify Popup Message Should Come As '& * | ; : < > / " ? , '  Characters Not Supported!' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        Then The Project Window Is Visible
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window

    Scenario: KP_Common_ID_52.14: The Browsed Path Should Not Come In The Open Window If Project Not Opened After Opening Project File From Open Button In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except EKE, AKCC
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
        And Click On Open Button In Project Window
        And Open The Created File In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Save the project in Temp Location Using Save As Option
        And Click On Open Button In Project Window
        And Browse The File That Is Saved In Temporary Location
        And Click Cancel Button In Open File Dialog
        When Click On Open Button In Project Window
        Then Verify Open Window Should Not Open With Temp Path

    Scenario: KP_Common_ID_52.15: Verification Of Changing Values With Valid Values In File From Outside KoolProg After Opening Project File From Open Button In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Only EKE
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
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Get Integer Parameters From Database With Random Value
        When Modify Parameter Values In Duplicate Project File
        And Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        Then Verify Popup Message Should Come As 'File Modified outside the KoolProg or might be old file.' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window

     @common @KP_Common_ID_52.16
      Scenario: KP_Common_ID_52.16: The Project Window Is Visible After Clicking On Cancel Button In Open Window After Opening Project File From Open Button In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        When Click On Open Button In Project Window
        And Open Window Is Visible
        Then Click On The Open Window Cancel Button
        And The Project Window Is Visible

    Scenario: KP_Common_ID_52.17: Verify Project Can Be Opened From Any Location Instead Of Default Location After Opening Project File From Open Button In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Verify Project Details Will Be Available In Project Window
        When Click On Open Button In Project Window
        Then Verify Open Window Should Open With Temp Path

    @common
    Scenario: KP_Common_ID_52.18: Verification Of Renaming File Name With Valid File Name (Without Any Special Char) From Outside The KoolProg After Opening Project File From Open Button In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And Click On Open Button In Project Window
        When Open Window Is Visible
        And Get last saved filepath and valid filename and open the newly copied file
        Then The Project Window Is Visible

    Scenario: KP_Common_ID_53.1: Verification of Save Button After Changing Values And Checking The Appropriate Color Change After Opening Project File From Open Button In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        When Change Integer Parameter Values
        Then Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle

    Scenario: KP_Common_ID_53.2: Verification Of Project Details After Clicking On No Button On 'No changes has been made'Popup Window In Opened Project From Open Button In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click Save Button In Project Window
        Then Verify Popup Message Should Come As 'No changes has been made' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Project Details Will Be Available In Project Window

    Scenario: KP_Common_ID_54.1: Verification of Saveas Window In Project Window File In Project Window After Opening The Project From Open Option In SetParameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        When Click On Saveas Button In Project Window
        Then Verify Saveas Window In Project Window

    @common @KP_Common_ID_54.2
    Scenario: KP_Common_ID_54.2: Verification Of Saveas Project File In Project Window After Opening The Project From Open Option In SetParameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And Change Integer Parameter Values
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

    Scenario: KP_Common_ID_54.3: Verify, Saveas Project File Instead Of Default File Name from Open Window after clicking on open button in SetParameters Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
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

   Scenario: KP_Common_ID_54.4: Verify Negative Test Cases For Save As Button With KoolProg Special Character For Both Project Name And Project Path After Opening Created Project From Open Option In SetParameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Project Name Including Special Characters Along With The Path
        And Click On Save Button In SaveAs Window
        And Verify The File Name Is Not Valid, Window Dialog Popup Is Visible
        And Click On Ok Button In SaveAs Window Dialog PopUp
        Then Verify If The Entered Project Name With Special Characters Is Displayed In Edit Box Of The SaveAs Dialog

   @common @KP_Common_ID_54.5
   Scenario: KP_Common_ID_54.5: Verify Negative Test Cases For Save As Button With Window Special Character After Opeining Project File Form Set Paramter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Project Name Including Special Characters
        And Click On Save Button In SaveAs Window
        And Verify The File Name Is Not Valid, Window Dialog Popup Is Visible
        And Click On Ok Button In SaveAs Window Dialog PopUp
        Then Verify If The Entered Project Name With Special Characters Is Displayed In Edit Box Of The SaveAs Dialog

    @common @KP_Common_ID_54.6
    Scenario: KP_Common_ID_54.6: Verify Saveas Project File Exists Pop Up Is Visible After Writing Created Project Name In SaveAs Dialog Editbox After Opening Project From Open Option In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Created Project Name In Dialog EditBox
        And Click On Save Button In SaveAs Window
        Then Verify Project File Name Already Exists, Do You Want To Replace It, Window Dialog Popup Is Visible

    Scenario: KP_Common_ID_54.7: Verify saveas exits project file with clicking No button in project already exists popup when project is opened from open option in setParameters window.


        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Created Project Name In Dialog EditBox
        And Click On Save Button In SaveAs Window
        And Verify Confirm Save As PopUp Is Visible
        When Click On Confirm Save As PopUp No Button
        And Click Cancel Button In SaveAs Dialog
        Then Verify Project Details Will Be Available In Project Window

    Scenario: KP_Common_ID_54.8: Verify Saveas Exits Project File With Clicking On Yes Button In Project Already Exists Popup When Project Is Opened From Open Option In SetParameters Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Created Project Name In Dialog EditBox
        And Click On Save Button In SaveAs Window
        And Verify Confirm Save As PopUp Is Visible
        When Click On Confirm Save As PopUp Yes Button
        Then Verify Project Details Will Be Available In Project Window

   @common @KP_Common_ID_54.9
   Scenario: KP_Common_ID_54.9: Verify Saveas File Is Displayed In The Recent Project List In SetParameter Window After Opening File From Open Option In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
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
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Get Recent File List From Set Parameter Window
        Then Check The Saved File Should Display In The Set Parameter Window Recent Project List

    @common @KP_Common_ID_54.10
    Scenario: KP_Common_ID_54.10: Verify, Saveas Project File In Browsed Path After Opening Project From Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
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

    @common @KP_Common_ID_54.11
    Scenario: KP_Common_ID_54.11: Verify, Saveas Project File In Browsed Path From Open Window And That Path Should Come Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
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

    @common @KP_Common_ID_57.2
    Scenario: KP_Common_ID_57.2: Verification Of Parameter Sheet Button In SetParameter Window After Opening File From Open Option In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except EET, EKE, AKCC
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
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Print Button
        Then Verify Popup Message Should Come As 'Print' In Print Window
        And Verify Header Of Popup Window In Print Window
        And Verify Text Of Button In Print Window
        And Click On Parameter Sheet Button
        And Verify Parameter Sheet Is Visible


    @common @KP_Common_ID_57.6
    Scenario: KP_Common_ID_57.6:  Verification Of Parameter Sheet In PDF Format After Opening File From Open Option In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except EET, EKE, AKCC
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
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Print Button
        And Verify Popup Message Should Come As 'Print' In Print Window
        And Verify Header Of Popup Window In Print Window
        When Click On Parameter Sheet Button
        Then Verify Parameter Sheet Is Visible
        And Click On Export Button In Parameter Sheet Window
        And Verify Parameter Sheet In PDF Format
        And Verify Default PDF Parameter Sheet Name Is Available In Saved Path

    Scenario: KP_Common_ID_58.1:  Verification Of Display Of Searched Menu Code In Project Window Datagrid After Opening File From Open Option In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except AKCC
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
        When Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Random Menu Code In Search Editbox
        And Click On Search Button In Search Bar
        Then Verify If The Searched Menu Code Displays In Datagrid

    @common @KP_Common_ID_58.2
    Scenario: KP_Common_ID_58.2: Verification Of Display Of Searched Parameter Name In Project Window Datagrid After Opening File From Open Option In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except AKCC
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
        When Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Parameter Name In Search Editbox
        And Click On Search Button In Search Bar
        Then Verify If The Searched Parameter Name Displays In Datagrid

    @common @KP_Common_ID_58.3
    Scenario: KP_Common_ID_58.3:Verification Of Datagrid After Clicking On Cancel Button In Search Bar After Opening File From Open Option In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except AKCC
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
        And Parse The DataGrid
        And Check Parameter Count From Datagrid
        And Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Parameter Name In Search Editbox
        And Click On Search Button In Search Bar
        When Click On Cancel Button In Search Bar
        Then Verify All The Parameter Should Come In Datagrid
        And Verify Help Of First Parameter In First Group Should Display

    @common @KP_Common_ID_58.4
    Scenario: KP_Common_ID_58.4: Verification Of Parameter Value For Searched Parameter After Changing Their Value After Opening File From Open Option In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except AKCC
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
        And Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Random Menu Code In Search Editbox
        And Click On Search Button In Search Bar
        And Verify If The Searched Parameter Name Displays In Datagrid
        When Change The Value Of Searched Parameter
        Then Changed Random Value Should Show In DataGrid With Pink TextBox And With Grey Color Circle

    @common @KP_Common_ID_59.1
    Scenario: KP_Common_ID_59.1: Verification To Set Parameter As Fav And Verifying The Same Parameters In Favorite Table In Project Window After Opening File From Open Option In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except AKCC
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
		And Click On All Tree Item In Tree View
		And Get The Integer Parameter To Set As A Favorite
		When Check The CheckBox Of Integer Parameters To Set As Favorite
		And Click On The Favorite Group In Tree View
		#Then Verify Selected Favorite Parameters In Favorite Table
		And UnCheck The CheckBox Of Randomly Selected Parameters In Favorite Table

    @common @KP_Common_ID_59.2
    Scenario: KP_Common_ID_59.2: Verification Of "No favourites selected" PopUp On Clicking Favorite From Tree View When No Parameters Are Set As Favorite After Opening File From Open Option In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except AKCC
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
		And Click On All Tree Item In Tree View
		When Click On The Favorite Group In Tree View
		Then Verify Popup Message Should Come As 'No favourites selected' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible


    @common @KP_Common_ID_59.3
    Scenario: KP_Common_ID_59.3: Verification Of Removal Of Favorite Parmaters And Verifying The Same Parameters Not Coming In Favorite Table After Opening File From Open Option In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except AKCC
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


    @common @KP_Common_ID_59.4
    Scenario: KP_Common_ID_59.4: Verification Of Change Of Favorite Parmaters And Verifying The Same Changed Parameters  Coming In Favorite Table In Project Window From Open Option In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except AKCC
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
        When Click On All Tree Item In Tree View
		And Change Integer Parameter Values
        And Click Save Button In Project Window
        And Check Saved Successfully Popup Is Displayed
		And Click Ok Button In Saved Successfully Popup Window
        And Check The CheckBox Of Integer Parameters To Set As Favorite
        Then Changed Value Should Show In DataGrid Without Pink TextBox And Grey Color Circle
        And UnCheck The CheckBox Of Randomly Selected Parameters In Favorite Table


    Scenario: KP_Common_ID_60.1: Verification Of Factory Reset In Offline Mode After Accepting The Changes In Project Window After Opening File From Open Option In SetParameter Window.

		Given KoolProg Had Opened
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open Created Project In Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
		When Click On Factory Reset Button
		Then Check 'KoolProg' Header Text In PopUp Window
		And Verify Yes, No And X Button Are Enable In Project Window
		And Check 'Discard changes?' Text Is Displayed In PopUp Window
		And Click On Yes Button On PopUp Window
		And Check 'Do you want to change to factory settings?' Text Is Displayed In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Check Cancel Button Is Enabled In Popup Window
		And Check InProject Button Is Enabled In PopUp Window
		And Click On In Project Button In Popup Window
		And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'OFFLINE' mode
		And Check Saved Successfully Popup Is Displayed
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Click Ok Button In Saved Successfully Popup Window
		And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle

	Scenario: KP_Common_ID_60.2: Verification Of Factory Reset In Offline Mode Without Accepting The Changes In Project Window After Opening File From Open Option In SetParameter Window.

	    Given KoolProg Had Opened
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open Created Project In Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
		When Click On Factory Reset Button
		And Check 'KoolProg' Header Text In PopUp Window
		And Verify Yes, No And X Button Are Enable In Project Window
		And Check 'Discard changes?' Text Is Displayed In PopUp Window
		And Click On No Button On PopUp Window
		Then Changed Value Should Show In DataGrid With Pink TextBox And Grey Color Circle

	Scenario: KP_Common_ID_60.3: Verification Of Factory Reset In Offline Mode After Saving The Changed Values In Project Window After Opening File From Open Option In SetParameter Window.

	    Given KoolProg Had Opened
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open Created Project In Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Click Save Button In Project Window
        And Check Saved Successfully Popup Is Displayed
		And Click Ok Button In Saved Successfully Popup Window
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		When Click On Factory Reset Button
		Then Check 'Do you want to change to factory settings?' Text Is Displayed In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Check Cancel Button Is Enabled In Popup Window
		And Check InProject Button Is Enabled In PopUp Window
		And Click On In Project Button In Popup Window
		And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'OFFLINE' mode
		And Check Saved Successfully Popup Is Displayed
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Click Ok Button In Saved Successfully Popup Window
		And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle


    @common @KP_Common_ID_62.1
    Scenario: KP_Common_ID_62.1: Verification Of View More In After Opening Project File From Open Button In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        When The Project Window Is Visible
        Then Click On View More Button And Verify View More Window Opened


    @common @KP_Common_ID_63.1
    Scenario: KP_Common_ID_63.1: Verification Of Recent Project From Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Verify Home Window Should Come
        When New Project Is Created For Random Controller Except AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Home Window Should Come
        And Go To Set Parameter Window
        And Get Recent File List From Set Parameter Window
        Then Check The Recent File ToolTip In Set Parameter Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Menu Bar Icons Visible In Project Window
        And Verify Menu Bar Icons Enable And Disable In Project Window
        And Verify Set Parameter Label In Project Window
        And Verify Project Name Label Should Be Visible In Project Window
        And Verify Search And View More Is Visible
        And Verify Search And View More Are Enable
        And Verify That Tree View Default Groups Will Expand


    @common @KP_Common_ID_64.1
    Scenario: KP_Common_ID_64.1: Verification Of Tree View In Recent Opened Project Window From Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify That Tree View Default Groups Will Expand
        And Click On All Tree Item In Tree View
        And Verify Tree View Is Collapsed

    @common
    Scenario: KP_Common_ID_65.1: Verification Of Changed Values In Recent Opened Project Window From Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        Then The Project Window Is Visible
        And Change Integer Parameter Values
        And Changed Value Should Show In DataGrid With Pink TextBox And Grey Color Circle

    @common @KP_Common_ID_66.1
    Scenario: KP_Common_ID_66.1: Verification Of Home Button In Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Home Window Should Come
        And Go To Set Parameter Window
        And Get Recent File List From Set Parameter Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        Then  Verify Home Window Should Come
        And Verify Text Of Set parameters, Copy to controller And On-Line Service On Home Screen
        And Verify KoolProg Version Number On Home Screen
        And Verify Danfoss Website Is Displaying In Home Screen

    @common @KP_Common_ID_66.2
    Scenario: KP_Common_ID_66.2: Verify Project Window Will Come After Clicking On No Button On "Do you want to save the Changes made?" In Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Home Window Should Come
        And Go To Set Parameter Window
        And Get Recent File List From Set Parameter Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify Yes, No And X Button Are Visible In Project Window
        And Verify Yes, No And X Button Are Enable In Project Window
        And Verify Text Of Yes, No And X Button In Project Window
        When Click On No Button On PopUp Window
        Then Verify KoolProg Version Number On Home Screen
        And Verify Danfoss Website Is Displaying In Home Screen
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Project Details Will Be Available In Project Window
        And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle

    @common @KP_Common_ID_66.3
    Scenario: KP_Common_ID_66.3: Verify Home Window Will Come After Clicking On Yes Button On "Do you want to save the Changes made?" Popup Window In Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Home Window Should Come
        And Go To Set Parameter Window
        And Get Recent File List From Set Parameter Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify Yes, No And X Button Are Visible In Project Window
        And Verify Yes, No And X Button Are Enable In Project Window
        And Verify Text Of Yes, No And X Button In Project Window
        When Click On Yes Button On PopUp Window
        Then  Verify Home Window Should Come
        And Verify Text Of Set parameters, Copy to controller And On-Line Service On Home Screen
        And Verify KoolProg Version Number On Home Screen
        And Verify Danfoss Website Is Displaying In Home Screen
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Open The Created File In Project Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle

    @common @KP_Common_ID_67.1
    Scenario: KP_Common_ID_67.1: Verification of Open Window In Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Open Button In Project Window
        Then Verify Open Window
        And Verify Project File Extension In Open Window

    @common @KP_Common_ID_67.2
    Scenario: KP_Common_ID_67.2: Verification Of Project Details After Selecting Project File In Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Goto Temporary Directory In Open Dialog Window
        When Select Saved Project From Working Directory Path
        Then Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window

    @common @KP_Common_ID_67.3
    Scenario: KP_Common_ID_67.3: Verify "Do you want to save the Changes made?" Popup Window After Clicking On Open Window As Parameter Value Got Changed In Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        When Click On Open Button In Project Window
        Then Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify Yes, No And Cancel Button Are Visible
        And Verify Yes, No And Cancel Button Are Enable
        And Verify Text Of Yes, No And Cancel Button

    @common @KP_Common_ID_67.4
    Scenario: KP_Common_ID_67.4: Verification Of Parameter Values In File After Clicking On Yes In "Do you want to save the Changes made?" Dialogue box After Opening Project File From Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Click On Open Button In Project Window
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        When Click On Yes Button On PopUp Window
        And Verify Open Window
        And Goto Temporary Directory In Open Dialog Window
        And Select Saved Project From Temp Directory Path
        And Verify Open Window Should Not Visible
        And Click On Open Button In Project Window
        And Open The Created File In Project Window
        Then Changed Value Should Show In DataGrid Without Pink TextBox And Grey Color Circle

    @common @KP_Common_ID_67.5
    Scenario: KP_Common_ID_67.5: Verification Of Parameter Values In File After Clicking On No In "Do you want to save the Changes made?" Dialogue Box After Opening Project File From Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
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
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Click On Open Button In Project Window
        And Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        When Click On No Button On PopUp Window
        And Verify Open Window
        And Goto Temporary Directory In Open Dialog Window
        And Select Saved Project From Temp Directory Path
        And Verify Open Window Should Not Visible
        And Click On Open Button In Project Window
        And Open The Created File In Project Window
        Then Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle

    @common @KP_Common_ID_67.6
    Scenario: KP_Common_ID_67.6: Verification Of Values In File After Clicking On Cancel In "Do you want to save the Changes made?" Dialogue Box In Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        When Click On Open Button In Project Window
        Then Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Click On Cancel Button On Popup Window
        And The Project Window Is Visible
        And Changed Value Should Show In DataGrid With Pink TextBox And Grey Color Circle

    @common
    Scenario: KP_Common_ID_67.7: Verification Of Values In File After Clicking On X In "Do you want to save the Changes made?" Dialogue Box In Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        When Click On Open Button In Project Window
        Then Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Click On X Button On Popup Window
        And The Project Window Is Visible
        And Changed Value Should Show In DataGrid With Pink TextBox And Grey Color Circle


    @common @KP_Common_ID_67.8
    Scenario: KP_Common_ID_67.8: Verification Of Project Details After Writing The Project File Name In Open Popup's Edit Box In Recent Opened Project From Set Parameter Window.


        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        Then Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window

    @common
    Scenario: KP_Common_ID_67.9: Verification Of Previous Project Details After Clicking On Cancel Button On Open Window In Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Open Window Is Visible
        When Click On The Open Window Cancel Button
        Then The Project Window Is Visible
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window

     Scenario: KP_Common_ID_67.10:  Verification To Open Unavailable File In Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Open Window Is Visible
        When Enter A Unavailable Filename
        Then Click Open Button in Open Window
        And Verify Popup Message For Unavailable File Displays
        And Click Ok Button In Open Popup Window
        And Click Cancel Button In Open File Dialog
        And The Project Window Is Visible

    @common
    Scenario: KP_Common_ID_67.11: The Project Already Open Popup Should Come While Opening The Current Project Itself In Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Open Window Is Visible
        When Open The Created File In Project Window
        Then Verify Popup Message Should Come As 'Project already open' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible

    Scenario: KP_Common_ID_67.12: Verification Of Renaming File Name (With Special Char - &  ;  ,  ' ) From Outside The KoolProg In Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Open Window Is Visible
        And Get Filepath From Open Window And Rename The Existing File With New Invalid File Name
        When Verify Popup Message Should Come As '& * | ; : < > / " ? , '  Characters Not Supported!' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        Then The Project Window Is Visible
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window

    @common @KP_Common_ID_67.13
    Scenario: KP_Common_ID_67.13: Verification Of Changing  Values To Invalid Values (String Instead Of Number) In Project File From Outside The KoolProg In Recent Opened Project From Set Parameter Window.



        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except EKE, AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Get Integer Parameters From Database With Invalid Values
        When Modify Parameter Values In Duplicate Project File
        And Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        Then Verify Popup Message Should Come As 'File is not valid.' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Project Details Will Be Available In Project Window

    Scenario: KP_Common_ID_67.14: The Browsed Path Should Not Come In The Open Window If Project Not Opened In Recent Opened Project From Set Parameter Window.



        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Open The Created File In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Save the project in Temp Location Using Save As Option
        And Click On Open Button In Project Window
        And Browse The File That Is Saved In Temporary Location
        And Click Cancel Button In Open File Dialog
        When Click On Open Button In Project Window
        Then Verify Open Window Should Not Open With Temp Path

  Scenario: KP_Common_ID_67.15: Verification Of Changing Values With Valid Values In File From Outside KoolProg In Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Only EKE
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Get Integer Parameters From Database With Random Value
        When Modify Parameter Values In Duplicate Project File
        And Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        Then Verify Popup Message Should Come As 'File Modified outside the KoolProg or might be old file.' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Open Window Should Not Visible
        And Verify Project Details Will Be Available In Project Window

     @common @KP_Common_ID_67.16
     Scenario: KP_Common_ID_67.16: The Project Window Is Visible After Clicking On Cancel Button In Open Window In Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Open Button In Project Window
        And Open Window Is Visible
        Then Click On The Open Window Cancel Button
        And The Project Window Is Visible

    Scenario: KP_Common_ID_67.17: Verify Project Can Be Opened From Any Location Instead Of Default Location In Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Save The Project In Temp Location Using File Copy
        And Add Required Delay For 'SAVING_THE_PROJECT_USING_FILE_COPY' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Opening Saved Project From Temp Path
        And Add Required Delay For 'OPENING_PROJECT_IN_PROJECT_WINDOW' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Verify Project Details Will Be Available In Project Window
        When Click On Open Button In Project Window
        Then Verify Open Window Should Open With Temp Path

    @common
    Scenario: KP_Common_ID_67.18: Verification Of Renaming File Name With Valid File Name (Without Any Special Char) From Outside The KoolProg n Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        When Open Window Is Visible
        And Get last saved filepath and valid filename and open the newly copied file
        Then The Project Window Is Visible

    Scenario: KP_Common_ID_68.1: Verification of Save Button After Changing Values And Checking The Appropriate Color Change In Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        When Click Save Button In Project Window
        Then Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle

    Scenario: KP_Common_ID_68.2: Verification Of Project Details After Clicking On No Button On 'No changes has been made'Popup Window In Recent Opened Project From Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click Save Button In Project Window
        Then Verify Popup Message Should Come As 'No changes has been made' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Project Details Will Be Available In Project Window

    @common
    Scenario: KP_Common_ID_69.1: Verification Of Saveas Window After Opening The Project From Recent Project List In SetParameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Changed Value Should Show In DataGrid With Pink TextBox And Grey Color Circle
        When Click On Saveas Button In Project Window
        Then Verify Saveas Window In Project Window

    @common @KP_Common_ID_69.2
    Scenario: KP_Common_ID_69.2: Verification Of Saveas Project File In Project Window After Opening The Project From Recent Project In SetParameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
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

    @common
    Scenario: KP_Common_ID_69.3: Verify, Saveas Project File Instead Of Default File Name In Project Window After Opening The Created Poject File From Recent Project List In SetParameters Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
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

    @common @KP_Common_ID_69.4
    Scenario: KP_Common_ID_69.4: Verify Negative Test Cases For Save As Button With KoolProg Special Character For Both Project Name And Project Path After Opening Created Project From Recent Project List In SetParameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Project Name Including Special Characters Along With The Path
        And Click On Save Button In SaveAs Window
        And Verify The File Name Is Not Valid, Window Dialog Popup Is Visible
        And Click On Ok Button In SaveAs Window Dialog PopUp
        Then Verify If The Entered Project Name With Special Characters Is Displayed In Edit Box Of The SaveAs Dialog

   @common @KP_Common_ID_69.5
   Scenario: KP_Common_ID_69.5: Verify Negative Test Cases For Save As Button With Window Special Character After Opeining Recent Project File Form Set Paramter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Project Name Including Special Characters
        And Click On Save Button In SaveAs Window
        And Verify The File Name Is Not Valid, Window Dialog Popup Is Visible
        And Click On Ok Button In SaveAs Window Dialog PopUp
        Then Verify If The Entered Project Name With Special Characters Is Displayed In Edit Box Of The SaveAs Dialog

   @common @KP_Common_ID_69.6
   Scenario: KP_Common_ID_69.6: Verify Saveas File Is Displayed In The Recent Project List In SetParameter Window After Opening File From Recent Opened Project In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
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
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Get Recent File List From Set Parameter Window
        Then Check The Saved File Should Display In The Set Parameter Window Recent Project List

    @KP_Common_ID_69.7
    Scenario: KP_Common_ID_69.7: Verify Saveas Project File Exists Pop Up Is Visible After Writing Created Project Name In SaveAs Dialog Editbox After Opening Recent Project From Open Option In Set Parameter Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Created Project Name In Dialog EditBox
        And Click On Save Button In SaveAs Window
        Then Verify Project File Name Already Exists, Do You Want To Replace It, Window Dialog Popup Is Visible

    @common @KP_Common_ID_69.8
    Scenario: KP_Common_ID_69.8: Verify Saveas Exits Project File With Clicking No Button In Project Already Exists Popup After Opening Project From Recent Project In SetParameters Project.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Created Project Name In Dialog EditBox
        And Click On Save Button In SaveAs Window
        And Verify Confirm Save As PopUp Is Visible
        When Click On Confirm Save As PopUp No Button
        And Click Cancel Button In SaveAs Dialog
        Then Verify Project Details Will Be Available In Project Window

    Scenario: KP_Common_ID_69.9: Verify saveas exits project file with clicking Yes button in project already exists popup after opening project from recent project in setParameters project.



        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Write Created Project Name In Dialog EditBox
        And Click On Save Button In SaveAs Window
        And Verify Confirm Save As PopUp Is Visible
        When Click On Confirm Save As PopUp Yes Button
        Then Verify Project Details Will Be Available In Project Window

    @common @KP_Common_ID_69.10
    Scenario: KP_Common_ID_69.10: Verify, Saveas Project File In Browsed Path After Opening Project From Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
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

    @common @KP_Common_ID_69.11
    Scenario: KP_Common_ID_69.11: Verify, Saveas Project File In Browsed Path From Recent Project Window And That Path Should Come Preference Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window
        And Get Temp Path From Dialog Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window From Temp Path
        And Click On Save Button In SaveAs Window
        And Check Saved Successfully Popup Is Displayed
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Verify The File Saved With Different Project Name Should Display
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
        And Go To Home Window From Project Window
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        Then Verify Saveas Path And Preference Path Should Be Same


    @common @KP_Common_ID_72.2
    Scenario: KP_Common_ID_72.2: Verification Of Parameter Sheet Button In SetParameter Window After Opening Project Fom Recent Project In SetParameters Project.


        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except EET, EKE, AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Print Button
        Then Verify Popup Message Should Come As 'Print' In Print Window
        And Verify Header Of Popup Window In Print Window
        And Verify Text Of Button In Print Window
        And Click On Parameter Sheet Button
        And Verify Parameter Sheet Is Visible

    @common @KP_Common_ID_72.6
    Scenario: KP_Common_ID_72.6: Verification Of Parameter Sheet In PDF Format After Opening Project Fom Recent Project In SetParameters Project.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except EET, EKE, AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Print Button
        And Verify Popup Message Should Come As 'Print' In Print Window
        And Verify Header Of Popup Window In Print Window
        When Click On Parameter Sheet Button
        Then Verify Parameter Sheet Is Visible
        And Click On Export Button In Parameter Sheet Window
        And Verify Parameter Sheet In PDF Format
        And Verify Default PDF Parameter Sheet Name Is Available In Saved Path

    @common @KP_Common_ID_73.1
    Scenario: KP_Common_ID_73.1: Verification Of Display Of Searched Menu Code In Project Window Datagrid After Opening Project Fom Recent Project In SetParameters Project.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Random Menu Code In Search Editbox
        And Click On Search Button In Search Bar
        Then Verify If The Searched Menu Code Displays In Datagrid

    @common @KP_Common_ID_73.2
    Scenario: KP_Common_ID_73.2: Verification Of Display Of Searched Parameter Name In Project Window Datagrid After Opening Project Fom Recent Project In SetParameters Project.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
       And New Project Is Created For Random Controller Except AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Parameter Name In Search Editbox
        And Click On Search Button In Search Bar
        Then Verify If The Searched Parameter Name Displays In Datagrid

    @common @KP_Common_ID_73.3
    Scenario: KP_Common_ID_73.3: Verification Of Datagrid After Clicking On Cancel Button In Search Bar After Opening Project Fom Recent Project In SetParameters Project.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Parse The DataGrid
        And Check Parameter Count From Datagrid
        And Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Parameter Name In Search Editbox
        And Click On Search Button In Search Bar
        When Click On Cancel Button In Search Bar
        Then Verify All The Parameter Should Come In Datagrid
        And Verify Help Of First Parameter In First Group Should Display

    @common @KP_Common_ID_73.4
    Scenario: KP_Common_ID_73.4: Verification Of Parameter Value For Searched Parameter After Changing Their Value From Recent Project In SetParameters Project.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Search Editbox
        And Get Random Parameter Details From Database
        And Write Random Menu Code In Search Editbox
        And Click On Search Button In Search Bar
        And Verify If The Searched Parameter Name Displays In Datagrid
        When Change The Value Of Searched Parameter
        Then Changed Random Value Should Show In DataGrid With Pink TextBox And With Grey Color Circle

    @common @KP_Common_ID_74.1
    Scenario: KP_Common_ID_74.1: Verification To Set Parameter As Fav and verifying The Same Parameters In Favorite Table In Project Window From Recent Project In SetParameters Project.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On All Tree Item In Tree View
		And Get The Integer Parameter To Set As A Favorite
        When Check The CheckBox Of Integer Parameters To Set As Favorite
        And Click On The Favorite Group In Tree View
        #Then Verify Selected Favorite Parameters In Favorite Table
        And UnCheck The CheckBox Of Randomly Selected Parameters In Favorite Table


    @common @KP_Common_ID_74.2
    Scenario: KP_Common_ID_74.2: Verification Of "No favourites selected" PopUp On Clicking Favorite From Tree View When No Parameters Are Set As Favorite From Recent Project In SetParameters Project.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On All Tree Item In Tree View
        When Click On The Favorite Group In Tree View
        Then Verify Popup Message Should Come As 'No favourites selected' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible


    @common @KP_Common_ID_74.3
    Scenario: KP_Common_ID_74.3: Verification Of Removal of Favorite Parmaters and verifying The Same Parameters Not Coming In Favorite Table From Recent Project In SetParameters Project.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And New Project Is Created For Random Controller Except AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
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

    @common @KP_Common_ID_74.4
    Scenario: KP_Common_ID_74.4: Verification Of Changing Values For Favorite Parameter In Favorite Table After Opening Project File From Recent Project From Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Verify Home Window Should Come
        And New Project Is Created For Random Controller Except AKCC
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Home Window Should Come
        And Go To Set Parameter Window
        And Get Recent File List From Set Parameter Window
        And Check The Recent File ToolTip In Set Parameter Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        When Click On All Tree Item In Tree View
        And Get The Integer Parameter To Set As A Favorite
        And Check The CheckBox Of Integer Parameters To Set As Favorite
        And Change Integer Parameter Values
        And Click On All Tree Item In Tree View
        Then Changed Value Should Show In DataGrid With Pink TextBox And Grey Color Circle
		And UnCheck The CheckBox Of Randomly Selected Parameters In Favorite Table

	Scenario: KP_Common_ID_75.1: Verification Of Factory Reset Offline After Accepting The Changes In Project Window After Opening The file From Recent Project List In SetParameter Window.

	    Given KoolProg Had Opened
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Home Window Should Come
        And Go To Set Parameter Window
        And Get Recent File List From Set Parameter Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
		When Click On Factory Reset Button
		Then Check 'KoolProg' Header Text In PopUp Window
		And Verify Yes, No And X Button Are Enable In Project Window
		And Check 'Discard changes?' Text Is Displayed In PopUp Window
		And Click On Yes Button On PopUp Window
		And Check 'Do you want to change to factory settings?' Text Is Displayed In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Check Cancel Button Is Enabled In Popup Window
		And Check InProject Button Is Enabled In PopUp Window
		And Click On In Project Button In Popup Window
		And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'OFFLINE' mode
		And Check Saved Successfully Popup Is Displayed
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Click Ok Button In Saved Successfully Popup Window
		And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle

	Scenario: KP_Common_ID_75.2: Verification Of Factory Reset Offline Without Accepting The Changes In Project Window After Opening The file From Recent Project List In SetParameter Window.

	    Given KoolProg Had Opened
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Home Window Should Come
        And Go To Set Parameter Window
        And Get Recent File List From Set Parameter Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
		When Click On Factory Reset Button
		Then Check 'KoolProg' Header Text In PopUp Window
		And Verify Yes, No And X Button Are Enable In Project Window
		And Check 'Discard changes?' Text Is Displayed In PopUp Window
		And Click On No Button On PopUp Window
		Then Changed Value Should Show In DataGrid With Pink TextBox And Grey Color Circle

	Scenario: KP_Common_ID_75.3: Verification Of Factory Reset In Offline Mode After Saving The Changed Values In Project Window After Opening The file From Recent Project List In SetParameter Window.

		Given KoolProg Had Opened
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Home Window Should Come
        And Go To Set Parameter Window
        And Get Recent File List From Set Parameter Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Change Integer Parameter Values
        And Click Save Button In Project Window
        And Check Saved Successfully Popup Is Displayed
		And Click Ok Button In Saved Successfully Popup Window
        And Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle
		When Click On Factory Reset Button
		Then Check 'Do you want to change to factory settings?' Text Is Displayed In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Check Cancel Button Is Enabled In Popup Window
		And Check InProject Button Is Enabled In PopUp Window
		And Click On In Project Button In Popup Window
		And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'OFFLINE' mode
		And Check Saved Successfully Popup Is Displayed
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Check X Button Is Enabled In Popup Window
		And Click Ok Button In Saved Successfully Popup Window
		And Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle



    @common @KP_Common_ID_77.1
    Scenario: KP_Common_ID_77.1: Verification Of View More In Project Window After Opening Project File From Recent Project From Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Verify Home Window Should Come
        And New Project Is Created For Random Controller
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Verify Home Window Should Come
        And Go To Set Parameter Window
        And Get Recent File List From Set Parameter Window
        And Check The Recent File ToolTip In Set Parameter Window
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        When The Project Window Is Visible
        Then Click On View More Button And Verify View More Window Opened


    @common @KP_Common_ID_78.1
    Scenario: KP_Common_ID_78.1: Verifiy All Opened Projects From Project Window Should Come In Recent Project Option In Set Parameter Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Verify Home Window Should Come
        When Create Multiple Projects For Random Controller
        And Verify Home Window Should Come
        And Go To Set Parameter Window
        And Get Recent File List From Set Parameter Window
        Then Verify All Created Projects Should Come In Recent Project

   @common @KP_Common_ID_79.1
    Scenario: KP_Common_ID_79.1: Verification Of Copy To Controller Window Without Connecting Controller.

        Given KoolProg Had Opened
        When Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Break The Communication Of Port With KoolProg
        #Then Check Home Button Is Enabled
        And Check Browse Button Is Enabled In Copy To Controller Window
        #And Check Help Button Is Enabled
        And Check Single Controller Programming Label Is Disabled In Copy To Controller Window
        And Check Multiple Controller Programming Label Is Disabled In Copy To Controller Window
        And Check Start Label Is Disabled In Copy To Controller Window
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Verify Please Connect A Controller Label Is Visible In Copy To Controller Window
		And Verify Please Connect A Controller Label Text Is Displayed In Copy To Controller Window

    @common @KP_Common_ID_86.1
    Scenario: KP_Common_ID_86.1: Verification Of On-line Service Window When Controller Is Not Connected

        Given KoolProg Had Opened
        When Disable All Serial Ports
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_OFFLINE_SERVICE_WINDOW' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Open, Home, Help Icons Are Enable
        And Verify SaveAs, Print Icons Are Disable
        And Verify Message Should Come As 'Please connect a controller!' In Import Setting From Controller Window
