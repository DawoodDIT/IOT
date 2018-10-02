@Login&Homepage
Feature: Login & Homepage and DMB - 180

  @REG_R5_GUI_Login_and_Homepage_001
  Scenario: verify that Home Page is displayed when Platform User logs in to the Global M2M Platform
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_LoginPage_OperatorAdministratorRole"
    When click on link "USE_LoginPage_OperatorAdministratorRole"
    Then verify text "USE_LoginPage_PlatformAdministratorRole"
    When click on link "USE_LoginPage_PlatformAdministratorRole"
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
    Then verify text "USE_LoginPage_OperatorAdministratorRole"
    When click on link "USE_LoginPage_OperatorAdministratorRole"
    Then verify text "USE_LoginPage_ResellerAdministratorRole"
    When click on link "USE_LoginPage_ResellerAdministratorRole"
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
    Then verify text "USE_LoginPage_OperatorAdministratorRole"
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
    Then verify text "USE_LoginPage_OperatorAdministratorRole"
    When click on link "USE_LoginPage_OperatorAdministratorRole"
    Then verify text "USE_LoginPage_CustomerAdministratorRole"
    When click on link "USE_LoginPage_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click on link "M2M"
    Then report "Successfully displayed homepage with customer user overview and summary information about the account"
    When click menu "Devices" and submenu "Devices"
    Then verify text "Search"
    Then verify text "IMSI"
    Then verify text "ICCID"
    Then verify text "MSISDN"
    Then report "Search function for SIMs on the basis of IMSI/ICCID/MSISDN is displayed on the system"
    Then report "Home Page is displayed when Customer User logins to the Global M2M Platform"
    Then logout

  @REG_R5_GUI_Login_and_Homepage_005
  Scenario: verify that System promts Platform User to change Password when Users account is flagged as requiring a password change
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_LoginPage_OperatorAdministratorRole"
    When click on link "USE_LoginPage_OperatorAdministratorRole"
    Then verify text "USE_LoginPage_PlatformAdministratorRole"
    When click on link "USE_LoginPage_PlatformAdministratorRole"
    When click menu "Administration" and submenu "Users"
    Then enter "Username" "USE_LoginPage_PlatformUsername"
    When click on button "Search"
    When click on link "USE_LoginPage_PlatformUsername"
    Then verify text "Security"
    When click on link "Reset security details"
    Then verify text "You're about to reset the password and security question of the user Platform User."
    When click on button "Reset"
    Then verify text "An email has been sent to sarabk.703@gmail.com with a link that will allow Platform User to reset its security details within 24h."
    When click on link "See user detail"
    Then verify text "User security details have been reset"
    Then logout

  @REG_R5_GUI_Login_and_Homepage_006
  Scenario: verify that System promts Reseller User to change Password when Users account is flagged as requiring a password change
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_LoginPage_OperatorAdministratorRole"
    When click on link "USE_LoginPage_OperatorAdministratorRole"
    Then verify text "USE_LoginPage_PlatformAdministratorRole"
    When click on link "USE_LoginPage_PlatformAdministratorRole"
    When click menu "Administration" and submenu "Users"
    Then enter "Username" "USE_LoginPage_ResellerUsername"
    When click on button "Search"
    When click on link "USE_LoginPage_ResellerUsername"
    Then verify text "Security"
    When click on link "Reset security details"
    Then verify text "You're about to reset the password and security question of the user Reseller User."
    When click on button "Reset"
    Then verify text "An email has been sent to kaptester715@gmail.com with a link that will allow Reseller User to reset its security details within 24h."
    When click on link "See user detail"
    Then verify text "User security details have been reset"
    Then logout

  @REG_R5_GUI_Login_and_Homepage_007
  Scenario: verify that System promts Customer User to change Password when Users account is flagged as requiring a password change
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_LoginPage_OperatorAdministratorRole"
    When click on link "USE_LoginPage_OperatorAdministratorRole"
    Then verify text "USE_LoginPage_PlatformAdministratorRole"
    When click on link "USE_LoginPage_PlatformAdministratorRole"
    When click menu "Administration" and submenu "Users"
    Then enter "Username" "USE_LoginPage_CustomerUsername"
    When click on button "Search"
     When click on link "USE_LoginPage_CustomerUsername"
    Then verify text "Security"
    When click on link "Reset security details"
    Then verify text "You're about to reset the password and security question of the user Automation Test."
    When click on button "Reset"
    Then verify text "An email has been sent to kaptester715+12@gmail.com with a link that will allow Automation Test to reset its security details within 24h."
    When click on link "See user detail"
    Then verify text "User security details have been reset"
    Then logout

  @REG_R7_GUI_Login_and_Homepage_018
  Scenario: verify that GDSP logs the IP-Address from which OpCo User access the system
    Given test case starts
    Given browser is open
    Then login
    When click menu "Tools" and submenu "API transactions"
    Then verify text "Keyword"
    Then enter "Keyword" "USE_LoginPage_Keyword"
    Then verify text "Search"
    When click on button "Search"
