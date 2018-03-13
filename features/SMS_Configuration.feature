@SMSConfiguration
Feature: SMS Inbox
  ##SMS Configuration##
  @REG_R5.0_GUI_SMS-Configuration_001
  Scenario: verify that SMS communication entries older than the Maximum Age of SMS Messages (days) are removed from the system.
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_SMSConfiguration_OpCoAdmin"
    When click on link "USE_SMSConfiguration_OpCoAdmin"
    Then verify text "USE_SMSConfiguration_CustAdmin"
    When click on link "USE_SMSConfiguration_CustAdmin"
    When click menu "Devices" and submenu "SMS inbox"
    Then enter date for "between" "today - 45days"
    Then enter date for "and" "today - 30days"
    When click on button "Search"
    Then verify text "Results"
    When click on link "SMS Payload"
    Then get value of "Body" and store in "strbody"
    Then verify if "strbody" "equal" "None"
    Then report "SMS Body removed after Max Age"
    Then logout

  @REG_R5.0_GUI_SMS-Configuration_005
  Scenario: verify that for the transactional SMS the category should be displayed as SMS-MT-Transaction under SMS Management tab for Customer user
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_SMSConfiguration_OpCoAdmin"
    When click on link "USE_SMSConfiguration_OpCoAdmin"
    Then verify text "USE_SMSConfiguration_CustAdmin"
    When click on link "USE_SMSConfiguration_CustAdmin"
    When click menu "Devices" and submenu "SMS inbox"
    When click on link "SMS Transactional"
    Then verify
    | type  | value |
    | text  | IMSI  |
    | text  | Sent on |
    | text  | Type |
    | text  | Other party number |
    | text  | Result |
    | text  | Body   |
    Then verify text "Transactional"
    Then report "SMS feilds are verified"
    Then logout

  @REG_R5.0_GUI_SMS-Configuration_012
  Scenario: Test to verify that Opco user can view SMS Communication detail
    Given test case starts
    Given browser is open
    Then login
    When click menu "Devices" and submenu "SMS inbox"
    When click on input "Organisation" and enter value "USE_SMSConfiguration_CustSMS"
    When click on button "Search"
    Then verify text "Results"
    Then verify
    | type  | value |
    | link  | SMS Payload  |
    | link  | SMS MO       |
    Then report "SMS Communication is visible"
    Then logout

   @REG_R5.0_GUI_SMS-Configuration_013
  Scenario: verify that Opco User can view the SMS details that have been sent to and received from an M2M Device.
    Given test case starts
    Given browser is open
    Then login
    When click menu "Devices" and submenu "SMS inbox"
    When click on input "Organisation" and enter value "USE_SMSConfiguration_CustSMS"
    When click on button "Search"
    Then verify text "Results"
    When click on link "SMS Payload"
    Then verify Text "Sent on"
    When click on link "SMS MO"
    Then verify Text "Received on"
    Then report "SMS MO and MT text verified"
    Then logout

  @REG_R5.0_GUI_SMS-Configuration_014
  Scenario: verify that Customer user can view the SMS that have been sent to and received from an M2M Device as a conversation
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_SMSConfiguration_OpCoAdmin"
    When click on link "USE_SMSConfiguration_OpCoAdmin"
    Then verify text "USE_SMSConfiguration_CustAdmin"
    When click on link "USE_SMSConfiguration_CustAdmin"
    When click menu "Devices" and submenu "SMS inbox"
    When click on button "Search"
    Then verify text "Results"
    When click on link "SMS Payload"
    Then verify Text "Sent on"
    When click on link "SMS MO"
    Then verify Text "Received on"
    Then report "SMS MO and MT text verified"
    Then logout

  @REG_R5.0_GUI_SMS-Configuration_015
  Scenario: verify that for the transactional SMS the category should be displayed as SMS-MT-Transaction under SMS Management tab for Opco user
    Given test case starts
    Given browser is open
    Then login
    When click menu "Devices" and submenu "SMS inbox"
    When click on input "Organisation" and enter value "USE_SMSConfiguration_CustSMS"
    When click on button "Search"
    Then verify Text "SMS Transactional"
    When click on link "SMS Transactional"
    Then verify
    | type  | value |
    | text  | IMSI  |
    | text  | Sent on |
    | text  | Type |
    | text  | Other party number |
    | text  | Result |
    | text  | Body   |
    Then verify text "Transactional"
    Then report "SMS feilds are verified"
    Then logout

  @REG_R5.0_GUI_SMS-Configuration_017
  Scenario: verify that Gdsp display the status of the SMS MT Transactional under SMS Management tab
    Given test case starts
    Given browser is open
    Then login
    When click menu "Devices" and submenu "SMS inbox"
    When click on input "Organisation" and enter value "USE_SMSConfiguration_CustSMS"
    When click on button "Search"
    Then verify Text "SMS Transactional"
    When click on link "SMS Transactional"
    Then verify
    | type  | value   |
    | link  | Success |
    | link  | Failed  |
    Then report "SMS Pass/Fail Status are displayed"
    Then logout

  @REG_R6.0_GUI_SMS-Configuration_018
  Scenario: verify that the Opco user can configure SMPP attributes for a specific Customer
      Given test case starts
      Given browser is open
      Then login
      When click menu "Administration" and submenu "All organisations"
      Then verify text "Results"
      Then enter "Organisation" "USE_SMSConfiguration_CustSMS"
      When click on button "Search"
      When click on link "USE_SMSConfiguration_CustSMS"
      When click on link "Details"
      When click on link "Connectivity services"
      When click on button "Edit" on Position 3
      Then verify text "SMPP"
      Then select radiobutton "Disabled" on position 5
      Then select radiobutton "Enabled" on position 5
      Then enter "* SMPP system ID" "USE_CustomerSMS_SMPPid"
      Then enter "* SMPP password" "USE_CustomerSMS_SMPPpassword"
      Then enter "* SMPP maximum binds" "USE_CustomerSMS_SMPPBind"
      Then select radiobutton "Enabled" on position 6
      Then select radiobutton "Enabled" on position 7
      Then enter "* SMPP enquire link timeout(s)" "60"
      When click on button "Save"
      #Then verify "Settings successfully updated"
      Then report "SMPP Settings successfully updated"
      Then logout

  @REG_R6.0_GUI_SMS-Configuration_019
  Scenario: To verify that the Opco user can configure the SMS short codes for the specific Customer
      Given test case starts
      Given browser is open
      Then login
      When click menu "Administration" and submenu "All organisations"
      Then verify text "Results"
      Then enter "Organisation" "USE_SMSConfiguration_CustSMS"
      When click on button "Search"
      When click on link "USE_SMSConfiguration_CustSMS"
      When click on link "Details"
      When click on link "Connectivity services"
      When click on button "Edit" on Position 3
      Then select radiobutton "Yes" on Position 1
      Then verify text "* Sender's number"
      Then enter "* Sender's number" "USE_SMSConfiguration_Shortcode"
      When click on button "Save"
      Then verify text "USE_SMSConfiguration_Shortcode"
      Then report "State change is successful"
      Then logout

  @REG_R6.0_GUI_SMS-Configuration_020
  Scenario: Test to verify that Customer user can view SMS Communication
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_SMSConfiguration_OpCoAdmin"
    When click on link "USE_SMSConfiguration_OpCoAdmin"
    Then verify text "USE_SMSConfiguration_CustAdmin"
    When click on link "USE_SMSConfiguration_CustAdmin"
    When click menu "Devices" and submenu "SMS inbox"
    Then enter textarea "IMSI" "USE_SMSConfiguration_IMSI"
    When click on button "Search"
    Then verify text "Results"
    Then verify
    | type  | value |
    | link  | SMS Payload  |
    | link  | SMS MO       |
    Then report "SMS Communication is visible"
    Then logout






