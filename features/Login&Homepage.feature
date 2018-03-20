@Login&Homepage
Feature: Login & Homepage and DMB - 180

  @REG_R5_GUI_Login_and_Homepage_001
  Scenario: verify that Home Page is displayed when Platform User logs in to the Global M2M Platform
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_User_OperatorAdministratorRole"
    When click on link "USE_User_OperatorAdministratorRole"
    Then verify text "USE_User_PlatformAdministratorRole"
    When click on link "USE_User_PlatformAdministratorRole"
    Then verify text "M2M Dashboard"
    Then verify text "M2M portal Release"
    # Version number is PORTAL_R2.5.1P4
    Then report "Home Page is displayed when Platform User logs in to the Global M2M Platform"
    Then logout

  @REG_R5_GUI_Login_and_Homepage_002
  Scenario: verify that Home Page is displayed when Reseller User logins to the Global M2M Platform
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_User_OperatorAdministratorRole"
    When click on link "USE_User_OperatorAdministratorRole"
    Then verify text "USE_User_ResellerAdministratorRole"
    When click on link "USE_User_ResellerAdministratorRole"
    Then verify text "M2M Dashboard"
    Then verify text "M2M portal Release"
    # Version number is PORTAL_R2.5.1P4
    Then report "Home Page is displayed when Reseller User logs in to the Global M2M Platform"
    Then logout

  @REG_R5_GUI_Login_and_Homepage_003
  Scenario: verify that Home Page is displayed when OpCo User logins to the Global M2M Platform
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_User_OperatorAdministratorRole"
    Then verify text "M2M Dashboard"
    Then verify text "M2M portal Release"
    # Version number is PORTAL_R2.5.1P4
    Then report "Home Page is displayed when Reseller User logs in to the Global M2M Platform"
    Then logout

  @REG_R5_GUI_Login_and_Homepage_004
  Scenario: verify that Home Page is displayed when Customer User logins to the Global M2M Platform
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_User_OperatorAdministratorRole"
    When click on link "USE_User_OperatorAdministratorRole"
    Then verify text "USE_User_CustomerAdministratorRole"
    When click on link "USE_User_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click on link "M2M"
    Then report "Successfully displayed homepage with customer user overview and summary information about the account"
    When click menu "Devices" and submenu "All devices"
    Then verify text "Search"
    Then verify text "IMSI"
    Then verify text "ICCID"
    Then verify text "Voice MSISDN"
    Then report "Search function for SIMs on the basis of IMSI/ICCID/MSISDN is displayed on the system"
    Then report "Home Page is displayed when Customer User logins to the Global M2M Platform"
    Then logout

  @REG_R5_GUI_Login_and_Homepage_005
  Scenario: verify that System promts Platform User to change Password when Users account is flagged as requiring a password change
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_User_OperatorAdministratorRole"
    When click on link "USE_User_OperatorAdministratorRole"
    Then verify text "USE_User_PlatformAdministratorRole"
    When click on link "USE_User_PlatformAdministratorRole"
    When click menu "Administration" and submenu "Users"
    Then enter "Username" "USE_User_PlatformUsername"
    When click on button "Search"
    When click on link "USE_User_PlatformUsername"
    Then verify text "My settings"
    Then verify text "Security"
    When click on button "Edit" on Position 2
    Then verify text "I want to change"
    Then select check box "Password"
    Then enter "Current Password" "USE_User_CurrentPassword"
    Then enter "New Password" "USE_User_NewPassword"
    Then enter "Confirm Password" "USE_User_NewPassword"
    When click on button "Save"
    Then verify text "Settings successfully updated"
    Then report "Reseller User password updated successfully"
    Then logout

  @REG_R5_GUI_Login_and_Homepage_006
  Scenario: verify that System promts Reseller User to change Password when Users account is flagged as requiring a password change
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_User_OperatorAdministratorRole"
    When click on link "USE_User_OperatorAdministratorRole"
    Then verify text "USE_User_PlatformAdministratorRole"
    When click on link "USE_User_PlatformAdministratorRole"
    When click menu "Administration" and submenu "Users"
    Then enter "Username" "USE_User_ResellerUsername"
    When click on button "Search"
    When click on link "USE_User_ResellerUsername"
    Then verify text "My settings"
    Then verify text "Security"
    When click on button "Edit" on Position 2
    Then verify text "I want to change"
    Then select check box "Password"
    Then enter "Current Password" "USE_User_CurrentPassword"
    Then enter "New Password" "USE_User_NewPassword"
    Then enter "Confirm Password" "USE_User_NewPassword"
    When click on button "Save"
    Then verify text "Settings successfully updated"
    Then report "Reseller User password updated successfully"
    Then logout

  @REG_R5_GUI_Login_and_Homepage_007
  Scenario: verify that System promts Customer User to change Password when Users account is flagged as requiring a password change
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_User_OperatorAdministratorRole"
    When click on link "USE_User_OperatorAdministratorRole"
    Then verify text "USE_User_PlatformAdministratorRole"
    When click on link "USE_User_PlatformAdministratorRole"
    When click menu "Administration" and submenu "Users"
    Then enter "Username" "USE_User_CustomerUsername"
    When click on button "Search"
    When click on link "USE_User_CustomerUsername"
    Then verify text "My settings"
    Then verify text "Security"
    When click on button "Edit" on Position 2
    Then verify text "I want to change"
    Then select check box "Password"
    Then enter "Current Password" "USE_User_CurrentPassword"
    Then enter "New Password" "USE_User_NewPassword"
    Then enter "Confirm Password" "USE_User_NewPassword"
    When click on button "Save"
    Then verify text "Settings successfully updated"
    Then report "Customer User password updated successfully"
    Then logout

  @REG_R7_GUI_Login_and_Homepage_018
  Scenario: verify that GDSP logs the IP-Address from which OpCo User access the system
    Given test case starts
    Given browser is open
    Then login
    When click menu "Tools" and submenu "API transactions"
    Then verify text "Keyword"
    Then enter "Keyword" "USE_User_Keyword"
    Then verify text "Search"
    When click on button "Search"
    When click on button "hamBurgerBefore"
    When click on button "IP address"
    When click on button "Parent organisation"
    When click on button "API user"
    When click on button "hamBurgerAfter"
    When click on button "Search"
    Then verify text "IP address"
    Then get value of "IP address" of table based on below criteria and store in "storeValue"
    |value|
    |PPVGE|
    Then verify if "storeValue" "not equal" " "
    Then report "IP-Address from which OpCo user access the system is logged with the user for "guiGetVfOpCoDetails" operation"
    Then logout

  @REG_R7_GUI_Login_and_Homepage_020
  Scenario: verify that GDSP logs the IP-Address from which Customer User access the system
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_User_OperatorAdministratorRole"
    When click on link "USE_User_OperatorAdministratorRole"
    Then verify text "USE_User_CustomerAdministratorRole"
    When click on link "USE_User_CustomerAdministratorRole"
    When click menu "Tools" and submenu "API transactions"
    Then verify text "Keyword"
    Then enter "Keyword" "USE_User_Keyword"
    Then verify text "Search"
    When click on button "Search"
    When click on button "hamBurgerBefore"
    When click on button "IP address"
    When click on button "hamBurgerAfter"
    When click on button "Search"
    Then verify text "IP address"
    Then get value of "IP address" of table based on below criteria and store in "storeValue"
    |value|
    |PPVGE|
    Then verify if "storeValue" "not equal" " "
    Then report "IP-Address from which Customer user access the system is logged with the user id"
    Then logout


  @REG_R10.0_GUI_DMB_180_006
  Scenario: verify that customer user is created from Reseller login is unique in a case insensitive manner
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_User_OperatorAdministratorRole"
    When click on link "USE_User_OperatorAdministratorRole"
    Then verify text "USE_User_PlatformAdministratorRole"
    When click on link "USE_User_PlatformAdministratorRole"
    When click menu "Administration" and submenu "Users"
