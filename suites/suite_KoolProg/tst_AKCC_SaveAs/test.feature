# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC SaveAs

    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

	################################## OFFLINE ##############################################

	@KP_AKCC_ID_21.1
    Scenario: KP_AKCC_ID_21.1: Verify No Default File Name Is Provided When Saving The Changes Using SaveAs Icon From Create Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
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
        When Click On Saveas Button In Project Window
        Then Verify Default Project Name Is Not Available
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Parse The DataGrid
        And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'


     @KP_AKCC_ID_21.2
     Scenario: KP_AKCC_ID_21.2: Check If File Saved Using SaveAs Icon Has File Extension .cbk From Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        Then Verify Project Path And File With Extension For Saved File Is Exist In SaveAs Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Verify Popup Message Should Come As 'Project already open' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible

      @KP_AKCC_ID_21.11
    Scenario: KP_AKCC_ID_21.11: Verify No Default File Name Is Provided When Saving The Changes Using SaveAs Icon From Open Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
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
        When Click On Saveas Button In Project Window
        Then Verify Default Project Name Is Not Available
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Parse The DataGrid
        And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'


     @KP_AKCC_ID_21.12
     Scenario: KP_AKCC_ID_21.12: Check If File Saved Using SaveAs Icon Has File Extension .cbk From Open Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        Then Verify Project Path And File With Extension For Saved File Is Exist In SaveAs Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Verify Popup Message Should Come As 'Project already open' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible

      @KP_AKCC_ID_21.16
    Scenario: KP_AKCC_ID_21.16: Verify No Default File Name Is Provided When Saving The Changes Using SaveAs Icon From Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
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
        When Click On Saveas Button In Project Window
        Then Verify Default Project Name Is Not Available
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Split FileName And Extension
        And Open Recent Project Saved In Different Project Name From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Parse The DataGrid
        And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'

     @KP_AKCC_ID_21.17
     Scenario: KP_AKCC_ID_21.17: Check If File Saved Using SaveAs Icon Has File Extension .cbk From Recent Project Window.

        Given KoolProg Had Opened
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Get Controller Details From Variable
        And New Project Is Created For Selected Controller Details
        And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Split FileName And Extension
        And Open Recent Project Saved In Different Project Name From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        Then Verify Project Path And File With Extension For Saved File Is Exist In SaveAs Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Verify Popup Message Should Come As 'Project already open' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible


	################################## OFFLINE ##############################################



	################################## ONLINE ##############################################

	@KP_AKCC_ID_21.6
    Scenario: KP_AKCC_ID_21.6: Verify No Default File Name Is Provided When Saving The Changes Using SaveAs Icon In Import Settings From Controller Windo

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Add Required Delay For 'DATAGRID_TO_GET_LOADED' for 'ONLINE' mode
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
        When Click On Saveas Button In Project Window
        Then Verify Default Project Name Is Not Available
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Parse The DataGrid
        And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'

     @KP_AKCC_ID_21.7
     Scenario: KP_AKCC_ID_21.7: Check If File Saved Using SaveAs Icon Has File Extension .cbk In Import Settings From Controller Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Click On Saveas Button In Project Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Project Window
        And Click Ok Button In Saved Successfully Popup Window
        And The Project Window Is Visible
        And Click On Open Button In Project Window
        Then Verify Project Path And File With Extension For Saved File Is Exist In SaveAs Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Verify Popup Message Should Come As 'Project already open' In Project Window
        And Click Ok Button In Popup Window On Project Window
        And The Project Window Is Visible


    @KP_AKCC_ID_21.22
     Scenario: KP_AKCC_ID_21.22: Check If File Saved Using SaveAs Icon Has File Extension .cbk In Online Service Window.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On Saveas Button In Online Service Window
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        When Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Online Service Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Go To Home Window From On-Service Test Window
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Open Button In Set Parameters Window
        Then Verify Project Path And File With Extension For Saved File Is Exist In SaveAs Window
        And Split FileName And Extension
        And Write The Created Project File Saved With Different Project Name With Default Path In Dialog
        And Click Open Button in Open Window
        And Add Required Delay For 'OPENING_PROJECT_FROM_SETPARAMETER' for 'ONLINE' mode
        And The Project Window Is Visible

     @KP_AKCC_ID_21.29
    Scenario: KP_AKCC_ID_21.29: Verify No Default File Name Is Provided When Saving The Changes Using SaveAs Icon From Online Service Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Enable The Port For Created Project
        And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
        And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
        And Add Required Delay For 'DATAGRID_TO_GET_LOADED' for 'ONLINE' mode
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
        When Click On Saveas Button In Online Service Window
        Then Verify Default Project Name Is Not Available
        And Write The Different Project Name Instead Of Created Project Name In SaveAs Window
        And Click On Save Button In SaveAs Window
        And Verify Popup Message Should Come As 'Saved Successfully' In Online Service Window
        And Click Ok Button In Saved Successfully Popup Window
        And On-line Service Window Is Visible
        And Parse The DataGrid
        And Verify 'Changed_values' Are Present In 'parsed_datagrid'
		And Verify 'Changed_values' Color Where Box Is 'Not Pink' And Circle Is 'Grey' In 'parsed_datagrid'





	################################## ONLINE ##############################################