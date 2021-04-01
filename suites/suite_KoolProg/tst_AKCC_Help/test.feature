# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC Help



    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports


    ########################################### OFFLINE ################################################

    @KP_AKCC_ID_28.1&28.2
     Scenario: KP_AKCC_ID_28.1&28.2: Check Help With Parameter Name, Menu Code And Help Description Should Match From CDF And DataGrid In Project Window

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        When New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
		Then Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'


     @KP_AKCC_ID_28.5&28.6
     Scenario: KP_AKCC_ID_28.5&28.6: Check Help With Parameter Name, Menu Code And Help Description Should Match From CDF And DataGrid In Open Window

         Given KoolProg Had Opened
         And Click On The Setting Icon Button In The Main Window
         And Preference Window Is Visible
         And Get Koolprog Working Path From Preference Window And Save it
         And Get Controller Details From Variable
         And New Project Is Created For Selected Controller Details
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         And Click On SetParameter Button And SetParameter Window Is Visible
         When Click On Open Button In Set Parameters Window
         And Write The Created Project File With Default Path In Dialog
         And Click Open Button in Open Window
         And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Get The Parameter Collection From Input Database
         And Remove 'ItemType' Of 'R' From 'Parameter_collection'
         And Parse The DataGrid
		 Then Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		 And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		 And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'

     @KP_AKCC_ID_28.7&28.8
     Scenario: KP_AKCC_ID_28.7&28.8: Check Help With Parameter Name, Menu Code And Help Description Should Match From CDF And DataGrid In Recent Window

         Given KoolProg Had Opened
         And Get Controller Details From Variable
         And New Project Is Created For Selected Controller Details
         And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Go To Home Window From Project Window
         And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
         When Open Recent Project From Set Parameter Window
         And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
         And The Project Window Is Visible
         And Break The Communication Of Port With KoolProg
         And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
         And Get The Parameter Collection From Input Database
         And Remove 'ItemType' Of 'R' From 'Parameter_collection'
         And Parse The DataGrid
		 Then Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		 And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		 And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'

########################################### OFFLINE ################################################

########################################### ONLINE ################################################

@KP_AKCC_ID_28.3&28.4
     Scenario: KP_AKCC_ID_28.3&284: Check Help With Parameter Name, Menu Code And Help Description Should Match From CDF And DataGrid In Project Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
		Then Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'


     @KP_AKCC_ID_28.9&28.10
     Scenario: KP_AKCC_ID_28.9&28.10: Check Help With Parameter Name, Menu Code And Help Description Should Match From CDF And DataGrid In Online Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        When Enable Serial Port For 'AK-CC55' Controller
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Get The Parameter Collection From Input Database
        And Remove 'ItemType' Of 'R' From 'Parameter_collection'
        And Parse The DataGrid
		Then Verify 'Help' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'ParameterName' In 'Parameter_collection' And 'parsed_datagrid'
		And Verify 'MenuCode' In 'Parameter_collection' And 'parsed_datagrid'

########################################### ONLINE ################################################