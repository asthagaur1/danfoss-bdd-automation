# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC Convert Settings.


    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports


    ######################################## OFFLINE ######################################################

    @KP_AKCC_ID_31.1
    Scenario: KP_AKCC_ID_31.1: Verification Of Convert Setting Button Is Enable In Project Window

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        When The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Convert Setting Icon Is Visible
        And Verify Convert Setting Icon Button Is Enabled

	@KP_AKCC_ID_31.2
    Scenario: KP_AKCC_ID_31.2: Verification Of Convert Setting Window From Project Window

		Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Convert Setting Icon Is Visible
        And Verify Convert Setting Icon Button Is Enabled
        When Click On Convert Setting Icon
        Then Check Convert Setting Window Is Visible And Enabled
        And Verify Labels In Convert Settings Window Are Visible And Enable
        And Verify Labels Texts In Convert Settings Window
        And Verify Image And Buttons In Convert Settings Window Are Visible And Enable
        And Verify Buttons Texts In Convert Settings Window

    @KP_AKCC_ID_31.3
    Scenario: KP_AKCC_ID_31.3: Check If New FileName String Length Should Not Exceed 20 Characters In Convert Settings Window From Create Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Set New File Name With '21' Characters Length
        Then Verify New File Name Should Accept Only 20 Characters
        And Set New File Name With '30' Characters Length
        And Verify New File Name Should Accept Only 20 Characters

    @KP_AKCC_ID_31.4
    Scenario: KP_AKCC_ID_31.4: Check If The Popup Is Displayed When Special Characters Are Entered In New FileName Textbox In Convert Settings Window From Create Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Set FileName With Special Characters
        Then Verify Popup Message Should Come As '& * | ; : < > / " ? \ , '  Characters Not Supported!' In Convert Settings Window
        And Verify Header Of Popup Window In Convert Settings Window
        And Verify OK and X button In Popup Window Is Visible And Enabled In Convert Settings Window
        And Verify OK and X button In Popup Window In Convert Settings Window
        And Click Ok Button In Popup Window On Convert Settings Window

     @KP_AKCC_ID_31.5
     Scenario: KP_AKCC_ID_31.5: Check If The File Name In Convert Settings Window Gets Saved In The Location Given Under Preference Settings From Create Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Set New File Name With '20' Characters Length
        And Select Software Version Which Is Connected To Controller
        And Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Open Window Is Visible
        Then Open The Converted File In Project Window
        And Click Open Button in Open Window
        And Verify Popup Message Should Come As 'Project already open' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
        And Delete Imported New Code Number And Software Version

     @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

     @KP_AKCC_ID_31.6
     Scenario: KP_AKCC_ID_31.6: Verify The Message Popup "File already exists. Do you want to override" Should Come When Entering Existing Project Name In Convert Settings Window From Create Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Set Existing Project Name As The File Name In Convert Settings Window
        And Select Software Version Which Is Connected To Controller
        And Click On Convert File Button
        And Verify Popup Window Is Visible
        Then Verify Popup Message Should Come As 'File already exists. Do you want to overwrite?' In Convert Settings Window
        And Verify Header Of Popup Window In Convert Settings Window
        And Verify Yes, No And X Button Are Visible
        And Verify Yes, No And X Button Are Enable
        And Verify Text Of Yes, No And X Button
        And Delete Imported New Code Number And Software Version


     @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

     @KP_AKCC_ID_31.7
     Scenario: KP_AKCC_ID_31.7: Verify The Product Name In Convert Settings Window Is Same As Opened Project From Create Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        Then Verify Product Name In Convert Settings Window
        And Delete Imported New Code Number And Software Version

    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.8
    Scenario: KP_AKCC_ID_31.8: Check The List Of Code Numbers Displayed In Convert Settings Window From Create Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Get Code Number List From Project Description Window
        And Select Code Number And Software Version In Project Description Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        Then Verify The List Of Code Numbers In Convert Settings Window
        And Delete Imported New Code Number And Software Version

    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.9
    Scenario: KP_AKCC_ID_31.9: Check The List Of Software Versions Displayed In Convert Settings Window From Create Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Get SW Version List From Project Description Window
        And Select Code Number And Software Version In Project Description Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        Then Verify The List Of Software Versions In Convert Settings Window
        And Delete Imported New Code Number And Software Version

    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data


    @KP_AKCC_ID_31.10
    Scenario: KP_AKCC_ID_31.10: Verification Of Product Information Window In Convert Setting Window From Project Window

		Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Check Convert Setting Icon Is Visible And Enabled
        When Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        Then Check Info Button Is Visible And Enabled
        And Click On Info Button
        And Check Product Information Window Is Visible
        And Verify Product Information Window Will Be Enable And Product Information Window Should Have Controller Name Label, Controller Image, Circuit And Description


    @KP_AKCC_ID_31.12
    Scenario: KP_AKCC_ID_31.12: Select The Same SW Version In Convert Setting As The File Already Opened From Create Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        When Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Used In Creating Project
        Then Verify Message Of File Name Cant Be Empty In Convert Settings Window
    	And Verify Convert File Button Is Not Enabled
        And Delete Imported New Code Number And Software Version


     @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data


     @KP_AKCC_ID_31.16
     Scenario: KP_AKCC_ID_31.16: Verify If Cancel Button Is Clicked Changes Made In The Convert Settings Window Is Discarded And The Older SW Version Is Maintained From Create Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Connected To Controller
        When Click On The Cancel Button In Convert Settings Window
        And Verify Popup Window Is Visible
        And Verify Popup Message Should Come As 'Given directory to save files is not found, please check the settings.' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        Then Verify The Changes Made In The Convert Settings Is Not Available In Project Window
        And Delete Imported New Code Number And Software Version

    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.17
    Scenario: KP_AKCC_ID_31.17: When The Convert Setting Window Is Open, The User Should Not Able To Access Project Window Icons Like Buttons From Create Project Window

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Click On Search Editbox
        Then Verify Cursor Is Not Focused In Search Editbox
        And Verify Project Details Does Not Collapses When Collapse Is Clicked
        And Verify Window Help Expander Does Not Collapses When Clicked On Window Help Expander Collapse Button
        And Go To Home Window From Project Window
        And Verify Home Window Should Not Be Visible
        And Click On Open Button In Project Window
        And Verify Open Window Should Not Visible
        And Click Save Button In Project Window
        And Verify Popup Window Is Not Visible
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window Is Not Enabled
        And Click On Print Button
        And Verify Parameter Sheet Is Not Visible
        And Click On Factory Reset Button
        And Verify Popup Window Is Not Visible
        And Click On the Quick Settings Icon
        And Verify Quick Settings Window Is Not Visible
        And Click On i Button In Project Window
        And Verify Product Information Window Is Not Visible

    @KP_AKCC_ID_31.18
    Scenario: KP_AKCC_ID_31.18: Verify Popup Message Should Come As "Do you want to save the Changes made?" When Making Changes In The Opened File And Clicking On The Convert Settings Window From Create Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Get The 'DataType' Of 'Integer' From 'Parameter_collection'
        And Get Random Values Count '1' for 'Integer' In DataGrid For 'DataType_Integer_Collection'
        And Get The 'DataType' Of 'Float' From 'Parameter_collection'
		And Get Random Values Count '1' for 'Float' In DataGrid For 'DataType_Float_Collection'
		And Combine The Collection 'Integer_updated_collection' And 'Float_updated_collection'
		And Get The 'DataType' Of 'Enum' From 'Parameter_collection'
        And Get Random Values Count '1' for 'Enum' In DataGrid For 'DataType_Enum_Collection'
        And Combine The Collection 'Enum_updated_collection' And 'Merged_Collection'
        And Set Random Values In DataGrid For 'Merged_Collection'
        When Click On Convert Setting Icon
        Then Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify Yes, No And X Button Are Visible
        And Verify Yes, No And X Button Are Enable In Project Window
        And Click On Yes Button On PopUp Window

    @KP_AKCC_ID_31.19
    Scenario: KP_AKCC_ID_31.19: Check If File Is Saved In Changed Location From Convert Settings Window In Create Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Click On Browse Button In Preference Window
        And Select New Path In Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Connected To Controller
        When Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Open Window Is Visible
        And Open The Converted File In Project Window
        And Click Open Button in Open Window
        Then Verify Popup Message Should Come As 'Project already open' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
        And Delete Imported New Code Number And Software Version


    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.20
    Scenario: KP_AKCC_ID_31.20: Check If Files Created Are In .cbk Format In Convert Settings Window From Create Project Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Connected To Controller
        When Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Open The Converted File In Project Window
        Then Verify Project Path And File With Extension For Saved File Is Exist
        And Click Open Button in Open Window
        And Verify Popup Message Should Come As 'Project already open' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
        And Delete Imported New Code Number And Software Version

    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.21
    Scenario: KP_AKCC_ID_31.21: Check If New Parameters Available In Quick Wizard Are Added After Convert Settings From Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        When Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Connected To Controller
        And Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Get Project Details From The UI In Project Window
        And Click On Quick Wizard Icon
        And Get The Quick Settings Collection From The UI
        Then Verify Quick Wizard Collection From CDF File With The Quick Wizard UI

    @KP_AKCC_ID_31.47
    Scenario: KP_AKCC_ID_31.47: Verify Convert Setting Button Is Enable In Open Window

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
        Then Verify Convert Setting Icon Is Visible
        And Verify Convert Setting Icon Button Is Enabled

    @KP_AKCC_ID_31.48
    Scenario: KP_AKCC_ID_31.48: Verification Of Convert Setting Window From Open Window

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
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Convert Setting Icon Is Visible
        And Verify Convert Setting Icon Button Is Enabled
        When Click On Convert Setting Icon
        Then Check Convert Setting Window Is Visible And Enabled
        And Verify Labels In Convert Settings Window Are Visible And Enable
        And Verify Labels Texts In Convert Settings Window
        And Verify Image And Buttons In Convert Settings Window Are Visible And Enable
        And Verify Buttons Texts In Convert Settings Window

    @KP_AKCC_ID_31.49
    Scenario: KP_AKCC_ID_31.49 Check If New FileName String Length Should Not Exceed 20 Characters In Convert Settings Window From Open Project Window.

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
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Set New File Name With '21' Characters Length
        Then Verify New File Name Should Accept Only 20 Characters
        And Set New File Name With '30' Characters Length
        And Verify New File Name Should Accept Only 20 Characters

    @KP_AKCC_ID_31.50
    Scenario: KP_AKCC_ID_31.50: Check If The Popup Is Displayed When Special Characters Are Entered In New FileName Textbox From Open Project Window.

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
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Set FileName With Special Characters
        Then Verify Popup Message Should Come As '& * | ; : < > / " ? \ , '  Characters Not Supported!' In Convert Settings Window
        And Verify Header Of Popup Window In Convert Settings Window
        And Verify OK and X button In Popup Window Is Visible And Enabled In Convert Settings Window
        And Verify OK and X button In Popup Window In Convert Settings Window
        And Click Ok Button In Popup Window On Convert Settings Window

     @KP_AKCC_ID_31.51
    Scenario: KP_AKCC_ID_31.51: Check If The File Name In Convert Settings Window Gets Saved In The Location Given Under Preference Settings From Open Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Connected To Controller
        And Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        When Write The Converted Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Open Window Is Visible
        Then Open The Converted File In Project Window
        And Click Open Button in Open Window
        And Verify Popup Message Should Come As 'Project already open' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
        And Delete Imported New Code Number And Software Version


     @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

     @KP_AKCC_ID_31.52
     Scenario: KP_AKCC_ID_31.52: Verify The Message Popup "File already exists. Do you want to override" Should Come When Entering Existing Project Name In Convert Settings Window From Open Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
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
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Set Existing Project Name As The File Name In Convert Settings Window
        And Select Software Version Which Is Connected To Controller
        And Click On Convert File Button
        And Verify Popup Window Is Visible
        Then Verify Popup Message Should Come As 'File already exists. Do you want to overwrite?' In Convert Settings Window
        And Verify Header Of Popup Window In Convert Settings Window
        And Verify Yes, No And X Button Are Visible
        And Verify Yes, No And X Button Are Enable
        And Verify Text Of Yes, No And X Button
        And Delete Imported New Code Number And Software Version

     @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

     @KP_AKCC_ID_31.53
     Scenario: KP_AKCC_ID_31.53: Verify The Product Name In Convert Settings Window Is Same As Opened Project From Open Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
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
        When Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        Then Verify Product Name In Convert Settings Window
        And Delete Imported New Code Number And Software Version

    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.54
    Scenario: KP_AKCC_ID_31.54: Check The List Of Code Numbers Displayed In Convert Settings Window From Open Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Get Code Number List From Project Description Window
        And Select Code Number And Software Version In Project Description Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        Then Verify The List Of Code Numbers In Convert Settings Window
        And Delete Imported New Code Number And Software Version

    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.55
    Scenario: KP_AKCC_ID_31.55: Check The List Of Software Versions Displayed In Convert Settings Window From Open Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Get SW Version List From Project Description Window
        And Select Code Number And Software Version In Project Description Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        When Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        Then Verify The List Of Software Versions In Convert Settings Window
        And Delete Imported New Code Number And Software Version

   	@common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

	@KP_AKCC_ID_31.56
    Scenario: KP_AKCC_ID_31.56: Verification Of Info Window By Opening Recent Project Window From Open Project Window

		Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode

      @KP_AKCC_ID_31.58
    Scenario: KP_AKCC_ID_31.58: Select The Same SW Version In Convert Setting As The File Already Opened From Open Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
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
        When Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Used In Creating Project
        Then Verify Message Of File Name Cant Be Empty In Convert Settings Window
    	And Verify Convert File Button Is Not Enabled
        And Delete Imported New Code Number And Software Version


     @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

     @KP_AKCC_ID_31.62
     Scenario: KP_AKCC_ID_31.62: Verify If Cancel Button Is Clicked Changes Made In The Convert Settings Window Is Discarded And The Older SW Version Is Maintained From Open Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
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
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Connected To Controller
        When Click On The Cancel Button In Convert Settings Window
        And Verify Popup Window Is Visible
        And Verify Popup Message Should Come As 'Given directory to save files is not found, please check the settings.' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        Then Verify The Changes Made In The Convert Settings Is Not Available In Project Window
        And Delete Imported New Code Number And Software Version

    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.63
    Scenario: KP_AKCC_ID_31.63: When The Convert Setting Window Is Open, The User Should Not Able To Access Project Window Icons Like Buttons In Open Project Window

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
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Click On Search Editbox
        Then Verify Cursor Is Not Focused In Search Editbox
        And Verify Project Details Does Not Collapses When Collapse Is Clicked
        And Verify Window Help Expander Does Not Collapses When Clicked On Window Help Expander Collapse Button
        And Go To Home Window From Project Window
        And Verify Home Window Should Not Be Visible
        And Click On Open Button In Project Window
        And Verify Open Window Should Not Visible
        And Click Save Button In Project Window
        And Verify Popup Window Is Not Visible
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window Is Not Enabled
        And Click On Print Button
        And Verify Parameter Sheet Is Not Visible
        And Click On Factory Reset Button
        And Verify Popup Window Is Not Visible
        And Click On the Quick Settings Icon
        And Verify Quick Settings Window Is Not Visible
        And Click On i Button In Project Window
        And Verify Product Information Window Is Not Visible

    @KP_AKCC_ID_31.64
    Scenario: KP_AKCC_ID_31.64: Verify Popup Message Should Come As "Do you want to save the Changes made?" When Making Changes In The Opened File And Clicking On The Convert Settings Window From Open Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
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
        And Get The 'DataType' Of 'Integer' From 'Parameter_collection'
        And Get Random Values Count '1' for 'Integer' In DataGrid For 'DataType_Integer_Collection'
        And Get The 'DataType' Of 'Float' From 'Parameter_collection'
		And Get Random Values Count '1' for 'Float' In DataGrid For 'DataType_Float_Collection'
		And Combine The Collection 'Integer_updated_collection' And 'Float_updated_collection'
		And Get The 'DataType' Of 'Enum' From 'Parameter_collection'
        And Get Random Values Count '1' for 'Enum' In DataGrid For 'DataType_Enum_Collection'
        And Combine The Collection 'Enum_updated_collection' And 'Merged_Collection'
        And Set Random Values In DataGrid For 'Merged_Collection'
        When Click On Convert Setting Icon
        Then Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify Yes, No And X Button Are Visible
        And Verify Yes, No And X Button Are Enable In Project Window
        And Click On Yes Button On PopUp Window

    @KP_AKCC_ID_31.65
    Scenario: KP_AKCC_ID_31.65: Check If File Is Saved In Changed Location From Convert Settings Window In Open Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Click On Browse Button In Preference Window
        And Select New Path In Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Connected To Controller
        When Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Converted Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Open Window Is Visible
        And Open The Converted File In Project Window
        And Click Open Button in Open Window
        Then Verify Popup Message Should Come As 'Project already open' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
        And Delete Imported New Code Number And Software Version

	@common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.66
    Scenario: KP_AKCC_ID_31.66: Check If Files Created Are In .cbk Format In Convert Settings Window From Open Project Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Connected To Controller
        When Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Converted Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Open The Converted File In Project Window
        Then Verify Project Path And File With Extension For Converted File Is Exist
        And Click Open Button in Open Window
        And Verify Popup Message Should Come As 'Project already open' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
        And Delete Imported New Code Number And Software Version

    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.67
    Scenario: KP_AKCC_ID_31.67: Check If New Parameters Available In Quick Wizard Are Added After Convert Settings From Open Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        When Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Connected To Controller
        And Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Converted Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Get Project Details From The UI In Project Window
        And Click On Quick Wizard Icon
        And Get The Quick Settings Collection From The UI
        Then Verify Quick Wizard Collection From CDF File With The Quick Wizard UI


    @KP_AKCC_ID_31.70
    Scenario: KP_AKCC_ID_31.70: Verify Convert Setting Button Is Enable In Recent Window

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
        Then Verify Convert Setting Icon Is Visible
        And Verify Convert Setting Icon Button Is Enabled

    @KP_AKCC_ID_31.71
    Scenario: KP_AKCC_ID_31.71: Verification Of Convert Setting Window From Recent Window

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
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Convert Setting Icon Is Visible
        And Verify Convert Setting Icon Button Is Enabled
        When Click On Convert Setting Icon
        Then Check Convert Setting Window Is Visible And Enabled
        And Verify Labels In Convert Settings Window Are Visible And Enable
        And Verify Labels Texts In Convert Settings Window
        And Verify Image And Buttons In Convert Settings Window Are Visible And Enable
        And Verify Buttons Texts In Convert Settings Window

    @KP_AKCC_ID_31.72
    Scenario: KP_AKCC_ID_31.72: Check If New FileName String Length Should Not Exceed 20 Characters In Convert Settings Window From Recent Project Window.

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
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Set New File Name With '21' Characters Length
        Then Verify New File Name Should Accept Only 20 Characters
        And Set New File Name With '30' Characters Length
        And Verify New File Name Should Accept Only 20 Characters

     @KP_AKCC_ID_31.73
    Scenario: KP_AKCC_ID_31.73: Check If The Popup Is Displayed When Special Characters Are Entered In New FileName Textbox From Recent Project Window.

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
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Set FileName With Special Characters
        Then Verify Popup Message Should Come As '& * | ; : < > / " ? \ , '  Characters Not Supported!' In Convert Settings Window
        And Verify Header Of Popup Window In Convert Settings Window
        And Verify OK and X button In Popup Window Is Visible And Enabled In Convert Settings Window
        And Verify OK and X button In Popup Window In Convert Settings Window
        And Click Ok Button In Popup Window On Convert Settings Window

     @KP_AKCC_ID_31.74
     Scenario: KP_AKCC_ID_31.74: Check If The File Name In Convert Settings Window Gets Saved In The Location Given Under Preference Settings From Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Set New File Name With '20' Characters Length
        And Select Software Version Which Is Connected To Controller
        And Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Open Converted File In Recent Project From Set Parameter Window
        And Click Open Button in Open Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Open Window Is Visible
        Then Open The Converted File In Project Window
        And Verify Popup Message Should Come As 'Project already open' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
        And Delete Imported New Code Number And Software Version


     @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

     @KP_AKCC_ID_31.75
     Scenario: KP_AKCC_ID_31.75: Verify The Message Popup "File already exists. Do you want to override" Should Come When Entering Existing Project Name In Convert Settings Window From Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Set Existing Project Name As The File Name In Convert Settings Window
        And Select Software Version Which Is Connected To Controller
        And Click On Convert File Button
        And Verify Popup Window Is Visible
        Then Verify Popup Message Should Come As 'File already exists. Do you want to overwrite?' In Convert Settings Window
        And Verify Header Of Popup Window In Convert Settings Window
        And Verify Yes, No And X Button Are Visible
        And Verify Yes, No And X Button Are Enable
        And Verify Text Of Yes, No And X Button
        And Delete Imported New Code Number And Software Version


     @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

     @KP_AKCC_ID_31.76
     Scenario: KP_AKCC_ID_31.76: Verify The Product Name In Convert Settings Window Is Same As Opened Project From Recent Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        When Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        Then Verify Product Name In Convert Settings Window

    @KP_AKCC_ID_31.77
    Scenario: KP_AKCC_ID_31.77: Check The List Of Code Numbers Displayed In Convert Settings Window From Recent Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Get Code Number List From Project Description Window
        And Select Code Number And Software Version In Project Description Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        Then Verify The List Of Code Numbers In Convert Settings Window
        And Delete Imported New Code Number And Software Version


    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.78
    Scenario: KP_AKCC_ID_31.78: Check The List Of Software Versions Displayed In Convert Settings Window From Recent Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Get SW Version List From Project Description Window
        And Select Code Number And Software Version In Project Description Window
        And Uncheck The Quick Wizard Option If Selected Controller Has It
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        When Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        Then Verify The List Of Software Versions In Convert Settings Window

     @KP_AKCC_ID_31.79
     Scenario: KP_AKCC_ID_31.79: Verification Of Product Information Window In Convert Setting Window From Recent Project Window

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
        And The Project Window Is Visible
        When Check Convert Setting Icon Is Visible And Enabled
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        Then Check Info Button Is Visible And Enabled
        And Click On Info Button
        And Check Product Information Window Is Visible
        And Verify Product Information Window Will Be Enable And Product Information Window Should Have Controller Name Label, Controller Image, Circuit And Description

    @KP_AKCC_ID_31.81
    Scenario: KP_AKCC_ID_31.81: Select The Same SW Version In Convert Setting As The File Already Opened From Recent Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        When Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Used In Creating Project
        Then Verify Message Of File Name Cant Be Empty In Convert Settings Window
    	And Verify Convert File Button Is Not Enabled
        And Delete Imported New Code Number And Software Version

     @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

     @KP_AKCC_ID_31.85
     Scenario: KP_AKCC_ID_31.85: Verify If Cancel Button Is Clicked Changes Made In The Convert Settings Window Is Discarded And The Older SW Version Is Maintained From Recent Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Connected To Controller
        When Click On The Cancel Button In Convert Settings Window
        And Verify Popup Window Is Visible
        And Verify Popup Message Should Come As 'Given directory to save files is not found, please check the settings.' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        Then Verify The Changes Made In The Convert Settings Is Not Available In Project Window
        And Delete Imported New Code Number And Software Version


    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.86
    Scenario: KP_AKCC_ID_31.86: When The Convert Setting Window Is Open, The User Should Not Able To Access Project Window Icons Like Buttons In Recent Project Window

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
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Click On Search Editbox
        Then Verify Cursor Is Not Focused In Search Editbox
        And Verify Project Details Does Not Collapses When Collapse Is Clicked
        And Verify Window Help Expander Does Not Collapses When Clicked On Window Help Expander Collapse Button
        And Go To Home Window From Project Window
        And Verify Home Window Should Not Be Visible
        And Click On Open Button In Project Window
        And Verify Open Window Should Not Visible
        And Click Save Button In Project Window
        And Verify Popup Window Is Not Visible
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window Is Not Enabled
        And Click On Print Button
        And Verify Parameter Sheet Is Not Visible
        And Click On Factory Reset Button
        And Verify Popup Window Is Not Visible
        And Click On the Quick Settings Icon
        And Verify Quick Settings Window Is Not Visible
        And Click On i Button In Project Window
        And Verify Product Information Window Is Not Visible

    @KP_AKCC_ID_31.87
    Scenario: KP_AKCC_ID_31.87: Verify Popup Message Should Come As "Do you want to save the Changes made?" When Making Changes In The Opened File And Clicking On The Convert Settings Window From Recent Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Get The 'DataType' Of 'Integer' From 'Parameter_collection'
        And Get Random Values Count '1' for 'Integer' In DataGrid For 'DataType_Integer_Collection'
        And Get The 'DataType' Of 'Float' From 'Parameter_collection'
		And Get Random Values Count '1' for 'Float' In DataGrid For 'DataType_Float_Collection'
		And Combine The Collection 'Integer_updated_collection' And 'Float_updated_collection'
		And Get The 'DataType' Of 'Enum' From 'Parameter_collection'
        And Get Random Values Count '1' for 'Enum' In DataGrid For 'DataType_Enum_Collection'
        And Combine The Collection 'Enum_updated_collection' And 'Merged_Collection'
        And Set Random Values In DataGrid For 'Merged_Collection'
        When Click On Convert Setting Icon
        Then Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify Yes, No And X Button Are Visible
        And Verify Yes, No And X Button Are Enable In Project Window
        And Click On Yes Button On PopUp Window


    @KP_AKCC_ID_31.88
    Scenario: KP_AKCC_ID_31.88: Check If File Is Saved In Changed Location From Convert Settings Window In Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Click On Browse Button In Preference Window
        And Select New Path In Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Connected To Controller
        When Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Open Converted File In Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Open Window Is Visible
        And Open The Converted File In Project Window
        And Click Open Button in Open Window
        Then Verify Popup Message Should Come As 'Project already open' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
        And Delete Imported New Code Number And Software Version

    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.89
    Scenario: KP_AKCC_ID_31.89: Check If Files Created Are In .cbk Format In Convert Settings Window From Create Project Window

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Connected To Controller
        When Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Open Converted File In Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Open Button In Project Window
        And Open The Converted File In Project Window
        Then Verify Project Path And File With Extension For Converted File Is Exist
        And Click Open Button in Open Window
        And Verify Popup Message Should Come As 'Project already open' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible

    @KP_AKCC_ID_31.90
    Scenario: KP_AKCC_ID_31.90: Check If New Parameters Available In Quick Wizard Are Added After Convert Settings From Recent Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        When Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Connected To Controller
        And Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Open Converted File In Recent Project From Set Parameter Window
        And Click Open Button in Open Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get Project Details From The UI In Project Window
        And Click On Quick Wizard Icon
        And Get The Quick Settings Collection From The UI
        Then Verify Quick Wizard Collection From CDF File With The Quick Wizard UI


   @KP_AKCC_ID_31.93
    Scenario: KP_AKCC_ID_31.93: Verify Convert File Is Empty In New FileName Textbox In Convert Settings Window From Create Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Verify New FileName Is Empty
        And Select Software Version Which Is Connected To Controller
        Then Verify Message Of File Name Cant Be Empty In Convert Settings Window
        And Verify Convert File Button Is Not Enabled


    @KP_AKCC_ID_31.95
    Scenario: KP_AKCC_ID_31.95: Verify Convert File Is Empty In New FileName Textbox In Convert Settings Window From Open Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
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
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Verify New FileName Is Empty
        And Select Software Version Which Is Connected To Controller
        Then Verify Message Of File Name Cant Be Empty In Convert Settings Window
        And Verify Convert File Button Is Not Enabled


    @KP_AKCC_ID_31.96
    Scenario: KP_AKCC_ID_31.96: Verify Convert File Is Empty In New FileName Textbox In Convert Settings Window From Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Verify New FileName Is Empty
        And Select Software Version Which Is Connected To Controller
        Then Verify Message Of File Name Cant Be Empty In Convert Settings Window
        And Verify Convert File Button Is Not Enabled


   ######################################## OFFLINE ######################################################


   ######################################## ONLINE ######################################################

	@KP_AKCC_ID_31.13
     Scenario: KP_AKCC_ID_31.13: Check If Compliant Controller Is Connected, Export Options Should Be Enabled And Export Options Disabled For Non Compatible File In Convert Settings Window From Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Check Export Button Is Disabled
        When Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Get Controller Details From Variable
        And Select CodeNumber In Convert Settings Window
        And Select Software Version Which Is Used In Creating Project
        And Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        Then Check Export Button Is Enabled


     @KP_AKCC_ID_31.14
     Scenario: KP_AKCC_ID_31.14: Verify "Software Version Mismatch" Message Displayed Initially Is Not Available After Converting File With Compatible File From Convert Settings Window In Create Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Enable The Port For Non Compatible Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Verify Software Version Mismatch Message Will Display
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Connected To Controller
        When Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        Then Verify The Message Of Software Version Mismatch Is Not Available
        And Delete Imported New Code Number And Software Version

    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.15
    Scenario: KP_AKCC_ID_31.15: Verify Software Version Mismatch Is Displayed After Converting File In Convert Settings Window From Create Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On Close Button In SetParameters Window
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Get New Offline CDF File
        And Select CodeNumber In Convert Settings Window
        And Select Software Version Which Is Used In Creating Project
        When Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        Then Verify Software Version Mismatch Message Will Display
        And Delete Imported New Code Number And Software Version

    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.24
    Scenario: KP_AKCC_ID_31.24: Verify Convert Setting Button Is Enable In Import Setting From Controller

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
        Then Verify Convert Setting Icon Is Visible
        And Verify Convert Setting Icon Button Is Enabled

    @KP_AKCC_ID_31.25
    Scenario: KP_AKCC_ID_31.25: Verification Of Convert Setting Window In Import Setting From Controller Window

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
		And Verify Convert Setting Icon Is Visible
		And Verify Convert Setting Icon Button Is Enabled
        When Click On Convert Setting Icon
        Then Check Convert Setting Window Is Visible And Enabled
        And Verify Labels In Convert Settings Window Are Visible And Enable
        And Verify Labels Texts In Convert Settings Window
        And Verify Image And Buttons In Convert Settings Window Are Visible And Enable
        And Verify Buttons Texts In Convert Settings Window


    @KP_AKCC_ID_31.26
    Scenario: KP_AKCC_ID_:31.26 Check If New FileName String Length Should Not Exceed 20 Characters In Convert Settings Window In Import Settings From Controller Window.

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
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Set New File Name With '21' Characters Length
        Then Verify New File Name Should Accept Only 20 Characters
        And Set New File Name With '30' Characters Length
        And Verify New File Name Should Accept Only 20 Characters


    @KP_AKCC_ID_31.27
    Scenario: KP_AKCC_ID_31.27: Check If The Popup Is Displayed When Special Characters Are Entered In New FileName Textbox In Convert Settings Window In Import Settings From Controller Window.

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
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Set FileName With Special Characters
        Then Verify Popup Message Should Come As '& * | ; : < > / " ? \ , '  Characters Not Supported!' In Convert Settings Window
        And Verify Header Of Popup Window In Convert Settings Window
        And Verify OK and X button In Popup Window Is Visible And Enabled In Convert Settings Window
        And Verify OK and X button In Popup Window In Convert Settings Window
        And Click Ok Button In Popup Window On Convert Settings Window

    @KP_AKCC_ID_31.28
    Scenario: KP_AKCC_ID_31.28: Check If The File Name In Convert Settings Window Gets Saved In The Location Given Under Preference Settings In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Enable The Port For Created Project
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Set New File Name With '20' Characters Length
        And Select Software Version Which Is Connected To Controller In Import Settings
        And Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Open Window Is Visible
        Then Open The Converted File In Project Window
        And Click Open Button in Open Window
        And Verify Popup Message Should Come As 'Project already open' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
        And Delete Imported New Code Number And Software Version

    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.29
    Scenario: KP_AKCC_ID_31.29: Verify The Message Popup "File already exists. Do you want to override" Should Come When Entering Existing Project Name In Convert Settings Window From Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Check Existence Of Preference Window After Deleting App Data
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And Enable The Port For Created Project
        And The Project Window Is Visible
        And Get Connected Controller Information
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Set Existing Project Name As The File Name In Convert Settings Window For Import Settings From Controller Window
        And Select Software Version Which Is Connected To Controller In Import Settings
        And Click On Convert File Button
        And Verify Popup Window Is Visible
        Then Verify Popup Message Should Come As 'File already exists. Do you want to overwrite?' In Convert Settings Window
        And Verify Header Of Popup Window In Convert Settings Window
        And Verify Yes, No And X Button Are Visible
        And Verify Yes, No And X Button Are Enable
        And Verify Text Of Yes, No And X Button
        And Delete Imported New Code Number And Software Version


    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.30
    Scenario: KP_AKCC_ID_31.30: Verify The Product Name In Convert Settings Window Is Same As Opened Project In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And Enable The Port For Created Project
        And The Project Window Is Visible
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Get Connected Controller Information
        Then Verify Product Name In Convert Settings Window In Import Settings

    @KP_AKCC_ID_31.31
    Scenario: KP_AKCC_ID_31.31: Check The List Of Code Numbers Displayed In Convert Settings Window In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Get Code Number List From Project Description Window
        And Select Code Number And Software Version In Project Description Window
        And Click Cancel Button In New Project Window
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        Then Verify The List Of Code Numbers In Convert Settings Window
        And Delete Imported New Code Number And Software Version

    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data


    @KP_AKCC_ID_31.32
    Scenario: KP_AKCC_ID_31.32: Check The List Of Software Versions Displayed In Convert Settings Window In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Set CodeNumber In Project Description Window
        And Get SW Version List From Project Description Window
        And Select Code Number And Software Version In Project Description Window
        And Click Cancel Button In New Project Window
        When Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Select CodeNumber In Convert Settings Window
        Then Verify The List Of Software Versions In Convert Settings Window
        And Delete Imported New Code Number And Software Version


    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data


	@KP_AKCC_ID_31.33
    Scenario: KP_AKCC_ID_31.33: Verification Of Product Information Window In Convert Setting Window From Import Setting From Controller

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
        And Check Convert Setting Icon Is Visible And Enabled
        When Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        Then Check Info Button Is Visible And Enabled
        And Click On Info Button
        And Check Product Information Window Is Visible
        And Verify Product Information Window Will Be Enable And Product Information Window Should Have Controller Name Label, Controller Image, Circuit And Description

    @KP_AKCC_ID_31.35
	Scenario: KP_AKCC_ID_31.35: Select The Same SW Version In Convert Setting As The File Already Opened In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On Import Settings From Controller Button In SetParameter Window
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Project Details From The UI In Project Window
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Get Controller Details From Variable
        And Select CodeNumber In Convert Settings Window
        When Select Software Version Which Is Used In Creating Project
        Then Verify Message Of File Name Cant Be Empty In Convert Settings Window
    	And Verify Convert File Button Is Not Enabled
        And Delete Imported New Code Number And Software Version


    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.36
     Scenario: KP_AKCC_ID_31.36: Check If Compliant Controller Is Connected, Export Options Should Be Enabled And Export Options Disabled For Non Compatible File In Convert Settings Window In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Check Existence Of Preference Window After Deleting App Data
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
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
        And Check Export Button Is Enabled
        When Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
		And Select CodeNumber In Convert Settings Window
		And Select Software Version Which Is Used In Creating Project
        And Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        Then Check Export Button Is Disabled

    @KP_AKCC_ID_31.37
    Scenario: KP_AKCC_ID_31.37: Verify "Software Version Mismatch" Message Displayed Initially Is Not Available After Converting File With Compatible File From Convert Settings Window In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And The Project Window Is Visible
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Verify Software Version Mismatch Message Will Display
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Get Controller Details From Variable
        And Select CodeNumber In Convert Settings Window
        And Select Software Version Which Is Used In Creating Project
        When Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        Then Verify The Message Of Software Version Mismatch Is Not Available
        And Delete Imported New Code Number And Software Version


    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.38
    Scenario: KP_AKCC_ID_31.38: Verify Software Version Mismatch Is Displayed After Converting File In Convert Settings Window In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Get New Offline CDF File
        And Select CodeNumber In Convert Settings Window
        And Select Software Version Which Is Used In Creating Project
        When Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        Then Verify Software Version Mismatch Message Will Display
        And Delete Imported New Code Number And Software Version


    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.39
     Scenario: KP_AKCC_ID_31.39: Verify If Cancel Button Is Clicked Changes Made In The Convert Settings Window Is Discarded And The Older SW Version Is Maintained In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
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
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select CodeNumber In Convert Settings Window
        And Select Software Version Which Is Used In Creating Project
        When Click On The Cancel Button In Convert Settings Window
        Then Verify The Changes Made In The Convert Settings Is Not Available In Project Window
        And Delete Imported New Code Number And Software Version

    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data


    @KP_AKCC_ID_31.40
    Scenario: KP_AKCC_ID_31.40: When The Convert Setting Window Is Open, The User Should Not Able To Access Project Window Icons Like Buttons In Import Settings From Controller Window

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
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Click On Search Editbox
        Then Verify Cursor Is Not Focused In Search Editbox
        And Verify Project Details Does Not Collapses When Collapse Is Clicked
        And Verify Window Help Expander Does Not Collapses When Clicked On Window Help Expander Collapse Button
        And Go To Home Window From Project Window
        And Verify Home Window Should Not Be Visible
        And Click On Open Button In Project Window
        And Verify Open Window Should Not Visible
        And Click Save Button In Project Window
        And Verify Popup Window Is Not Visible
        And Click On Saveas Button In Project Window
        And Verify Saveas Window In Project Window Is Not Enabled
        And Click On Print Button
        And Verify Parameter Sheet Is Not Visible
        And Click On Factory Reset Button
        And Verify Popup Window Is Not Visible
        And Click On the Quick Settings Icon
        And Verify Quick Settings Window Is Not Visible
        And Click On i Button In Project Window
        And Verify Product Information Window Is Not Visible

    @KP_AKCC_ID_31.41
    Scenario: KP_AKCC_ID_31.41: Verify Popup Message Should Come As "Do you want to save the Changes made?" When Making Changes In The Opened File And Clicking On The Convert Settings Window In Import Settings From Controller Window.

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
        And Get The 'DataType' Of 'Integer' From 'Parameter_collection'
        And Get Random Values Count '1' for 'Integer' In DataGrid For 'DataType_Integer_Collection'
        And Get The 'DataType' Of 'Float' From 'Parameter_collection'
		And Get Random Values Count '1' for 'Float' In DataGrid For 'DataType_Float_Collection'
		And Combine The Collection 'Integer_updated_collection' And 'Float_updated_collection'
		And Get The 'DataType' Of 'Enum' From 'Parameter_collection'
        And Get Random Values Count '1' for 'Enum' In DataGrid For 'DataType_Enum_Collection'
        And Combine The Collection 'Enum_updated_collection' And 'Merged_Collection'
        And Set Random Values In DataGrid For 'Merged_Collection'
        When Click On Convert Setting Icon
        Then Verify Popup Message Should Come As 'Do you want to save the Changes made?' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify Yes, No And X Button Are Visible
        And Verify Yes, No And X Button Are Enable In Project Window
        And Click On Yes Button On PopUp Window

    @KP_AKCC_ID_31.42
    Scenario: KP_AKCC_ID_31.42: Check If File Is Saved In Changed Location From Convert Settings Window In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Click On Browse Button In Preference Window
        And Select New Path In Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click Close Button In Setparameter Window
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Get New Offline CDF File
        And Select CodeNumber In Convert Settings Window
        And Select Software Version Which Is Used In Creating Project
        When Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Open Window Is Visible
        And Open The Converted File In Project Window
        And Click Open Button in Open Window
        Then Verify Popup Message Should Come As 'Project already open' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible
        And Delete Imported New Code Number And Software Version


    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data


    @KP_AKCC_ID_31.43
    Scenario: KP_AKCC_ID_31.43: Check If Files Created Are In .cbk Format In Convert Settings Window In Import Settings From Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select CodeNumber In Convert Settings Window
        And Select Software Version Which Is Used In Creating Project
        When Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        And Open The Converted File In Project Window
        Then Verify Project Path And File With Extension For Converted File Is Exist
        And Click Open Button in Open Window
        And Verify Popup Message Should Come As 'Project already open' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible

	"""

	    #Commented because in this test case, "field version of CDF" is not tested, lower version of CDF is tested,
	    #which is not handled in common library and there is no necessity/requirement to test this.

    @KP_AKCC_ID_31.44
    Scenario: KP_AKCC_ID_31.44: Check If New Parameters Available In Quick Wizard Are Added After Convert Settings In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Click OK Button In Popup Window
        And Click On Import Settings From Controller Button In SetParameter Window
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get Connected Controller Information
        When Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select CodeNumber In Convert Settings Window
        And Select Software Version Which Is Used In Creating Project
        And Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Get Project Details From The UI In Project Window
        And Click On Quick Wizard Icon
        And Get The Quick Settings Collection From The UI
        Then Verify Quick Wizard Collection From CDF File With The Quick Wizard UI

	"""

    @KP_AKCC_ID_31.47
    Scenario: KP_AKCC_ID_31.47: Verify Convert Setting Button Is Enable In Opening Created Project From Open Option From Set Parameter

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
        When Click On Open Button In Set Parameters Window
        And Goto Working Directory In Open Dialog Window
        Then Open Created Project In Set Parameter Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Verify Convert Setting Icon Is Visible
        Then Verify Convert Setting Icon Button Is Enabled


     @KP_AKCC_ID_31.59
     Scenario: KP_AKCC_ID_31.59: Check If Compliant Controller Is Connected, Export Options Should Be Enabled And Export Options Disabled For Non Compatible File In Convert Settings Window From Open Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Check Export Button Is Disabled
        When Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select CodeNumber In Convert Settings Window
        And Select Software Version Which Is Used In Creating Project
        And Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Converted Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Check Export Button Is Enabled


    @KP_AKCC_ID_31.60
    Scenario: KP_AKCC_ID_31.60: Verify "Software Version Mismatch" Message Displayed Initially Is Not Available After Converting File With Compatible File From Convert Settings Window In Open Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Verify Software Version Mismatch Message Will Display
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select CodeNumber In Convert Settings Window
        And Select Software Version Which Is Used In Creating Project
        When Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Converted Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Verify The Message Of Software Version Mismatch Is Not Available
        And Delete Imported New Code Number And Software Version


    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.61
    Scenario: KP_AKCC_ID_31.61: Verify Software Version Mismatch Is Displayed After Converting File In Convert Settings Window From Open Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On Close Button In SetParameters Window
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Get New Offline CDF File
        And Select CodeNumber In Convert Settings Window
        And Select Software Version Which Is Used In Creating Project
        When Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Converted Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Verify Software Version Mismatch Message Will Display
        And Delete Imported New Code Number And Software Version

     @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.82
     Scenario: KP_AKCC_ID_31.82: Check If Compliant Controller Is Connected, Export Options Should Be Enabled And Export Options Disabled For Non Compatible File In Convert Settings Window From Recent Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Check Export Button Is Disabled
        When Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select CodeNumber In Convert Settings Window
        And Select Software Version Which Is Used In Creating Project
        And Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Converted File In Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        Then Check Export Button Is Enabled

    @KP_AKCC_ID_31.83
    Scenario: KP_AKCC_ID_31.83: Verify "Software Version Mismatch" Message Displayed Initially Is Not Available After Converting File With Compatible File From Convert Settings Window In Recent Project Window.

        Given KoolProg Had Opened
        And Check Existence Of Preference Window After Deleting App Data
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Verify Software Version Mismatch Message Will Display
        And Get Controller Details From Variable
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Used In Creating Project
        When Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Converted File In Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify The Message Of Software Version Mismatch Is Not Available
        And Delete Imported New Code Number And Software Version



    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

    @KP_AKCC_ID_31.84
    Scenario: KP_AKCC_ID_31.84: Verify Software Version Mismatch Is Displayed After Converting File In Convert Settings Window From Recent Project Window.

        Given KoolProg Had Opened
        And Check Existence Of Preference Window After Deleting App Data
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On Close Button In SetParameters Window
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Enable The Port For Created Project
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        And Set New File Name With '20' Characters Length
        And Select Software Version Which Is Connected To Controller
        When Click On Convert File Button
        And Verify Popup Message Should Come As 'Setting file converted successfully. Check out new parameters' In Project Window
        And Verify Header Of Popup Window In Project Window
        And Verify OK and X button In Popup Window In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Verify Converted Settings File Report Is Visible And Enabled
        And Click On Close Button In Converted Settings File Report
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Converted File In Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        Then Verify Software Version Mismatch Message Will Display
        And Click On Convert Setting Icon
        And Check Convert Setting Window Is Visible And Enabled
        When Verify New FileName Is Empty
        And Select Software Version Which Is Connected To Controller
        Then Verify Message Of File Name Cant Be Empty In Convert Settings Window
        And Verify Convert File Button Is Not Enabled

    @KP_AKCC_ID_31.94
    Scenario: KP_AKCC_ID_31.94: Verify Convert File Is Empty In New FileName Textbox In Convert Settings Window In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
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
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Verify Convert Setting Icon Is Visible
        Then Verify Convert Setting Icon Button Is Enabled

   ######################################## ONLINE ######################################################