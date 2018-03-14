@CustomerOnboarding
Feature: Customer On Boarding
 This feature covers the functionality of onboarding customers to M2M portal

    @REG_R10_GUI_Customer_Onboarding_017
#      Success
    Scenario: Test to verify that the Opco user can configure Move SIMs to Customer for a customer in the Global M2M Platform
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "Customers"
      Then enter "Organisation" "USE_CustomerOnboarding_Customer"
      When click on button "Search"
      Then verify text "USE_CustomerOnboarding_Customer"
      When click on link "USE_CustomerOnboarding_Customer"
      Then verify text "Overview"
      When click on tab "Details"
      Then verify text "Primary SIM identifier"
      When click on button "Edit" on position 3
      Then verify text "Add customer"
      When click on link "Add customer"
      When click on input "* Customer" and enter value "USE_CustomerOnboarding_MoveSIMCustomer"
      Then select dropdown "* Service profiles" "USE_CustomerOnboarding_MoveSIMcsp"
      When click on button "Save"
      Then verify no text "This is a mandatory field"
      Then logout

    @REG_R10_GUI_Customer_Onboarding_018
#      Success
    Scenario: Test to verify the functionality to copy a customer
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "Customers"
      When click on link "Create organisation"
      When click on button "Create customer"
      Then verify text "* Customer name"
      Then enter "* Customer name" "USE_CustomerOnboarding_NewCopyCustName"
      Then enter "* Customer description" "USE_CustomerOnboarding_CopyCustDes"
      Then select radiobutton "Yes"
      When click on input "* Copy settings from" and enter value "USE_CustomerOnboarding_Customer"
      Then verify text "* Copy settings from"
      When click on button "Next"
      Then verify text "Data service"
      Then select radiobutton "Disabled" on position 8
      When click on button "Next"
      Then verify text "Reports"
      Then select radiobutton "Disabled" on position 1
      Then select radiobutton "Disabled" on position 2
      Then select dropdown "* Tariffs" "USE_CustomerOnboarding_Tariffs"
      When click on button "Next"
      Then verify text "forecasting"
      When click on button "Next"
      Then verify text "You're about to create the customer"
      When click on button "Create"
      Then logout

    @REG_R10_GUI_Customer_Onboarding_022
    Scenario: Test to verify that the field data encoding appears on SIM detail page only if it is enabled in customer configuration
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Devices" and submenu "All devices"
      Then enter textarea "IMSI" "USE_CustomerOnboarding_IMSIforEncoding"
      When click on button "Search"
      When click on link "USE_CustomerOnboarding_IMSIforEncoding"
      Then verify text "Overview"
      When click on link "Operations"
      Then verify text "Take action"
      When click on link "Send SMS"
      Then verify no text "Encoding"
      When click on link "Advanced settings"
      Then verify text "Encoding"
      Then wait for 5 seconds
      Then logout

    @REG_R10_GUI_Customer_Onboarding_023
#    Success
    Scenario: Test to verify that the tab SMS MANAGEMENT  appears on customer login only if it is enabled in customer configuration.
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "Customers"
      Then enter "Organisation" "USE_CustomerOnboarding_Customer"
      When click on button "Search"
      Then verify text "USE_CustomerOnboarding_Customer"
      When click on link "USE_CustomerOnboarding_Customer"
      Then verify text "Overview"
      When click on tab "Details"
      When click on link "Connectivity services"
      When click on button "Edit" on position 3
      Then select radiobutton "Enabled" on position 2
      When click on button "Save"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      When click on link "USE_CustomerOnboarding_CustomerAdministratorRole"
      When click on menu "Devices"
      Then verify text "SMS inbox"
      Then verify text "USE_CustomerOnboarding_CustomerAdministratorRole"
      When click on link "USE_CustomerOnboarding_CustomerAdministratorRole"
      Then verify text "USE_CustomerOnboarding_OperatorAdministratorRole"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      When click menu "Administration" and submenu "Customers"
      Then enter "Organisation" "USE_CustomerOnboarding_Customer"
      When click on button "Search"
      Then verify text "USE_CustomerOnboarding_Customer"
      When click on link "USE_CustomerOnboarding_Customer"
      Then verify text "Overview"
      When click on tab "Details"
      When click on link "Connectivity services"
      When click on button "Edit" on position 3
      Then select radiobutton "Disabled" on position 2
      When click on button "Save"
      Then verify text "USE_CustomerOnboarding_OperatorAdministratorRole"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      Then verify text "USE_CustomerOnboarding_CustomerAdministratorRole"
      When click on link "USE_CustomerOnboarding_CustomerAdministratorRole"
      When click on menu "Devices"
      Then verify no text "SMS inbox"
      Then logout


    @REG_R10_GUI_Customer_Onboarding_025
