# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC BIN File

    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

    @KP_AKCC_ID_36.1
    Scenario: KP_AKCC_ID_36.1: Verify Start Button Is Enabled When Opening A Compatible Bin File From Copy To Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        When Click On Browse Button In Copy To Controller Window
        And Get Connected Controller Information
        And Get Bin File In Copy To Controller Window
        When Open Bin File In Copy To Controller Window
        And Set 'password' Password In Firmware Password Window
        And Click Ok Button In Firmware Password Window
        Then Check Start Label Is Visible In Copy To Controller Window
        And Check Start Label Is Enabled In Copy To Controller Window
        And Verify Browsed File And Connected Controller Details Are Compatible

    @KP_AKCC_ID_36.2
    Scenario: KP_AKCC_ID_36.2: Verify Start Button Is Disabled When Opening A Non Compliant Bin File From Copy To Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        When Click On Browse Button In Copy To Controller Window
        And Open Non Compliant Bin File In Copy To Controller Window
        And Set 'password' Password In Firmware Password Window
        And Click Ok Button In Firmware Password Window
        Then Check Start Label Is Disabled In Copy To Controller Window
        And Verify Non Compliant Controller Details
        And Verify Browsed File And Connected Controller Details Are Not Compatible




    @KP_AKCC_ID_36.3
    Scenario: KP_AKCC_ID_36.3: Verification Of Set As Favourite Button And Favorite Table Should Not Be Available After Selecting Bin File From Copy To Controller Window.

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
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        And Open The Created File In Project Window
        And Verify Set As Favourite Button Text
        And Click On Browse Button In Copy To Controller Window
        And Get Bin File In Copy To Controller Window
        When Open Bin File In Copy To Controller Window
        And Set 'password' Password In Firmware Password Window
        And Click Ok Button In Firmware Password Window
        Then Verify Favorite Table Is Disable For Bin File
        And Check Set As Fav Button Is Not Visible In Copy To Controller
        And Check Single And Multiple Controller Programming Label Is Disable For Bin File In Copy To Controller Window
        And Check Single Controller Programming Label Is Disable For Bin File In Copy To Controller Window
        And Check Multiple Controller Programming Label Is Disable For Bin File In Copy To Controller Window

    @KP_AKCC_ID_36.4
    Scenario: KP_AKCC_ID_36.4: Verification Of Set As Favourite Button And Favorite Table Should Be Available After Selecting .cbk File From Copy To Controller Window.

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
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        When Open The Created File In Project Window
        Then Verify Set As Favourite Button Text
        And Click On Set As Favorite Button
        And Verify Favorite Table Is Enable
        And Verify Created File Name In The Favorite Grid
        And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
        And Check Single Controller Programming Label Is Enabled In Copy To Controller Window
        And Check Multiple Controller Programming Label Is Enabled In Copy To Controller Window

    @KP_AKCC_ID_36.5
    Scenario: KP_AKCC_ID_36.5: Verify Password Protection Window When Opening A Compatible Bin File From Copy To Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Deselect The Password Protection Checkbox
        And Click On Use Password Protection Checkbox
        And Click On Show Password Checkbox
        And Get Password From Preference Window
        And Click On Save Button In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Get Connected Controller Information
        When Click On Browse Button In Copy To Controller Window
        And Get Bin File In Copy To Controller Window
        When Open Bin File In Copy To Controller Window
        And Verify Firmware Password Window Is Visible In Copy To Controller Window
        And Verify Firmware Password Window Is Enabled In Copy To Controller Window
        And Verify Firmware Password Window Labels And Buttons Text In Copy To Controller Window
        And Set 'password' Password In Firmware Password Window
        And Click Ok Button In Firmware Password Window
        Then Check Start Label Is Visible In Copy To Controller Window
        And Check Start Label Is Enabled In Copy To Controller Window
        And Verify Browsed File And Connected Controller Details Are Compatible

    @KP_AKCC_ID_36.6
    Scenario: KP_AKCC_ID_36.6: Verify Password Protection Window When Opening A Non Compliant Bin File From Copy To Controller Window

        Given KoolProg Had Opened
        And Handled Unexpected Password Window Error
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Deselect The Password Protection Checkbox
        And Click On Use Password Protection Checkbox
        And Click On Show Password Checkbox
        And Get Password From Preference Window
        And Click On Save Button In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        When Click On Browse Button In Copy To Controller Window
        And Open Non Compliant Bin File In Copy To Controller Window
        And Verify Firmware Password Window Is Visible In Copy To Controller Window
        And Verify Firmware Password Window Is Enabled In Copy To Controller Window
        And Verify Firmware Password Window Labels And Buttons Text In Copy To Controller Window
        And Set 'password' Password In Firmware Password Window
        And Click Ok Button In Firmware Password Window
        Then Check Start Label Is Disabled In Copy To Controller Window
        And Verify Non Compliant Controller Details
        And Verify Browsed File And Connected Controller Details Are Not Compatible

    @KP_AKCC_ID_36.7
    Scenario: KP_AKCC_ID_36.7: Verification Of Compatible Details After Selecting .cbk File From Copy To Controller Window.

        Given KoolProg Had Opened
        And Handled Unexpected Password Window Error
        And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Deselect The Password Protection Checkbox
        And Click On Use Password Protection Checkbox
        And Click On Show Password Checkbox
        And Get Password From Preference Window
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
        And Open The Created File In Project Window
        And Verify Firmware Password Window Is Not Visible In Copy To Controller Window
        Then Check Start Label Is Visible In Copy To Controller Window
        And Check Start Label Is Enabled In Copy To Controller Window
        And Verify Browsed File And Connected Controller Details Are Compatible

    @KP_AKCC_ID_36.8
    Scenario: KP_AKCC_ID_36.8: Verify Compatible Details After Opening A Compatible Bin File And Deselecting Password Protection From Copy To Controller Window



        Given KoolProg Had Opened
        And Handled Unexpected Password Window Error
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Deselect The Password Protection Checkbox
        And Click On Save Button In Preference Window
        And Click Ok Button In Saved Successfully Popup Window From Preference Window
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        When Click On Browse Button In Copy To Controller Window
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Get Bin File 'Greater' Than The Current Software Version In Copy To Controller Window
        And Open Bin File In Copy To Controller Window
        And Verify Firmware Password Window Is Not Visible In Copy To Controller Window
        Then Check Start Label Is Visible In Copy To Controller Window
        And Check Start Label Is Enabled In Copy To Controller Window
        And Click On Start Button In Copy To Controller Window
        And Add Required Delay For 'FIRMWARE_UPGRADING_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'Firmware update has been installed successfully!' In Copy To controller Window
        And Click OK Button In Popup Window
        And Add Required Delay For 'IMPORTING_CONTROLLER_MODEL' for 'ONLINE' mode
        And Verify Browsed File And Connected Controller Details Are Compatible


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


	@BINFILE_HANDLING
     Scenario: Bin File handling

         Given KoolProg Had Opened
         And Get Controller Details From Variable
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Koolprog Working Path From Preference Window And Save it
         When Click On Copy To Controller Button In Home Window
         And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
         And Click On Browse Button In Copy To Controller Window
         And Get Bin File Of Selected Controller Information
		 And Open Bin File In Copy To Controller Window
		 And Set 'password' Password In Firmware Password Window
         And Click Ok Button In Firmware Password Window
		 And Add Required Delay For 'IMPORTING_PROJECT_FILE' for 'ONLINE' mode
		 Then Click On Start Button In Copy To Controller Window
		 And Add Required Delay For 'PROGRAMMING_CONTROLLER_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
		 And Click OK Button In Popup Window