@AAA_LocationBasedService

   Feature: AAA Location based service

 @tc_REG_R8.0_GUI_Configure_LBS_001
    Scenario: Test to verify that when OpCo user creating a new LBS enabled customer, values for entries LBS username and password are mandatory

      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on menu "Administration"
      Then verify text "Customers"
      When click on submenu "Customers"
      When click on link "Create organisation"
      When click on button "Create customer"
      Then verify text "Customer name"
      Then verify text "Create customer"
      Then generate unique name starts with "AutomationLBS" and store in "AutomationLBS"
      Then enter "* Customer name" "AutomationLBS"
#      Then enter "* Customer name" "USE_AAAConfigureLBS_NewLBScustname"
      Then enter "* Customer description" "USE_AAAConfigureLBS_NewLBScustDescription"
      When click on button "Next"
      Then verify text "Data service"
      Then verify text "Location service"
      Then select radiobutton "Enabled" on position 10
      Then verify text "* LBS username"
      When click on button "Next"
      Then verify text "This is a mandatory field"
      Then enter "* LBS username" "USE_AAAConfigureLBS_LBSusername"
      Then enter "* LBS password" "USE_AAAConfigureLBS_LBSPassword"
      When click on button "Next"
      Then verify text "* Tariffs"
      Then select dropdown "* Tariffs" "USE_AAAConfigureLBS_NewLBScustTariff"
      Then verify text "USE_AAAConfigureLBS_NewLBScustTariff"
      When click on button "Next"
      Then verify text "SIM products"
      When click on button "Next"
      Then verify text "Please confirm the following data."
      When click on button "Create"
      Then verify text "successfully created!"
      Then logout


 @tc_REG_R9.0_GUI_Configure_LBS_004
    Scenario: Test to verify that OpCo User can provision a new and existing Customer with location base Services

##New Customer
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on menu "Administration"
      Then verify text "Customers"
      When click on submenu "Customers"
      Then verify text "Results"
      When click on link "Create organisation"
      When click on button "Create customer"
      Then verify text "Customer name"
      Then verify text "Create customer"
      Then generate unique name starts with "AutomationLBS" and store in "AutomationLBS"
      Then enter "* Customer name" "AutomationLBS"
#      Then enter "* Customer name" "USE_AAAConfigureLBS_NewLBScustname1"
      Then enter "* Customer description" "USE_AAAConfigureLBS_NewLBScustDescription1"
      When click on button "Next"
      Then verify text "Data service"
      Then verify text "Location service"
      Then select radiobutton "Enabled" on position 10
      Then verify text "* LBS username"
      Then enter "* LBS username" "USE_AAAConfigureLBS_LBSusername"
      Then enter "* LBS password" "USE_AAAConfigureLBS_LBSPassword"
      Then verify text "Geofencing"
      Then select radiobutton "Enabled" on position 11
      When click on button "Next"
      Then verify text "* Tariffs"
      Then select dropdown "* Tariffs" "USE_AAAConfigureLBS_NewLBScustTariff"
      Then verify text "USE_AAAConfigureLBS_NewLBScustTariff"
      When click on button "Next"
      Then verify text "SIM products"
      When click on button "Next"
      Then verify text "Please confirm the following data."
      When click on button "Create"
      Then verify text "successfully created!"
   #Existing Customer
      When click on menu "Administration"
      When click on submenu "Customers"
      Then verify text "Results"
      Then enter "Organisation" "USE_AAAConfigureLBS_LBSdisabledCust"
      When click on button "Search"
      Then verify text "Results"
      When click on link "USE_AAAConfigureLBS_LBSdisabledCust"
      Then verify text "Information"
      When click on tab "Details"
      Then verify text "Devices"
      When click on link "Location service"
      Then verify text "Location service"
      When click on button "Edit"
      Then select radiobutton "Enabled" on position 1
      Then verify text "* LBS username"
      Then enter "* LBS username" "USE_AAAConfigureLBS_LBSusername"
      Then enter "* LBS password" "USE_AAAConfigureLBS_LBSPassword"
      Then verify text "Geofencing"
      Then select radiobutton "Enabled" on position 2
      When click on button "Save"
      Then verify text "LBS username"
      Then verify text "Geofencing"
      Then logout


 @tc_REG_R9.0_GUI_Configure_LBS_006
    Scenario: Test to verify that OpCo user can provision Geofencing while creating a new CSP

      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on menu "Administration"
      Then verify text "Service profiles"
      When click on submenu "Service profiles"
      Then verify text "Results"
      When click on button "Create service profile"
      Then verify text "* Organisation"
      When click on input "* Organisation" and enter value "USE_AAAConfigureLBS_LBSdisabledCust"
      Then generate unique name starts with "LBSdisabledCSP" and store in "LBSdisabledCSP"
      Then enter "* Service profile name" "LBSdisabledCSP"