#      Success
    Scenario: Test to verify that the field SIM State Change Reason appears while changing state only if it is enabled in customer configuration
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "Customers"
      Then enter "Organisation" "USE_CustomerOnboarding_Customer"
      When click on button "Search"
      Then verify text "USE_CustomerOnboarding_Customer"
      When click on link "USE_CustomerOnboarding_Customer"
      Then verify text "Overview"
      When click on tab "Details"
      When click on button "Edit" on position 1
      Then select dropdown "State change reason" "Mandatory"
      When click on button "Save"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      Then verify text "USE_CustomerOnboarding_CustomerAdministratorRole"
      When click on link "USE_CustomerOnboarding_CustomerAdministratorRole"
      When click menu "Devices" and submenu "All devices"
      Then enter textarea "IMSI" "USE_CustomerOnboarding_IMSI"
      When click on button "Search"
      When click on link "USE_CustomerOnboarding_IMSI"
      When click on tab "Operations"
      When click on link "Configure"
      When click on link "Change state"
      Then verify text "State change reason"
      When click on link "USE_CustomerOnboarding_CustomerAdministratorRole"
      Then verify text "USE_CustomerOnboarding_OperatorAdministratorRole"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      When click menu "Administration" and submenu "Customers"
      Then enter "Organisation" "USE_CustomerOnboarding_Customer"
      When click on button "Search"
      Then verify text "USE_CustomerOnboarding_Customer"
      When click on link "USE_CustomerOnboarding_Customer"
      Then verify text "Overview"
      When click on tab "Details"
      When click on button "Edit" on position 1
      Then select dropdown "State change reason" "Not requested"
      When click on button "Save"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      Then verify text "USE_CustomerOnboarding_CustomerAdministratorRole"
      When click on link "USE_CustomerOnboarding_CustomerAdministratorRole"
      When click menu "Devices" and submenu "All devices"
      Then enter textarea "IMSI" "USE_CustomerOnboarding_IMSI"
      When click on button "Search"
      When click on link "USE_CustomerOnboarding_IMSI"
      When click on tab "Operations"
      When click on link "Configure"
      When click on link "Change state"
      Then verify no text "State change reason"
      Then logout


    @REG_R10_GUI_Customer_Onboarding_026
#      Success
    Scenario: Test to verify that transactional SMS can be sent only if it is enabled in customer configuration
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "Customers"
      Then enter "Organisation" "USE_CustomerOnboarding_CustomerSMSCommand"
      When click on button "Search"
      When click on link "USE_CustomerOnboarding_CustomerSMSCommand"
      Then verify text "Overview"
      When click on tab "Details"
      When click on link "Connectivity services"
      When click on button "Edit" on position 3
      Then select radiobutton "Enabled" on position 3
      When click on button "Save"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      When click on link "USE_CustomerOnboarding_CustomerSMSCommandUser"
      When click menu "Devices" and submenu "All devices"
      Then enter textarea "IMSI" "USE_CustomerOnboarding_IMSICommand"
      When click on button "Search"
      When click on link "USE_CustomerOnboarding_IMSICommand"
      When click on tab "Operations"
      When click on link "Send SMS"
      Then enter "* Sender's Number" "USE_CustomerOnboarding_SenderNumber"
      Then select dropdown "* Type" "Transactional"
      Then enter textarea "Message" "USE_CustomerOnboarding_TransactionalSMS"
      When click on button "Send"
      Then verify text "A reply to the transactional SMS from the device"
      When click on link "USE_CustomerOnboarding_CustomerSMSCommandUser"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      When click menu "Administration" and submenu "Customers"
      Then enter "Organisation" "USE_CustomerOnboarding_CustomerSMSCommand"
      When click on button "Search"
      When click on link "USE_CustomerOnboarding_CustomerSMSCommand"
      Then verify text "Overview"
      When click on tab "Details"
      When click on link "Connectivity services"
      When click on button "Edit" on position 3
      Then select radiobutton "Disabled" on position 3
      When click on button "Save"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      When click on link "USE_CustomerOnboarding_CustomerSMSCommandUser"
      When click menu "Devices" and submenu "All devices"
      Then enter textarea "IMSI" "USE_CustomerOnboarding_IMSICommand"
      When click on button "Search"
      When click on link "USE_CustomerOnboarding_IMSICommand"
      When click on tab "Operations"
      When click on link "Send SMS"
      Then enter "* Sender's Number" "USE_CustomerOnboarding_SenderNumber"
      Then verify no text "Transactional"
      Then logout


    @REG_R10_GUI_Customer_Onboarding_029
