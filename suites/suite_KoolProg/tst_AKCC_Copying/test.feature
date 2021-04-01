# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC Copying.


    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

    @KP_AKCC_ID_33.1
    Scenario: KP_AKCC_ID_33.1: Create A Project And Copy It In Copy To Controller After Copying Check Main Switch Is Set To Off In Online Service

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
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        When Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Click On Browse Button In Copy To Controller Window
        And Open The Created File In Project Window
		And Add Required Delay For 'IMPORTING_PROJECT_FILE' for 'ONLINE' mode
		And Click On Start Button In Copy To Controller Window
		And Add Required Delay For 'PROGRAMMING_CONTROLLER_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'Configuration successfully copied to controller.' In Copy To controller Window
        And Click OK Button In Popup Window
        And Go To Home Window From Copy To controller Window
        And Add Required Delay For 'SWITCHING_TO_HOME_FROM_ANY_OTHER_WINDOW' for 'ONLINE' mode
        And Click On OnLine Service Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        Then Parse The DataGrid
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'

    @KP_AKCC_ID_33.2
    Scenario: KP_AKCC_ID_33.2: Create A Project And Change Main Switch To Copy It In Copy To Controller After Copying Check Main Switch Is Set To Off In Online Service

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
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Click On Browse Button In Copy To Controller Window
        And Open The Created File In Project Window
		And Add Required Delay For 'IMPORTING_PROJECT_FILE' for 'ONLINE' mode
		And Click On Start Button In Copy To Controller Window
		And Add Required Delay For 'PROGRAMMING_CONTROLLER_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'Configuration successfully copied to controller.' In Copy To controller Window
        And Click OK Button In Popup Window
		And Go To Home Window From Copy To controller Window
        And Add Required Delay For 'SWITCHING_TO_HOME_FROM_ANY_OTHER_WINDOW' for 'ONLINE' mode
        And Click On OnLine Service Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        Then Parse The DataGrid
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'


    @KP_AKCC_ID_33.3
    Scenario: KP_AKCC_ID_33.3: Create A Project Change The Parameters, Save The File Then Copy The File Into Controller And Verify Changed Values In Online Window

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
        When Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Get The 'DataType' Of 'Integer' From 'Parameter_collection'
        And Get Random Values Count '2' for 'Integer' In DataGrid For 'DataType_Integer_Collection'
        And Get The 'DataType' Of 'Float' From 'Parameter_collection'
		And Get Random Values Count '2' for 'Float' In DataGrid For 'DataType_Float_Collection'
		And Combine The Collection 'Integer_updated_collection' And 'Float_updated_collection'
		And Get The 'DataType' Of 'Enum' From 'Parameter_collection'
        And Get Random Values Count '2' for 'Enum' In DataGrid For 'DataType_Enum_Collection'
        And Combine The Collection 'Enum_updated_collection' And 'Merged_Collection'
        And Set Random Values In DataGrid For 'Merged_Collection'
        And Parse The DataGrid
        And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Click On Browse Button In Copy To Controller Window
        And Open The Created File In Project Window
		And Add Required Delay For 'IMPORTING_PROJECT_FILE' for 'ONLINE' mode
		And Click On Start Button In Copy To Controller Window
		And Add Required Delay For 'PROGRAMMING_CONTROLLER_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'Configuration successfully copied to controller.' In Copy To controller Window
        And Click OK Button In Popup Window
		And Go To Home Window From Copy To controller Window
        And Add Required Delay For 'SWITCHING_TO_HOME_FROM_ANY_OTHER_WINDOW' for 'ONLINE' mode
        And Click On OnLine Service Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        Then Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'


    @KP_AKCC_ID_33.5
    Scenario: KP_AKCC_ID_33.5: Create A Project And Copy In Controller Then Check Home Screen Is Visible

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
        When Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Click On Browse Button In Copy To Controller Window
        And Open The Created File In Project Window
		And Add Required Delay For 'IMPORTING_PROJECT_FILE' for 'ONLINE' mode
		And Click On Start Button In Copy To Controller Window
		And Add Required Delay For 'PROGRAMMING_CONTROLLER_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'Configuration successfully copied to controller.' In Copy To controller Window
        And Click OK Button In Popup Window
		And Go To Home Window From Copy To controller Window
        And Add Required Delay For 'SWITCHING_TO_HOME_FROM_ANY_OTHER_WINDOW' for 'ONLINE' mode
        Then Verify Home Screen Is Visible And Enabled
