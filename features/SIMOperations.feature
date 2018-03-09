@SIM_Operations
Feature: SIM Operations
  This feature covers SIM operations functionality.


  @REG_R7_GUI_Search_SIM_002
  Scenario: Test to verify whether Opco User can search SIMs using wildcard search options
    Given test case starts
    Given browser is open
    Then login
    When click menu "Devices" and submenu "All devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMOperations_IMSIWildCard"
    When click on button "Search"
    Then verify text "matching result(s)"
    When click on link "Clear fields"
    Then enter textarea "ICCID" "USE_SIMOperations_ICCIDWildcard"
    When click on button "Search"
    Then verify text "matching result(s)"
    When click on link "Clear fields"
    Then enter textarea "IMEI (assigned)" "USE_SIMOperations_IMEIWildcard"
    When click on button "Search"
    Then verify text "matching result(s)"
    Then logout


  @REG_R6_GUI_Search_SIM_004
  Scenario: Test to verify whether Opco can Save All SIM information as csv with all the SIM details available under Opco
    Given test case starts
    Given browser is open
    Then login
    When click menu "Devices" and submenu "All devices"
    Then verify text "Results"
    Then select all from table
    When click on link "Export"
    When click on button "CSV"
    Then logout


  @REG_R6_GUI_Search_SIM_003
  Scenario: Test to verify whether Customer can Save Searched SIM information as csv with all the SIM details
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Cust4"
    When click menu "Devices" and submenu "All devices"
    Then verify text "Results"
    Then select all from table
    When click on link "Export"
    When click on button "CSV"
    Then wait for 5 seconds
    Then logout

  @REG_R6_GUI_Filter_SIM_002
  Scenario: Test to verify whether Customer can Save Filtered SIM information as csv with all the SIM details
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Cust4"
    When click menu "Devices" and submenu "All devices"
    Then verify text "Results"
    Then select dropdown "State" "Inactive"
    When click on button "Search"
    Then wait for 10 seconds
    Then select all from table
    When click on link "Export"
    When click on button "CSV"
    Then wait for 5 seconds
    Then logout


    #Success#Configured
  @REG_R7_GUI_Filter_SIM_001
    Scenario: Test to verify whether Customer User can filter SIMs using available Search options
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Cust4"
    When click menu "Devices" and submenu "All devices"
    Then verify text "Results"
    Then select dropdown "State" "Inactive"
    When click on button "Search"
    Then wait for 5 seconds
    Then verify text "Inactive"
    When click on link "Clear fields"
    Then select dropdown "State" "Active.Live"
    When click on button "Search"
    Then wait for 5 seconds
    Then verify text "Active.Live"
    When click on link "Clear fields"
    Then enter textarea "IMSI" "USE_SIMStateOperation_FilterIMSI"
    When click on button "Search"
    Then verify
    | type  | value  |
    | link  | USE_SIMStateOperation_FilterIMSI   |
    Then wait for 5 seconds
    Then logout


  @TC_SIMOperations_FILTER_SIM_Search_Export_OPCO
  Scenario:  Filter Search SIM and export - OPCO User
    Given test case starts
    Given browser is open
    Then login
    When click menu "Devices" and submenu "All devices"
    Then verify text "Results"
    Then select dropdown "State" "Inactive"
    When click on button "Search"
    Then select all from table
    When click on link "Export"
    When click on button "CSV"
    Then logout


  @REG_R10_GUI_Radius_Events_001
  Scenario:  Test to verify whether Customer User can view Radius Event details
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Cust4"
    When click menu "Devices" and submenu "All devices"
    Then enter textarea "IMSI" "USE_SIMStateOperation_PSUsageIMSI"
    When click on button "Search"
    When click on link "USE_SIMStateOperation_PSUsageIMSI"
    When click on tab "History"
    Then select radiobutton "Activity list"
    Then verify text "Search"
    Then select dropdown "Type" "RADIUS events"
