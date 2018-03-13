@SIMProvisioning
Feature: SIM Provisioning
This feature covers SIM Provisioning functionality

    @REG_R5_GUI_IMSI_Range_001
    #Success
    Scenario: Test to verify whether Platform User can Create Global IMSI Range
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on link "USE_SIMProvisioning_OperatorAdministratorRole"
      Then verify text "USE_SIMProvisioning_PlatformAdministratorRole"
      When click on link "USE_SIMProvisioning_PlatformAdministratorRole"
      When click menu "Administration" and submenu "IMSI ranges"
      Then verify text "Results"
      When click on button "Create IMSI range"
      Then verify text "Information"
      Then enter "* Description" "USE_SIMProvisioning_DescriptionGlobal"
      Then select dropdown "* Range type" "USE_SIMProvisioning_RangeTypeGlobal"
      Then enter "* IMSI start" "USE_SIMProvisioning_IMSIStart"
      Then enter "* IMSI end" "USE_SIMProvisioning_IMSIEnd"
      When click on button "Next"
      Then verify text "You're about to create the IMSI range"
      When click on button "Create"
      Then verify text "The IMSI range was successfully created!"
      When click on link "USE_SIMProvisioning_PlatformAdministratorRole"
      When click on link "USE_SIMProvisioning_OperatorAdministratorRole"
      Then wait for 5 seconds
      Then logout
 
    @REG_R5_GUI_IMSI_Range_003
    #Success
    Scenario: Test to verify whether Platform User can Edit existing IMSI Range
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on link "USE_SIMProvisioning_OperatorAdministratorRole"
      Then verify text "USE_SIMProvisioning_PlatformAdministratorRole"
      When click on link "USE_SIMProvisioning_PlatformAdministratorRole"
      When click menu "Administration" and submenu "IMSI ranges"
      Then verify text "Results"
      Then enter "Next available IMSI" "USE_SIMProvisioning_NextAvailableIMSI"
      When click on button "Search"
      Then verify text "USE_SIMProvisioning_NextAvailableIMSI"
      When click on link "USE_SIMProvisioning_NextAvailableIMSI"
      When click on button "Edit"
      Then enter "* Description" "USE_SIMProvisioning_DescriptionEdit"
      When click on button "Save"
      Then verify text "USE_SIMProvisioning_DescriptionEdit"
      When click on link "USE_SIMProvisioning_PlatformAdministratorRole"
      When click on link "USE_SIMProvisioning_OperatorAdministratorRole"
      Then wait for 5 seconds
      Then logout

    @REG_R5_GUI_IMSI_Range_002
    #Success
    Scenario: Test to verify whether Platform User can Create Opco Specific IMSI Range
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on link "USE_SIMProvisioning_OperatorAdministratorRole"
      Then verify text "USE_SIMProvisioning_PlatformAdministratorRole"
      When click on link "USE_SIMProvisioning_PlatformAdministratorRole"
      When click menu "Administration" and submenu "IMSI ranges"
      Then verify text "Results"
      When click on button "Create IMSI range"
      Then verify text "Information"
      Then enter "* Description" "USE_SIMProvisioning_DescriptionOpco"
      Then select dropdown "Range type" "USE_SIMProvisioning_RangeTypeOpco"
      When click on input "* Organisation" and enter value "USE_SIMProvisioning_OrganisationOPCO"
      Then enter "* IMSI start" "USE_SIMProvisioning_IMSIStart"
      Then enter "* Amount" "USE_SIMProvisioning_SIMAmount"
      When click on button "Next"
      Then verify text "You're about to create the IMSI range"
      When click on button "Create"
      Then verify text "The IMSI range was successfully created!"
      When click on link "USE_SIMProvisioning_PlatformAdministratorRole"
      When click on link "USE_SIMProvisioning_OperatorAdministratorRole"
      Then wait for 5 seconds
      Then logout

    @REG_R5_GUI_IMSI_Range_005
    #Success
    Scenario: Test to verify whether Opco User can view Opco Specific IMSI Range
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "IMSI ranges"
      Then verify text "Results"
      Then enter "Next available IMSI" "USE_SIMProvisioning_NextAvailableIMSI"
      Then select dropdown "Range type" "USE_SIMProvisioning_RangeTypeOpco"
      When click on input "Organisation" and enter value "USE_SIMProvisioning_OrganisationOPCO"
      When click on button "Search"
      Then verify text "USE_SIMProvisioning_IMSIStart"
      Then logout

    @REG_R5_GUI_IMSI_Range_006
    #Success
    Scenario: Test to verify whether Opco User can Create Customer Specific IMSI Range
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "IMSI ranges"
      When click on button "Create IMSI range"
      Then verify text "Information"
      Then enter "* Description" "USE_SIMProvisioning_DescriptionCust"
      When click on input "Organisation" and enter value "USE_SIMProvisioning_OrganisationCust"
      Then enter "* IMSI start" "USE_SIMProvisioning_IMSIStart"
      Then enter "* Amount" "USE_SIMProvisioning_SIMAmount"
      When click on button "Next"
      Then verify text "You're about to create the IMSI range"
      When click on button "Create"
      Then verify text "The IMSI range was successfully created!"
      Then logout

    @REG_R5_GUI_IMSI_Range_007
    #Success
    Scenario: Test to verify whether Opco User can Edit existing IMSI Range
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "IMSI ranges"
      Then verify text "Results"
      Then enter "Next available IMSI" "USE_SIMProvisioning_NextAvailableIMSI"
      Then select dropdown "Range type" "USE_SIMProvisioning_RangeTypeCust"
      When click on input "Organisation" and enter value "USE_SIMProvisioning_OrganisationCust"
      When click on button "Search"
      Then verify text "USE_SIMProvisioning_NextAvailableIMSI"
      When click on link "USE_SIMProvisioning_NextAvailableIMSI"
      When click on button "Edit"
      Then enter "* Description" "USE_SIMProvisioning_DescriptionEdit"
      When click on button "Save"
      Then verify text "USE_SIMProvisioning_DescriptionEdit"
      Then logout

    @REG_R5_GUI_IMSI_Range_008
    #Success
    Scenario: Test to verify whether Opco User can Delete existing IMSI Range
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "IMSI ranges"
      Then verify text "Results"
      Then enter "Next available IMSI" "USE_SIMProvisioning_NextAvailableIMSI"
      Then select dropdown "Range type" "USE_SIMProvisioning_RangeTypeCust"
      When click on input "Organisation" and enter value "USE_SIMProvisioning_OrganisationCust"
      When click on button "Search"
      Then verify text "USE_SIMProvisioning_NextAvailableIMSI"
      When click on link "USE_SIMProvisioning_NextAvailableIMSI"
      When click on button "Delete range"
      Then verify text "You are about to delete the IMSI range"
      When click on button "Delete"
      Then verify text "The IMSI range was successfully deleted!"
      Then logout

    @REG_R5_GUI_IMSI_Range_004
    #Success
     Scenario:Test to verify whether Platform User can Delete existing IMSI Range
       Given test case starts
       Given browser is open
       Then login
      Then verify text "M2M Dashboard"
       When click on link "USE_SIMProvisioning_OperatorAdministratorRole"
       When click on link "USE_SIMProvisioning_PlatformAdministratorRole"
       When click menu "Administration" and submenu "IMSI ranges"
       Then verify text "Results"
       Then enter "Next available IMSI" "USE_SIMProvisioning_NextAvailableIMSI"
       Then select dropdown "Range type" "USE_SIMProvisioning_RangeTypeOpco"
       When click on input "Organisation" and enter value "USE_SIMProvisioning_OrganisationOPCO"
       When click on button "Search"
       Then verify text "USE_SIMProvisioning_NextAvailableIMSI"
       When click on link "USE_SIMProvisioning_NextAvailableIMSI"
       When click on button "Delete range"
       Then verify text "Confirmation"
       When click on button "Delete"
       Then verify text "The IMSI range was successfully deleted!"
