@SIM_State_Operation_B11
Feature: SIM State Change

  @TC_REG_R10_GUI_SIMManagement_001Test_InactivetoActiveLive_Customer
  Scenario: Verify that Customer user can change state of one or multiple SIMs
        Given test case starts
        Given browser is open
        Then login
        When click on link "USE_ADMIN_Opco"
        When click on link "USE_ADMIN_Cust1"
        When click menu "Devices" and submenu "All devices"
        Then verify text "Results"
        Then enter textarea "IMSI" "USE_SIMStateOperation_IMSIRange"
        When click on button "Search"
        Then verify text "Results"
        Then select all from table
        When click on link "Operations"
        Then verify text "Batch Operations"
        When click on button "Next"
        Then verify text "Batch operation"
        Then select dropdown "* Action" "Change state"
        Then verify text "New State"
        Then select dropdown "New State" "Active.Live"
        When click on button "Next"
        Then verify text "You are about to apply the following to"
        When click on button "Submit"
        Then verify text "The batch operation was successfully submitted with the following batch ID:"
        #When click on link "See batch operation result"
        When click on button "Go to devices"
        Then verify text "Devices"
        Then verify value of "State" is "Active.Live" of table based on below criteria
        |IMSI|
        |USE_SIMStateOperation_RangeIMSI1|
        Then verify value of "State" is "Active.Live" of table based on below criteria
        |IMSI|
        |USE_SIMStateOperation_RangeIMSI2|
        Then report "State change is successful"
        Then logout

  @TC_REG_R10_GUI_SIMManagement_002Test_InactivetoActiveLive_OPCOUser
  Scenario: Verify that Opco user can change state of one or multiple SIMs
        Given test case starts
        Given browser is open
        Then login
        When click menu "Devices" and submenu "All devices"
        Then verify text "Results"
        Then enter textarea "IMSI" "USE_SIMStateOperation_IMSIRange"
        When click on button "Search"
        Then verify text "Results"
        Then select all from table
        When click on link "Operations"
        Then verify text "Batch Operations"
        When click on button "Next"
        Then verify text "Batch operation"
        Then select dropdown "* Action" "Change state"
        Then verify text "New State"
        Then select dropdown "New State" "Active.Live"
        When click on button "Next"
        Then verify text "You are about to apply the following to"
        When click on button "Submit"
        Then verify text "The batch operation was successfully submitted with the following batch ID:"
        #When click on link "See batch operation result"
        When click on button "Go to devices"
        Then verify text "Devices"
        Then verify value of "State" is "Active.Live" of table based on below criteria
        |IMSI|
        |USE_SIMStateOperation_RangeIMSI1|
        Then verify value of "State" is "Active.Live" of table based on below criteria
        |IMSI|
        |USE_SIMStateOperation_RangeIMSI2|
        Then report "State change is successful"
        Then logout

  @REG_R10_GUI_SIMManagement_004
  Scenario: Test to verify that State Change reason is mandatory
      Given test case starts
      Given browser is open
      Then login
      When click on link "USE_ADMIN_Opco"
      When click on link "USE_ADMIN_Cust1"
      Then State change reason is mandatory "USE_SIMStateOperation_InactiveIMSI2" from "Inactive" to "Active.Live"
      Then logout