#    Then enterDate "Activities between" "USE_Diagnostics_RangeBetween"
#    Then enterDate "and" "USE_Diagnostics_RangeAnd"
    When click on button "Search"
    Then wait for 5 seconds
    Then verify text "Success"
    When click on link "Success"
    Then verify text "Event date"
    Then verify text "Status"
    Then wait for 5 seconds
    Then logout



  @REG_R10_GUI_CS_Usage_001
  Scenario:  Test to verify whether Customer User can view CS Usage details
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Cust4"
    When click menu "Devices" and submenu "All devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMStateOperation_CSUsageIMSI"
    When click on button "Search"
    Then verify text "USE_SIMStateOperation_CSUsageIMSI"
    When click on link "USE_SIMStateOperation_CSUsageIMSI"
    Then verify text "Overview"
    When click on tab "History"
    Then select radiobutton "Activity list"
    Then verify text "Search"
    Then select dropdown "Type" "Voice calls"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "Call start"
    When click on link "Call start"
    Then verify text "Other party number"
    Then verify text "Serving network"
    Then verify text "Call duration"
    Then wait for 5 seconds
    Then logout

    #Success
  @REG_R5_GUI_CS_Session_001
  Scenario: Test to verify that Customer User can View SIM CS Session using GUI
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Cust4"
    When click menu "Devices" and submenu "All devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMStateOperation_CSUsageIMSI"
    When click on button "Search"
    Then verify text "USE_SIMStateOperation_CSUsageIMSI"
    When click on link "USE_SIMStateOperation_CSUsageIMSI"
    Then verify text "Overview"
    When click on tab "History"
    Then select radiobutton "Activity list"
    Then verify text "Search"
    Then select dropdown "Type" "Voice calls"
    When click on button "Search"
    Then verify text "Call start"
    When click on link "Call start"
    Then verify text "Other party number"
    Then verify text "Serving network"
    Then verify text "Call duration"
    Then wait for 5 seconds
    Then logout


  #Success#Configured
  @REG_R10_GUI_PS_Usage_001
  Scenario: Test to verify whether Customer User can view PS Usage details
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Cust4"
    When click menu "Devices" and submenu "All devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMStateOperation_PSUsageIMSI"
    When click on button "Search"
    Then verify text "USE_SIMStateOperation_CSUsageIMSI"
    When click on link "USE_SIMStateOperation_CSUsageIMSI"
    Then verify text "Overview"
    When click on tab "History"
    Then select radiobutton "Activity list"
    Then verify text "Search"
    Then select dropdown "Type" "Data sessions"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "Start"
    When click on expand link "Start"
    Then verify text "Start"
    Then verify text "End"
    Then verify text "APN"
    Then wait for 5 seconds
    Then logout


    #Success#Configured
  @REG_R6_GUI_PD_Session_003
  Scenario:  Test to verify whether Opco User can view Packet Switch Data Session details
    Given test case starts
    Given browser is open
    Then login
    When click menu "Devices" and submenu "All devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMStateOperation_PSUsageIMSI"
    When click on button "Search"
    Then verify text "USE_SIMStateOperation_PSUsageIMSI"
    When click on link "USE_SIMStateOperation_PSUsageIMSI"
    Then verify text "Overview"
    When click on tab "History"
    Then select radiobutton "Activity list"
    Then verify text "Search"
    Then select dropdown "Type" "Data sessions"
    When click on button "Search"
    Then verify text "Start"
    Then logout



  @REG_R10_GUI_SMS_Usage_001
  Scenario:  Test to verify whether Customer User can view SMS Usage details
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Cust4"
    When click menu "Devices" and submenu "All devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMStateOperation_PSUsageIMSI"
    When click on button "Search"
    When click on link "USE_SIMStateOperation_PSUsageIMSI"
    Then verify text "Overview"
    When click on tab "History"
    Then select radiobutton "Activity list"
    Then verify text "Search"
    Then select dropdown "Type" "SMS"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "Date"
    When click on expand link "Date"
    Then verify text "Event date"
    Then verify text "Report Date"
    Then verify text "Type"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_PD_Session_004
  Scenario:  Test to verify whether Opco User can view Multiple Packet Switch Data Session details
    Given test case starts
    Given browser is open
    Then login
    When click menu "Devices" and submenu "All devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMStateOperation_PSUsageIMSI"
    When click on button "Search"
    Then verify text "USE_SIMStateOperation_PSUsageIMSI"
    When click on link "USE_SIMStateOperation_PSUsageIMSI"
    Then verify text "Overview"
    When click on tab "History"
    Then select radiobutton "Activity list"
    Then verify text "Search"
    Then select dropdown "Type" "Data sessions"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "Start"
    When click on expand link "Start"
    Then verify text "Start"
    Then verify text "End"
    Then verify text "APN"
    When click on expand link "Start" on position 2
    Then verify text "Uploaded"
    Then verify text "Downloaded"
    Then verify text "Service Profile"
    Then logout


  @REG_R5_GUI_APN_Details_003
  Scenario:  Test to verify whether Opco User can view APN Details of a SIM
    Given test case starts
    Given browser is open
    Then login
    When click menu "Devices" and submenu "All devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMStateOperation_PSUsageIMSI"
    When click on button "Search"
    Then verify text "USE_SIMStateOperation_PSUsageIMSI"
    When click on link "USE_SIMStateOperation_PSUsageIMSI"
    Then verify text "Overview"
    When click on tab "Details"
    When click on link "Connectivity services"
    Then verify text "APN"
    Then logout


  @REG_R6_GUI_CS_Session_003
  Scenario:  Test to verify whether Opco User can view Circuit Switched Session details
    Given test case starts
    Given browser is open
    Then login
    When click menu "Devices" and submenu "All devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMStateOperation_CSUsageIMSI"
    When click on button "Search"
    Then verify text "USE_SIMStateOperation_CSUsageIMSI"
    When click on link "USE_SIMStateOperation_CSUsageIMSI"
    Then verify text "Overview"
    When click on tab "History"
    Then select radiobutton "Activity list"
    Then verify text "Search"
    Then select dropdown "Type" "Voice calls"
    When click on button "Search"
    Then verify text "Results"
    Then verify text "Call start"
    When click on link "Call start"
    Then verify text "Other party number"
    Then verify text "Serving network"
    Then verify text "Call duration"
    Then logout

  #Success#Configured
  @REG_R5_GUI_PD_Session_001
  Scenario:  Test to verify whether Customer User can view Packet Switch Data Session details
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Cust4"
    When click menu "Devices" and submenu "All devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMStateOperation_PSUsageIMSI"
    When click on button "Search"
    When click on link "USE_SIMStateOperation_PSUsageIMSI"
    Then verify text "Overview"
    When click on tab "History"
    Then select radiobutton "Activity list"
    Then verify text "Search"
    Then select dropdown "Type" "Data sessions"
    When click on button "Search"
    Then verify text "Start"
    When click on expand link "Start"
    Then verify text "Start"
    Then verify text "End"
    Then verify text "APN"
    Then verify text "Service Profile"
    Then verify text "Uploaded"
    Then verify text "Downloaded"
    Then wait for 5 seconds
    Then logout


  @REG_R5_GUI_APN_Details_002
  Scenario:  Test to verify whether Customer User can set APN Credentials for a specific SIM
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Cust4"
    When click menu "Devices" and submenu "All devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMStateOperation_PSUsageIMSI"
    When click on button "Search"
    Then verify text "USE_SIMStateOperation_PSUsageIMSI"
    When click on link "USE_SIMStateOperation_PSUsageIMSI"
    Then verify text "Overview"
    When click on tab "Operations"
    When click on link "Configure"
    When click on link "Set APN username and password"
    Then select dropdown "* APN" "USE_APNDropdown_DropdownValue"
    Then enter "* Username" "m2m"
    Then enter "* Password" "m2m"
    When click on button "Next"
    Then verify text "Please confirm the following data."
    When click on button "Confirm"
    Then verify text "APN have been set."
    Then wait for 5 seconds
    Then logout

  #Success#Configured
  @REG_R10_GUI_APN_Details_004
  Scenario: Test to verify whether Opco User can Update APN Credentials Set for a specific SIM
    Given test case starts
    Given browser is open
    Then login
    When click menu "Devices" and submenu "All devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_SIMStateOperation_PSUsageIMSI"
    When click on button "Search"
    Then verify text "USE_SIMStateOperation_PSUsageIMSI"
    When click on link "USE_SIMStateOperation_PSUsageIMSI"
    Then verify text "Overview"
    When click on tab "Operations"
    When click on link "Configure"
    When click on link "Set APN username and password"
    Then select dropdown "* APN" "USE_APNDropdown_DropdownValue"
    Then enter "* Username" "m2m"
    Then enter "* Password" "m2m"
    When click on button "Next"
    Then verify text "You are about to set"
    When click on button "Confirm"
    Then verify text "APN have been set."
    Then logout