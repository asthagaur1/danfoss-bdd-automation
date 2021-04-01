# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC mainSwitch

    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports


 ########################################## OFFLINE ################################################


 	@KP_AKCC_ID_22.1 @KP_AKCC_ID_22.2
     Scenario: KP_AKCC_ID_22.1,KP_AKCC_ID_22.2: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Save Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window.

     	Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'


	@KP_AKCC_ID_22.3
     Scenario: KP_AKCC_ID_22.3: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Save Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window.

     	Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'


	@KP_AKCC_ID_22.4 @KP_AKCC_ID_22.5
     Scenario: KP_AKCC_ID_22.4,KP_AKCC_ID_22.5: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Save Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window.

     	Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'



	@KP_AKCC_ID_22.6
     Scenario: KP_AKCC_ID_22.6: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Save Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window.

     	Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'


 	@KP_AKCC_ID_22.10 @KP_AKCC_ID_22.11
     Scenario: KP_AKCC_ID_22.10,KP_AKCC_ID_22.11: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Save Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window.

     	Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Saveas Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'



	@KP_AKCC_ID_22.12
     Scenario: KP_AKCC_ID_22.12: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Save Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window.

     	Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Saveas Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'





	@KP_AKCC_ID_22.19 @KP_AKCC_ID_22.20
     Scenario: KP_AKCC_ID_22.19,KP_AKCC_ID_22.20: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When X Is Clicked On PopUp While Quick Settings Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click On X Button On Popup Window
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'


	@KP_AKCC_ID_22.21
     Scenario: KP_AKCC_ID_22.21: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Quick Settings Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'

	@KP_AKCC_ID_22.22
     Scenario: KP_AKCC_ID_22.22: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Convert Settings Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'


	@KP_AKCC_ID_22.23 @KP_AKCC_ID_22.24
     Scenario: KP_AKCC_ID_22.23,KP_AKCC_ID_22.24: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When X Is Clicked On PopUp While Quick Settings Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click On X Button On Popup Window
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'


	@KP_AKCC_ID_22.25
     Scenario: KP_AKCC_ID_22.25: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Quick Settings Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'

	@KP_AKCC_ID_22.26
     Scenario: KP_AKCC_ID_22.26: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Convert Settings Button Is Clicked After Itemtype C Parameter Is Changed While Main Switch Is Set To Start In Project Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'


	@KP_AKCC_ID_22.53 @KP_AKCC_ID_22.54
     Scenario: KP_AKCC_ID_22.53,KP_AKCC_ID_22.54: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Save Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From SetParameters Window.

     	Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'


	@KP_AKCC_ID_22.55
     Scenario: KP_AKCC_ID_22.55: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Save Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From SetParameters Window.

     	Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'


	@KP_AKCC_ID_22.56 @KP_AKCC_ID_22.57
     Scenario: KP_AKCC_ID_22.56,KP_AKCC_ID_22.57: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Save Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From SetParameters Window.

     	Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'


	@KP_AKCC_ID_22.58
     Scenario: KP_AKCC_ID_22.58: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Save Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From SetParameters Window.

     	Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'



	@KP_AKCC_ID_22.62 @KP_AKCC_ID_22.63
     Scenario: KP_AKCC_ID_22.62,KP_AKCC_ID_22.63: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Save Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From SetParameters Window.

     	Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Saveas Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'


	@KP_AKCC_ID_22.64
     Scenario: KP_AKCC_ID_22.64: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Save Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From SetParameters Window.

     	Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Saveas Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'





	@KP_AKCC_ID_22.71 @KP_AKCC_ID_22.72
     Scenario: KP_AKCC_ID_22.71,KP_AKCC_ID_22.72: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When X Is Clicked On PopUp While Quick Settings Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From SetParameters Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click On X Button On Popup Window
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'


	@KP_AKCC_ID_22.73
     Scenario: KP_AKCC_ID_22.73: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Quick Settings Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From SetParameters Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'

	@KP_AKCC_ID_22.74
     Scenario: KP_AKCC_ID_22.74: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Convert Settings Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From SetParameters Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'


	@KP_AKCC_ID_22.75 @KP_AKCC_ID_22.76
     Scenario: KP_AKCC_ID_22.75,KP_AKCC_ID_22.76: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When X Is Clicked On PopUp While Quick Settings Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From SetParameters Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click On X Button On Popup Window
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'


	@KP_AKCC_ID_22.77
     Scenario: KP_AKCC_ID_22.77: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Quick Settings Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From SetParameters Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'

	@KP_AKCC_ID_22.78
     Scenario: KP_AKCC_ID_22.78: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Convert Settings Button Is Clicked After Itemtype C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From SetParameters Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'


	@KP_AKCC_ID_22.79 @KP_AKCC_ID_22.80
     Scenario: KP_AKCC_ID_22.79,KP_AKCC_ID_22.80: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Save Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening From Recent Project List.

     	Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'


	@KP_AKCC_ID_22.81
     Scenario: KP_AKCC_ID_22.81: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Save Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening From Recent Project List.

     	Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'


	@KP_AKCC_ID_22.82 @KP_AKCC_ID_22.83
     Scenario: KP_AKCC_ID_22.82,KP_AKCC_ID_22.83: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Save Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening From Recent Project List.

     	Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'


	@KP_AKCC_ID_22.84
     Scenario: KP_AKCC_ID_22.84: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Save Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening From Recent Project List.

     	Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'



	@KP_AKCC_ID_22.88 @KP_AKCC_ID_22.89
     Scenario: KP_AKCC_ID_22.88,KP_AKCC_ID_22.89: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Save Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening From Recent Project List.

     	Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Saveas Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'


	@KP_AKCC_ID_22.90
     Scenario: KP_AKCC_ID_22.90: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Save Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening From Recent Project List.

     	Given KoolProg Had Opened
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Saveas Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'




	@KP_AKCC_ID_22.97 @KP_AKCC_ID_22.98
     Scenario: KP_AKCC_ID_22.97,KP_AKCC_ID_22.98: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When X Is Clicked On PopUp While Quick Settings Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From Recent Project Lists.

     	Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click On X Button On Popup Window
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'


	@KP_AKCC_ID_22.99
     Scenario: KP_AKCC_ID_22.99: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Quick Settings Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From Recent Project Lists.

     	Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'

	@KP_AKCC_ID_22.100
     Scenario: KP_AKCC_ID_22.100: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Convert Settings Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From Recent Project Lists..

     	Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'



	@KP_AKCC_ID_22.101 @KP_AKCC_ID_22.102
     Scenario: KP_AKCC_ID_22.101,KP_AKCC_ID_22.102: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When X Is Clicked On PopUp While Quick Settings Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From Recent Project Lists.

     	Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click On X Button On Popup Window
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'


	@KP_AKCC_ID_22.103
     Scenario: KP_AKCC_ID_22.103: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Quick Settings Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From Recent Project Lists.

     	Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'

	@KP_AKCC_ID_22.104
     Scenario: KP_AKCC_ID_22.104: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Convert Settings Button Is Clicked After Itemtype C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From Recent Project Lists.

     	Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'










 ########################################## OFFLINE ################################################


 ########################################## ONLINE ################################################

	@KP_AKCC_ID_22.13 @KP_AKCC_ID_22.14
     Scenario: KP_AKCC_ID_22.13,KP_AKCC_ID_22.14: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Export Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Popup Message Should Come As 'Settings exported successfully to controller' In 'PROJECT_WINDOW'
		And Verify OK and X button In Popup Window Is Visible And Enabled In 'PROJECT_WINDOW'
		And Verify OK and X button In Popup Window In 'PROJECT_WINDOW'
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Ok Button In Popup Window In 'PROJECT_WINDOW'
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'
		And Go To Home Window From On-Service Test Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'




	 @KP_AKCC_ID_22.15
     Scenario: KP_AKCC_ID_22.15: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Export Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'
		And Go To Home Window From On-Service Test Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'




	@KP_AKCC_ID_22.16 @KP_AKCC_ID_22.17
     Scenario: KP_AKCC_ID_22.16,KP_AKCC_ID_22.17: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Export Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Popup Message Should Come As 'Settings exported successfully to controller' In 'PROJECT_WINDOW'
		And Verify OK and X button In Popup Window Is Visible And Enabled In 'PROJECT_WINDOW'
		And Verify OK and X button In Popup Window In 'PROJECT_WINDOW'
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Ok Button In Popup Window In 'PROJECT_WINDOW'
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'
		And Go To Home Window From On-Service Test Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'




	@KP_AKCC_ID_22.18
     Scenario: KP_AKCC_ID_22.18: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Export Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'
		And Go To Home Window From On-Service Test Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'

	@KP_AKCC_ID_22.27 @KP_AKCC_ID_22.28
     Scenario: KP_AKCC_ID_22.27,KP_AKCC_ID_22.28: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Save Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Import Settings From Controller Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'



	@KP_AKCC_ID_22.29
     Scenario: KP_AKCC_ID_22.29: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Save Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Import Settings From Controller Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'



	@KP_AKCC_ID_22.30 @KP_AKCC_ID_22.31
     Scenario: KP_AKCC_ID_22.30,KP_AKCC_ID_22.31: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Save Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Import Settings From Controller Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'



	@KP_AKCC_ID_22.32
     Scenario: KP_AKCC_ID_22.32: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Save Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Import Settings From Controller Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click Save Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'

	@KP_AKCC_ID_22.36 @KP_AKCC_ID_22.37
     Scenario: KP_AKCC_ID_22.36,KP_AKCC_ID_22.37: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Save Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Import Settings From Controller Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Saveas Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'



	@KP_AKCC_ID_22.38
     Scenario: KP_AKCC_ID_22.38: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Save Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Import Settings From Controller Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Saveas Button In Project Window
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'


	@KP_AKCC_ID_22.39 @KP_AKCC_ID_22.40
     Scenario: KP_AKCC_ID_22.39,KP_AKCC_ID_22.40: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Export Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Import Settings From Controller Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Get Controller Details From Variable
        And Enable The Port For Created Project
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Popup Message Should Come As 'Settings exported successfully to controller' In 'PROJECT_WINDOW'
		And Click Ok Button In Popup Window In 'PROJECT_WINDOW'
		And Go To Home Window From Import Settings From Controller Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'
		And Go To Home Window From On-Service Test Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Online Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'




	@KP_AKCC_ID_22.41
     Scenario: KP_AKCC_ID_22.41: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Export Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Import Settings From Controller Window.


     	Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Get Controller Details From Variable
        And Enable The Port For Created Project
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Go To Home Window From Import Settings From Controller Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'
		And Go To Home Window From On-Service Test Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'


	@KP_AKCC_ID_22.42 @KP_AKCC_ID_22.43
     Scenario: KP_AKCC_ID_22.42,KP_AKCC_ID_22.43: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Export Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Import Settings From Controller Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Get Controller Details From Variable
        And Enable The Port For Created Project
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Popup Message Should Come As 'Settings exported successfully to controller' In 'PROJECT_WINDOW'
		And Click Ok Button In Popup Window In 'PROJECT_WINDOW'
		And Go To Home Window From Import Settings From Controller Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'
		And Go To Home Window From On-Service Test Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Online Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'




	@KP_AKCC_ID_22.44
     Scenario: KP_AKCC_ID_22.44: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Export Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Import Settings From Controller Window.


     	Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Get Controller Details From Variable
        And Enable The Port For Created Project
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Go To Home Window From Import Settings From Controller Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'
		And Go To Home Window From On-Service Test Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'


	@KP_AKCC_ID_22.45 @KP_AKCC_ID_22.46
     Scenario: KP_AKCC_ID_22.45,KP_AKCC_ID_22.46: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When X Is Clicked On PopUp While Quick Settings Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Import Settings From Controller Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click On X Button On Popup Window
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'


	@KP_AKCC_ID_22.47
     Scenario: KP_AKCC_ID_22.47: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Quick Settings Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Import Settings From Controller Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'

	@KP_AKCC_ID_22.48
     Scenario: KP_AKCC_ID_22.48: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Convert Settings Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Import Settings From Controller Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'


	@KP_AKCC_ID_22.49 @KP_AKCC_ID_22.50
     Scenario: KP_AKCC_ID_22.49,KP_AKCC_ID_22.50: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When X Is Clicked On PopUp While Quick Settings Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Import Settings From Controller Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click On X Button On Popup Window
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'


	@KP_AKCC_ID_22.51
     Scenario: KP_AKCC_ID_22.51: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Quick Settings Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Import Settings From Controller Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'

	@KP_AKCC_ID_22.52
     Scenario: KP_AKCC_ID_22.52: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Convert Settings Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Import Settings From Controller Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Click Save Button In Project Window
		And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
		And Click Ok Button In Saved Successfully Popup Window
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On the Quick Settings Icon
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Quick Settings Window Is Visible
        And Verify Quick Settings Window Is Enabled
        And Click On Finish Button In Quick Settings Window
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'







	@KP_AKCC_ID_22.65 @KP_AKCC_ID_22.66
     Scenario: KP_AKCC_ID_22.65,KP_AKCC_ID_22.66: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Export Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening File From SetParameter Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Popup Message Should Come As 'Settings exported successfully to controller' In 'PROJECT_WINDOW'
		And Verify OK and X button In Popup Window Is Visible And Enabled In 'PROJECT_WINDOW'
		And Verify OK and X button In Popup Window In 'PROJECT_WINDOW'
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Ok Button In Popup Window In 'PROJECT_WINDOW'
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'
		And Go To Home Window From On-Service Test Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'




	@KP_AKCC_ID_22.67
     Scenario: KP_AKCC_ID_22.67: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Export Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening File From SetParameter Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'
		And Go To Home Window From On-Service Test Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'




	@KP_AKCC_ID_22.68 @KP_AKCC_ID_22.69
     Scenario: KP_AKCC_ID_22.68,KP_AKCC_ID_22.69: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Export Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening File From SetParameter Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Popup Message Should Come As 'Settings exported successfully to controller' In 'PROJECT_WINDOW'
		And Verify OK and X button In Popup Window Is Visible And Enabled In 'PROJECT_WINDOW'
		And Verify OK and X button In Popup Window In 'PROJECT_WINDOW'
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Ok Button In Popup Window In 'PROJECT_WINDOW'
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'
		And Go To Home Window From On-Service Test Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'




	@KP_AKCC_ID_22.70
     Scenario: KP_AKCC_ID_22.70: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Export Button Is Clicked After Itemtype C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening File From SetParameter Window.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'
		And Go To Home Window From On-Service Test Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'


	@KP_AKCC_ID_22.91 @KP_AKCC_ID_22.92
     Scenario: KP_AKCC_ID_22.91,KP_AKCC_ID_22.92: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Export Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From Recent Project List.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
     	And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Popup Message Should Come As 'Settings exported successfully to controller' In 'PROJECT_WINDOW'
		And Verify OK and X button In Popup Window Is Visible And Enabled In 'PROJECT_WINDOW'
		And Verify OK and X button In Popup Window In 'PROJECT_WINDOW'
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Ok Button In Popup Window In 'PROJECT_WINDOW'
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'
		And Go To Home Window From On-Service Test Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'




	@KP_AKCC_ID_22.93
     Scenario: KP_AKCC_ID_22.93: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Export Button Is Clicked After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From Recent Project List.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
     	And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'CopyType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Set Random Values In DataGrid For 'CopyType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'
		And Go To Home Window From On-Service Test Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'




	@KP_AKCC_ID_22.94 @KP_AKCC_ID_22.95
     Scenario: KP_AKCC_ID_22.94,KP_AKCC_ID_22.95: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp While Export Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From Recent Project List.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
     	And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Verify Yes, No And X Button Are Enable In Project Window
		And Verify Text Of Yes, No And X Button In Project Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Yes Button In 'PROJECT_WINDOW'
		And Verify Popup Message Should Come As 'Settings exported successfully to controller' In 'PROJECT_WINDOW'
		And Verify OK and X button In Popup Window Is Visible And Enabled In 'PROJECT_WINDOW'
		And Verify OK and X button In Popup Window In 'PROJECT_WINDOW'
		And Check 'KoolProg' Header Text In PopUp Window
		And Click Ok Button In Popup Window In 'PROJECT_WINDOW'
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'
		And Go To Home Window From On-Service Test Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'



	@KP_AKCC_ID_22.96
     Scenario: KP_AKCC_ID_22.96: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp While Export Button Is Clicked After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Project Window After Opening Project From Recent Project List.

     	Given KoolProg Had Opened
     	And Disable All Serial Ports
     	And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Clear The Working Directory Folder
     	And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
		And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		When Set The Main Switch To Start In DataGrid
		And Set Random Values In DataGrid For 'ItemType_C_Collection'
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Click On Export Button
		And Verify Popup Window Is Visible In 'PROJECT_WINDOW'
		And Check 'This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?' Text Is Displayed In PopUp Window After Stripping Newlines in 'PROJECT_WINDOW'
		And Click No Button In 'PROJECT_WINDOW'
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'
		And Go To Home Window From On-Service Test Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Parse The DataGrid
		And Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'

	@KP_AKCC_ID_22.105
    Scenario: KP_AKCC_ID_22.105: Verify "Set Main Switch To ON After Copying" Label Checkbox Is Visible When Connecting To Controller In Copy In Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        When Verify Controller Is Connected With KoolProg
        Then Verify Set Main Switch On After Copying Label Is Visible
        And Verify Set Main Switch On After Copying Label Is Enabled
        And Verify The Checkbox Status Is Unchecked By Default

    @KP_AKCC_ID_22.106
    Scenario: KP_AKCC_ID_22.106: Verify "Set Main Switch To ON After Copying" Label Checkbox Is Not Vsible When Controller Is Not Connected In Copy To Controller Window

		Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Set Main Switch On After Copying Label Is Visible
        And Verify Set Main Switch On After Copying Label Is Enabled
		When Disable All Serial Ports
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
        Then Verify Set Main Switch On After Copying Label Is Not Visible
		And Verify Please Connect A Controller Label Text Is Displayed In Copy To Controller Window


