# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC UI

    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

    @KP_AKCC_ID_39.2
    Scenario: KP_AKCC_ID_39.2: Check online service window has three tabs "Parameters", "Alarms" and "Input/Output"

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        When On-line Service Window Is Visible
        Then Verify Parameters Tab Is Visible And Enabled
        And Verify Parameters Tab Label Text
        And Verify Alarms Tab Is Visible And Enabled
        And Verify Alarms Tab Label Text
        And Verify Input/Output Tab Is Visible And Enabled
        And Verify Input/Output Tab Label Text
