# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC Plug And Play

    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

    @KP_AKCC_ID_49.1:
    Scenario: KP_AKCC_ID_49.1: Verify Changes Made In The Datagrid Gets Saved To The Controller When Disconnecting And Connecting Controller And Clicking On The Export Button From Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
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
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Enable The Port Again
        And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        When Click On Export Button
        And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'Settings exported successfully to controller' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Parse The DataGrid
        Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        And Add Required Delay For 'DATAGRID_TO_GET_LOADED' for 'ONLINE' mode
        And Parse The DataGrid
        And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'

    @KP_AKCC_ID_49.2:
    Scenario: KP_AKCC_ID_49.2: Verify Changes Made In The Datagrid Gets Saved To The Controller When Disconnecting And Connecting Controller And Clicking On The Save Button From Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
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
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Disable All Serial Ports
        And Enable The Port Again
        And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        When Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Parse The DataGrid
        Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'

    @KP_AKCC_ID_49.5
    Scenario: KP_AKCC_ID_49.5: Verify KoolProg Should Not Crash When Click On Convert Settings Icon Before Connecting A Controller From Create Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        When Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Connected Controller Information Is Not Available
        And Click On Convert Setting Icon
        Then Check Convert Setting Window Is Visible And Enabled
        And Verify Labels In Convert Settings Window Are Visible And Enable
        And Verify Labels Texts In Convert Settings Window
        And Verify Image And Buttons In Convert Settings Window Are Visible And Enable
        And Verify Buttons Texts In Convert Settings Window

    @KP_AKCC_ID_49.6
    Scenario: KP_AKCC_ID_49.6: Verify KoolProg Should Not Crash When Click On Convert Settings Icon After Connecting A Controller From Create Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When Enable The Port For Created Project
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Click On Convert Setting Icon
        Then Check Convert Setting Window Is Visible And Enabled
        And Verify Labels In Convert Settings Window Are Visible And Enable
        And Verify Labels Texts In Convert Settings Window
        And Verify Image And Buttons In Convert Settings Window Are Visible And Enable
        And Verify Buttons Texts In Convert Settings Window

    @KP_AKCC_ID_49.7:
    Scenario: KP_AKCC_ID_49.7: Verify Changes Made In The Datagrid Gets Saved To The Controller When Disconnecting And Connecting Controller And Clicking On The Export Button In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
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
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Disable All Serial Ports
        And Enable The Port Again
        And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        When Click On Export Button
        And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'Settings exported successfully to controller' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Parse The DataGrid
        Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        And Add Required Delay For 'DATAGRID_TO_GET_LOADED' for 'ONLINE' mode
        And Parse The DataGrid
        And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'

    @KP_AKCC_ID_49.8:
    Scenario: KP_AKCC_ID_49.8: Verify Changes Made In The Datagrid Gets Saved To The Controller When Disconnecting And Connecting Controller And Clicking On The Save Button In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
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
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Disable All Serial Ports
        And Enable The Port Again
        And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        When Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Parse The DataGrid
        And Verify 'Changed_values' Are Present In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Write The Created Project File With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible
        And Parse The DataGrid
        Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'

    @KP_AKCC_ID_49.14
    Scenario: KP_AKCC_ID_49.14: Verify KoolProg Should Not Crash When Click On Convert Settings Icon Before Connecting A Controller In Import Settings From Controller Window.

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
        When Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Connected Controller Information Is Not Available
        And Click On Convert Setting Icon
        Then Check Convert Setting Window Is Visible And Enabled
        And Verify Labels In Convert Settings Window Are Visible And Enable
        And Verify Labels Texts In Convert Settings Window
        And Verify Image And Buttons In Convert Settings Window Are Visible And Enable
        And Verify Buttons Texts In Convert Settings Window

    @KP_AKCC_ID_49.15
    Scenario: KP_AKCC_ID_49.15: Verify KoolProg Should Not Crash When Click On Convert Settings Icon After Connecting A Controller  Window.

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
        And Verify Controller Is Connected With KoolProg
        And Click On Convert Setting Icon
        Then Check Convert Setting Window Is Visible And Enabled
        And Verify Labels In Convert Settings Window Are Visible And Enable
        And Verify Labels Texts In Convert Settings Window
        And Verify Image And Buttons In Convert Settings Window Are Visible And Enable
        And Verify Buttons Texts In Convert Settings Window

    @KP_AKCC_ID_49.16:
    Scenario: KP_AKCC_ID_49.16: Verify Changes Made In The Datagrid Gets Saved To The Controller When Disconnecting And Connecting Controller And Clicking On The Export Button From Open Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And New Project Is Created For Selected Controller Details
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
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Disable All Serial Ports
        And Enable The Port Again
        And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        When Click On Export Button
        And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'Settings exported successfully to controller' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Parse The DataGrid
        Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
		And Go To Home Window From Project Window
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        And Add Required Delay For 'DATAGRID_TO_GET_LOADED' for 'ONLINE' mode
        And Parse The DataGrid
        And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'

    @KP_AKCC_ID_49.17:
    Scenario: KP_AKCC_ID_49.17: Verify Changes Made In The Datagrid Gets Saved To The Controller When Disconnecting And Connecting Controller And Clicking On The Save Button From Open Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
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
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Disable All Serial Ports
        And Enable The Port Again
        And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        When Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Go To Home Window From Project Window
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

    @KP_AKCC_ID_49.20
    Scenario: KP_AKCC_ID_49.20: Verify KoolProg Should Not Crash When Click On Convert Settings Icon Before Connecting A Controller From Open Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
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
        When Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Connected Controller Information Is Not Available
        And Click On Convert Setting Icon
        Then Check Convert Setting Window Is Visible And Enabled
        And Verify Labels In Convert Settings Window Are Visible And Enable
        And Verify Labels Texts In Convert Settings Window
        And Verify Image And Buttons In Convert Settings Window Are Visible And Enable
        And Verify Buttons Texts In Convert Settings Window

    @KP_AKCC_ID_49.21
    Scenario: KP_AKCC_ID_49.21: Verify KoolProg Should Not Crash When Click On Convert Settings Icon After Connecting A Controller From Open Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        When Enable The Port For Created Project
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
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
        And Verify Controller Is Connected With KoolProg
        And Click On Convert Setting Icon
        Then Check Convert Setting Window Is Visible And Enabled
        And Verify Labels In Convert Settings Window Are Visible And Enable
        And Verify Labels Texts In Convert Settings Window
        And Verify Image And Buttons In Convert Settings Window Are Visible And Enable
        And Verify Buttons Texts In Convert Settings Window

    @KP_AKCC_ID_49.22:
    Scenario: KP_AKCC_ID_49.22: Verify Changes Made In The Datagrid Gets Saved To The Controller When Disconnecting And Connecting Controller And Clicking On The Export Button From Recent Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
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
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Disable All Serial Ports
        And Enable The Port Again
        And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        When Click On Export Button
        And Add Required Delay For 'EXPORTING_SETTING_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Popup Message Should Come As 'Settings exported successfully to controller' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And Parse The DataGrid
        And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'
        And Go To Home Window From Project Window
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        And Add Required Delay For 'DATAGRID_TO_GET_LOADED' for 'ONLINE' mode
        And Parse The DataGrid
        Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'

    @KP_AKCC_ID_49.23:
    Scenario: KP_AKCC_ID_49.23: Verify Changes Made In The Datagrid Gets Saved To The Controller When Disconnecting And Connecting Controller And Clicking On The Save Button From Recent Project Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Disable All Serial Ports
        And Enable The Port For Created Project
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Get The Parameter Collection From Input Database
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
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Disable All Serial Ports
        And Enable The Port Again
        And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        When Click Save Button In Project Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Parse The DataGrid
        Then Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'


    @KP_AKCC_ID_49.26
    Scenario: KP_AKCC_ID_49.26: Verify KoolProg Should Not Crash When Click On Convert Settings Icon Before Connecting A Controller From Recent Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        When Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Connected Controller Information Is Not Available
        And Click On Convert Setting Icon
        Then Check Convert Setting Window Is Visible And Enabled
        And Verify Labels In Convert Settings Window Are Visible And Enable
        And Verify Labels Texts In Convert Settings Window
        And Verify Image And Buttons In Convert Settings Window Are Visible And Enable
        And Verify Buttons Texts In Convert Settings Window

    @KP_AKCC_ID_49.27
    Scenario: KP_AKCC_ID_49.27: Verify KoolProg Should Not Crash When Click On Convert Settings Icon After Connecting A Controller From Recent Project Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        When Enable The Port For Created Project
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
        And Click On Convert Setting Icon
        Then Check Convert Setting Window Is Visible And Enabled
        And Verify Labels In Convert Settings Window Are Visible And Enable
        And Verify Labels Texts In Convert Settings Window
        And Verify Image And Buttons In Convert Settings Window Are Visible And Enable
        And Verify Buttons Texts In Convert Settings Window

    @KP_AKCC_ID_49.30
    Scenario: KP_AKCC_ID_49.30: Verify The Message Popup "The firmware update failed." Should Come When Disconnecting Controller In The Middle Of The Firmware Upgrade.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Click On Browse Button In Copy To Controller Window
        And Open Non Compatible Bin File With SW Version Mismatch In Copy To Controller Window
        And Click On Start Button In Copy To Controller Window
        When Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        Then Verify Please Connect A Controller Label Is Visible In Copy To Controller Window
        And Verify Please Connect A Controller Label Text Is Displayed In Copy To Controller Window
        And Add Required Delay For 'FIRMWARE_UPGRADE_TO_FAIL' for 'ONLINE' mode
        And Verify The Firmware Update Failed Progress Bar
        And Verify Popup Window Is Visible
        And Verify Popup Message Should Come As 'The firmware update failed.' In Copy To controller Window
        And Verify Header Of Popup Window In Copy To Controller Window
        And Verify OK and X button In Popup Window In Copy To Controller Window
        And Click OK Button In Popup Window
        And Enable The Port Again
        And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
        And Get Connected Controller Information
        And Verify Connected Controller And Selected Controller Information Is Matching

    @KP_AKCC_ID_49.31
    Scenario: KP_AKCC_ID_49.31: Verify 'Firmware Update Failed' Message When Selecting The Count Down Timer In Multiple Controller Programming And Disconnecting In The Middle Of Firmware Upgrade From Copy To Controller Window

        Given KoolProg Had Opened
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
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        And Open The Created File In Project Window
        And Click On Multiple Controller Programming Button In Copy To Controller Window
		When Click On Count Down Timer In Copy To Controller Window
		And Click On Browse Button In Copy To Controller Window
		And Open Non Compatible Bin File With SW Version Mismatch In Copy To Controller Window
		And Click On Start Button In Copy To Controller Window
		And Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Add Required Delay For 'FIRMWARE_UPGRADE_TO_FAIL' for 'ONLINE' mode
        And Verify The Firmware Update Failed Progress Bar
        And Verify Popup Window Is Visible
        Then Verify Popup Message Should Come As 'The firmware update failed.' In Copy To controller Window
        And Verify Header Of Popup Window In Copy To Controller Window
        And Verify OK and X button In Popup Window In Copy To Controller Window
        And Click OK Button In Popup Window
        And Check Start Label Is Disabled In Copy To Controller Window
        And Verify The Firmware Update Failed Progress Bar Is Not Visible
        And Verify Connected Controller Information Is Not Available
        And Check Browse Button Is Enabled In Copy To Controller Window
        And Verify The Browsed Project File Details In Copy To Controller


    @KP_AKCC_ID_49.32
    Scenario: KP_AKCC_ID_49.32: Verify 'Firmware Update Failed' Message When Selecting The Count Up Timer In Multiple Controller Programming And Disconnecting In The Middle Of Firmware Upgrade From Copy To Controller Window

        Given KoolProg Had Opened
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
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        And Open The Created File In Project Window
        And Click On Multiple Controller Programming Button In Copy To Controller Window
        When Click On Count Up Button In Copy To Controller Window
        And Set the Count value as '3'
		And Programming The File Multiple Times To Controller 'Incrementally'
		And Click On Browse Button In Copy To Controller Window
		And Open Non Compatible Bin File With SW Version Mismatch In Copy To Controller Window
		And Click On Start Button In Copy To Controller Window
		And Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Add Required Delay For 'FIRMWARE_UPGRADE_TO_FAIL' for 'ONLINE' mode
        And Verify The Firmware Update Failed Progress Bar
        And Verify Popup Window Is Visible
        Then Verify Popup Message Should Come As 'The firmware update failed.' In Copy To controller Window
        And Verify Header Of Popup Window In Copy To Controller Window
        And Verify OK and X button In Popup Window In Copy To Controller Window
        And Click OK Button In Popup Window
        And Check Start Label Is Disabled In Copy To Controller Window
        And Verify The Firmware Update Failed Progress Bar Is Not Visible
        And Verify Connected Controller Information Is Not Available
        And Check Browse Button Is Enabled In Copy To Controller Window
        And Verify The Browsed Project File Details In Copy To Controller

	"""

	#Commented since this test case needs maintenance Controller to be connected.

    @KP_AKCC_ID_49.35
    Scenario: KP_AKCC_ID_49.35: Verify Non Compliant Controller Details When Open A Compatible File With AKCC Controller Connected And Plugging Out And Connecting Maintenance Controller

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
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        And Click On Browse Button In Copy To Controller Window
        And Open The Created File In Project Window
        And Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Connected Controller Information Is Not Available
        When Enable Random Serial Port Except AKCC, EKE
        And Click On The Enable Button In KoolProg
        And Add Required Delay For 'ENABLING_MAINTENANCE_CONTROLLER_IN_KOOLPROG' for 'ONLINE' mode
        And Verify Connected Controller Information Is Visible
        And Verify Connected Controller Information Is Enabled
        And Get Connected Controller Information
        Then Verify Non Compliant Controller Details
        And Verify Browsed File And Connected Controller Details Are Not Compatible

	"""

    @KP_AKCC_ID_49.36
    Scenario: KP_AKCC_ID_49.36: Check Plugging In And Plugging Off The Controller To Check The Status Of The "Set Main Switch To ON After Copying" Checkbox In Copy To Controller Window

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        And Verify Set Main Switch On After Copying Label Is Visible
        And Verify Set Main Switch On After Copying Label Is Enabled
        And Disable All Serial Ports
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Verify Connected Controller Information Is Not Available
        And Verify Set Main Switch On After Copying Label Is Not Visible
		And Verify Please Connect A Controller Label Text Is Displayed In Copy To Controller Window
		When Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Verify Connected Controller Information Is Visible
		And Verify Connected Controller Information Is Enabled
		Then Verify Set Main Switch On After Copying Label Is Visible
        And Verify Set Main Switch On After Copying Label Is Enabled
        And Verify The Checkbox Status Is Unchecked By Default