#      Then enter "* Service profile name" "USE_AAAConfigureLBS_LBSdisabledCSP"
      Then verify text "* Tariff"
      Then select dropdown "* Tariff" "USE_AAAConfigureLBS_NewLBScustTariff"
      When click on button "Next"
      Then verify text "SIM state"
      When click on button "Next"
      Then select radiobutton "Enabled" on position 2
      Then select radiobutton "Enabled" on position 3
      Then select radiobutton "Enabled" on position 5
      Then select radiobutton "Enabled" on position 6
      Then verify text "* Radius"
      Then enter "* Radius" "USE_AAAConfigureLBS_LBSCSPRadius"
      Then select radiobutton "Enabled" on position 7
      Then select radiobutton "Enabled" on position 8
      When click on button "Next"
      Then verify text "Confirm"
      When click on button "Create"
      Then logout



 @tc_REG_R5.0_GUI_Manage_Location_009
    Scenario: Test to verify that Customer User can view the SIMs on a Map using GUI


      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on link "USE_ADMIN_Opco"
      Then verify text "USE_ADMIN_CustLBS"
      When click on link "USE_ADMIN_CustLBS"
      When click on menu "Devices"
      Then verify text "All devices"
      When click on submenu "All devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_AAAManageLBS_IMSI1"
      When click on button "Search"
      Then verify text "Results"
      Then click on "checkbox" of table based on below criteria
      | IMSI            |
      | USE_AAAManageLBS_IMSI1 |
      When click on menu "Location"
      Then verify text "Location"
      When click on button "Display SIMs on map"
      Then verify text "SIMs on map"
      Then verify text "1 from 1 devices were located"
      Then logout


 @tc_REG_R5.0_GUI_Manage_Location_010
    Scenario: Test to verify that Customer User can view the tracked locations for a SIM using GUI


      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on link "USE_OPCOADMIN_NAME"
      Then verify text "USE_LBSCUST_NAME"
      When click on link "USE_LBSCUST_NAME"
      When click on menu "Devices"
      When click on submenu "All devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_AAAManageLBS_IMSI1"
      When click on button "Search"
      Then click on "checkbox" of table based on below criteria
      | IMSI            |
      | USE_AAAManageLBS_IMSI1 |
      When click on menu "Location"
      Then verify text "Location"
      When click on button "Display tracked locations"
      Then verify text "Tracking history"
      Then verify text "Results"
      Then enter date "Start Date" "USE_AAAManageLBS_Startdate"
      Then enter date "End Date" "USE_AAAManageLBS_Enddate"
      When click on button "Search"
      Then verify no text "No results were found"
      Then logout


 @tc_REG_R9.0_GUI_Manage_Location_001
    Scenario: Test to verify that the OpCo user can view multiple  SIMs on a Map


      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on menu "Devices"
      Then verify text "All devices"
      When click on submenu "All devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_AAAManageLBS_MultipleIMSI"
      When click on button "Search"
      Then select all from table
      When click on menu "Location"
      Then verify text "Location"
      When click on button "Display SIMs on map"
      Then verify text "SIMs on map"
      Then verify text "2 from 2 devices were located"
      Then logout


 @tc_REG_R9.0_GUI_Manage_Location_002
    Scenario: Test to verify that OpCo user can view SIMs Tracked Locations


      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on menu "Devices"
      Then verify text "All devices"
      When click on submenu "All devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_AAAManageLBS_MultipleIMSI"
      When click on button "Search"
      Then select all from table
      When click on menu "Location"
      Then verify text "Location"
      When click on button "Display tracked locations"
      Then verify text "Tracking history"
      Then verify text "Results"
      Then enter date "Start Date" "USE_AAAManageLBS_Startdate"
      Then enter date "End Date" "USE_AAAManageLBS_Enddate"
      When click on button "Search"
      Then verify no text "No results were found"
      Then logout


 @tc_REG_R9.0_GUI_Manage_Location_003
    Scenario: Test to verify that OpCo user can set SIM Tracking


      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on menu "Devices"
      Then verify text "All devices"
      When click on submenu "All devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_AAAManageLBS_IMSI1"
      When click on button "Search"
      When click on link "USE_AAAManageLBS_IMSI1"
      Then verify text "Overview"
      When click on link "Operations"
      Then verify text "Set Location tracking"
      When click on link "Set Location tracking"
      Then verify text "Location tracking details"
      Then select dropdown "Period" "2 hours"
      Then select dropdown "Frequency" "10 minutes"
      When click on button "Set"
      Then verify text "successfully submitted"
      Then logout


 @tc_REG_R9.0_GUI_Manage_Location_005
    Scenario: Test to verify that OpCo user can view SIM Location


      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on menu "Devices"
      Then verify text "All devices"
      When click on submenu "All devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_AAAManageLBS_IMSI1"
      When click on button "Search"
      When click on link "USE_AAAManageLBS_IMSI1"
      Then verify text "Overview"
      When click on link "Details"
      Then verify text "SIM"
      When click on link "Location"
      Then verify text "Currently active tracking"
      Then verify text "Known locations"
      Then verify no text "No information available"
      Then verify text "Last known location"
      Then logout


 @tc_REG_R9.0_GUI_Manage_Location_006
    Scenario: Test to verify that Customer user can set SIM Tracking


      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on link "USE_OPCOADMIN_NAME"
      Then verify text "USE_LBSCUST_NAME"
      When click on link "USE_LBSCUST_NAME"
      When click on menu "Devices"
      Then verify text "All devices"
      When click on submenu "All devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_AAAManageLBS_IMSI1"
      When click on button "Search"
      When click on link "USE_AAAManageLBS_IMSI1"
      Then verify text "Overview"
      When click on link "Operations"
      Then verify text "Set Location tracking"
      When click on link "Set Location tracking"
      Then verify text "Location tracking details"
      Then select dropdown "Period" "2 hours"
      Then select dropdown "Frequency" "10 minutes"
      When click on button "Set"
      Then verify text "successfully submitted"
      Then logout

 @tc_REG_R9.0_GUI_Manage_Location_007
    Scenario: Test to verify that Customer user can view SIM Tracking


      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on link "USE_OPCOADMIN_NAME"
      Then verify text "USE_LBSCUST_NAME"
      When click on link "USE_LBSCUST_NAME"
      When click on menu "Devices"
      Then verify text "All devices"
      When click on submenu "All devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_AAAManageLBS_IMSI1"
      When click on button "Search"
      Then select all from table
      When click on menu "Location"
      Then verify text "Location"
      When click on button "Display tracked locations"
      Then verify text "Tracking history"
      Then verify text "Results"
      Then enter date "Start Date" "USE_AAAManageLBS_Startdate"
      Then enter date "End Date" "USE_AAAManageLBS_Enddate"
      When click on button "Search"
      Then verify no text "No results were found"
      Then logout

 @tc_REG_R9.0_GUI_Manage_Location_008
    Scenario: Test to verify that Customer user can view SIM Location


      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on link "USE_OPCOADMIN_NAME"
      Then verify text "USE_LBSCUST_NAME"
      When click on link "USE_LBSCUST_NAME"
      When click on menu "Devices"
      Then verify text "All devices"
      When click on submenu "All devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_AAAManageLBS_IMSI1"
      When click on button "Search"
      When click on link "USE_AAAManageLBS_IMSI1"
      Then verify text "Overview"
      When click on link "Details"
      Then verify text "SIM"
      When click on link "Location"
      Then verify text "Currently active tracking"
      Then verify text "Known locations"
      Then verify no text "No information available"
      Then verify text "Last known location"
      Then logout