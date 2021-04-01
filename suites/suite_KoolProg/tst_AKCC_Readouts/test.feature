# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC ReadOuts


    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

    @KP_AKCC_ID_41.1
     Scenario: KP_AKCC_ID_41.1: Verify ReadOut Parameters In Online Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And Get The Parameter Collection From Input Database
        When Get ReadOuts List From Input Database
        Then Verify ReadOuts In Online Service Window