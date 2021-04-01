# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: CDF

    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

  	######################################### OFFLINE ########################################################

	@KP_AKCC_ID_50.1
    Scenario: KP_AKCC_ID_50.1: Verify quicksettings.js file available In CDF File

	     Given KoolProg Had Opened
	     When Get Controller Details From Variable
	     And Locate And Unzip The CDF
	     Then Verify Quicksettings JS File Is Present In The CDF File

	######################################### OFFLINE ########################################################