#    When click on button "hamBurgerBefore"
#    When click on button "IP address"
#    When click on button "Parent organisation"
#    When click on button "API user"
#    When click on button "hamBurgerAfter"
#    When click on button "Search"
    #Then get value of "IP address" of table based on below criteria and store in "storeValue"
#    |value|
#    |platform|
    Then verify text "IP address"
    Then verify value of "IP address" is "127.0.0.1" of table based on below criteria
        |Operation|
        |guiGetTransactionDetails|

    Then logout

  @REG_R7_GUI_Login_and_Homepage_020
  Scenario: verify that GDSP logs the IP-Address from which Customer User access the system
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_LoginPage_OperatorAdministratorRole"
    When click on link "USE_LoginPage_OperatorAdministratorRole"
    Then verify text "USE_LoginPage_CustomerAdministratorRole"
    When click on link "USE_LoginPage_CustomerAdministratorRole"
    When click menu "Tools" and submenu "API transactions"
    Then verify text "Keyword"
    Then enter "Keyword" "USE_LoginPage_Keyword1"
    Then verify text "Search"
    When click on button "Search"
#    When click on button "hamBurgerBefore"
#    When click on button "IP address"
#    When click on button "hamBurgerAfter"
#    When click on button "Search"
    Then verify text "IP address"
    Then verify value of "IP address" is "127.0.0.1" of table based on below criteria
        |Operation|
        |guiGetCustomerProfileDetailsv2|
    Then logout



  @REG_R10.0_GUI_DMB_180_006
  Scenario: verify that customer user is created from Reseller login is unique in a case insensitive manner
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_LoginPage_OperatorAdministratorRole"
    When click on link "USE_LoginPage_ResellerAdministratorRole"
    When click on menu "Administration"
    When click on menu "API users"
    Then verify text "Results"
    When click on button "Create API user"
    Then verify text "Personal"
    Then enter "* Username" "AUTOu_140918125520"
    Then enter "* Description" "Reseller35"
    Then enter "* Mobile" "USE_LoginPage_Mobile"
    Then enter "* Email" "platform@manage.com"
    Then verify text "System"
    Then select dropdown "* User type" "USE_LoginPage_Usertype1"
    When click on input "* Organisation" and enter value "USE_LoginPage_Organisation"
    Then select dropdown "* Access rights" "USE_LoginPage_Accessrights"
    Then select dropdown "* API groups" "USE_LoginPage_APIgroups1"
    Then verify text "Security"
    Then enter "* Password" "USE_LoginPage_Password"
    When click on button "Next"
    Then verify text "AUTOu_140918125520 already exists."
    Then wait for 20 seconds
    Then logout

  @REG_R10.0_GUI_DMB_180_006_1
  Scenario: verify that opco user is created from platform login is unique in a case insensitive manner
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_LoginPage_OperatorAdministratorRole"
    When click on link "USE_LoginPage_PlatformAdministratorRole"
    When click on menu "Administration"
    When click on menu "API users"
    Then verify text "Results"
    When click on button "Create API user"
    Then verify text "Personal"
    Then enter "* Username" "AK_platform"
    Then enter "* Description" "Platform35"
    Then enter "* Mobile" "USE_LoginPage_Mobile"
    Then enter "* Email" "platform@manage.com"
    Then verify text "System"
    Then select dropdown "* User type" "USE_LoginPage_Usertype2"
    Then select dropdown "* Access rights" "USE_LoginPage_Accessrights"
    Then select dropdown "* API groups" "USE_LoginPage_APIgroups2"
    Then verify text "Security"
    Then enter "* Password" "USE_LoginPage_Password"
    When click on button "Next"
    Then verify text "AK_platform already exists."
    Then wait for 20 seconds
    Then logout

  @REG_R10.0_GUI_DMB_180_001
  Scenario: verify that opco user is created from platform login is unique in a case insensitive manner
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_LoginPage_OperatorAdministratorRole"
    When click on link "USE_LoginPage_PlatformAdministratorRole"
    When click on menu "Administration"
    When click on menu "API users"
    Then verify text "Results"
    When click on button "Create API user"
    Then verify text "Personal"
    Then enter "* Username" "AK_platform"
    Then enter "* Description" "Platform35"
    Then enter "* Mobile" "USE_LoginPage_Mobile"
    Then enter "* Email" "platform@manage.com"
    Then verify text "System"
    Then select dropdown "* User type" "USE_LoginPage_Usertype2"
    Then select dropdown "* Access rights" "USE_LoginPage_Accessrights"
    Then select dropdown "* API groups" "USE_LoginPage_APIgroups2"
    Then verify text "Security"
    Then enter "* Password" "USE_LoginPage_Password"
    When click on button "Next"
    Then verify text "AK_platform already exists."
    Then wait for 20 seconds
    Then logout

    























