@SMS-MO
Feature: SMS MO
  @REG_R7.0_SMS_MO_001
  Scenario: verify that the status of SMS MO is updated successfully when SMS MO Service Enabled
    #SMS MO
    Given test case starts
    Given select mobile "mobile2"
    Given browser is open
    When launch mobile app "message"
    Then store time in "strtime"
    Then send sms "SMS MO Testing Message" from "USE_SMSConfiguration_Mobile2deviceId" to "USE_SMSConfiguration_Shortcode"
    Then login
    Then verify text "USE_SMSConfiguration_OpCoAdmin"
    When click on link "USE_SMSConfiguration_OpCoAdmin"
    Then verify text "USE_SMSConfiguration_CustAdmin"
    When click on link "USE_SMSConfiguration_CustAdmin"
    When click menu "Devices" and submenu "All devices"
    Then enter textarea "IMSI" "USE_CustomerSMS_IMSIMO"
    When click on button "Search"
    When click on link "USE_SMSConfiguration_IMSIMO"
    When click on link "History"
    Then verify text "Voice"
    Then select radiobutton "Activity list"
    Then select dropdown "Type" "SMS"
    When click on button "Search"
    Then verify text "Results"
    # Step definition to validate the correct message with timestamp
    Then click on results based on below criteria
        |values|
        |strtime|
        |SMS MO |
        |Success   |
    Then verify
        | type  | value              |
        | text  | Event date         |
        | text  | Report Date        |
    Then report "SMS MO details are available"
    Then logout


  @REG_R9.1_SMS_MO_003
  Scenario: verify that SMS MO can be sent from Customer user when SIM is Active.Standby state.
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_SMSConfiguration_OpCoAdmin"
    When click on link "USE_SMSConfiguration_OpCoAdmin"
    Then verify text "USE_SMSConfiguration_CustAdmin"
    When click on link "USE_SMSConfiguration_CustAdmin"
    Then change sim "USE_SMSConfiguration_IMSIMO" from "Active.Live" to "Active.Standby"
    #Sending SMS MO(Device)
    Given select mobile "mobile2"
    When launch mobile app "message"
    Then store time in "strtime"
    Then send sms "SMS MO Testing Message in Active.Standby" from "USE_SMSConfiguration_Mobile2deviceId" to "USE_SMSConfiguration_Shortcode"
    #Web
    When click menu "Devices" and submenu "All devices"
    Then enter textarea "IMSI" "USE_SMSConfiguration_IMSIMO"
    Then wait for 60 seconds
    When click on button "Search"
    Then verify text "Active.Live"
    When click on link "USE_SMSConfiguration_IMSIMO"
    When click on link "History"
    Then verify text "Voice"
    Then select radiobutton "Activity list"
    Then select dropdown "Type" "SMS"
    When click on button "Search"
    Then verify text "Results"
    # Step definition to validate the correct message with timestamp
    Then click on results based on below criteria
        |values|
        |strtime|
        |SMS MO |
        |Success   |
    Then verify
        | type  | value              |
        | text  | Event date         |
        | text  | Report Date        |
    Then report "SMS MO details are available"
    Then logout


  @REG_R10.0_SMS_MO_004
  Scenario: verify that SMS MO having greater than 160 characters is updated successfully on m2m Platform
    #Steps needs to include sending SMS MO greather than 160
    Given test case starts
    Given select mobile "mobile2"
    Given browser is open
    When launch mobile app "message"
    Then store time in "strtime"
    Then send sms "USE_SMSConfiguration_MsgGreaterThan160char" from "USE_SMSConfiguration_Mobile2deviceId" to "USE_SMSConfiguration_Shortcode"
    #Web
    Then login
    Then verify text "USE_SMSConfiguration_OpCoAdmin"
    When click on link "USE_SMSConfiguration_OpCoAdmin"
    Then verify text "USE_SMSConfiguration_CustAdmin"
    When click on link "USE_SMSConfiguration_CustAdmin"
    When click menu "Devices" and submenu "All devices"
    Then enter textarea "IMSI" "USE_SMSConfiguration_IMSIMO"
    When click on button "Search"
    When click on link "USE_SMSConfiguration_IMSIMO"
    When click on link "History"
    Then verify text "Voice"
    Then select radiobutton "Activity list"
    Then select dropdown "Type" "SMS"
    When click on button "Search"
    Then verify text "Results"
    # Step definition to validate the correct message with timestamp
    Then click on results based on below criteria
        |values|
        |strtime|
        |SMS MO |
        |Success   |
    Then verify
        | type  | value              |
        | text  | Event date         |
        | text  | Report Date        |
    Then report "SMS MO details are available on history"
    #Step def is required to verify SMS MO
    When click on menu "Devices"
    When click on menu "SMS inbox"
    Then enter textarea "IMSI" "USE_SMSConfiguration_IMSIMO"
    When click on button "Search"
    # Step definition to validate the correct message with timestamp
    #As it is more than 160 two messages needs to be validated
    Then click on results based on below criteria
        |values|
        |strtime|
        |SMS MO |
        |USE_CustomerSMS_IMSIMO   |
    Then verify
        | type  | value |
        | text  | Type  |
        | text  | Result|
    Then report "SMS Mo greater than 160 is validated"
    Then logout

  @REG_R10.0_SMS_MO_005
  Scenario: Test to verify that Delivery Report received on Device if MO SMS sent  to M2M platform.
    #Steps needs to include sending SMS MO(90128)
    Given test case starts
    Given select mobile "mobile2"
    Given browser is open
    When launch mobile app "message"
    Then store time in "strtime"
    Then send sms "SMS MO Delivery report testing" from "USE_SMSConfiguration_Mobile2deviceId" to "USE_SMSConfiguration_Shortcode" and verify delivery report
    #Message Delivery report should be enabled in the device and validated and step definition is required
    Then login
    Then verify text "USE_SMSConfiguration_OpCoAdmin"
    When click on link "USE_SMSConfiguration_OpCoAdmin"
    Then verify text "USE_SMSConfiguration_CustAdmin"
    When click on link "USE_SMSConfiguration_CustAdmin"
    When click menu "Devices" and submenu "All devices"
    Then enter textarea "IMSI" "USE_SMSConfiguration_IMSIMO"
    When click on button "Search"
    When click on link "USE_SMSConfiguration_IMSIMO"
    When click on link "History"
    Then verify text "Voice"
    Then select radiobutton "Activity list"
    Then select dropdown "Type" "SMS"
    When click on button "Search"
    Then verify text "Results"
    #validate message
    Then click on results based on below criteria
        |values|
        |strtime|
        |SMS MO |
        |Success   |
    Then verify
        | type  | value              |
        | text  | Event date         |
        | text  | Report Date        |
    Then report "SMS MO details are available"
    Then logout

  @REG_R9.1_SMS_MO_006
  Scenario: verify that Opco User can view the refreshed data of SMS in the Circuit switched session using GUI
    Given test case starts
    Given browser is open
    Then login
    When click menu "Devices" and submenu "All devices"
    Then enter textarea "IMSI" "USE_SMSConfiguration_IMSIMO"
    When click on button "Search"
    When click on link "USE_SMSConfiguration_IMSIMO"
    When click on link "History"
    Then select radiobutton "Activity list"
    Then select dropdown "Type" "SMS"
    When click on button "Search"
    Then verify
    | type |value             |
    | link |SMS Payload       |
    | link |SMS Transactional |
    | link |SMS MO            |
    | link |SMS Wakeup        |
    Then report "SMS communication gets updated successfully"
    Then logout
