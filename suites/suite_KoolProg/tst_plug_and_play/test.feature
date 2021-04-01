# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: Plug And Play common Scenarios are tested here.

    Scenario: KP_Plug_Play_ID_1.1: Verification Of Connect Koolkey And Controller First Then Launch The Application And Click On On-line Service

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        When Click On OnLine Service Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        Then Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Check Print Button Is Enabled
        And Check Help Button Is Enabled
        And Check Home Button Is Enabled
        And Check SaveAs Button Is Enabled
        And Check Open Button Is Enabled
        And Verify Info Button Will Be Enable
        And Check Chart Button Is Enabled
        And Verify Search And View More Are Enable
        And Check Expand/Collapse Button Near Project Details In Project Window Is Enabled
        And Check Expand/Collapse Button In Parameter Descrption Details In Project Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image

	Scenario: KP_Plug_Play_ID_1.5: Verification Of Disconnect  Koolkey From KoolProg After KP_Plug_Play_ID_1.1

	    Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Click On OnLine Service Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		When Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		Then Verify Open, Home, Help Icons Are Enable
		And Verify SaveAs, Print Icons Are Disable
		And Verify Please Connect A Controller Label Is Visible
		And Verify Please Connect A Controller Label Text Is Displayed

	Scenario: KP_Plug_Play_ID_1.6: Verification Of  Connect  Koolkey To KoolProg After KP_Plug_Play_ID_1.5

	    Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Click On OnLine Service Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Verify Please Connect A Controller Label Text Is Displayed
		When Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		Then Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Check Print Button Is Enabled
        And Check Help Button Is Enabled
        And Check Home Button Is Enabled
        And Check SaveAs Button Is Enabled
        And Check Open Button Is Enabled
        And Verify Info Button Will Be Enable
        And Check Chart Button Is Enabled
        And Verify Search And View More Are Enable
        And Check Expand/Collapse Button Near Project Details In Project Window Is Enabled
        And Check Expand/Collapse Button In Parameter Descrption Details In Project Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image

	Scenario: KP_Plug_Play_ID_1.7: Verification Of Disconnect And Connect Koolkey To KoolProg Multiple Time After KP_Plug_Play_ID_1.6

		Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Random Serial Port
        And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Click On OnLine Service Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Verify Please Connect A Controller Label Text Is Displayed
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		When Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		Then Verify Open, Home, Help Icons Are Enable
		And Verify SaveAs, Print Icons Are Disable
		And Verify Please Connect A Controller Label Is Visible
		And Verify Please Connect A Controller Label Text Is Displayed
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Check Print Button Is Enabled
        And Check Help Button Is Enabled
        And Check Home Button Is Enabled
        And Check SaveAs Button Is Enabled
        And Check Open Button Is Enabled
        And Verify Info Button Will Be Enable
        And Check Chart Button Is Enabled
        And Verify Search And View More Are Enable
        And Check Expand/Collapse Button Near Project Details In Project Window Is Enabled
        And Check Expand/Collapse Button In Parameter Descrption Details In Project Window Is Enabled
		And Check The Connected Controller Variant Name

	Scenario: KP_Plug_Play_ID_1.12: Verification Of Disconnect  Koolkey From KoolProg  After KP_Plug_Play_ID_1.8

		Given KoolProg Had Opened
        And Disable All Serial Ports
        And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Click On OnLine Service Button In Home Window
        And Enable Random Serial Port
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		When Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		Then Verify Open, Home, Help Icons Are Enable
		And Verify SaveAs, Print Icons Are Disable
		And Verify Please Connect A Controller Label Is Visible
		And Verify Please Connect A Controller Label Text Is Displayed

	Scenario: KP_Plug_Play_ID_1.13: Verification Of  Connect  Koolkey To KoolProg After KP_Plug_Play_ID_1.12

	    Given KoolProg Had Opened
        And Disable All Serial Ports
        And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Click On OnLine Service Button In Home Window
        And Enable Random Serial Port
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Verify Please Connect A Controller Label Text Is Displayed
		When Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		Then Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Check Print Button Is Enabled
        And Check Help Button Is Enabled
        And Check Home Button Is Enabled
        And Check SaveAs Button Is Enabled
        And Check Open Button Is Enabled
        And Verify Info Button Will Be Enable
        And Check Chart Button Is Enabled
        And Verify Search And View More Are Enable
        And Check Expand/Collapse Button Near Project Details In Project Window Is Enabled
        And Check Expand/Collapse Button In Parameter Descrption Details In Project Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image

	Scenario: KP_Plug_Play_ID_1.14: Verification Of Disconnect And Connect Koolkey To KoolProg Multiple Time After KP_Plug_Play_ID_1.13

	    Given KoolProg Had Opened
        And Disable All Serial Ports
        And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Click On OnLine Service Button In Home Window
        And Enable Random Serial Port
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Verify Please Connect A Controller Label Text Is Displayed
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		When Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		Then Verify Open, Home, Help Icons Are Enable
		And Verify SaveAs, Print Icons Are Disable
		And Verify Please Connect A Controller Label Is Visible
		And Verify Please Connect A Controller Label Text Is Displayed
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Check Print Button Is Enabled
        And Check Help Button Is Enabled
        And Check Home Button Is Enabled
        And Check SaveAs Button Is Enabled
        And Check Open Button Is Enabled
        And Verify Info Button Will Be Enable
        And Check Chart Button Is Enabled
        And Verify Search And View More Are Enable
        And Check Expand/Collapse Button Near Project Details In Project Window Is Enabled
        And Check Expand/Collapse Button In Parameter Descrption Details In Project Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Verify Open, Home, Help Icons Are Enable
		And Verify SaveAs, Print Icons Are Disable
		And Verify Please Connect A Controller Label Is Visible
		And Verify Please Connect A Controller Label Text Is Displayed
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Check Print Button Is Enabled
        And Check Help Button Is Enabled
        And Check Home Button Is Enabled
        And Check SaveAs Button Is Enabled
        And Check Open Button Is Enabled
        And Verify Info Button Will Be Enable
        And Check Chart Button Is Enabled
        And Verify Search And View More Are Enable
        And Check Expand/Collapse Button Near Project Details In Project Window Is Enabled
        And Check Expand/Collapse Button In Parameter Descrption Details In Project Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Verify Open, Home, Help Icons Are Enable
		And Verify SaveAs, Print Icons Are Disable
		And Verify Please Connect A Controller Label Is Visible
		And Verify Please Connect A Controller Label Text Is Displayed
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Check Print Button Is Enabled
        And Check Help Button Is Enabled
        And Check Home Button Is Enabled
        And Check SaveAs Button Is Enabled
        And Check Open Button Is Enabled
        And Verify Info Button Will Be Enable
        And Check Chart Button Is Enabled
        And Verify Search And View More Are Enable
        And Check Expand/Collapse Button Near Project Details In Project Window Is Enabled
        And Check Expand/Collapse Button In Parameter Descrption Details In Project Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image

	Scenario: KP_Plug_Play_ID_1.15: Verification Of Connect Koolkey And Controller After Launching Application And Clicking  On-line Service

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Click On OnLine Service Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
        When Enable Random Serial Port
        Then Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Check Print Button Is Enabled
        And Check Help Button Is Enabled
        And Check Home Button Is Enabled
        And Check SaveAs Button Is Enabled
        And Check Open Button Is Enabled
        And Verify Info Button Will Be Enable
        And Check Chart Button Is Enabled
        And Verify Search And View More Are Enable
        And Check Expand/Collapse Button Near Project Details In Project Window Is Enabled
        And Check Expand/Collapse Button In Parameter Descrption Details In Project Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image

	Scenario: KP_Plug_Play_ID_1.19: Verification Of Disconnect  Koolkey From KoolProg  After KP_Plug_Play_ID_1.15

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Click On OnLine Service Button In Home Window
        And Enable Random Serial Port
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		When Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		Then Verify Open, Home, Help Icons Are Enable
		And Verify SaveAs, Print Icons Are Disable
		And Verify Please Connect A Controller Label Is Visible
		And Verify Please Connect A Controller Label Text Is Displayed

	Scenario: KP_Plug_Play_ID_1.20: Verification Of Connect  Koolkey From KoolProg  After KP_Plug_Play_ID_1.19

	    Given KoolProg Had Opened
	    And Disable All Serial Ports
	    And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Click On OnLine Service Button In Home Window
        And Enable Random Serial Port
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Verify Please Connect A Controller Label Text Is Displayed
		When Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		Then Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Check Print Button Is Enabled
        And Check Help Button Is Enabled
        And Check Home Button Is Enabled
        And Check SaveAs Button Is Enabled
        And Check Open Button Is Enabled
        And Verify Info Button Will Be Enable
        And Check Chart Button Is Enabled
        And Verify Search And View More Are Enable
        And Check Expand/Collapse Button Near Project Details In Project Window Is Enabled
        And Check Expand/Collapse Button In Parameter Descrption Details In Project Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image

	Scenario: KP_Plug_Play_ID_1.21: Verification Of Disconnect And Connect Koolkey To KoolProg Multiple Time After KP_Plug_Play_ID_1.20

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Click On OnLine Service Button In Home Window
        And Enable Random Serial Port
        And Add Required Delay For 'SWITCHING_TO_ONLINE_SERVICE_WINDOW' for 'ONLINE' mode
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Verify Please Connect A Controller Label Text Is Displayed
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		When Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		Then Verify Open, Home, Help Icons Are Enable
		And Verify SaveAs, Print Icons Are Disable
		And Verify Please Connect A Controller Label Is Visible
		And Verify Please Connect A Controller Label Text Is Displayed
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Check Print Button Is Enabled
        And Check Help Button Is Enabled
        And Check Home Button Is Enabled
        And Check SaveAs Button Is Enabled
        And Check Open Button Is Enabled
        And Verify Info Button Will Be Enable
        And Check Chart Button Is Enabled
        And Verify Search And View More Are Enable
        And Check Expand/Collapse Button Near Project Details In Project Window Is Enabled
        And Check Expand/Collapse Button In Parameter Descrption Details In Project Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Verify Open, Home, Help Icons Are Enable
		And Verify SaveAs, Print Icons Are Disable
		And Verify Please Connect A Controller Label Is Visible
		And Verify Please Connect A Controller Label Text Is Displayed
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Check Print Button Is Enabled
        And Check Help Button Is Enabled
        And Check Home Button Is Enabled
        And Check SaveAs Button Is Enabled
        And Check Open Button Is Enabled
        And Verify Info Button Will Be Enable
        And Check Chart Button Is Enabled
        And Verify Search And View More Are Enable
        And Check Expand/Collapse Button Near Project Details In Project Window Is Enabled
        And Check Expand/Collapse Button In Parameter Descrption Details In Project Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Verify Open, Home, Help Icons Are Enable
		And Verify SaveAs, Print Icons Are Disable
		And Verify Please Connect A Controller Label Is Visible
		And Verify Please Connect A Controller Label Text Is Displayed
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Check Print Button Is Enabled
        And Check Help Button Is Enabled
        And Check Home Button Is Enabled
        And Check SaveAs Button Is Enabled
        And Check Open Button Is Enabled
        And Verify Info Button Will Be Enable
        And Check Chart Button Is Enabled
        And Verify Search And View More Are Enable
        And Check Expand/Collapse Button Near Project Details In Project Window Is Enabled
        And Check Expand/Collapse Button In Parameter Descrption Details In Project Window Is Enabled
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image


	Scenario: KP_Plug_Play_ID_2.1: Verification Of Connect Koolkey And Controller Firstly Then Click On Copy To Controller

		Given KoolProg Had Opened
		And Disable All Serial Ports
		When Enable Random Serial Port
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        Then Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window

	Scenario: KP_Plug_Play_ID_2.5: Verification Of Disconnecting Koolkey From KoolProg  After KP_Plug_Play_ID_2.1

	    Given KoolProg Had Opened
		And Disable All Serial Ports
		And Enable Random Serial Port
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		When Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Check Disconnected from device Text Is Displayed In PopUp Window
		Then Check Please Connect A Controller Text Is Enabled In Copy To Controller Window
		And Verify Please Connect A Controller Label Text Is Displayed In Copy To Controller Window
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window


	Scenario: KP_Plug_Play_ID_2.6: Verification Of Connect Koolkey After KP_Plug_Play_ID_2.5

	    Given KoolProg Had Opened
		And Disable All Serial Ports
		And Enable Random Serial Port Except AKCC, EKE
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Check Disconnected from device Text Is Displayed In PopUp Window
		And Click OK Button In Popup Window
		When Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		Then Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image


	Scenario: KP_Plug_Play_ID_2.7: Verification of Disconnect And Connect Back Koolkey And KoolProg Multiple Time After KP_Plug_Play_ID_2.6

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Enable Random Serial Port
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Click On Copy To Controller Button In Home Window
        And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Check Disconnected from device Text Is Displayed In PopUp Window
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		When Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Check Disconnected from device Text Is Displayed In PopUp Window
		Then Check Please Connect A Controller Text Is Enabled In Copy To Controller Window
		And Verify Please Connect A Controller Label Text Is Displayed In Copy To Controller Window
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Check Disconnected from device Text Is Displayed In PopUp Window
		And Check Please Connect A Controller Text Is Enabled In Copy To Controller Window
		And Verify Please Connect A Controller Label Text Is Displayed In Copy To Controller Window
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Check Disconnected from device Text Is Displayed In PopUp Window
		And Check Please Connect A Controller Text Is Enabled In Copy To Controller Window
		And Verify Please Connect A Controller Label Text Is Displayed In Copy To Controller Window
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window

	Scenario: KP_Plug_Play_ID_2.8: Verification Of Connect The Koolkey And Controller After Launching Application And Click On Copy To Controller

		Given KoolProg Had Opened
		And Disable All Serial Ports
		When Click On Copy To Controller Button In Home Window
		And Enable Random Serial Port
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
        Then Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window

	Scenario: KP_Plug_Play_ID_2.12: Verification Of Disconnecting Koolkey From KoolProg After KP_Plug_Play_ID_2.8

	    Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
		And Click On Copy To Controller Button In Home Window
		And Enable Random Serial Port
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		When Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Check Disconnected from device Text Is Displayed In PopUp Window
		Then Check Please Connect A Controller Text Is Enabled In Copy To Controller Window
		And Verify Please Connect A Controller Label Text Is Displayed In Copy To Controller Window
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window

	Scenario: KP_Plug_Play_ID_2.13: Verification Of Connect Koolkey To KoolProg After KP_Plug_Play_ID_2.12

	    Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
		And Click On Copy To Controller Button In Home Window
		And Enable Random Serial Port Except AKCC, EKE
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Check Disconnected from device Text Is Displayed In PopUp Window
		And Click OK Button In Popup Window
		When Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		Then Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image

	Scenario: KP_Plug_Play_ID_2.14: Verification Of Disconnect And Connect Koolkey Multiple Time After KP_Plug_Play_ID_2.13

	    Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
		And Click On Copy To Controller Button In Home Window
		And Enable Random Serial Port
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Check Disconnected from device Text Is Displayed In PopUp Window
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		When Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Check Disconnected from device Text Is Displayed In PopUp Window
		Then Check Please Connect A Controller Text Is Enabled In Copy To Controller Window
		And Verify Please Connect A Controller Label Text Is Displayed In Copy To Controller Window
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Check Disconnected from device Text Is Displayed In PopUp Window
		And Check Please Connect A Controller Text Is Enabled In Copy To Controller Window
		And Verify Please Connect A Controller Label Text Is Displayed In Copy To Controller Window
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Check Disconnected from device Text Is Displayed In PopUp Window
		And Check Please Connect A Controller Text Is Enabled In Copy To Controller Window
		And Verify Please Connect A Controller Label Text Is Displayed In Copy To Controller Window
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image


	Scenario: KP_Plug_Play_ID_2.17: Verification Of Disconnecting The Koolkey From KoolProg In Middle Of Single Programming Controller

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
		And Create A Project By Choosing A Random Port Except EKE , AKCC
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		When Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
		And Click On Single Controller Programming Button In Copy To Controller Window
		And Click On Start Button In Copy To Controller Window
		And Add Required Delay For 'MINOR_DELAY_IN_PROGRAMMING_CONTROLLER_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		Then Check Unable To Write Data To Device Text Is Displayed In PopUp Window
		And Click OK Button In Popup Window
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window

	Scenario: KP_Plug_Play_ID_2.18: Verification Of Connect KoolKey After KP_Plug_Play_ID_2.17

	    Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
		And Create A Project By Choosing A Random Port Except EKE , AKCC
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
		And Click On Single Controller Programming Button In Copy To Controller Window
		And Click On Start Button In Copy To Controller Window
		And Add Required Delay For 'MINOR_DELAY_IN_PROGRAMMING_CONTROLLER_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Check Unable To Write Data To Device Text Is Displayed In PopUp Window
		And Click OK Button In Popup Window
		When Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		Then Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Start Label Is Enabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image

	Scenario: KP_Plug_Play_ID_2.21: Verification Of Disconnecting The Koolkey From Controller In Middle Of Multiple Programming Controller

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
		And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		When Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
		And Click On Multiple Controller Programming Button In Copy To Controller Window
		And Set The Counter Value As 10 In Copy To Controller Window
		And Click On Count Up Button In Copy To Controller Window
		And Click On Start Button In Copy To Controller Window
		And Add Required Delay For 'MINOR_DELAY_IN_PROGRAMMING_CONTROLLER_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		Then Check Unable To Write Data To Device Text Is Displayed In PopUp Window
		And Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Disabled In Copy To Controller Window
		And Check Start Label Is Disabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window

	Scenario: KP_Plug_Play_ID_2.22: Verification Of Connect Controller After KP_Plug_Play_ID_2.21

	    Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
		And Create A Project By Choosing A Random Port Except EKE , AKCC
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
		And Click On Multiple Controller Programming Button In Copy To Controller Window
		And Set The Counter Value As 10 In Copy To Controller Window
		And Click On Count Up Button In Copy To Controller Window
		And Click On Start Button In Copy To Controller Window
		And Add Required Delay For 'MINOR_DELAY_IN_PROGRAMMING_CONTROLLER_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Check Unable To Write Data To Device Text Is Displayed In PopUp Window
		And Click OK Button In Popup Window
		When Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		Then Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Start Label Is Enabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image

	Scenario: KP_Plug_Play_ID_2.23: Verification Of Changing Programming Mode After Plug Out The KoolKey.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
		And Click On The Setting Icon Button In The Main Window
        And Preference Window Is Visible
        And Get Koolprog Working Path From Preference Window And Save it
		And Create A Project By Choosing A Random Port Except EKE , AKCC
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
        And Verify Controller Is Connected With KoolProg
		And Go To Home Window From Project Window
		And Add Required Delay For 'SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW' for 'ONLINE' mode
		And Click On Copy To Controller Button In Home Window
		And Add Required Delay For 'SWITCHING_TO_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Click On Browse Button In Copy To Controller Window
		And Open The Created File In Project Window
		And Click On Single Controller Programming Button In Copy To Controller Window
		And Click On Start Button In Copy To Controller Window
		And Add Required Delay For 'MINOR_DELAY_IN_PROGRAMMING_CONTROLLER_IN_COPY_TO_CONTROLLER' for 'ONLINE' mode
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Check Unable To Write Data To Device Text Is Displayed In PopUp Window
		And Click OK Button In Popup Window
		When Click On Multiple Controller Programming Button In Copy To Controller Window
		And Set The Counter Value As 10 In Copy To Controller Window
		And Click On Count Up Button In Copy To Controller Window
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		Then Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Single Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Multiple Controller Programming Label Is Enabled In Copy To Controller Window
		And Check Start Label Is Enabled In Copy To Controller Window
		And Verify Info Button Will Be Enable
		And Check Home Button Is Enabled
		And Check Help Button Is Enabled
		And Check Browse Button Is Enabled In Copy To Controller Window
		And Check The Connected Controller Variant Name
		And Check The Connected Controller Image


	Scenario: KP_Plug_Play_ID_3.4: Verification Of Disconnect Koolkey From Controller After Creating Project

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		When Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		Then Verify Open, Home, Help Icons Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check SaveAs Button Is Enabled
		And Check Export Button Is Disabled



	Scenario: KP_Plug_Play_ID_3.5: Verification Of Connect The Koolkey  After KP_Plug_Play_ID_3.1

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		When Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		Then Check Controller Is Connecting Image Is Visible
		And Verify Open, Home, Help Icons Are Enable
		And Verify Grid Icons In The  Project Window Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check SaveAs Button Is Enabled
		And Check Export Button Is Enabled
        And Verify Controller Is Connected With KoolProg
        And Check The Connected Controller Variant Text Is Visible
        And Check The Connected Controller Variant Text Is Enabled
        And Check The Connected Controller Variant Name
		And Check The Connected Controller Image


	Scenario: KP_Plug_Play_ID_3.6: Verification Of Disconnect And Connect Koolkey After KP_Plug_Play_ID_3.2

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		When Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		Then Disable All Serial Ports
		And Verify Open, Home, Help Icons Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check SaveAs Button Is Enabled
		And Check Export Button Is Disabled
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
		And Verify Open, Home, Help Icons Are Enable
		And Verify Grid Icons In The  Project Window Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check Export Button Is Enabled
        And Verify Controller Is Connected With KoolProg
        And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Verify Open, Home, Help Icons Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check SaveAs Button Is Enabled
		And Check Export Button Is Disabled
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
		And Verify Open, Home, Help Icons Are Enable
		And Verify Grid Icons In The  Project Window Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check Export Button Is Enabled
        And Verify Controller Is Connected With KoolProg
        And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Verify Open, Home, Help Icons Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check SaveAs Button Is Enabled
		And Check Export Button Is Disabled
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
		And Verify Open, Home, Help Icons Are Enable
		And Verify Grid Icons In The  Project Window Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check Export Button Is Enabled
        And Verify Controller Is Connected With KoolProg
        And Check The Connected Controller Variant Name
		And Check The Connected Controller Image

	Scenario: KP_Plug_Play_ID_4.1: Verification Of Disconnecting Controller During Export

	    Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
	    And Click On Export Button
	    When Break The Communication Of Port With KoolProg
	    And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		Then Check Export Settings Failed Text Is Displayed In PopUp Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window

	Scenario: KP_Plug_Play_ID_4.2: Verification Of Connecting Controller

	    Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
	    And Click On Export Button
	    And Break The Communication Of Port With KoolProg
	    And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Check Export Settings Failed Text Is Displayed In PopUp Window
		And Click OK Button In Popup Window
		When Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		Then Check Controller Is Connecting Image Is Visible
		And Verify Open, Home, Help Icons Are Enable
		And Verify Grid Icons In The  Project Window Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check Export Button Is Enabled
		And Check SaveAs Button Is Enabled
        And Verify Controller Is Connected With KoolProg
        And Check The Connected Controller Variant Name
		And Check The Connected Controller Image

	Scenario: KP_Plug_Play_ID_5.1: Verification Of Disconnecting Controller In Middle Of Factory Reset

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
        And Create A Project By Choosing A Random Port
        And Enable The Port For Created Project
        And Add Required Delay For 'PROJECT_CREATION' for 'ONLINE' mode
        And The Project Window Is Visible
		And Click On Factory Reset Button
		And Click On In Controller Button In Popup Window
		When Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		Then Check Export Settings Failed Text Is Displayed In PopUp Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window

	Scenario: KP_Plug_Play_ID_6.2: Verification Of Connect The Controller After KP_Common_ID_6.1

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
		And Click On SetParameter Button And SetParameter Window Is Visible
		And Enable Random Serial Port
		And Click On Import Settings From Controller Button In SetParameter Window
		And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
		And Check If NewFileName PopUp Is Visible
		And Set A FileName In NewFileName PopUp EditBox
		And Click Ok Button In NewFileName PopUp Window
        And Verify Controller Is Connected With KoolProg
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		When Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		Then Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Verify Open, Home, Help Icons Are Enable
        And Verify Grid Icons In The  Project Window Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check Export Button Is Enabled
        And Check The Connected Controller Variant Name
		And Check The Connected Controller Image


	Scenario: KP_Plug_Play_ID_6.4: Verification Of Disconnect Koolkey From KoolProg In Import Setting From Controller


		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
		And Click On SetParameter Button And SetParameter Window Is Visible
		And Enable Random Serial Port
		And Click On Import Settings From Controller Button In SetParameter Window
		And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
		And Check If NewFileName PopUp Is Visible
		And Set A FileName In NewFileName PopUp EditBox
		And Click Ok Button In NewFileName PopUp Window
        And Verify Controller Is Connected With KoolProg
		When Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		Then Verify Open, Home, Help Icons Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check SaveAs Button Is Enabled
		And Check Export Button Is Disabled

	Scenario: KP_Plug_Play_ID_6.5: Verification Of Connect The Koolkey After KP_Common_ID_6.4

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
		And Click On SetParameter Button And SetParameter Window Is Visible
		And Enable Random Serial Port
		And Click On Import Settings From Controller Button In SetParameter Window
		And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
		And Check If NewFileName PopUp Is Visible
		And Set A FileName In NewFileName PopUp EditBox
		And Click Ok Button In NewFileName PopUp Window
        And Verify Controller Is Connected With KoolProg
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		When Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		Then Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Verify Open, Home, Help Icons Are Enable
        And Verify Grid Icons In The  Project Window Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check SaveAs Button Is Enabled
		And Check Export Button Is Enabled
        And Check The Connected Controller Variant Name
		And Check The Connected Controller Image


	Scenario: KP_Plug_Play_ID_6.6: Verification Of Disconnect And Connect Koolkey After KP_Common_ID_6.5

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
		And Click On SetParameter Button And SetParameter Window Is Visible
		And Enable Random Serial Port
		And Click On Import Settings From Controller Button In SetParameter Window
		And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
		And Check If NewFileName PopUp Is Visible
		And Set A FileName In NewFileName PopUp EditBox
		And Click Ok Button In NewFileName PopUp Window
        And Verify Controller Is Connected With KoolProg
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		When Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		Then Verify Open, Home, Help Icons Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check SaveAs Button Is Enabled
		And Check Export Button Is Disabled
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Verify Open, Home, Help Icons Are Enable
        And Verify Grid Icons In The  Project Window Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check SaveAs Button Is Enabled
		And Check Export Button Is Enabled
        And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Verify Open, Home, Help Icons Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check SaveAs Button Is Enabled
		And Check Export Button Is Disabled
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Verify Open, Home, Help Icons Are Enable
        And Verify Grid Icons In The  Project Window Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check SaveAs Button Is Enabled
		And Check Export Button Is Enabled
        And Check The Connected Controller Variant Name
		And Check The Connected Controller Image
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Verify Open, Home, Help Icons Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check SaveAs Button Is Enabled
		And Check Export Button Is Disabled
		And Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Verify Open, Home, Help Icons Are Enable
        And Verify Grid Icons In The  Project Window Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check SaveAs Button Is Enabled
		And Check Export Button Is Enabled
        And Check The Connected Controller Variant Name
		And Check The Connected Controller Image

	Scenario: KP_Plug_Play_ID_6.9: Verification Of Disconnect The Koolkey From KoolProg In Middle On Factory Reset In Controller

	    Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
		And Click On SetParameter Button And SetParameter Window Is Visible
		And Enable Random Serial Port
		And Click On Import Settings From Controller Button In SetParameter Window
		And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
		And Check If NewFileName PopUp Is Visible
		And Set A FileName In NewFileName PopUp EditBox
		And Click Ok Button In NewFileName PopUp Window
        And Verify Controller Is Connected With KoolProg
		And Click On Factory Reset Button
		And Click On In Controller Button In Popup Window
		When Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		Then Check Export Settings Failed Text Is Displayed In PopUp Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window

	Scenario: KP_Plug_Play_ID_6.10: Verification Of Connect The Controller After KP_Plug_Play_ID_6.9

	    Given KoolProg Had Opened
		And Disable All Serial Ports
	    And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
		And Click On SetParameter Button And SetParameter Window Is Visible
		And Enable Random Serial Port
		And Click On Import Settings From Controller Button In SetParameter Window
		And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
		And Check If NewFileName PopUp Is Visible
		And Set A FileName In NewFileName PopUp EditBox
		And Click Ok Button In NewFileName PopUp Window
        And Verify Controller Is Connected With KoolProg
		And Click On Factory Reset Button
		And Click On In Controller Button In Popup Window
		And Break The Communication Of Port With KoolProg
		And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		And Check Export Settings Failed Text Is Displayed In PopUp Window
		And Click OK Button In Popup Window
		When Enable The Port Again
		And Add Required Delay For 'ENABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		Then Check Controller Is Connecting Image Is Visible
        And Verify Controller Is Connected With KoolProg
        And Verify Open, Home, Help Icons Are Enable
        And Verify Grid Icons In The  Project Window Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check SaveAs Button Is Enabled
		And Check Export Button Is Enabled
        And Check The Connected Controller Variant Name
		And Check The Connected Controller Image

	Scenario: KP_Plug_Play_ID_6.11: Verification Of Disconnect The Koolkey In Middle Of Exporting Data Into Controller.

		Given KoolProg Had Opened
		And Disable All Serial Ports
		And Verify Change Password Window Is Visible
        And Verify Button Text In Password Window
        And Write 'Automation' User Name In Password Window
        And Write 'Automation' In Password Window
        And Click On Ok Button In Password Window
		And Click On SetParameter Button And SetParameter Window Is Visible
		And Enable Random Serial Port
		And Click On Import Settings From Controller Button In SetParameter Window
		And Add Required Delay For 'SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER' for 'ONLINE' mode
		And Check Controller Is Connecting Image Is Visible
		And Check If NewFileName PopUp Is Visible
		And Set A FileName In NewFileName PopUp EditBox
		And Click Ok Button In NewFileName PopUp Window
        And Verify Controller Is Connected With KoolProg
		And Click On Export Button
	    When Break The Communication Of Port With KoolProg
	    And Add Required Delay For 'DISABLING_PORT_COMMUNICATION_IN_KOOLPROG' for 'ONLINE' mode
		And Disable All Serial Ports
		Then Check Export Settings Failed Text Is Displayed In PopUp Window
		And Check 'KoolProg' Header Text In PopUp Window
		And Check Ok Button Is Enabled In PopUp Window
		And Click OK Button In Popup Window
		And Verify Open, Home, Help Icons Are Enable
		And Check Print Button Is Enabled
		And Check Save Button Is Enabled
		And Check SaveAs Button Is Enabled
		And Check Export Button Is Disabled




	@common @requiredPlugAndPlayTestCase
	Scenario: Required Plug and Play Test Case

	    Given KoolProg Had Opened
	    And Enable All Ports

