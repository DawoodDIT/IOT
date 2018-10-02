@SIMHistory
Feature: SIM Management
  This feature covers complete SIM management functionality.

  @REG_R9_GUI_SIM_History_002
  #Success
  Scenario: Test to verify whether Opco User can view SIM History of a SIM
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Devices" and submenu "Devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMHistory_IMSI"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "USE_SIMHistory_IMSI"
    When click on link "USE_SIMHistory_IMSI"
    Then verify text "Overview"
    When click on tab "History"
    Then wait for 5 seconds
    Then verify text "Activity list"
    Then select radiobutton "Activity list"
    Then verify text "Results"
    Then select dropdown "Type" "Administrative operations"
    Then enter date "between" "USE_SIMHistory_RangeBetween"
    Then enter date "and" "USE_SIMHistory_RangeAnd"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "Change state"
    Then verify text "Change service profile"
    Then verify text "Set home country"
 #   Then verify text "Set IMEI"
#    Then verify text "New SIM record"
    Then logout

  @REG_R10_GUI_SIM_History_004
  #Success
  Scenario: Test to verify whether Opco User can view SIM State change values in SIM History
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Devices" and submenu "Devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMHistory_IMSI"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "USE_SIMHistory_IMSI"
    When click on link "USE_SIMHistory_IMSI"
    Then verify text "Overview"
    When click on tab "History"
    Then wait for 5 seconds
    Then verify text "Activity list"
    Then select radiobutton "Activity list"
    Then verify text "Results"
    Then select dropdown "Type" "Administrative operations"
    Then enter date "between" "USE_SIMHistory_RangeBetween"
    Then enter date "and" "USE_SIMHistory_RangeAnd"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "Change state"
    When click on expand link "Change state"
    Then verify text "Previous state"
    Then verify text "New state"
    Then verify text "Event date"
    Then logout

  @REG_R9_GUI_SIM_History_005
  Scenario: Test to verify whether Opco User can view Customer change values in SIM History
  #Success
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Devices" and submenu "Devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMHistory_IMSI"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "USE_SIMHistory_IMSI"
    When click on link "USE_SIMHistory_IMSI"
    Then verify text "Overview"
    When click on tab "History"
    Then wait for 5 seconds
    Then verify text "Activity list"
    Then select radiobutton "Activity list"
    Then verify text "Results"
    Then select dropdown "Type" "Administrative operations"
    Then enter date "between" "USE_SIMHistory_RangeBetween"
    Then enter date "and" "USE_SIMHistory_RangeAnd"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "Change service profile"
    When click on expand link "Change service profile"
    Then verify text "New service profile"
    Then verify text "Previous service profile"
    Then verify text "Event date"
    Then logout


  @REG_R9_GUI_SIM_History_001
  Scenario: Test to verify whether Customer User can view SIM History of a SIM
  #Success
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_SIMHistory_OperatorAdministratorRole"
    Then verify text "USE_SIMHistory_CustomerAdministratorRole"
    When click on link "USE_SIMHistory_CustomerAdministratorRole"
    When click menu "Devices" and submenu "Devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMHistory_IMSI"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "USE_SIMHistory_IMSI"
    When click on link "USE_SIMHistory_IMSI"
    Then verify text "Overview"
    When click on tab "History"
    Then wait for 5 seconds
    Then verify text "Activity list"
    Then select radiobutton "Activity list"
    Then verify text "Results"
    Then select dropdown "Type" "Administrative operations"
    Then enter date "between" "USE_SIMHistory_RangeBetween"
    Then enter date "and" "USE_SIMHistory_RangeAnd"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "Change state"
    Then verify text "Change service profile"
    Then verify text "Set home country"
    Then verify text "Set IMEI"
#    Then verify text "New SIM record"
    When click on link "USE_SIMHistory_CustomerAdministratorRole"
    When click on link "USE_SIMHistory_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_SIM_History_008
  Scenario: Test to verify whether Customer User can view Home Country change values in SIM History
  #Success
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_SIMHistory_OperatorAdministratorRole"
    Then verify text "USE_SIMHistory_CustomerAdministratorRole"
    When click on link "USE_SIMHistory_CustomerAdministratorRole"
    When click menu "Devices" and submenu "Devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMHistory_IMSI"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "USE_SIMHistory_IMSI"
    When click on link "USE_SIMHistory_IMSI"
    Then verify text "Overview"
    When click on tab "History"
    Then wait for 5 seconds
    Then verify text "Activity list"
    Then select radiobutton "Activity list"
    Then verify text "Results"
    Then select dropdown "Type" "Administrative operations"
    Then enter date "between" "USE_SIMHistory_RangeBetween"
    Then enter date "and" "USE_SIMHistory_RangeAnd"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "Set home country"
    When click on expand link "Set home country"
    Then verify text "Previous home country"
    Then verify text "New home country"
    Then verify text "Event date"
    When click on link "USE_SIMHistory_CustomerAdministratorRole"
    When click on link "USE_SIMHistory_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_SIM_History_007
  Scenario: Test to verify whether Customer User can view IMEI change values in SIM History
  #Success
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_SIMHistory_OperatorAdministratorRole"
    Then verify text "USE_SIMHistory_CustomerAdministratorRole"
    When click on link "USE_SIMHistory_CustomerAdministratorRole"
    When click menu "Devices" and submenu "Devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMHistory_IMSI"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "USE_SIMHistory_IMSI"
    When click on link "USE_SIMHistory_IMSI"
    Then verify text "Overview"
    When click on tab "History"
    Then wait for 5 seconds
    Then verify text "Activity list"
    Then select radiobutton "Activity list"
    Then verify text "Results"
    Then select dropdown "Type" "Administrative operations"
    Then enter date "between" "USE_SIMHistory_RangeBetween"
    Then enter date "and" "USE_SIMHistory_RangeAnd"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "Set IMEI"
    When click on expand link "Set IMEI"
    Then verify text "New IMEI"
    Then verify text "Previous IMEI"
    When click on link "USE_SIMHistory_CustomerAdministratorRole"
    When click on link "USE_SIMHistory_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout

  @REG_R10_GUI_SIM_History_006
  Scenario: Test to verify whether Customer User can view Move CSP values in SIM History
  #Success
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_SIMHistory_OperatorAdministratorRole"
    Then verify text "USE_SIMHistory_CustomerAdministratorRole"
    When click on link "USE_SIMHistory_CustomerAdministratorRole"
    When click menu "Devices" and submenu "Devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMHistory_IMSI"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "USE_SIMHistory_IMSI"
    When click on link "USE_SIMHistory_IMSI"
    Then verify text "Overview"
    When click on tab "History"
    Then wait for 5 seconds
    Then verify text "Activity list"
    Then select radiobutton "Activity list"
    Then verify text "Results"
    Then select dropdown "Type" "Administrative operations"
    Then enter date "between" "USE_SIMHistory_RangeBetween"
    Then enter date "and" "USE_SIMHistory_RangeAnd"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "Change service profile"
    When click on expand link "Change service profile"
    Then verify text "New service profile"
    Then verify text "Previous service profile"
    When click on link "USE_SIMHistory_CustomerAdministratorRole"
    When click on link "USE_SIMHistory_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout
