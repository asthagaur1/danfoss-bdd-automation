# This is a sample .feature file
# Squish feature files use the Gherkin language for describing features, a short example
# is given below. You can find a more extensive introduction to the Gherkin format at
# https://github.com/cucumber/cucumber/wiki/Gherkin
Feature: AKCC Import Controller Model

    @common @requiredOnlineTestCase
    Scenario: Required Online Test Case

        Given KoolProg Had Opened
        And Enable All Ports


    ####################################### OFFLINE ##############################################

	@KP_AKCC_ID_2.1
     Scenario: KP_AKCC_ID_2.1: Check If Importing A CDF File Takes Not More Than 20 Seconds.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get Offline CDF File
        When Import Offline CDF File
        Then Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Verify Header Of Popup Window In Set Parameter Window
        And Verify OK and X button In Popup Window In Set Parameter Window


     #this test case will be on hold for importing new CDF implementation - give high priority to new code number instead of default one
     @KP_AKCC_ID_2.2
     Scenario: KP_AKCC_ID_2.2: Check If The Project Description Window Displays The Newly Added SW Version And Code Number.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And KoolProg New Project Window Is Open
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Get Code Number List From Project Description Window
        And Get SW Version List From Project Description Window
        And Click Cancel Button In New Project Window
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
        Then Verify New Imported Code Number Is Added Into Project Description Window
        And Verify New Imported Software Version Is Added Into Project Description Window
        And Delete Imported New Code Number And Software Version


    @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data



     @KP_AKCC_ID_2.3
     Scenario: KP_AKCC_ID_2.3: Check If Appropriate Message Is Showed If The CDF File Already Exists From Import Controller Model.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And KoolProg New Project Window Is Open
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Get Code Number List From Project Description Window
        And Get SW Version List From Project Description Window
        And Click Cancel Button In New Project Window
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Verify New Imported Code Number Is Added Into Project Description Window
        And Verify New Imported Software Version Is Added Into Project Description Window
        And Click Cancel Button In New Project Window
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get Offline CDF File
        When Import Already Exist Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        Then Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window

     @KP_AKCC_ID_2.4
    Scenario: KP_AKCC_ID_2.4: Check If No Error Messages Are Displayed Unless There Is Deletion Of Contents In The CDF File From SetParameter Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Import Controller Model
        And Get Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Verify Header Of Popup Window In Set Parameter Window
        And Verify OK and X button In Popup Window In Set Parameter Window
        And Click OK Button In Popup Window
        And Locate And Unzip The CDF
        And 'Delete' The Random Data To Change the CDF structure
        And Click On Import Controller Model
        And Verify Open Window
        When Import Structure Changed CDF File
        And Verify Popup Window Is Visible
        And Verify Popup Window Is Enabled
        Then Verify Popup Message Should Come As 'File structure not supported.' In Set Parameter Window
        And Verify Header Of Popup Window In Set Parameter Window
        And Verify OK and X button In Popup Window In Set Parameter Window
        And Click Ok Button In Popup Window On Home Window

     @KP_AKCC_ID_2.5
     Scenario: KP_AKCC_ID_2.5: Check CDF File Will Be Imported If File Is Renamed With KoolProg Supported Char.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get Offline CDF File
        And Get KoolProg Supported Special Characters File Name
        When Rename CDF File
        And Import CDF File
        Then Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        Then Verify New Imported Code Number Is Added Into Project Description Window
        And Verify New Imported Software Version Is Added Into Project Description Window
        And Delete Imported New Code Number And Software Version

     @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data


     @KP_AKCC_ID_2.6
     Scenario: KP_AKCC_ID_2.6: Check CDF File Will Be Imported If File Is Renamed With Window Supported Char.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get Offline CDF File
        And Get Window Supported Special Characters File Name
        When Rename CDF File
        And Import CDF File
        Then Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        Then Verify New Imported Code Number Is Added Into Project Description Window
        And Verify New Imported Software Version Is Added Into Project Description Window
        And Delete Imported New Code Number And Software Version


     @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

      #this test case will be on hold for importing new CDF implementation - give high priority to new code
     @KP_AKCC_ID_2.7
     Scenario: KP_AKCC_ID_2.7: Check Project Should Create With Imported CDF After Importing A CDF File.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And KoolProg New Project Window Is Open
        And Select Controller Family And It's Variant
        And Go To Controller Details Selection Window
        And Get Code Number List From Project Description Window
        And Get SW Version List From Project Description Window
        And Click Cancel Button In New Project Window
        And Go To Set Parameter Window
        And Click On Import Controller Model
        And Verify Open Window
        And Get New Offline CDF File
        When Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Click OK Button In Popup Window
        And Click On New Button From Set Parameter Window
        And Create A Project With Imported CDF File
        And The Project Window Is Visible
        And Delete Imported New Code Number And Software Version


     @common @RequiredPreferenceWindowAppDeletionHandling
     Scenario: App Deletion Handling

         Given KoolProg Had Opened
         And Check Existence Of Preference Window After Deleting App Data

     @KP_AKCC_ID_2.9
    Scenario: KP_AKCC_ID_2.9: Check If No Error Messages Are Displayed Unless There Is Addition Of Contents In The CDF File From SetParameter Window.

        Given KoolProg Had Opened
        And Get Controller Details From Variable
        And Click On SetParameter Button And SetParameter Window Is Visible
        And Click On Import Controller Model
        And Get Offline CDF File
        And Import Offline CDF File
        And Add Required Delay For 'IMPORTING_CDF_FILE' for 'OFFLINE' mode
        And Verify Popup Message Should Come As 'Controller model imported successfully!' In Set Parameter Window
        And Verify Header Of Popup Window In Set Parameter Window
        And Verify OK and X button In Popup Window In Set Parameter Window
        And Click OK Button In Popup Window
        And Locate And Unzip The CDF
        And 'Add' The Random Data To Change the CDF structure
        And Click On Import Controller Model
        And Verify Open Window
        When Import Structure Changed CDF File
        And Verify Popup Window Is Visible
        And Verify Popup Window Is Enabled
        Then Verify Popup Message Should Come As 'File structure not supported.' In Set Parameter Window
        And Verify Header Of Popup Window In Set Parameter Window
        And Verify OK and X button In Popup Window In Set Parameter Window
        And Click Ok Button In Popup Window On Home Window


  ####################################### OFFLINE ##############################################