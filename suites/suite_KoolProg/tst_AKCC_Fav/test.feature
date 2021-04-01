# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC Fav

    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports

########################################### OFFLINE #####################################################

    @KP_AKCC_ID_29.1
	Scenario: KP_AKCC_ID_29.1: Verify Favourites Of Selected Parameters Is Displayed When The Group Is Visible And Favourites Of Selected Parameters Are Not Displayed When The Group Is Hidden In Project Window.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
		And Get The Parameter Collection From Input Database
		And New Project Is Created For Selected Controller Details
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		When Choose '1' Group To Make It Hidden
		And Set The Favourite For The Parameters Of The Group Selected
		And Click On The Favorite Group In Tree View
		And Parse The DataGrid
		Then Verify 'Fav_collection' Exists In 'parsed_datagrid'
		And Click On All Tree Item In Tree View
		And Set The Values To Disable The Groups Using 'Disabling_group_info'
		And Click On The Favorite Group In Tree View
		And Verify 'Fav_collection' Does Not Exists In 'parsed_datagrid'

	@KP_AKCC_ID_29.3
	Scenario: KP_AKCC_ID_29.3: Verify Favourites Of Selected Parameters Is Displayed When The Group Is Visible And Favourites Of Selected Parameters Are Not Displayed When The Group Is Hidden When The Project Is Opened From SetParameters Open Option.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
		And Get The Parameter Collection From Input Database
		And New Project Is Created For Selected Controller Details
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
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
		And Parse The DataGrid
		When Choose '1' Group To Make It Hidden
		And Set The Favourite For The Parameters Of The Group Selected
		And Click On The Favorite Group In Tree View
		And Parse The DataGrid
		Then Verify 'Fav_collection' Exists In 'parsed_datagrid'
		And Click On All Tree Item In Tree View
		And Set The Values To Disable The Groups Using 'Disabling_group_info'
		And Click On The Favorite Group In Tree View
		And Verify 'Fav_collection' Does Not Exists In 'parsed_datagrid'

     @KP_AKCC_ID_29.4
	Scenario: KP_AKCC_ID_29.4: Verify Favourites Of Selected Parameters Is Displayed When The Group Is Visible And Favourites Of Selected Parameters Are Not Displayed When The Group Is Hidden When The Project Is Opened From Recent Project List.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
		And Get The Parameter Collection From Input Database
		And New Project Is Created For Selected Controller Details
		And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
		And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
        And Go To Home Window From Project Window
        And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'OFFLINE' mode
        And Open Recent Project From Set Parameter Window
        And Add Required Delay For 'RECENT_PROJECT_OPEN' for 'OFFLINE' mode
        And The Project Window Is Visible
        And Break The Communication Of Port With KoolProg
        And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'OFFLINE' mode
		And Parse The DataGrid
		When Choose '1' Group To Make It Hidden
		And Set The Favourite For The Parameters Of The Group Selected
		And Click On The Favorite Group In Tree View
		And Parse The DataGrid
		Then Verify 'Fav_collection' Exists In 'parsed_datagrid'
		And Click On All Tree Item In Tree View
		And Set The Values To Disable The Groups Using 'Disabling_group_info'
		And Click On The Favorite Group In Tree View
		And Verify 'Fav_collection' Does Not Exists In 'parsed_datagrid'

########################################### OFFLINE #####################################################

########################################### ONLINE #####################################################


	@ExportDefaultValuesToController
    Scenario: Export Default Values To Controller.
    	Given KoolProg Had Opened
    	And Get Controller Details From Variable
    	When New Project Is Created For Selected Controller Details
    	And Add Required Delay For 'PROJECT_CREATION' for 'OFFLINE' mode
        And The Project Window Is Visible
    	And Click On Factory Reset Button
    	Then Click On In Controller Button In Popup Window
    	And Add Required Delay For 'FACTORY_RESET_IN_PROJECT' for 'ONLINE' mode
		And Click OK Button In Popup Window

	@KP_AKCC_ID_29.2
	Scenario: KP_AKCC_ID_29.2: Verify Favourites Of Selected Parameters Is Displayed When The Group Is Visible And Favourites Of Selected Parameters Are Not Displayed When The Group Is Hidden In Import Settings From Controller Window.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
		And Get The Parameter Collection From Input Database
		And Enable The Port For Created Project
        And Click On Import Setting From Controller Button
        And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
        And Check If NewFileName PopUp Is Visible
        And Set A FileName In NewFileName PopUp EditBox
        And Click Ok Button In NewFileName PopUp Window
        And The Project Window Is Visible
        And Click On All Tree Item In Tree View
		And Parse The DataGrid
		When Choose '1' Group To Make It Hidden
		And Set The Favourite For The Parameters Of The Group Selected
		And Click On The Favorite Group In Tree View
		And Parse The DataGrid
		Then Verify 'Fav_collection' Exists In 'parsed_datagrid'
		And Click On All Tree Item In Tree View
		And Set The Values To Disable The Groups Using 'Disabling_group_info'
		And Click On The Favorite Group In Tree View
		And Verify 'Fav_collection' Does Not Exists In 'parsed_datagrid'


	@KP_AKCC_ID_29.5
	Scenario: KP_AKCC_ID_29.5: Verify Favourites Of Selected Parameters Is Displayed When The Group Is Visible And Favourites Of Selected Parameters Are Not Displayed When The Group Is Hidden In Online Service Window.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Get Controller Details From Variable
		And Get The Parameter Collection From Input Database
		And Enable The Port For Created Project
		And Navigate To On-line Service Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        And On-line Service Window Is Visible
        And Click On All Tree Item In Tree View
		And Parse The DataGrid
		When Choose '1' Group To Make It Hidden
		And Set The Favourite For The Parameters Of The Group Selected
		And Click On The Favorite Group In Tree View
		And Parse The DataGrid
		Then Verify 'Fav_collection' Exists In 'parsed_datagrid'
		And Click On All Tree Item In Tree View
		And Set The Values To Disable The Groups Using 'Disabling_group_info'
		And Click On The Favorite Group In Tree View
		And Verify 'Fav_collection' Does Not Exists In 'parsed_datagrid'


########################################### ONLINE #####################################################