#      Success
    Scenario: Test to verify that sim state change to active-standby is possible only if it is enabled in customer configuration
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "Customers"
      Then enter "Organisation" "USE_CustomerOnboarding_Customer"
      When click on button "Search"
      Then verify text "USE_CustomerOnboarding_Customer"
      When click on link "USE_CustomerOnboarding_Customer"
      Then verify text "Overview"
      When click on tab "Details"
      When click on button "Edit" on position 1
      Then select radiobutton "Enabled" on position 1
      When click on button "Save"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      When click on link "USE_CustomerOnboarding_CustomerAdministratorRole"
      When click menu "Devices" and submenu "All devices"
      Then enter textarea "IMSI" "USE_CustomerOnboarding_IMSI"
      When click on button "Search"
      When click on link "USE_CustomerOnboarding_IMSI"
      When click on tab "Operations"
      When click on link "Configure"
      When click on link "Change state"
      Then select dropdown "* New state" "Active.Standby"
      Then verify text "Active.Standby"
      When click on link "USE_CustomerOnboarding_CustomerAdministratorRole"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      When click menu "Administration" and submenu "Customers"
      Then enter "Organisation" "USE_CustomerOnboarding_Customer"
      When click on button "Search"
      Then verify text "USE_CustomerOnboarding_Customer"
      When click on link "USE_CustomerOnboarding_Customer"
      Then verify text "Overview"
      When click on tab "Details"
      When click on button "Edit" on position 1
      Then select radiobutton "Disabled" on position 1
      When click on button "Save"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      When click on link "USE_CustomerOnboarding_CustomerAdministratorRole"
      When click menu "Devices" and submenu "All devices"
      Then enter textarea "IMSI" "USE_CustomerOnboarding_IMSI"
      When click on button "Search"
      When click on link "USE_CustomerOnboarding_IMSI"
      When click on tab "Operations"
      When click on link "Configure"
      When click on link "Change state"
      Then verify no text "Active.Standby"
      Then logout

    @REG_R10_GUI_Customer_Onboarding_030
    Scenario: Test to verify that the field data encoding appears on SIM detail page only using customer login if it is enabled in customer configuration
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      When click on link "USE_CustomerOnboarding_CustomerAdministratorRole"
      When click menu "Devices" and submenu "All devices"
      Then enter textarea "IMSI" "USE_CustomerOnboarding_IMSIforEncoding"
      When click on button "Search"
      When click on link "USE_CustomerOnboarding_IMSIforEncoding"
      Then verify text "Overview"
      When click on link "Operations"
      Then verify text "Take action"
      When click on link "Send SMS"
      Then verify no text "Encoding"
      When click on link "Advanced settings"
      Then verify text "Encoding"
      Then wait for 5 seconds
      When click on link "USE_CustomerOnboarding_CustomerAdministratorRole"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      Then wait for 5 seconds
      Then logout


    @REG_R10_GUI_Customer_Onboarding_031