#      Below code is not part of test case, deletion of Global range for re-use of Range
       When click menu "Administration" and submenu "IMSI ranges"
       Then verify text "Results"
       Then enter "Next available IMSI" "USE_SIMProvisioning_NextAvailableIMSI"
       Then select dropdown "Range type" "USE_SIMProvisioning_RangeTypeGlobal"
       When click on button "Search"
       Then verify text "USE_SIMProvisioning_NextAvailableIMSI"
       When click on link "USE_SIMProvisioning_NextAvailableIMSI"
       When click on button "Delete range"
       Then verify text "Confirmation"
       When click on button "Delete"
       Then verify text "The IMSI range was successfully deleted!"
       When click on link "Platform as Platform Administrator"
       When click on link "USE_SIMProvisioning_OperatorAdministratorRole"
       Then wait for 5 seconds
       Then logout

      #Success
    @REG_R5_GUI_SIM_Customer_Order_001
    Scenario: Test to verify whether Opco User can Create new SIM Customer Order
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on menu "Store"
      When click on submenu "SIM products"
      Then verify text "Catalogue"
      When click on link "See details"
      Then verify text "Product"
      When click on input "Organisation" and enter value "USE_CustomerOrder_Organisation"
      When click on button "Place order"
      Then verify text "Place order"
      Then enter date "* Delivery date" "USE_CustomerOrder_Date"
      Then enter "* Quantity" "USE_CustomerOrder_Quantity"
      Then enter "* New recipient" "USE_CustomerOrder_NewRecipient"
      Then enter "* Contact Name" "USE_CustomerOrder_AutoName"
      Then enter "* Phone" "USE_CustomerOrder_Phone"
      Then enter "* Email" "USE_CustomerOrder_Email"
      Then enter textarea "* Address" "USE_CustomerOrder_Address"
      Then enter "* City" "USE_CustomerOrder_City"
      Then select dropdown "* Country" "USE_CustomerOrder_Country"
      When click on button "Next"
      Then verify text "Please confirm the following data."
      When click on button "Order"
      Then verify text "Place order"
      Then verify text "was successfully submited."
      Then logout

    # Success#Configured
    @REG_R5_GUI_SIM_Manufacturer_Order_001
    Scenario:  Test to verify whether Opco User can Create new SIM Manufacturer Order
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on menu "Store"
      When click on submenu "Manufacturer orders"
      Then verify text "Manufacturer orders"
      When click on button "Create manufacturer order"
      Then verify text "Manufacturer order"
      Then enter "* Reference" "USE_SIMProvisioning_Reference"
      When click on input "* Organisation" and enter value "USE_SIMProvisioning_Organisation"
      Then enter "* Amount" "USE_SIMProvisioning_Amount"
  #    Then select dropdown "* SIM profile" "USE_SIMProvisioning_SIMProfile"
      When click on button "Next"
      Then verify text "You are about to order"
      When click on button "Order"
      Then verify text "was successfully submited."
      Then logout