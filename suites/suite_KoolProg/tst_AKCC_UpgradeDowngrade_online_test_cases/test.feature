# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: Check AKCC Upgrade Downgrade test cases.

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



   @KP_AKCC_ID_21.10
    Scenario: KP_AKCC_ID_21.10: Change Save File Path In Preference Window To Verify Save File Path Will Be Last Updated Path In Preference window After Upgrading KoolProg In Import Settings From Controller Window.


        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Click On Browse Button In Preference Window
        When Select New Path In Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The KoolProg Version
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And Set The Project Working Directory Path And Version In The Text File
        And The Project Window Is Visible
        And Click On Saveas Button In Project Window
        And Verify The SaveAs Dialog Opens With Working Directory
        And Click Cancel Button In SaveAs Dialog
        And 'Upgrade' The KoolProg To Latest Version


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



    @KP_AKCC_ID_21.10.1
    Scenario: KP_AKCC_ID_21.10.1: Verify Save File Path In Preference Window After Upgrading KoolProg To Latest Version In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Add Required Delay For 'FETCHING_DETAILS_FROM_HOME_WINDOW' for 'ONLINE' mode
        And Get The Project Working Directory And Koolprog Version From Text File
        And Get The KoolProg Version
        And Verify KoolProg Version Number After Upgrading On Home Screen
        And Click On The Setting Icon Button In The Main Window
        Then Preference Window Is Visible
        And Verify The File Path In Preference Window
        And Click On Cancel Button On Preference Window
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Click On Saveas Button In Project Window
        Then Verify The SaveAs Dialog Opens With Working Directory
        And 'Downgrade' The KoolProg To Latest Version

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


	@KP_AKCC_ID_21.25
    Scenario: KP_AKCC_ID_21.25: Change Save File Path In Preference Window To Verify Save File Path Will Be Last Updated Path In Preference window After Upgrading KoolProg From Online Service Window.


        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Click On Browse Button In Preference Window
        When Select New Path In Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The KoolProg Version
        And Set The Project Working Directory Path And Version In The Text File
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Verify The SaveAs Dialog Opens With Working Directory
        And Click Cancel Button In SaveAs Dialog
        And 'Upgrade' The KoolProg To Latest Version

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

    @KP_AKCC_ID_21.25.1
    Scenario: KP_AKCC_ID_21.25.1: Verify Save File Path In Preference Window After Upgrading KoolProg To Latest Version From Online Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Add Required Delay For 'FETCHING_DETAILS_FROM_HOME_WINDOW' for 'ONLINE' mode
        And Get The KoolProg Version
        And Get The Project Working Directory And Koolprog Version From Text File
        And Verify KoolProg Version Number After Upgrading On Home Screen
        And Click On The Setting Icon Button In The Main Window
        Then Preference Window Is Visible
        And Verify The File Path In Preference Window
        And Click On Cancel Button On Preference Window
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        Then Verify The SaveAs Dialog Opens With Working Directory
        And 'Downgrade' The KoolProg To Latest Version

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


	#Upgrading controller
    @KP_AKCC_ID_17.3
     Scenario: KP_AKCC_ID_17.3: Verification Of Quick Setting Window After Downloading CDF From New Project Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Get New Offline CDF File
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Respective Bin File For The Selected Project Details
        And Click On Browse Button In Copy To Controller Window
        And Open Bin File In Copy To Controller Window
        And Set 'password' Password In Firmware Password Window
        And Click Ok Button In Firmware Password Window
        And Add Required Delay For 'BIN_FILE_TO_GET_DISPLAYED' for 'ONLINE' mode
        And Click On Start Button In Copy To Controller Window
        And Add Required Delay For 'FIRMWARE_UPGRADING_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Click OK Button In Popup Window
        And Go To Home Window From Copy To controller Window
        And Enable The Port For Created Project
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Get SW Version List From Project Description Window
        And Verify SW Version Combobox Has Only Default Software Version
        And Click Cancel Button In New Project Window
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        When Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Go To Home Window From On-Service Test Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On New Button From Set Parameter Window
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
        And Click Cancel Button In New Project Window
        And Get Controller Details From Variable
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Respective Bin File For The Selected Project Details
        And Click On Browse Button In Copy To Controller Window
        And Open Bin File In Copy To Controller Window
        And Set 'password' Password In Firmware Password Window
        And Click Ok Button In Firmware Password Window
        And Add Required Delay For 'BIN_FILE_TO_GET_DISPLAYED' for 'ONLINE' mode
        And Click On Start Button In Copy To Controller Window
        And Add Required Delay For 'FIRMWARE_UPGRADING_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Click OK Button In Popup Window