#      Success
    Scenario: Test to verify that the button SMS Commands  appears on SIM detail page only if it is enabled in customer
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "Customers"
      Then enter "Organisation" "USE_CustomerOnboarding_CustomerSMSCommand"
      When click on button "Search"
      When click on link "USE_CustomerOnboarding_CustomerSMSCommand"
      Then verify text "Overview"
      When click on tab "Details"
      When click on link "Connectivity services"
      When click on button "Edit" on position 3
      Then select radiobutton "Enabled" on position 1
      When click on button "Save"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      When click on link "USE_CustomerOnboarding_CustomerSMSCommandUser"
      When click menu "Devices" and submenu "All devices"
      Then enter textarea "IMSI" "USE_CustomerOnboarding_IMSICommand"
      When click on button "Search"
      When click on link "USE_CustomerOnboarding_IMSICommand"
      When click on tab "Operations"
      Then verify text "Send Command"
      When click on link "USE_CustomerOnboarding_CustomerSMSCommandUser"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      When click menu "Administration" and submenu "Customers"
      Then enter "Organisation" "USE_CustomerOnboarding_CustomerSMSCommand"
      When click on button "Search"
      When click on link "USE_CustomerOnboarding_CustomerSMSCommand"
      Then verify text "Overview"
      When click on tab "Details"
      When click on link "Connectivity services"
      When click on button "Edit" on position 3
      Then select radiobutton "Disabled" on position 1
      When click on button "Save"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      When click on link "USE_CustomerOnboarding_CustomerSMSCommandUser"
      When click menu "Devices" and submenu "All devices"
      Then enter textarea "IMSI" "USE_CustomerOnboarding_IMSICommand"
      When click on button "Search"
      When click on link "USE_CustomerOnboarding_IMSICommand"
      When click on tab "Operations"
      Then verify no text "Send Command"
      Then logout


    @REG_R10_GUI_Customer_Onboarding_032
#    Success
    Scenario: Test to verify the validity of short codes in customer configuration
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "Customers"
      Then enter "Organisation" "USE_CustomerOnboarding_Customer"
      When click on button "Search"
      Then verify text "USE_CustomerOnboarding_Customer"
      When click on link "USE_CustomerOnboarding_Customer"
      Then verify text "Overview"
      When click on tab "Details"
      When click on link "Connectivity services"
      When click on button "Edit" on position 3
      Then select radiobutton "Yes" on position 1
      Then enter "* Sender's number" "USE_CustomerOnboarding_SMSShortCode<4"
      When click on button "Save"
      Then verify text "Please insert between 4 and 15 digits, or 3 and 14 digits ending with *"
      Then enter "* Sender's number" "USE_CustomerOnboarding_SMSShortCode>15"
      When click on button "Save"
      Then verify text "Please insert between 4 and 15 digits, or 3 and 14 digits ending with *"
      Then enter "* Sender's number" "USE_CustomerOnboarding_SMSShortCodeAlphabets"
      When click on button "Save"
      Then verify text "Please insert between 4 and 15 digits, or 3 and 14 digits ending with *"
      Then enter "* Sender's number" "USE_CustomerOnboarding_SMSShorCodeValid"
      When click on button "Save"
      When click on button "Save"
      Then verify no text "Please insert between 4 and 15 digits, or 3 and 14 digits ending with *"
      Then logout

    @REG_R5_Customer_Onboarding_016
#    Success
    Scenario: Test to create a Device groups to create a cluster devices to enable the easier management and application of actions
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      When click on link "USE_CustomerOnboarding_CustomerAdministratorRole"
      When click on menu "Administration"
      When click on submenu "My organisation"
      Then verify text "Overview"
      When click on tab "Details"
      When click on link "Profiles and groups"
      Then verify
      | type  | value  |
      | button| Edit   |
      When click on button "Edit"
      Then verify text "+ Add group"
      When click on link "+ Add group"
      Then enter "* Name" "USE_CustomerOnboarding_GroupName"
      Then enter "Description" "USE_CustomerOnboarding_Description"
      When click on button "Save"
      Then verify text "Groups"
      Then verify text "USE_CustomerOnboarding_GroupName"
      Then logout


    @REG_R5_GUI_Customer_Onboarding_001
