@SIMRegistrationData
Feature: SIM Registration
  This feature covers SIM registration functionality.


  @REG_R5_GUI_Registration_Data_002
  Scenario: Test to verify whether Customer User can View SIM Registration Information of a SIM
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_SIMRegistrationData_OperatorAdministratorRole"
    Then verify text "USE_SIMRegistrationData_CustomerAdministratorRole"
    When click on link "USE_SIMRegistrationData_CustomerAdministratorRole"
    When click menu "Devices" and submenu "Devices"
    Then verify text "Results"
    Then enter textarea "USE_SIMRegistrationData_TextAreaName" "USE_SIMRegistrationData_IMSINo"
    When click on button "Search"
    Then verify text "USE_SIMRegistrationData_IMSINo"
    When click on link "USE_SIMRegistrationData_IMSINo"
    Then verify text "Details"
    When click on tab "Details"
    Then verify text "2G / 3G Mobility"
    When click on link "2G / 3G Mobility"
    Then verify text "Status"
    When click on link "USE_SIMRegistrationData_CustomerAdministratorRole"
    When click on link "USE_SIMRegistrationData_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout

  @REG_R10_Registration_Data_005
  Scenario: Test to verify whether Customer User can Tear Down a SIM
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
#    Mobile Part
    Given select mobile "mobile2"
    When launch mobile app "youtube"
    Then verify text "Home" on mobile
#    Web Part
    When click on link "USE_SIMRegistrationData_OperatorAdministratorRole"
    Then verify text "USE_SIMRegistrationData_CustomerAdministratorRole"
    When click on link "USE_SIMRegistrationData_CustomerAdministratorRole"
    When click menu "Devices" and submenu "Devices"
    Then enter textarea "USE_SIMRegistrationData_TextAreaName" "USE_SIMRegistrationData_IMSINo"
    When click on button "Search"
    Then verify text "USE_SIMRegistrationData_IMSINo"
    When click on link "USE_SIMRegistrationData_IMSINo"
    When click on tab "Operations"
    Then verify text "Take action"
    When click on link "Take action"
    Then verify text "Stop data session"
    When click on link "Stop data session"
    Then verify text "You are about to stop all on-going data sessions for Device"
    When click on button "Stop"
    Then verify text "A Stop data session request has been submitted for Device"
#    Mobile Part
    When launch mobile app "youtube"
    Then verify no text "Home" on mobile
#    Web Part
    When click on link "USE_SIMRegistrationData_CustomerAdministratorRole"
    When click on link "USE_SIMRegistrationData_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Registration_Data_006
  Scenario: Test to verify whether Opco User can disable Tear Down option for the Customer
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Administration" and submenu "Customers"
    Then verify text "Results"
    Then enter "Organisation" "USE_SIMRegistrationData_Organisation"
    When click on button "Search"
    Then verify text "USE_SIMRegistrationData_Organisation"
    When click on link "USE_SIMRegistrationData_Organisation"
    Then verify text "Overview"
    Then verify text "Details"
    When click on tab "Details"
    Then verify text "Devices"
    When click on link "Connectivity services"
    Then verify text "Data service"
    When click on button "Edit" on position 3
    Then select radiobutton "Disabled" on position 3
    When click on button "Save"
    Then logout

  @REG_R6_GUI_Registration_Data_003
  Scenario: Test to verify whether Opco User can Update Registration Information of a SIM
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_SIMRegistrationData_OperatorAdministratorRole"
    Then verify text "USE_SIMRegistrationData_CustomerAdministratorRole"
    When click on link "USE_SIMRegistrationData_CustomerAdministratorRole"
    When click menu "Devices" and submenu "Devices"
    Then enter textarea "IMSI" "USE_SIMRegistrationData_IMSINo"
    When click on button "Search"
    Then verify text "USE_SIMRegistrationData_IMSINo"
    When click on link "USE_SIMRegistrationData_IMSINo"
    Then verify text "Details"
    When click on tab "Details"
    Then verify text "2G / 3G Mobility"
    When click on link "2G / 3G Mobility"
    Then verify text "Status"
    When click on link "USE_SIMRegistrationData_CustomerAdministratorRole"
    When click on link "USE_SIMRegistrationData_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout

