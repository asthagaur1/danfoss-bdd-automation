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


    @KP_AKCC_ID_21.5
    Scenario: KP_AKCC_ID_21.5: Change Save File Path In Preference Window To Verify Save File Path Will Be Last Updated Path In Preference window After Upgrading KoolProg From Create Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Click On Browse Button In Preference Window
        When Select New Path In Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The KoolProg Version
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Set The Project Working Directory Path And Version In The Text File
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Saveas Button In Project Window
        #And Verify The SaveAs Dialog Opens With Working Directory
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

    @KP_AKCC_ID_21.5.1
    Scenario: KP_AKCC_ID_21.5.1: Verify Save File Path In Preference Window After Upgrading KoolProg To Latest Version From Create Project Window.

        Given KoolProg Had Opened
        And Add Required Delay For 'FETCHING_DETAILS_FROM_HOME_WINDOW' for 'OFFLINE' mode
        And Get The Project Working Directory And Koolprog Version From Text File
        And Get The KoolProg Version
        #And Verify KoolProg Version Number After Upgrading On Home Screen
        And Click On The Setting Icon Button In The Main Window
        Then Preference Window Is Visible
        And Verify The File Path In Preference Window
        And Click On Cancel Button On Preference Window
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Saveas Button In Project Window
        #And Verify The SaveAs Dialog Opens With Working Directory
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


   @KP_AKCC_ID_21.15
    Scenario: KP_AKCC_ID_21.15: Change Save File Path In Preference Window To Verify Save File Path Will Be Last Updated Path In Preference window After Upgrading KoolProg From Open Project Window.


        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Click On Browse Button In Preference Window
        When Select New Path In Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The KoolProg Version
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Set The Project Working Directory Path And Version In The Text File
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


    @KP_AKCC_ID_21.15.1
    Scenario: KP_AKCC_ID_21.15.1: Verify Save File Path In Preference Window After Upgrading KoolProg To Latest Version From Open Project Window.

        Given KoolProg Had Opened
        And Add Required Delay For 'FETCHING_DETAILS_FROM_HOME_WINDOW' for 'OFFLINE' mode
        And Get The Project Working Directory And Koolprog Version From Text File
        And Get The KoolProg Version
        And Verify KoolProg Version Number After Upgrading On Home Screen
        And Click On The Setting Icon Button In The Main Window
        Then Preference Window Is Visible
        And Verify The File Path In Preference Window
        And Click On Cancel Button On Preference Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Saveas Button In Project Window
        And Verify The SaveAs Dialog Opens With Working Directory
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


   @KP_AKCC_ID_21.20
    Scenario: KP_AKCC_ID_21.20: Change Save File Path In Preference Window To Verify Save File Path Will Be Last Updated Path In Preference window After Upgrading KoolProg From Recent Project Window.


        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Click On Browse Button In Preference Window
        When Select New Path In Preference Window
        And Get Koolprog Working Path From Preference Window And Save it
        And Get The KoolProg Version
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Set The Project Working Directory Path And Version In The Text File
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

    @KP_AKCC_ID_21.20.1
    Scenario: KP_AKCC_ID_21.20.1: Verify Save File Path In Preference Window After Upgrading KoolProg To Latest Version From Recent Project Window.

        Given KoolProg Had Opened
        And Add Required Delay For 'FETCHING_DETAILS_FROM_HOME_WINDOW' for 'OFFLINE' mode
        And Get The Project Working Directory And Koolprog Version From Text File
        And Get The KoolProg Version
        And Verify KoolProg Version Number After Upgrading On Home Screen
        And Click On The Setting Icon Button In The Main Window
        Then Preference Window Is Visible
        And Verify The File Path In Preference Window
        And Click On Cancel Button On Preference Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Saveas Button In Project Window
        And Verify The SaveAs Dialog Opens With Working Directory
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


    @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window