"""
	#Commenting this scenario as we need maintainence controller to connect
	@KP_AKCC_ID_22.107
    Scenario: KP_AKCC_ID_22.107: Verify "Set Main Switch To ON After Copying" Is Not Visible When Controller Other Than AKCC Is Connected

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Verify Set Main Switch On After Copying Label Is Visible
        And Verify Set Main Switch On After Copying Label Is Enabled
		When Disable All Serial Ports
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Enable Random Serial Port Except AKCC, EKE
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		Then Verify Set Main Switch On After Copying Label Is Not Visible
		And Verify Please Connect A Controller Label Text Is Displayed In Copy To Controller Window
"""

	@KP_AKCC_ID_22.108
    Scenario: KP_AKCC_ID_22.108: Verify "Set Main Switch To ON After Copying" Label Is Not Visible When Selecting Bin File From Copy To Controller Window

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
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Controller Is Connected With KoolProg
        And Click On Browse Button In Copy To Controller Window
        And Open The Created File In Project Window
		And Verify Set Main Switch On After Copying Label Is Visible
        And Verify Set Main Switch On After Copying Label Is Enabled
        And Click On Browse Button In Copy To Controller Window
        And Get Connected Controller Information
        And Get Bin File In Copy To Controller Window
        When Open Bin File In Copy To Controller Window
        And Set 'password' Password In Firmware Password Window
        And Click Ok Button In Firmware Password Window
        And Add Required Delay For 'BIN_FILE_TO_GET_DISPLAYED' for 'ONLINE' mode
        Then Verify Set Main Switch On After Copying Label Is Not Visible


    @KP_AKCC_ID_22.114
     Scenario: KP_AKCC_ID_22.114: Check If Manual, Stop And Start Are The Radio Buttons Available For Main Switch Option

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Verify Input/Output Tab Is Visible And Enabled
        When Click On The Input/Output Tab
        Then Verify The MainSwitch Label In Input Output Tab
        And Verify The Manual RadioButton In Input Output Tab
        And Verify The Start RadioButton In Input Output Tab
        And Verify The Stop RadioButton In Input Output Tab
        And Click on the Manual RadioButton In Input Output Tab
        And Verify The Column Position Of Manual Header Label In Input Output Table
        And Verify The Manual Header Label Is Available After Clicking Manual RadioButton


	@KP_AKCC_ID_22.115
     Scenario: KP_AKCC_ID_22.115: Check If Changing Main Switch Value To Start In The I/O Tab Changes The Value Of MainSwitch To Start In The Parameters Tab From Online Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Serial Port For 'AK-CC55'
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Verify Input/Output Tab Is Visible And Enabled
        And Click On The Input/Output Tab
        When Click on the Start RadioButton In Input Output Tab
		And Click On The Parameters Tab In Online Service Window
        And Click On All Tree Item In Tree View
        And Add Required Delay For 'DATAGRID_TO_GET_LOADED' for 'ONLINE' mode
        And Get The Parameter Collection From Input Database
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
        And Parse The DataGrid
        Then Check If Main Switch Is Set To Start In 'parsed_datagrid'


	 @KP_AKCC_ID_22.116
     Scenario: KP_AKCC_ID_22.116: Verify Manual Column Should Not Come When Start Button Is Selected For Main Switch Option

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Verify Input/Output Tab Is Visible And Enabled
        And Click On The Input/Output Tab
        And Verify The Manual RadioButton In Input Output Tab
        And Verify The Start RadioButton In Input Output Tab
        And Verify The Stop RadioButton In Input Output Tab
        When Click on the Start RadioButton In Input Output Tab
        Then Verify The Manual Header Label Is Not Available After Clicking Start RadioButton

     @KP_AKCC_ID_22.117
     Scenario: KP_AKCC_ID_22.117: Verify Manual Column Should Not Come When Stop Button Is Selected For Main Switch Option

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Verify Input/Output Tab Is Visible And Enabled
        And Click On The Input/Output Tab
        And Verify The Manual RadioButton In Input Output Tab
        And Verify The Start RadioButton In Input Output Tab
        And Verify The Stop RadioButton In Input Output Tab
        When Click on the Stop RadioButton In Input Output Tab
        Then Verify The Manual Header Label Is Not Available After Clicking Stop RadioButton



	@KP_AKCC_ID_22.121 @KP_AKCC_ID_22.123
     Scenario: KP_AKCC_ID_22.121,KP_AKCC_ID_22.123: Verify Changed Values Are Not Displayed In DataGrid And MS Is Set To Start When No Is Clicked On PopUp After ItemType C Parameter Is Changed While Main Switch Is Set To Start In Online Service Window.

     	Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		And Click On All Tree Item In Tree View
		When Set The Main Switch To Start In DataGrid
		And Set Random Values In DataGrid For 'ItemType_C_Collection' And Verify The PopUp Window And Its Text And Click On 'X' Button And Set Main Switch To Start
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Not Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Not Grey' In 'parsed_datagrid'
		And Check If Main Switch Is Set To Start In 'parsed_datagrid'

	@KP_AKCC_ID_22.122
     Scenario: KP_AKCC_ID_22.122: Verify Changed Values Are Displayed In DataGrid And MS Is Set To Stop When Yes Is Clicked On PopUp After CopyType C Parameter Is Changed While Main Switch Is Set To Start In Online Service Window.

     	Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
		And Get The Parameter Collection From Input Database
		And Get The 'ItemType' Of 'C' From 'Parameter_collection'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Start' Value With Respect To Selected Language
		And Click On All Tree Item In Tree View
		When Set The Main Switch To Start In DataGrid
		And Set Random Values In DataGrid For 'ItemType_C_Collection' And Verify The PopUp Window And Its Text And Click On 'Yes' Button And Set Main Switch To Start
		And Remove 'ItemType' Of 'R' From 'Updated_input_collection'
		And Parse The DataGrid
		Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Get 'Main switch' Parameter 'Main_switch_Enum_Value_Stop' Value With Respect To Selected Language
		And Check If Main Switch Is Set To Stop In 'parsed_datagrid'


 ########################################## ONLINE ################################################