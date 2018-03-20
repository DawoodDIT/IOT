@Service_Profile
Feature: Service Profile Create and Edit and Delete and View and Copy

  @REG_R5_GUI_Create_CSP_001
  Scenario: verify that an OpCo Admin can create a new Service Profile on Global M2M platform
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Administration" and submenu "Service profiles"
    Then generate unique name starts with "e2e123_" and store in "e2e123"
    Then enter "Service Profile" "e2e123"
    When click on button "Search"
    Then verify text "No results were found"
    When click on button "Create service profile"
    Then verify text "Create service profile"
    Then verify text "Basic information"
    When click on input "* Organisation" and enter value "USE_CustServiceProfile_OrgValue"
    Then enter "* Service profile name" "USE_CustServiceProfile_SPname"
    Then select dropdown "* Provisioning profile" "USE_CustServiceProfile_dropdownvalue"
    Then verify text "* Tariff"
    Then select dropdown "PLMN list" "PLMN_Staging_R10"
    When click on button "Next"
    Then verify text "SIM and IMEI"
    Then verify text "SIM test mode"
    Then enter "* Volume limit" "90"
    Then enter "* Expiration time limit" "80"
    Then enter "* Usage time limit" "30"
    Then enter "* SMS wakeup limit" "20"
    Then enter "* SMS payload limit" "20"
    Then enter "* SMS MO limit" "20"
    Then verify text "IMEI matching"
    Then select dropdown "* Match rule" "Match IMEI"
    When click on button "Next"
    Then verify text "Services"
    Then verify text "SMS MT service"
    Then enter "* Validity period" "30"
    When click on button "Next"
    Then verify text "Confirmation"
    When click on button "Create"
    When click on button "Go to service profiles"
    Then enter "Service Profile" "e2e123"
    When click on button "Search"
    Then verify text "e2e123"
    Then logout

  @REG_R5_GUI_Create_CSP_002
  Scenario: verify that an OpCo Admin can create a new Service Profile on Global M2M platform, when tariff disabled flag is set to Y
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Administration" and submenu "Service profiles"
    Then generate unique name starts with "CreateSP_" and store in "e2e123"
    Then enter "Service Profile" "e2e123"
    When click on button "Search"
    Then verify text "No results were found"
    When click on button "Create service profile"
    Then verify text "Create service profile"
    Then verify text "Basic information"
    When click on input "* Organisation" and enter value "USE_CustServiceProfile_OrgValue"
    Then enter "* Service profile name" "USE_CustServiceProfile_SPname"
    Then select dropdown "* Provisioning profile" "USE_CustServiceProfile_dropdownvalue"
    Then verify text "* Tariff"
    Then select dropdown "PLMN list" "PLMN_creation"
    Then select radiobutton "Disabled"
    When click on button "Next"
    Then verify text "SIM and IMEI"
    Then verify text "SIM test mode"
    Then enter "* Volume limit" "90"
    Then enter "* Expiration time limit" "80"
    Then enter "* Usage time limit" "30"
    Then enter "* SMS wakeup limit" "20"
    Then enter "* SMS payload limit" "20"
    Then enter "* SMS MO limit" "20"
    Then verify text "IMEI matching"
    Then select dropdown "* Match rule" "Match IMEI"
    When click on button "Next"
    Then verify text "Services"
    Then verify text "SMS MT service"
    Then enter "* Validity period" "30"
    When click on button "Next"
    Then verify text "Confirmation"
    When click on button "Create"
    When click on button "Go to service profiles"
    Then enter "Service Profile" "100"
    When click on button "Search"
    Then verify text "100"
    Then logout

  @REG_R5_GUI_Create_CSP_005
  Scenario: verify that customer user is able to download a CSV containing information for all of their Service Profiles
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_User_OperatorAdministratorRole"
    When click on link "USE_User_CustomerAdministratorRole"
    Then verify text "Administration"
    When click menu "Administration" and submenu "Service profiles"
    Then verify text "Results"
    When click on link "Export"
    When click on button "CSV"
    Then verify filetext "USE_CustServiceProfile_Filetext" in downloaded file "csv"
    Then logout

  @REG_R8_GUI_Create_CSP_006
  Scenario: verify that the SMS MO routing information is automatically updated when the user changes the outbound SMS MO API configuration
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Administration" and submenu "Service profiles"
    Then verify text "Results"
    Then enter "Service Profile" "USE_CustServiceProfile_ServiceProfile"
    When click on button "Search"
    When click on link "USE_CustServiceProfile_ServiceProfile"
    Then verify text "Service profile"
    When click on link "Details"
    When click on link "Connectivity services"
    Then verify text "SMS MT service"
    Then verify text "SMS MO service"
    When click on button "Edit" on Position 2
    Then select dropdown "SMS MO" "deliverSMS"
    Then enter "* URL" "USE_CustServiceProfile_URL"
    Then enter "* Username" "USE_CustServiceProfile_Username"
    Then enter "* Password" "USE_CustServiceProfile_Password"
    When click on button "Save"
