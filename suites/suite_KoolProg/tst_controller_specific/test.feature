# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: Controller specific test cases are added here.

	Scenario: Testing

	    Given KoolProg Had Opened
	    And Get Controller Details From Variable
	    And Get The Parsed File Details If Used For Debugging


    Scenario: Scenario 20 TreeView-Verify, check default group name is expanded.

        Given KoolProg Had Opened
        When New Project Is Created As Per User Selection
        Then Verify That Tree View Default Groups Will Expand
        Then Verify That All Groups Name Will Come Under All Button

    Scenario: Scenario 20 TreeView-Verify, group name will hide and unhide after clicking on All

        Given KoolProg Had Opened
        When New Project Is Created As Per User Selection For 'AK-CC55'
        Then Verify That All Group Name Will Hide And Unhide

    Scenario: Demo For Parsing
      	Given KoolProg Had Opened
        When Get Controller Details From Variable
        #And Locate And Unzip The CDF
        #And Get The Parsed File Details If Used For Debugging
		And Parse
		#Then Apply to CDF collection
		#And Parse The Input File And Compare

	Scenario: Demo For ITEM TYPE and COPY TYPE
      	Given KoolProg Had Opened
        When Get Controller Details From Variable
		And Parse The Input File

	Scenario: Test

	    Given KoolProg Had Opened
	    And Get Controller Details From Variable
	    And Get The Parsed File Details If Used For Debugging

	Scenario: Scenario 21:Verify, clicking on group name will display only the parameters under that group name in order.

        Given KoolProg Had Opened
        When New Project Is Created As Per User Selection
        And Verify Parameters Under Group

    Scenario: Scenario 23: Verify, all parameter from reference database should be available in KoolProg.
        Given KoolProg Had Opened
        When New Project Is Created As Per User Selection
        Then Parse The DataGrid
        And Verify, All Parameter From Reference Database Should Be Available In KoolProg.

    Scenario: Scenario 24: Verify, values  in textbox of parameter will be same as default value in dataGrid.
        Given KoolProg Had Opened
        When New Project Is Created As Per User Selection
        Then Parse The DataGrid
        And Verify, Values  In Textbox Of Parameter Will Be Same As Default Value In DataGrid.

    Scenario: Scenario 25: Verify, parameter values will have appropriate decimal points.
        BUG can't modify values in datagrid - pending ...

        Given KoolProg Had Opened
        When New Project Is Created As Per User Selection
        And Get Float Parameters With Random Values In Range Of Min And Max From Database
        Then Verify koolprog Accept Decimal Points Values

    Scenario: Scenario 26: Verify, values will change in all the fields within its "Minimum" and "Maximum range" in dataGrid.
        Given KoolProg Had Opened
        When New Project Is Created As Per User Selection
        Then Verify Value Is Accepted Within Min , Max In DataGrid.

    Scenario: Scenario 27: Verify, color will change when parameters value gets changed.
        Given KoolProg Had Opened
        When New Project Is Created As Per User Selection
        Then On-Change In Parameter , Verify Dark Grey Color And Pink Color In The Datagrid Value Column.

    Scenario: Scenario 29: Verify, help will available on the right hand side for each parameter.
        Given KoolProg Had Opened
        When New Project Is Created As Per User Selection
        Then Verify, Help Will Be Available For Each Parameter.

    Scenario: Scenario 29: Verify, selecting a group name so that the corresponding group name first parameter help will displayed in help section.
        Given KoolProg Had Opened
        When New Project Is Created As Per User Selection
        Then Select A Group In Tree,Verify Corresponding Group First Parameter Help Will Display.

    Scenario: Scenario 28:Verify, parameter value will not accept any alphabets , special charters  and  minus in between.
    	TODO: BUG can't modify values in datagrid - pending ...

        Given KoolProg Had Opened
        When New Project Is Created As Per User Selection
        And Get Parameters List From Database Having Type Of Int And Float With Random Characters And Special Characters
        Then Verify Parameters Should Not Accept Text As Values

    Scenario: Scenario xx: xml project file validation
    	TODO: BUG xml file doesnt conatain value datatype feild, hence value not compare in this scenario.

        Given KoolProg Had Opened
        And Get Project Saving Location
        When New Project Is Created As Per User Selection
        Then Verify Project File Information In Project Window

    Scenario: Scenario POC controller online.

        Given KoolProg Had Opened
        And Disable All Serial Ports
        And Enable Required Serial Port
        When New Project Is Created As Per User Selection
        Then Verify Online Controller Details

