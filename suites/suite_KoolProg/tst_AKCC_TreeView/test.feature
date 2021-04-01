# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC TreeView


    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports




############################################# OFFLINE ################################################

    @KP_AKCC_ID_25.1,25.5,25.7
     Scenario: KP_AKCC_ID_25.1,25.5,25.7: Check If The Tree View Must Display Group As Per The CDF File From Create Project Window And Open Project Window And Recent Project Window.

         Given KoolProg Had Opened
         And Get Controller Details From Variable
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Koolprog Working Path From Preference Window And Save it
         When New Project Is Created For Selected Controller Details
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Get The Parameter Collection From Input Database
         And Get The List Of GroupNames From The TreeView
         Then Verify The GroupNames From The TreeView With The CDF
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
         And Get The Parameter Collection From Input Database
         And Get The List Of GroupNames From The TreeView
         And Verify The GroupNames From The TreeView With The CDF
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Get The Parameter Collection From Input Database
         And Get The List Of GroupNames From The TreeView
         And Verify The GroupNames From The TreeView With The CDF

    @KP_AKCC_ID_25.2.1,25.6.1,25.8.1
    Scenario: KP_AKCC_ID_25.2.1,25.6.1,25.8.1: Check If The ScrollBar Is Not Visible When The Groups In Nested View Having Max Width Is Expanded For English Language From Project Window And Open Project Window And Recent Project Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
	    And Preference Window Is Visible
	    And Get Selected Language From Preference Window
	    And Get Koolprog Working Path From Preference Window And Save it
	    And Get Controller Details From Variable
	    And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Get The GroupIndex For Enabling ScrollBar
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    When Get The GroupName From The Parameter Collection With Respect To Provided Group Index
        Then Verify The ScrollBar In TreeView Is Not Available If GroupName Of Maximum length Is Expanded
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Verify The ScrollBar In TreeView Is Not Available If GroupName Of Maximum length Is Expanded
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify The ScrollBar In TreeView Is Not Available If GroupName Of Maximum length Is Expanded

    @KP_AKCC_ID_25.2.2,25.6.2,25.8.2
	Scenario: KP_AKCC_ID_25.2.2,25.6.2,25.8.2: Select Danish Language From Preference Window For Project Window And Open Project Window And Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        When Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

    @KP_AKCC_ID_25.2.3,25.6.3,25.8.3
	Scenario: KP_AKCC_ID_25.2.3,25.6.3,25.8.3: Check If The ScrollBar Is Visible When The Groups In Nested View Having Max Width Is Expanded For Danish Language From Project Window And Open Project Window And Recent Project Window.

	    Given KoolProg Had Opened
	    And Click On The Setting Icon Button In The Main Window
	    And Preference Window Is Visible
	    And Get Selected Language From Preference Window
	    And Get Koolprog Working Path From Preference Window And Save it
	    And Get Controller Details From Variable
	    And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Get The GroupIndex For Enabling ScrollBar
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    When Get The GroupName From The Parameter Collection With Respect To Provided Group Index
        Then Verify The ScrollBar In TreeView Is Available If GroupName Of Maximum length Is Expanded
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Verify The ScrollBar In TreeView Is Available If GroupName Of Maximum length Is Expanded
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify The ScrollBar In TreeView Is Available If GroupName Of Maximum length Is Expanded

    @common @requiredTestCase

	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

############################################# OFFLINE ################################################

############################################# ONLINE ################################################

	@ExportDefaultValuesToController
    Scenario: Export Default Values To Controller.

    	Given KoolProg Had Opened
    	And Get Controller Details From Variable
    	When New Project Is Created For Selected Controller Details
    	And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
    	And Click On Factory Reset Button
    	Then Click On In Controller Button In Popup Window
    	And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'ONLINE' mode
		And Click OK Button In Popup Window

	@KP_AKCC_ID_25.3,25.9
     Scenario: KP_AKCC_ID_25.3,25.9: Check If The Tree View Must Display Group As Per The CDF File In Import Settings From Controller Window And Online Service Window.

         Given KoolProg Had Opened
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
         And Get The List Of GroupNames From The TreeView
         Then Verify The GroupNames From The TreeView With The CDF
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
         And Navigate To On-line Service Window
         And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
         And On-line Service Window Is Visible
         And Get The Parameter Collection From Input Database
         And Get The List Of GroupNames From The TreeView
         And Verify The GroupNames From The TreeView With The CDF

     @KP_AKCC_ID_25.4.1,25.10.1
	Scenario: KP_AKCC_ID_25.4.1,25.10.1: Check If The ScrollBar Is Not Available When The Groups In Nested View Having Max Width Is Expanded For English Language In Import Settings From Controller Window And Online Service Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
	    And Preference Window Is Visible
	    And Get Selected Language From Preference Window
	    And Get Koolprog Working Path From Preference Window And Save it
	    And Click On Import Setting From Controller Button
	    And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
	    And Get The GroupIndex For Enabling ScrollBar
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    When Get The GroupName From The Parameter Collection With Respect To Provided Group Index
        Then Verify The ScrollBar In TreeView Is Not Available If GroupName Of Maximum length Is Expanded
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
	    And Verify The ScrollBar In TreeView Is Not Available If GroupName Of Maximum length Is Expanded

    @KP_AKCC_ID_25.4.2,25.10.2
    Scenario: KP_AKCC_ID_25.4.2,25.10.2: Select Danish Language From Preference Window In Import Settings From Controller Window And Online Service Window..

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        When Select 'Danish' Language In The Preference Window
        And Click On Save Button In Preference Window
        And Click Yes Button In Popup Window In Preference Window
        Then Close The Application

     @KP_AKCC_ID_25.4.3,25.10.3
	Scenario: KP_AKCC_ID_25.4.3,25.10.3: Check If The ScrollBar Is Available When The Groups In Nested View Having Max Width Is Expanded For Danish Language In Import Settings From Controller Window And Online Service Window.

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
	    And Preference Window Is Visible
	    And Get Selected Language From Preference Window
	    And Get Koolprog Working Path From Preference Window And Save it
	    And Click On Import Setting From Controller Button
	    And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
	    And Get The GroupIndex For Enabling ScrollBar
	    And Set Language And Help Files For Selected Language
	    And Get The Parameter Collection From Input Database
	    When Get The GroupName From The Parameter Collection With Respect To Provided Group Index
        Then Verify The ScrollBar In TreeView Is Available If GroupName Of Maximum length Is Expanded
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
	    And Verify The ScrollBar In TreeView Is Available If GroupName Of Maximum length Is Expanded

	 @common @requiredTestCase
	Scenario: Required Preference Window Default Language Setting Test Case

	    Given KoolProg Had Opened
	    And Set The Default Language In Preference Window

############################################# ONLINE ################################################