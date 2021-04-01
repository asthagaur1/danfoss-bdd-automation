# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC Project Window.

    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

    ########################################## OFFLINE ############################################

    @KP_AKCC_ID_18.1
     Scenario: KP_AKCC_ID_18.1: Verification Of Selected Controller Details After Creating Project From Create Project Window

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get Offline CDF File
        When Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify The Project Name And Description In Project Window
        And Verify Project Details In Project Window

    ########################################## OFFLINE ############################################