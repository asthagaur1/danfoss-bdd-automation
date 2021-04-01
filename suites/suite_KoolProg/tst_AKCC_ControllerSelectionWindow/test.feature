# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC Controller Selection Window.


    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

    @KP_AKCC_ID_15.1
     Scenario: KP_AKCC_ID_15.1: Verify Default AKCC Variant In Controller Selection Window.

        Given KoolProg Had Opened
        And KoolProg New Project Window Is Open
        When Select 'AK-CC55' Controller Family
        Then Verify Controller Variant In Controller Selection Window