#    When click on button "Create user"
#    #Then verify text "Personal"
#    Then verify text "Create user"
#    When click on input "* Organisation" and enter value "USE_User_ResellerCustomer"
#    Then enter "* Username" "customerusercase@mailinator.com"
#    Then enter "* First Name" "customerusercase"
#    Then enter "* Last Name" "kumar"
#    #Then enter "* Description" "platform10"
#    Then enter "* Mobile" "+447380757522"
#    #Then enter "* Email" "platform@manage.com"
#    Then select dropdown "* Role" "Customer Operations"
#    When click on button "Next"
#    Then verify text "Please confirm the following data."
    When click on button "Create user"
    Then wait for 5 seconds
    When click on menu "Administration"
    #When click on menu "API users"
    When click on menu "Users"
    Then verify text "Users"
    #When click on button "Create API user"
    When click on button "Create user"
    #Then verify text "Personal"
    Then verify text "Create user"
    When click on input "* Organisation" and enter value "3E2ecustomer"
    Then enter "* Username" "CUSTOMERCASE@mailinator.com"
    Then enter "* First Name" "CUSTOMERUSERCASE"
    Then enter "* Last Name" "kumar"
    #Then enter "* Description" "platform10"
    Then enter "* Mobile" "+447380757522"
    #Then enter "* Email" "platform@manage.com"
    Then select dropdown "* Role" "Customer Operations"
    When click on button "Next"
    Then verify text "The username is already registered in M2M Self Care Portal."
    Then report "The username is already registered in M2M Self Care Portal is displayed"

  @REG_R10.0_GUI_DMB_180_006
  Scenario: verify that opco user is created from platform login is unique in a case insensitive manner
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_User_OperatorAdministratorRole"
    When click on link "USE_User_ResellerAdministratorRole"
    When click on menu "Administration"
    When click on menu "API users"
    Then verify text "Results"
    When click on button "Create API user"
    Then verify text "Personal"
    Then enter "* Username" "platform"
    Then enter "* Description" "platform10"
    Then enter "* Mobile" "USE_CustomerL&H_Mobile"
    Then enter "* Email" "platform@manage.com"
    Then verify text "System"
    Then select dropdown "* User type" "USE_CustomerL&H_Usertype1"
    Then select dropdown "* Access rights" "USE_CustomerL&H_Accessrights"
    Then select dropdown "* API groups" "USE_CustomerL&H_APIgroups1"
    Then verify text "Security"
    Then enter "* Password" "USE_CustomerL&H_Password"
    When click on button "Next"
    When click on button "Create"
    When click on button "Go to API users"
    When click on button "Create API user"
    Then verify text "Personal"
    Then enter "* Username" "Platform"
    Then enter "* Description" "Platform20"
    Then enter "* Mobile" "USE_CustomerL&H_Mobile"
    Then enter "* Email" "Platform@tech.com"
    Then verify text "System"
    Then select dropdown "* User type" "USE_CustomerL&H_Usertype1"
    Then select dropdown "* Access rights" "USE_CustomerL&H_Accessrights"
    Then select dropdown "* API groups" "USE_CustomerL&H_APIgroups1"
    Then verify text "Security"
    Then enter "* Password" "USE_CustomerL&H_Password"
    When click on button "Next"
    When click on button "Create"
    Then verify text "User Name must be unique"
    When click on menu "Administration"
    When click on menu "API users"
    Then verify text "Results"
    When click on button "Create API user"
    Then verify text "Personal"
    Then enter "* Username" "PLATFORM"
    Then enter "* Description" "PLATFORM30"
    Then enter "* Mobile" "USE_CustomerL&H_Mobile"
    Then enter "* Email" "PLATFORM@tech.com"
    Then verify text "System"
    Then select dropdown "* User type" "USE_CustomerL&H_Usertype1"
    Then select dropdown "* Access rights" "USE_CustomerL&H_Accessrights"
    Then select dropdown "* API groups" "USE_CustomerL&H_APIgroups1"
    Then verify text "Security"
    Then enter "* Password" "USE_CustomerL&H_Password"
    When click on button "Next"
    When click on button "Create"
    Then verify text "User Name must be unique"
    When click on menu "Administration"
    When click on menu "API users"
    Then verify text "Results"
    When click on button "Create API user"
    Then verify text "Personal"
    Then enter "* Username" "PlatForm"
    Then enter "* Description" "PlatForm40"
    Then enter "* Mobile" "USE_CustomerL&H_Mobile"
    Then enter "* Email" "PlatForm@tech.com"
    Then verify text "System"
    Then select dropdown "* User type" "USE_CustomerL&H_Usertype1"
    Then select dropdown "* Access rights" "USE_CustomerL&H_Accessrights"
    Then select dropdown "* API groups" "USE_CustomerL&H_APIgroups1"
    Then verify text "Security"
    Then enter "* Password" "USE_CustomerL&H_Password"
    When click on button "Next"
    When click on button "Create"
    Then verify text "User Name must be unique"
    When click on menu "Administration"
    When click on menu "API users"
    Then verify text "Results"
    When click on button "Create API user"
    Then verify text "Personal"
    Then enter "* Username" "PlatFORM"
    Then enter "* Description" "PlatFORM50"
    Then enter "* Mobile" "USE_CustomerL&H_Mobile"
    Then enter "* Email" "PlatFORM@tech.com"
    Then verify text "System"
    Then select dropdown "* User type" "USE_CustomerL&H_Usertype1"
    Then select dropdown "* Access rights" "USE_CustomerL&H_Accessrights"
    Then select dropdown "* API groups" "USE_CustomerL&H_APIgroups1"
    Then verify text "Security"
    Then enter "* Password" "USE_CustomerL&H_Password"
    When click on button "Next"
    When click on button "Create"
    Then verify text "User Name must be unique"
    Then logout


  @REG_R10.0_GUI_DMB_180_001
  Scenario: verify that opco user is created from platform login is unique in a case insensitive manner
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_User_OperatorAdministratorRole"
    When click on link "USE_User_PlatformAdministratorRole"
    When click on menu "Administration"
    When click on menu "API users"
    When click on button "Create API user"
    Then verify text "Personal"
    Then enter "* Username" "platform"
    Then enter "* Description" "platform10"
    Then enter "* Mobile" "USE_CustomerL&H_Mobile"
    Then enter "* Email" "platform@manage.com"
    Then verify text "System"
    Then select dropdown "* User type" "USE_CustomerL&H_Usertype2"
    When click on input "* Organisation" and enter value "USE_CustomerL&H_OrgValue"
    Then select dropdown "* Access rights" "USE_CustomerL&H_Accessrights"
    Then select dropdown "* API groups" "USE_CustomerL&H_APIgroups2"
    Then verify text "Security"
    Then enter "* Password" "USE_CustomerL&H_Password"
    When click on button "Next"
    When click on button "Create"
    When click on button "Go to API users"
    When click on button "Create API user"
    Then verify text "Personal"
    Then enter "* Username" "Platform"
    Then enter "* Description" "Platform20"
    Then enter "* Mobile" "USE_CustomerL&H_Mobile"
    Then enter "* Email" "Platform@tech.com"
    Then verify text "System"
    Then select dropdown "* User type" "USE_CustomerL&H_Usertype2"
    When click on input "* Organisation" and enter value "USE_CustomerL&H_OrgValue"
    Then select dropdown "* Access rights" "USE_CustomerL&H_Accessrights"
    Then select dropdown "* API groups" "USE_CustomerL&H_APIgroups2"
    Then verify text "Security"
    Then enter "* Password" "USE_CustomerL&H_Password"
    When click on button "Next"
    Then verify text "Platform already exists."
    Then verify text "Please choose a different username."
    Then enter "* Username" "PLATFORM"
    Then enter "* Description" "PLATFORM30"
    Then verify text "Security"
    Then enter "* Password" "USE_CustomerL&H_Password"
    When click on button "Next"
    Then verify text "PLATFORM already exists."
    Then verify text "Please choose a different username."
    Then enter "* Username" "PlatForm"
    Then enter "* Description" "PlatForm40"
    Then verify text "Security"
    Then enter "* Password" "USE_CustomerL&H_Password"
    When click on button "Next"
    Then verify text "PlatForm already exists."
    Then verify text "Please choose a different username."
    Then enter "* Username" "PlatFORM"
    Then enter "* Description" "PlatFORM50"
    Then verify text "Security"
    Then enter "* Password" "USE_CustomerL&H_Password"
    When click on button "Next"
    Then verify text "PlatFORM already exists."
    Then verify text "Please choose a different username."
    Then report "An error message "An error message "Please choose a different username" is displayed"
    Then logout

    























