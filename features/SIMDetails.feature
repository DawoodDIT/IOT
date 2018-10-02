@SIMDetails
Feature: SIM Details
This feature covers SIM detail functionality.

@REG_R10_GUI_SIM_Details_002
#      Success
Scenario: Test to verify whether Customer User can view SIM Details of a SIM
Given test case starts
Given browser is open
Then login
Then verify text "M2M Dashboard"
When click on link "USE_SIMDetails_OperatorAdministratorRole"
Then verify text "USE_SIMDetails_CustomerAdministratorRole"
When click on link "USE_SIMDetails_CustomerAdministratorRole"
When click menu "Devices" and submenu "Devices"
Then verify text "Results"
Then enter textarea "IMSI" "USE_SIMDetails_IMSI"
When click on button "Search"
Then verify text "USE_SIMDetails_IMSI"
When click on link "USE_SIMDetails_IMSI"
Then verify text "Overview"
When click on tab "Details"
Then wait for 15 seconds
Then verify text "SIM"
Then verify text "Connectivity services"
Then verify text "Profiles and groups"
Then verify text "Contract"
Then verify text "Recent usage"
Then verify text "Mobility"
When click on link "Connectivity services"
Then verify text "Data Service"
When click on link "Profiles and groups"
Then verify text "Service Profiles"
When click on link "Contract"
Then verify text "Tariff"
When click on link "Recent usage"
When click on link "Mobility"
Then verify text "Registration information"
Then logout


@REG_R5_GUI_SIM_Details_001
#      Success
Scenario: Test to verify whether Opco User can view SIM Details of a SIM
Given test case starts
Given browser is open
Then login
Then verify text "M2M Dashboard"
When click menu "Devices" and submenu "Devices"
Then verify text "Results"
Then enter textarea "IMSI" "USE_SIMDetails_IMSI"
When click on button "Search"
Then verify text "USE_SIMDetails_IMSI"
When click on link "USE_SIMDetails_IMSI"
Then verify text "Overview"
When click on tab "Details"
Then verify text "SIM"
Then verify text "Connectivity services"
Then verify text "Profiles and groups"
Then verify text "Contract"
Then verify text "Recent usage"
Then verify text "Mobility"
When click on link "Connectivity services"
Then verify text "Data Service"
When click on link "Profiles and groups"
Then verify text "Service Profiles"
When click on link "Contract"
Then verify text "Tariff"
When click on link "Recent usage"
When click on link "Mobility"
Then verify text "Registration information"
Then logout

@REG_R10_GUI_SIM_Details_004
#      Success
Scenario: Test to verify whether Opco User can Set Country for a SIM
Given test case starts
Given browser is open
Then login
Then verify text "M2M Dashboard"
When click menu "Devices" and submenu "Devices"
Then verify text "Results"
Then enter textarea "IMSI" "USE_SIMDetails_IMSI"
When click on button "Search"
Then verify text "USE_SIMDetails_IMSI"
When click on link "USE_SIMDetails_IMSI"
Then verify text "Overview"
When click on tab "Operations"
Then verify text "Configure"
Then verify text "Set Home Country"
When click on link "Set Home Country"
Then verify text "* New home country"
Then select dropdown "* New home country" "USE_SIMDetails_NewHomeCountry"
When click on button "Set"
Then verify text "was successfully set to"
Then logout
