@SIMCustomAttributes
Feature: SIM Custom Attributes
 This feature covers Configure and Manage custom attributes.

    @REG_R9_GUI_Config_CA_001
#      Success
    Scenario: Test to verify whether Opco User can enable SIM Custom Attributes and make it Available to Customers
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "Customers"
      Then verify text "Results"
      Then enter "Organisation" "USE_SIMCustomAttributes_Organisation"
      When click on button "Search"
      When click on link "USE_SIMCustomAttributes_Organisation"
      Then verify text "Overview"
      When click on tab "Details"
      When click on button "Edit"
      Then enter "Custom attributes" "USE_SIMCustomAttributes_CustomAttribute1"
      When click on button "Save"
      Then verify text "Custom attributes"
      Then logout

    @REG_R9_GUI_Config_CA_003
#       Success
    Scenario: Test to verify whether Customer User can Modify their own Naming and other options for enabled Custom Attributes
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on link "USE_SIMCustomAttributes_OperatorAdministratorRole"
      Then verify text "USE_SIMCustomAttributes_CustomerAdministratorRole"
      When click on link "USE_SIMCustomAttributes_CustomerAdministratorRole"
      When click menu "Administration" and submenu "My organisation"
      Then verify text "Overview"
      When click on tab "Details"
      When click on button "Edit"
      Then enter "Custom attributes" "USE_SIMCustomAttributes_CustomAttribute1"
      When click on button "Save"
      Then verify text "Custom attributes"
      Then logout

    @REG_R10_GUI_Manage_CA_005
#      Success
    Scenario: Test to verify whether Opco User can View Custom Attribute values for a SIM
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Devices" and submenu "All devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_SIMCustomAttributes_IMSI"
      When click on button "Search"
      When click on link "USE_SIMCustomAttributes_IMSI"
      Then verify text "Service Profile"
      Then verify text "USE_SIMCustomAttributes_CustomAttribute2"
      Then verify text "USE_SIMCustomAttributes_CA1Value"
      Then wait for 10 seconds
      Then logout

    @REG_R7_GUI_Config_CA_005
#     Success
    Scenario: Test to verify whether Customer User can configure Available Custom Attributes to be Included in Reports
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on link "USE_SIMCustomAttributes_OperatorAdministratorRole"
      Then verify text "USE_SIMCustomAttributes_CustomerAdministratorRole"
      When click on link "USE_SIMCustomAttributes_CustomerAdministratorRole"
      When click menu "Administration" and submenu "My organisation"
      Then verify text "Overview"
      When click on tab "Details"
      When click on button "Edit"
      When click on button "customattribute"
      When click on button "Save"
      Then logout

    @REG_R10_GUI_Manage_CA_001
#      Success
    Scenario: Test to verify whether Customer User can Set values for the enabled Custom Attributes specific to SIM
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on link "USE_SIMCustomAttributes_OperatorAdministratorRole"
      Then verify text "USE_SIMCustomAttributes_CustomerAdministratorRole"
      When click on link "USE_SIMCustomAttributes_CustomerAdministratorRole"
      When click menu "Devices" and submenu "All devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_SIMCustomAttributes_IMSI"
      When click on button "Search"
      When click on link "USE_SIMCustomAttributes_IMSI"
      Then verify text "Overview"
      When click on button "Edit"
      Then enter "USE_SIMCustomAttributes_CustomAttribute1" "USE_SIMCustomAttributes_CA1Value"
      When click on button "Save"
      Then verify text "Overview"
      Then verify text "USE_SIMCustomAttributes_CA1Value"
      Then verify text "Devices"
      When click menu "Devices" and submenu "All devices"
      Then verify text "USE_SIMCustomAttributes_CustomAttribute1"
      Then wait for 10 seconds
      Then logout
    @REG_R9_GUI_Config_CA_004
#      Success
    Scenario: Test to verify whether Customer User can configure Available Custom Attributes to be available in Search SIMs screens
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on link "USE_SIMCustomAttributes_OperatorAdministratorRole"
      Then verify text "USE_SIMCustomAttributes_CustomerAdministratorRole"
      When click on link "USE_SIMCustomAttributes_CustomerAdministratorRole"
      When click menu "Devices" and submenu "All devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_SIMCustomAttributes_IMSI"
      When click on button "Search"
      When click on link "USE_SIMCustomAttributes_IMSI"
      When click on button "Edit"
      Then enter "USE_SIMCustomAttributes_CustomAttribute1" "USE_SIMCustomAttributes_CA1Value"
      When click on button "Save"
      When click on tab "Details"
      When click on tab "Overview"
      Then verify text "USE_SIMCustomAttributes_CA1Value"
      Then wait for 5 seconds
      Then logout

    @REG_R10_GUI_Manage_CA_004
#      Success
    Scenario: Test to verify whether Customer User can Search SIM using the Custom Attribute values
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on link "USE_SIMCustomAttributes_OperatorAdministratorRole"
      Then verify text "USE_SIMCustomAttributes_CustomerAdministratorRole"
      When click on link "USE_SIMCustomAttributes_CustomerAdministratorRole"
      When click menu "Devices" and submenu "All devices"
      Then verify text "Results"
      Then verify text "USE_SIMCustomAttributes_CustomAttribute1"
      Then enter "USE_SIMCustomAttributes_CustomAttribute1" "USE_SIMCustomAttributes_CA1Value"
      When click on button "Search"
      Then verify text "USE_SIMCustomAttributes_IMSI"
      Then logout