#      Success
    Scenario: Test to verify that OpCo user can create Customer in the Global M2M Platform
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "Customers"
      Then verify text "Results"
      When click on link "Create organisation"
      When click on button "Create customer"
      Then verify text "Customer name"
      Then verify text "Create customer"
      Then generate unique name starts with "USE_CustomerOnboarding_Customer" and store in "newCustomer"
      Then enter "* Customer name" "newCustomer"
      Then enter "* Customer description" "USE_CustomerOnboarding_CopyCustDes"
      When click on button "Next"
      Then verify text "Data service"
      Then verify text "Voice service"
      Then select radiobutton "Enabled" on position 9
      When click on button "Next"
      Then verify text "* Tariffs"
      Then select dropdown "* Tariffs" "USE_CustomerOnboarding_Tariffs"
      Then verify text "USE_CustomerOnboarding_Tariffs"
      When click on button "Next"
      Then verify text "Forecasting"
      When click on button "Next"
      Then verify text "You're about to create the customer"
      When click on button "Create"
      Then verify text "successfully created!"
      Then logout


    @REG_R5_GUI_Customer_Onboarding_002
#      Success, code is working fine but issue with M2M as certificate is not visible after saving
    Scenario: Test to verify that Opco User can create Customer Certificates in the Global M2M Platform
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "Customers"
      Then verify text "Organisation"
      Then enter "Organisation" "USE_CustomerOnboarding_Customer"
      When click on button "Search"
      Then verify text "USE_CustomerOnboarding_Customer"
      When click on link "USE_CustomerOnboarding_Customer"
      Then verify text "Overview"
      When click on tab "Details"
      Then verify text "Devices"
      When click on link "Web services"
      Then verify text "Customer server certificates"
      When click on button "Edit" on position 3
      When click on link "+ Add certificate"
      Then enter "* Name" "Server Certificate"
      Then enter "Description" "Certificate Description"
      When select upload button "Select file" and upload file "USE_CustomerOnboarding_Certificate"
#      Then enter "Password" "USE_CustomerOnboarding_CertificatePassword"
      When click on button "Save"
      Then verify text "USE_CustomerOnboarding_Certificate"
      Then logout



    @REG_R5_GUI_Customer_Onboarding_003
#    Success
    Scenario: Test to verify that the Opco user can Log In to one of their customers accounts and inherit the functionality of the Customer user
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      When click on link "USE_CustomerOnboarding_CustomerAdministratorRole"
      When click on menu "Administration"
      When click on submenu "My organisation"
      Then verify text "USE_CustomerOnboarding_Customer"
      When click on link "USE_CustomerOnboarding_CustomerAdministratorRole"
      When click on link "USE_CustomerOnboarding_OperatorAdministratorRole"
      Then logout


    @REG_R7_GUI_Customer_Onboarding_005
#      Success
    Scenario: Test to verify that OpCo user can create Customer with the ability to use the teardown device session capability in the Global M2M Platform
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "Customers"
      Then verify text "Results"
      When click on link "Create organisation"
      When click on button "Create customer"
      Then verify text "Customer name"
      Then verify text "Create customer"
      Then generate unique name starts with "USE_CustomerOnboarding_Customer" and store in "newCustomer"
      Then enter "* Customer name" "newCustomer"
      Then enter "* Customer description" "USE_CustomerOnboarding_CopyCustDes"
      When click on button "Next"
      Then verify text "Data service"
      Then select radiobutton "Enabled" on position 3
      Then verify text "Voice service"
      Then select radiobutton "Enabled" on position 9
      When click on button "Next"
      Then verify text "* Tariffs"
      Then select dropdown "* Tariffs" "USE_CustomerOnboarding_Tariffs"
      Then verify text "USE_CustomerOnboarding_Tariffs"
      When click on button "Next"
      Then verify text "Forecasting"
      When click on button "Next"
      Then verify text "You're about to create the customer"
      When click on button "Create"
      Then verify text "successfully created!"
      Then logout


    @REG_R7_GUI_Customer_Onboarding_006
#    Success
    Scenario: Test to verify that the Opco user can configure Web Service (API)
              throttling for a customer in the Global M2M Platform
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "Customers"
      Then verify text "Results"
      Then enter "Organisation" "USE_CustomerOnboarding_Customer"
      When click on button "Search"
      Then verify text "USE_CustomerOnboarding_Customer"
      When click on link "USE_CustomerOnboarding_Customer"
      Then verify text "Overview"
      When click on tab "Details"
      When click on link "Web services"
      Then verify text "API groups"
      When click on button "Edit" on position 1
      Then select dropdown "API groups" "USE_CustomerOnboarding_APIGroups"
      Then verify text "Remove All"
      When click on link "API groups"
      When click on link "Add new"
      Then enter values
      |rowname|colname|value|
      |API throttling|Web service|Select_Dropdown_submitReportRequest|
      |API throttling|Call limit|Enter_Value_30|
      |API throttling|Period|Select_Dropdown_minute|
      When click on button "Save"
      Then verify text "limited to"
      Then logout

    @REG_R7_GUI_Customer_Onboarding_008
