# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC Connected Controller

    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

    @KP_AKCC_ID_16.1
     Scenario: KP_AKCC_ID_16.1: Check If Default Software Version Are Also Available After Importing New CDF From New Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        When Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Set CodeNumber In Project Description Window
        And Get SW Version List From Project Description Window
        Then Verify Software Version Combobox Has Default CDF
        And Verify Software Version Combobox Has Imported Cdf

    @KP_AKCC_ID_16.2
    Scenario: KP_AKCC_ID_16.2: Check If Checkbox Is Available To Open The Dynamic Wizard And It Can Be Unchecked To Create A Project With Default Values From New Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Go To Set Parameter Window
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        When Uncheck The Quick Wizard Option If Selected Controller Has It
        And Click Finish Button In New Project Window
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Parse The DataGrid
        Then Verify 'Value' In 'Parameter_collection' And 'parsed_datagrid'

    @KP_AKCC_ID_16.3
    Scenario: KP_AKCC_ID_16.3: Check If Checkbox Is Available To Open The Dynamic Wizard And It Can Be Checked To Create A Project With Changed Values From New Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Go To Set Parameter Window
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Select Code Number And Software Version In Project Description Window
        And Write Project Name
        And Write Project Description
        And Click Finish Button In New Project Window
        And Get The Quick Setting Collection From Input Database
        When Set Random Values In QuickSetting For 'QuickSetting_Collection'
        And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
	    And Remove 'ItemType' Of 'R' From 'Updated_quickSetting_collection'
	    And Get The Quick Settings Collection From The UI
	    Then Verify 'ParameterName' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
		And Verify 'Value' Of 'quick_settings_ui' Of Quick Setting Collection And 'Updated_quickSetting_collection'
        And Click On Finish Button In Quick Settings Window
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Parse The DataGrid
        And Verify 'ParameterName' In 'Updated_input_collection' And 'parsed_datagrid'
	    And Remove 'ItemType' Of 'P' From 'Updated_input_collection'
	    And Verify 'Value' In 'Updated_input_collection' And 'parsed_datagrid'

    @KP_AKCC_ID_16.4
    Scenario: KP_AKCC_ID_16.4: Verify Controller Image, Circuit Diagram And Description Is Relevant To Single Coil In Project Description Window

        Given KoolProg Had Opened
        And Get the index For The 'AK-CC55' family and 'Single Coil' Variant
        And Go To Set Parameter Window
        And Click On New Button From Set Parameter Window
        When Select Controller Family And It's Variant
        Then Verify Circuit Diagram,Wiring Diagram And Product Description Details In Controller Selection Window

     @KP_AKCC_ID_16.5
    Scenario: KP_AKCC_ID_16.5: Verify Controller Image, Circuit Diagram And Description Is Relevant To Multi Coil In Project Description Window

        Given KoolProg Had Opened
        And Get the index For The 'AK-CC55' family and 'Multi Coil' Variant
        And Go To Set Parameter Window
        When Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        Then Verify Circuit Diagram,Wiring Diagram And Product Description Details In Controller Selection Window

     @KP_AKCC_ID_16.6
    Scenario: KP_AKCC_ID_16.6: Verify Controller Image, Circuit Diagram And Description Is Relevant To Compact In Project Description Window

        Given KoolProg Had Opened
        And Get the index For The 'AK-CC55' family and 'Compact' Variant
        And Go To Set Parameter Window
        When Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        Then Verify Circuit Diagram,Wiring Diagram And Product Description Details In Controller Selection Window
