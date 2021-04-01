# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC FW Upgrade

    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

	"""

	#Disable serial port corrupts mykey
    @KP_AKCC_ID_38.1
    Scenario: KP_AKCC_ID_38.1: Check Controller Is Not Upgraded To As Same As BIN File After Disconnecting The Controller When Start Is Clicked On Copy To Controller

        Given KoolProg Had Opened
        And Disable All Serial Ports
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Click On Browse Button In Copy To Controller Window
        And Get Connected Controller Information
		When Open Non Compatible Bin File With SW Version Mismatch In Copy To Controller Window
        And Add Required Delay For 'BIN_FILE_TO_GET_DISPLAYED' for 'ONLINE' mode
        And Click On Start Button In Copy To Controller Window
        And Add Required Delay For 'FIRMWARE_UPGRADE_FAILED_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Disable All Serial Ports
        And Add Required Delay For 'FIRMWARE_UPGRADE_FAILED_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'The firmware update failed.' In Copy To controller Window
        And Click OK Button In Popup Window
        And Go To Home Window From Copy To controller Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        Then Verify Browsed File And Connected Controller Details Are Compatible

	"""



     @KP_AKCC_ID_38.2
     Scenario: KP_AKCC_ID_38.2: Check Controller Is Upgraded To As Same As BIN File After Coying To Controller

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Click On Browse Button In Copy To Controller Window
        And Get Connected Controller Information
        When Open Non Compatible Bin File With SW Version Mismatch In Copy To Controller Window
        And Add Required Delay For 'BIN_FILE_TO_GET_DISPLAYED' for 'ONLINE' mode
        And Click On Start Button In Copy To Controller Window
        And Add Required Delay For 'FIRMWARE_UPGRADING_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'Firmware update has been installed successfully!' In Copy To controller Window
        And Click OK Button In Popup Window
        Then Verify Browsed File And Connected Controller Details Are Compatible

     @KP_AKCC_ID_38.3
     Scenario: KP_AKCC_ID_38.3: Select A BIN File Copy File Of Lower Version And Downgrade Controller To Lower Software Version

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Click On Browse Button In Copy To Controller Window
        And Get Connected Controller Information
        When Get Bin File 'Lower' Than The Current Software Version In Copy To Controller Window
        And Open Bin File In Copy To Controller Window
        And Add Required Delay For 'BIN_FILE_TO_GET_DISPLAYED' for 'ONLINE' mode
        And Click On Start Button In Copy To Controller Window
        And Add Required Delay For 'FIRMWARE_UPGRADING_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'Firmware update has been installed successfully!' In Copy To controller Window
        And Click OK Button In Popup Window
        Then Verify Browsed File And Connected Controller Details Are Compatible


     @KP_AKCC_ID_38.4
     Scenario: KP_AKCC_ID_38.4: Select A BIN File Copy File Of Higher Version And Upgrade Controller To Higher Software Version

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Click On Browse Button In Copy To Controller Window
        And Get Connected Controller Information
        When Get Bin File 'Greater' Than The Current Software Version In Copy To Controller Window
        And Open Bin File In Copy To Controller Window
        And Add Required Delay For 'BIN_FILE_TO_GET_DISPLAYED' for 'ONLINE' mode
        And Click On Start Button In Copy To Controller Window
        And Add Required Delay For 'FIRMWARE_UPGRADING_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'Firmware update has been installed successfully!' In Copy To controller Window
        And Click OK Button In Popup Window
        Then Verify Browsed File And Connected Controller Details Are Compatible

     @requiredTestCase
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