#      Success
    Scenario: Test to verify that the Opco user can edit Web Service (API) throttling already configured for a customer in the Global M2M Platform
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "Customers"
      Then enter "Organisation" "USE_CustomerOnboarding_Customer"
      When click on button "Search"
      Then verify text "USE_CustomerOnboarding_Customer"
      When click on link "USE_CustomerOnboarding_Customer"
      Then verify text "Overview"
      When click on tab "Details"
      When click on link "Web services"
      Then verify text "API groups"
      When click on button "Edit" on position 1
      Then enter values
      |rowname|colname|value|
      |API throttling|Call limit|Enter_Value_40|
      |API throttling|Period|Select_Dropdown_hour|
      When click on button "Save"
      Then verify text "limited to"
      Then verify text "hour"
      Then logout

    @REG_R7_GUI_Customer_Onboarding_010
#    Success
    Scenario: Test to verify that system allows the OpCo user to  write the cutomer code in customer code Box on Log In As Customer screen
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "Customers"
      Then enter "Organisation" "USE_CustomerOnboarding_Customer"
      When click on button "Search"
      Then verify text "USE_CustomerOnboarding_Customer"
      When click on link "USE_CustomerOnboarding_Customer"
      Then verify text "Overview"
      When click on button "Edit"
      Then enter "Customer name" "USE_CustomerOnboarding_CustomerCodeEdit"
      When click on button "Save"
      Then verify text "USE_CustomerOnboarding_CustomerCodeEdit"
      Then logout

    @REG_R8_GUI_Customer_Onboarding_011
#      Success
    Scenario: Test to verify that while OpCo creating a customer can be set a Maximum number of SMS messages to store
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "Customers"
      Then verify text "Results"
      When click on link "Create organisation"
      When click on button "Create customer"
      Then verify text "Customer name"
      Then verify text "Create customer"
      Then generate unique name starts with "USE_CustomerOnboarding_Customer" and store in "newCustomer"
      Then enter "* Customer name" "newCustomer"
      Then enter "* Customer description" "USE_CustomerOnboarding_CopyCustDes"
      When click on button "Next"
      Then verify text "SMS service"
      Then select radiobutton "Enabled" on position 5
      Then enter "Maximum number of SMS messages" "USE_CustomerOnboarding_MaxNumberOfSMStoStore"
      Then verify text "Voice service"
      Then select radiobutton "Enabled" on position 9
      When click on button "Next"
      Then verify text "* Tariffs"
      Then select dropdown "* Tariffs" "USE_CustomerOnboarding_Tariffs"
      Then verify text "USE_CustomerOnboarding_Tariffs"
      When click on button "Next"
      Then verify text "Forecasting"
      When click on button "Next"
      Then verify text "You're about to create the customer"
      When click on button "Create"
      Then verify text "successfully created!"
      Then logout


    @REG_R9_GUI_Customer_Onboarding_015
    Scenario: Test to verify whether Opco User can able to Delete existing Customer Certificate of the Customer via GUI
      Given test case starts
      Given browser is open
      Then login
      Then verify text "M2M Dashboard"
      When click menu "Administration" and submenu "Customers"
      Then verify text "Organisation"
      Then enter "Organisation" "USE_CustomerOnboarding_Customer"
      When click on button "Search"
      Then verify text "USE_CustomerOnboarding_Customer"
      When click on link "USE_CustomerOnboarding_Customer"
      Then verify text "Overview"
      When click on tab "Details"
      Then verify text "Devices"
      When click on link "Web services"
      Then verify text "Customer server certificates"
      When click on button "Edit" on position 3
#     Add code for deletion-----later
      When click on button "Save"
      Then wait for 5 seconds
      Then logout

