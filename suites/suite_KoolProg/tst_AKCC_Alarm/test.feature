# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC Alarms


    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports



   @KP_AKCC_ID_44.1 @KP_AKCC_ID_44.2 @KP_AKCC_ID_44.3 @KP_AKCC_ID_44.4 @KP_AKCC_ID_45.2 @KP_AKCC_ID_44.7 @KP_AKCC_ID_45.3
    Scenario: KP_AKCC_ID_44.1,KP_AKCC_ID_44.2,KP_AKCC_ID_44.3,KP_AKCC_ID_44.4,KP_AKCC_ID_45.2,KP_AKCC_ID_44.7,KP_AKCC_ID_45.3: Check Alarms

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        When Click On All Tree Item In Tree View
        And Get Alarm Parameters Collection From The DataBase
        Then Generate Alarms And Verify In Active Alarms,Alarms Tab Followed By Cancellation Of Alarms And Verify In Cleared Alarms


	@KP_AKCC_ID_44.5
     Scenario: KP_AKCC_ID_44.5: Verify Search Functionality In Alarms Tab In Online Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        When Click On All Tree Item In Tree View
        And Get Alarm Parameters Collection From The DataBase
        Then Generate Alarm And Search The Generated Alarm In Alarm Tab DataGrid




	@KP_AKCC_ID_45.4 @KP_AKCC_ID_45.5
     Scenario: KP_AKCC_ID_45.4,KP_AKCC_ID_45.5: Verify Focus Is Shifting If Alarms Reset Is Done And Verify Header Of Active And Cleared Alarms.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Click On Alarms Tab In Online Service Window
        When Click On 'Active alarms' TreeItem In Alarm Tab TreeView
        And Add Required Delay For 'LOADING_PARAMETERS_AFTER_CLICKING_CLEARED_ALARMS_TREE_ITEM' for 'ONLINE' mode
        Then Verify 'Active alarms' HeaderItem Is Present In DataGrid
        And Click On 'Cleared alarms' TreeItem In Alarm Tab TreeView
        And Add Required Delay For 'LOADING_PARAMETERS_AFTER_CLICKING_CLEARED_ALARMS_TREE_ITEM' for 'ONLINE' mode
        And Verify 'Cleared alarms' HeaderItem Is Present In DataGrid
        And Click On Reset Alarms Button In Online Service Window- Alarm Tab
		And Add Required Delay For 'LOADING_PARAMETERS_AFTER_CLICKING_RESET_ALARMS_BUTTON' for 'ONLINE' mode
		And Verify 'Active alarms' HeaderItem Is Present In DataGrid


	@KP_AKCC_ID_46.1 @KP_AKCC_ID_46.2
     Scenario: KP_AKCC_ID_46.1,KP_AKCC_ID_46.2: Verify Interlocks And Readouts When Alarm Is Generated.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        When Click On All Tree Item In Tree View
        And Get Alarm Parameters Collection From The DataBase
        Then Generate Alarms And Verify The InterLocks And ReadOuts