#  Mobile part- nitiate an SMS session from a device and verify on application server that SMS is received
#  Verify that SMS-MO routing information is automatically updated when the user changes the outbound SMS-MO API configuration
    Then logout

  @REG_R5_GUI_Edit_CSP_001
  Scenario: verify that an OpCo Admin can Edit an existing Service Profile on Global M2M platform
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Administration" and submenu "Service profiles"
    Then verify text "Results"
    Then enter "Service Profile" "USE_CustServiceProfile_ServiceProfileName"
    When click on button "Search"
    When click on link "USE_CustServiceProfile_ServiceProfileName"
    Then verify text "Service profile"
    Then verify text "Overview"
    Then verify text "Information"
    When click on button "Edit" on Position 1
    Then enter "Name" "USE_CustServiceProfile_ServiceProfileName"
    Then enter "Description" "USE_CustServiceProfile_Description1"
    Then select dropdown "Provisioning profile" "USE_CustServiceProfile_dropdownvalue"
    When click on button "Save"
    When click on tab "Details"
    Then verify text "SIM and IMEI"
    Then verify text "SIM state"
    When click on button "Edit" on Position 1
    Then select dropdown "Default State" "Active.Ready"
    When click on button "Save"
    Then verify text "Active.Ready"
    When click on link "Contract"
    Then verify text "Billing"
    When click on button "Edit" on Position 1
    Then verify text "Save"
    Then select dropdown "* Tariff" "VF-ONLY-TEST"
    When click on button "Save"
    Then verify text "Settings successfully updated"
    Then logout

  @REG_R5_GUI_Edit_CSP_003
  Scenario: verify that an OpCo Admin can Edit an existing Service Profile on Global M2M platform when invalid details are entered
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Administration" and submenu "Service profiles"
    Then verify text "Results"
    Then enter "Service Profile" "USE_CustServiceProfile_ServiceProfileName"
    When click on button "Search"
    When click on link "USE_CustServiceProfile_ServiceProfileName"
    Then verify text "Service profile"
    Then verify text "Overview"
    Then verify text "Information"
    When click on button "Edit"
    Then enter "Name" "%%%"
    Then enter "Description" "USE_CustServiceProfile_Description1"
    Then select dropdown "Provisioning profile" "USE_CustServiceProfile_dropdownvalue"
    When click on button "Save"
    Then verify text "Please enter only alphabetical characters, numbers, spaces and/or -_+."
    Then enter "Name" "e2enew"
    When click on button "Save"
    When click on tab "Details"
    Then verify text "SIM and IMEI"
    Then verify text "SIM state"
    When click on button "Edit" on Position 1
    Then select dropdown "Default State" "Active.Ready"
    When click on button "Save"
    Then verify text "Active.Ready"
    When click on link "Contract"
    Then verify text "Billing"
    When click on button "Edit" on Position 1
    Then verify text "Save"
    Then select dropdown "* Tariff" "VF-ONLY-TEST"
    When click on button "Save"
    Then verify text "Settings successfully updated"
    Then logout

  @REG_R7_GUI_Delete_CSP_001
  Scenario: verify that Customer user can delete the Existing Customer Service Profile
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_User_OperatorAdministratorRole"
    When click on link "USE_User_CustomerAdministratorRole"
    When click menu "Administration" and submenu "Service profiles"
    Then verify text "Results"
    Then enter "Service Profile" "USE_CustServiceProfile_ServiceProfile2"
    When click on button "Search"
    When click on link "USE_CustServiceProfile_ServiceProfile2"
    Then report "There is no Delete button for the Service Profile need to be deleted"
    Then logout

  @REG_R10_GUI_View_CSP_001
  Scenario: verify that any CSP can be searched using filter and the field can be sorted in ascending and descending order.
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Administration" and submenu "Service profiles"
    Then verify text "Results"
    Then enter "Service Profile" "USE_CustServiceProfile_ServiceProfile3"
    When click on button "Search"
    Then select dropdown "Show" "20"
    Then verify text "Results"
    Then report "The CSPs been sorted in both ascending and descending order"
    Then logout

  @REG_R5_GUI_Copy_CSP_001
  Scenario: verify that an OpCo Admin can copy Service Profile on Global M2M platform
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Administration" and submenu "Service profiles"
    Then verify text "Results"
    When click on button "Create service profile"
    Then verify text "Create service profile"
    Then verify text "Basic information"
    When click on input "* Organisation" and enter value "USE_CustServiceProfile_OrgValue"
    Then generate unique name starts with "CopyCustomerSP_" and store in "100"
    Then enter "* Service profile name" "USE_CustServiceProfile_SPname"
    Then select radiobutton "Yes"
    Then select dropdown "* Copy settings from" "Auto1_CSP_IMEI"
    Then select dropdown "* Provisioning profile" "USE_CustServiceProfile_dropdownvalue"
    When click on button "Next"
    Then verify text "SIM and IMEI"
    When click on button "Next"
    Then verify text "Services"
    Then verify text "SMS MT service"
    Then enter "* Validity period" "30"
    When click on button "Next"
    Then verify text "Confirmation"
    When click on button "Create"
    When click on button "Go to service profiles"
    Then enter "Service Profile" "100"
    When click on button "Search"
    Then verify text "100"
    Then logout

  @REG_R5_GUI_Copy_CSP_002
  Scenario: verify that an OpCo Admin can copy Service Profile on Global M2M platform when invalid details entered
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Administration" and submenu "Service profiles"
    Then verify text "Results"
    When click on button "Create service profile"
    Then verify text "Create service profile"
    Then verify text "Basic information"
    When click on input "* Organisation" and enter value "USE_CustServiceProfile_OrgValue"
    Then generate unique name starts with "CopyCustomerSP_" and store in "100"
    Then enter "* Service profile name" "USE_CustServiceProfile_SPname"
    Then select radiobutton "Yes"
    Then select dropdown "* Copy settings from" "0000"
    Then select dropdown "* Provisioning profile" "USE_CustServiceProfile_dropdownvalue"
    When click on button "Next"
    Then verify text "This is a mandatory field"
    Then select dropdown "* Copy settings from" "Auto1_CSP_IMEI"
    When click on button "Next"
    Then verify text "SIM and IMEI"
    When click on button "Next"
    Then verify text "Services"
    Then verify text "SMS MT service"
    Then enter "* Validity period" "30"
    When click on button "Next"
    Then verify text "Confirmation"
    When click on button "Create"
    When click on button "Go to service profiles"
    Then enter "Service Profile" "100"
    When click on button "Search"
    Then verify text "100"
    Then logout

  @REG_R5_GUI_Copy_CSP_003
  Scenario: verify that an OpCo Admin can copy Service Profile on Global M2M platform when user aborts copy of service profile
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Administration" and submenu "Service profiles"
    Then verify text "Results"
    When click on button "Create service profile"
    Then verify text "Create service profile"
    Then verify text "Basic information"
    When click on input "* Organisation" and enter value "USE_CustServiceProfile_OrgValue"
    Then generate unique name starts with "CopyCustomerSP_" and store in "100"
    Then enter "* Service profile name" "USE_CustServiceProfile_SPname"
    Then select radiobutton "Yes"
    Then select dropdown "* Copy settings from" "Auto1_CSP_IMEI"
    Then select dropdown "* Provisioning profile" "USE_CustServiceProfile_dropdownvalue"
    When click on button "Cancel"
    Then verify text "Results"
    Then logout







    















































