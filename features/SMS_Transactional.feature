@SMS_Transactional
##Please refer SMSConfiguration in TestData.json for Test data
Feature: Transactional SMS
  ##Please refer SMSConfiguration in TestData.json for Test data
  @REG_R5.0_T-SMS_007
  Scenario: To verify that system should not be able to send  transactional sms if customer is not configured for this service.
       Given test case starts
       Given browser is open
       Then login
       #Then verify text "M2M Dashboard"
       When click menu "Administration" and submenu "All organisations"
       Then verify text "Results"
       Then enter "Organisation" "USE_SMSConfiguration_CustSMS"
       When click on button "Search"
       When click on link "USE_SMSConfiguration_CustSMS"
       When click on link "Details"
       When click on link "Connectivity services"
       When click on button "Edit" on Position 3
       Then select radiobutton "Disabled" on position 3
       When click on button "Save"
       Then verify text "Settings successfully updated"
       When click menu "Devices" and submenu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_SMSConfiguration_IMSITrans"
       When click on button "Search"
       When click on link "USE_SMSConfiguration_IMSITrans"
       When click on link "Operations"
       When click on button "Send SMS"
       Then enter "* Sender's Number" "USE_SMSConfiguration_Shortcode"
       # Validate dropdown information
       When click on link "Select an option"
       Then verify no text "Transactional"
       Then report "Transactional SMS not present"
       Then logout

  @REG_R5.0_T-SMS_001
  Scenario: To verify that Transactional SMS attribute is available while creating Customer.
       Given test case starts
       Given browser is open
       Then login
       #Then verify text "M2M Dashboard"
       When click menu "Administration" and submenu "All organisations"
       Then verify text "Results"
       When click on link "Create organisation"
       When click on link "Create customer"
       Then verify text "Basic information"
       Then enter "* Customer name" "Dummy_Test_1"
       Then enter "* Customer description" "Dummy_Test_1"
       When click on button "Next"
       Then verify text "Transactional SMS"
       Then report "Transactional SMS Option available while creating New Customer"
       When click menu "Administration" and submenu "All organisations"
       Then verify text "Results"
       Then enter "Organisation" "USE_SMSConfiguration_CustSMS"
       When click on button "Search"
       When click on link "USE_SMSConfiguration_CustSMS"
       When click on link "Details"
       When click on link "Connectivity services"
       When click on button "Edit" on Position 3
       Then select radiobutton "Enabled" on position 3
       When click on button "Save"
       Then send SMStype "Transactional""Test SMS Transactional" from IMSI "USE_SMSConfiguration_IMSITrans" to shortcode "USE_SMSConfiguration_Shortcode"
       Then report "Transactional SMS present"
       Then logout

 @REG_R5.0_T-SMS_002
 Scenario: To verify that the Transactional SMS MT sent by a Customer User provisioned with Data Coding Option from GDSP GUI delivered on the Device
       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       Then verify text "USE_SMSConfiguration_OpCoAdmin"
       When click on link "USE_SMSConfiguration_OpCoAdmin"
       Then verify text "USE_SMSConfiguration_CustAdmin"
       When click on link "USE_SMSConfiguration_CustAdmin"
       Then send SMStype "Transactional""Test SMS Transactional" from IMSI "USE_SMSConfiguration_IMSITrans" to shortcode "USE_SMSConfiguration_Shortcode"
       When click on link "Advanced settings"
       Then select dropdown "Encoding" "7 bit GSM"
       Then select radiobutton "Not Present" on position 1
       When click on button "Send"
       Then verify text "Success"
       Then report "Transactional SMS send successfully"
       # Mobile Part
       Given select mobile "mobile2"
       When launch mobile app "message"
       Then verify if SMS "Test SMS Transactional" on "USE_SMSConfiguration_Mobile2deviceId"
       Then report "SMS Message verified on the device successfully"
       Then logout

 @REG_R5.0_T-SMS_005
 Scenario: To verify that the Transactional SMS MT sent by a Opco user provisioned with Data Coding Option from GDSP GUI delivered on the Device       Given test case starts
       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       Then send SMStype "Transactional""Test SMS Transactional" from IMSI "USE_SMSConfiguration_IMSITrans" to shortcode "USE_SMSConfiguration_Shortcode"
       When click on link "Advanced settings"
       Then select dropdown "Encoding" "7 bit GSM"
       Then select radiobutton "Not Present" on position 1
       When click on button "Send"
       Then store time in "strtime"
       Then verify text "Success"
       #Mobile part
       Given select mobile "mobile2"
       When launch mobile app "message"
       Then verify if SMS "Test SMS Transactional" on "USE_SMSConfiguration_Mobile2deviceId"
       Then report "SMS Message verified on the device successfully"
       #Webpart
       Then verify text "USE_SMSConfiguration_OpCoAdmin"
       When click on link "USE_SMSConfiguration_OpCoAdmin"
       Then verify text "USE_SMSConfiguration_CustAdmin"
       When click on link "USE_SMSConfiguration_CustAdmin"
       Then verify text "M2M Dashboard"
       When click menu "Devices" and submenu "SMS inbox"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_SMSConfiguration_IMSITrans"
       When click on button "Search"
       Then verify text "Date"
       # Step definition to validate the correct message with timestamp
       Then click on results based on below criteria
        |values|
        |strtime|
        |SMS Transactional |
        |USE_SMSConfiguration_IMSITrans   |
       Then verify
        | type  | value              |
        | text  | Body               |
        | text  | Result             |
       Then report "Transactional SMS details are available"
       Then logout


 @REG_R5.0_T-SMS_006
 Scenario: To verify that the Transactional SMS MT sent by a Opco user not provisioned with Data Coding Option from GDSP GUI delivered on the Device
       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       Then send SMStype "Transactional""Test SMS Transactional2" from IMSI "USE_SMSConfiguration_IMSITrans" to shortcode "USE_SMSConfiguration_Shortcode"
       When click on button "Send"
       Then store time in "strtime"
       Then verify text "Success"
       # Mobile verification part has to be coded.
       Given select mobile "mobile2"
       When launch mobile app "message"
       Then verify if SMS "Test SMS Transactional2" on "USE_SMSConfiguration_Mobile2deviceId"
       Then report "SMS Message verified on the device successfully"
      #Webpart
       Then verify text "USE_SMSConfiguration_OpCoAdmin"
       When click on link "USE_SMSConfiguration_OpCoAdmin"
       Then verify text "USE_SMSConfiguration_CustAdmin"
       When click on link "USE_SMSConfiguration_CustAdmin"
       Then verify text "M2M Dashboard"
       When click on menu "Devices"
       When click on menu "SMS inbox"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_SMSConfiguration_IMSITrans"
       When click on button "Search"
       Then verify text "Date"
       # Step definition to validate the correct message with timestamp
       Then click on results based on below criteria
        |values|
        |strtime|
        |SMS Transactional |
        |USE_SMSConfiguration_IMSITrans   |
       Then verify
        | type  | value              |
        | text  | Body               |
        | text  | Result             |
       Then report "Transactional SMS details are available"
       Then logout

  @REG_R5.0_T-SMS_008
  Scenario: To verify that platform shall support up to160 characters of device specified data within a successful synchronous acknowledgements payload.
       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       When click menu "Devices" and submenu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_SMSConfiguration_IMSITrans"
       When click on button "Search"
       When click on link "USE_SMSConfiguration_IMSITrans"
       When click on link "Operations"
       When click on button "Send SMS"
       Then enter "* Sender's Number" "USE_SMSConfiguration_Shortcode"
       Then select dropdown "* Type" "Transactional"
       Then enter textarea "Message" "USE_SMSConfiguration_MsgGreaterThan160char"
       Then verify text "-1 characters to use"
       Then enter textarea "Message" "USE_SMSConfiguration_Msg160char"
       When click on button "Send"
       Then verify text "Success"
       Then report "Transactional Sent successfully"
       Then logout


  @REG_R5.0_T-SMS_009
  Scenario: To verify that Transactional payload specified by M2M Device is displayed for Transactional SMS sent from GDSP GUI on Successful delivery
       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       Then send SMStype "Transactional""Test SMS Transactional" from IMSI "USE_SMSConfiguration_IMSITrans" to shortcode "USE_SMSConfiguration_Shortcode"
       When click on link "Advanced settings"
       Then select dropdown "Encoding" "7 bit GSM"
       Then select radiobutton "Not Present" on position 1
       When click on button "Send"
       Then store time in "strtime"
       Then verify text "Success"
       #Mobile verification part has to be coded.
       Given select mobile "mobile2"
       When launch mobile app "message"
       Then verify if SMS "Test SMS Transactional" on "USE_SMSConfiguration_Mobile2deviceId"
       Then report "SMS Message verified on the device successfully"
       #Webpart
       Then verify text "USE_SMSConfiguration_OpCoAdmin"
       When click on link "USE_SMSConfiguration_OpCoAdmin"
       Then verify text "USE_SMSConfiguration_CustAdmin"
       When click on link "USE_SMSConfiguration_CustAdmin"
       When click menu "Devices" and submenu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_SMSConfiguration_IMSITrans"
       When click on button "Search"
       When click on link "USE_SMSConfiguration_IMSITrans"
       When click on link "History"
       Then verify text "Voice"
       Then select radiobutton "Activity list"
       Then select dropdown "Type" "SMS"
       When click on button "Search"
       Then verify text "Results"
       # Validate the correct message with timestamp
       Then click on results based on below criteria
        |values|
        |strtime|
        |SMS Transactional |
        |Success   |
       Then verify
        | type | value              |
        | text | Event date         |
        | text | Report Date        |
        | text | Result             |
       Then report "Transactional SMS details are available"
       Then logout



  @REG_R5.0_T-SMS_010
  Scenario: To verify that System communicates to the User  that the Transactional SMS can not be sent from GDSP GUI
       #Mobilepart
        Given test case starts
        Given select mobile "mobile2"
        When launch mobile app "MobileNetworkSettings"
        Then switch on airplane mode
        #Webpart
        Given browser is open
        Then login
        Then verify text "M2M Dashboard"
        Then send SMStype "Transactional""Test SMS Transactional" from IMSI "USE_SMSConfiguration_IMSITrans" to shortcode "USE_SMSConfiguration_Shortcode"
        When click on button "Send"
        Then verify text "Failed"
        When click on button "Try again"
        When click on button "Send"
        Then verify text "Failed"
        Then report "SMS Transactional failed is verified successfully when Mobile is in Aeroplane Mode"
        #Reverting Back Airplane mode
        Given select mobile "mobile2"
        When launch mobile app "MobileNetworkSettings"
        Then switch off airplane mode
        Then logout


  @REG_R9.1_T-SMS_012
  Scenario: To verify that Transactional SMS can be sent from Customer user when SIM is Active.Standby state.
       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       Then verify text "USE_SMSConfiguration_OpCoAdmin"
       When click on link "USE_SMSConfiguration_OpCoAdmin"
       Then verify text "USE_SMSConfiguration_CustAdmin"
       When click on link "USE_SMSConfiguration_CustAdmin"
       Then change sim "USE_SMSConfiguration_IMSITrans" from "Active.Live" to "Active.Standby"
       Then send SMStype "Transactional""Test SMS Transactional" from IMSI "USE_SMSConfiguration_IMSITrans" to shortcode "USE_SMSConfiguration_Shortcode"
       Then store time in "strtime"
       When click on button "Send"
       Then verify text "Success"
       #Mobile part
       Given select mobile "mobile2"
       When launch mobile app "message"
       Then verify if SMS "Test SMS Transactional" on "USE_SMSConfiguration_Mobile2deviceId"
       Then report "SMS Message verified on the device successfully"
       #Webpart
       When click menu "Devices" and submenu "All devices"
       Then enter textarea "IMSI" "USE_SMSConfiguration_IMSITrans"
       When click on button "Search"
       Then verify text "Active.Live"
       When click on link "IMSI" "USE_SMSConfiguration_IMSITrans"
       When click on link "History"
       Then verify text "Voice"
       Then wait for 60 seconds
       Then select radiobutton "Activity list"
       Then select dropdown "Type" "SMS"
       When click on button "Search"
       Then verify text "Results"
       # Validate the correct message with timestamp
       Then click on results based on below criteria
        |values|
        |strtime|
        |SMS Transactional |
        |Success   |
       Then verify
        | type | value              |
        | text | Event date         |
        | text | Report Date        |
        | text | Result             |
       Then report "Transactional SMS details are available"
       Then logout

 @REG_R10.0_T-SMS_013
 Scenario: to verify that Opco user can view  Transactional SMS details.
       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       When click menu "Devices" and submenu "All devices"
       Then enter textarea "IMSI" "USE_SMSConfiguration_IMSITrans"
       When click on button "Search"
       When click on link "IMSI" "USE_SMSConfiguration_IMSITrans"
       When click on link "History"
       Then verify text "Voice"
       Then select radiobutton "Activity list"
       Then select dropdown "Type" "SMS"
       When click on button "Search"
       Then verify text "Results"
       Then click on results based on below criteria
        |values|
        |SMS Transactional |
        |Success   |
       Then verify
        | type | value              |
        | text | Event date         |
        | text | Report Date        |
        | text | Result             |
        | text | Type               |
       Then report "Transactional SMS details are available"
       Then logout

 @REG_R10.0_T-SMS_014
 Scenario: To verify that Customer user can view  Transactional SMS details.
       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       Then verify text "USE_SMSConfiguration_OpCoAdmin"
       When click on link "USE_SMSConfiguration_OpCoAdmin"
       Then verify text "USE_SMSConfiguration_CustAdmin"
       When click on link "USE_SMSConfiguration_CustAdmin"
       When click menu "Devices" and submenu "SMS inbox"
       Then enter textarea "IMSI" "USE_SMSConfiguration_IMSITrans"
       When click on button "Search"
       Then verify text "Date"
       Then click on results based on below criteria
        |values|
        |SMS Transactional |
        |USE_SMSConfiguration_IMSITrans  |
       Then verify
        | type  | value              |
        | text  | Body               |
        | text  | Result             |
       Then report "Transactional SMS details are available"
       Then logout



