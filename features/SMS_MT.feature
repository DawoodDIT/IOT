@SMS_MobileTerminating
##Please refer SMSConfiguration in TestData.json for Test data
Feature: MT SMS

  @REG_R5.0_SMS_MT_001
  Scenario: verify that the SMS-MT sent by a Customer User provisioned with Data Coding Option from GDSP GUI delivered on the Device
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_SMSConfiguration_OpCoAdmin"
    When click on link "USE_SMSConfiguration_OpCoAdmin"
    Then verify text "USE_SMSConfiguration_CustAdmin"
    When click on link "USE_SMSConfiguration_CustAdmin"
    Then send SMStype "Payload""Test SMS mt" from IMSI "USE_SMSConfiguration_IMSIMT" to shortcode "USE_SMSConfiguration_Shortcode"
    Then Set SMS Advance Setting of Validity "15" Period "Minutes" Encoding "7 bit GSM" Priority "HIGH" MessageUDH "Not Present" Overwrite "No"
    Then verify text "An SMS has been submitted to Device"
    #DevicePart
    Given select mobile "mobile2"
    When launch mobile app "message"
    Then verify if SMS "Test SMS mt" on "USE_SMSConfiguration_Mobile2deviceId"
    Then report "SMS Message verified on the device successfully"
    Then logout

  @REG_R5.0_SMS_MT_002
  Scenario: verify that the SMS-MT sent by a Customer User not provisioned with Data Coding Option from GDSP GUI delivered on the Device
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_SMSConfiguration_OpCoAdmin"
    When click on link "USE_SMSConfiguration_OpCoAdmin"
    Then verify text "USE_SMSConfiguration_CustAdmin"
    When click on link "USE_SMSConfiguration_CustAdmin"
    Then send SMStype "Payload""SMS MT message with out data coding" from IMSI "USE_SMSConfiguration_IMSIMT" to shortcode "USE_SMSConfiguration_Shortcode"
    When click on link "Send"
    Then verify text "An SMS has been submitted to Device"
    #DevicePart
    Given select mobile "mobile2"
    When launch mobile app "message"
    Then verify if SMS "SMS MT message with out data coding" on "USE_SMSConfiguration_Mobile2deviceId"
    Then report "SMS Message verified on the device successfully"
    Then logout

  @REG_R5.0_SMS_MT_003
  Scenario: verify that the SMS-MT sent by the Customer User from GDSP GUI  are delivered successfully on retrying when device was not reachable and Delivery notification is not selected
    #SMS Delivery notification is disabled
    #Validity period is set in the CSP
    Given test case starts
    Given select mobile "mobile2"
    When launch mobile app "MobileNetworkSettings"
    Then switch on airplane mode
    Given browser is open
    Then login
    Then verify text "USE_SMSConfiguration_OpCoAdmin"
    When click on link "USE_SMSConfiguration_OpCoAdmin"
    Then verify text "USE_SMSConfiguration_CustAdmin"
    When click on link "USE_SMSConfiguration_CustAdmin"
    Then send SMStype "Payload""Text message as sent to sms MT and status has updated successfully" from IMSI "USE_SMSConfiguration_IMSIMT" to shortcode "USE_SMSConfiguration_Shortcode"
    Then Set SMS Advance Setting of Validity "5" Period "Minutes" Encoding "7 bit GSM" Priority "HIGH" MessageUDH "Not Present" Overwrite "No"
    Then verify text "An SMS has been submitted to Device"
    Then wait for 90 seconds
    Given select mobile "mobile2"
    When launch mobile app "MobileNetworkSettings"
    Then switch off airplane mode
    When launch mobile app "message"
    Then wait for 10 seconds
    Then verify if SMS "Text message as sent to sms MT and status has updated successfully" on "USE_SMSConfiguration_Mobile2deviceId"
    Then report "SMS Message verified on the device successfully"
    Then logout

  @REG_R5.0_SMS_MT_005
  Scenario: verify that the SMS-MT sent by an Opco User provisioned with Data Coding Option from GDSP GUI delivered on the Device
     Given test case starts
     Given browser is open
     Then login
     Then send SMStype "Payload""SMS MT message with data coding" from IMSI "USE_SMSConfiguration_IMSIMT" to shortcode "USE_SMSConfiguration_Shortcode"
     Then Set SMS Advance Setting of Validity "5" Period "Minutes" Encoding "7 bit GSM" Priority "HIGH" MessageUDH "Not Present" Overwrite "No"
     Then verify text "An SMS has been submitted to Device"
     #DevicePart
     Given select mobile "mobile2"
     When launch mobile app "message"
     Then verify if SMS "SMS MT message with data coding" on "USE_SMSConfiguration_Mobile2deviceId"
     Then report "SMS Message verified on the device successfully"
     Then logout

  @REG_R5.0_SMS_MT_007
  Scenario: verify that the SMS-MT sent by the Opco User from GDSP GUI  are delivered successfully on retrying when device was not reachable and Delivery notification is enabled
     #SMS Delivery notification is disabled
     Given test case starts
     Given select mobile "mobile2"
     When launch mobile app "MobileNetworkSettings"
     Then switch on airplane mode
     Given browser is open
     Then login
     Then send SMStype "Payload""SMS MT message with data coding" from IMSI "USE_SMSConfiguration_IMSIMT" to shortcode "USE_SMSConfiguration_Shortcode"
     Then Set SMS Advance Setting of Validity "5" Period "Minutes" Encoding "7 bit GSM" Priority "HIGH" MessageUDH "Not Present" Overwrite "No"
     Then verify text "An SMS has been submitted to Device"
     Then wait for 60 seconds
     #DevicePart
     Given select mobile "mobile2"
     When launch mobile app "MobileNetworkSettings"
     Then switch off airplane mode
     When launch mobile app "message"
     Then verify if SMS "SMS MT message with data coding" on "USE_SMSConfiguration_Mobile2deviceId"
     Then report "SMS Message verified on the device successfully"
    #Verify whether any delivery notification has been sent when the delivery notification is enabled
     Then logout

  @REG_R5.0_SMS_MT_008
  Scenario: verify that the SMS-MT messages sent by the Opco User from GDSP GUI  are expired due to unavailability of device and Delivery notification is Enabled
 #SMS delivery notification is enabled(staging not required, by default it is enabled)
     Given test case starts
     Given browser is open
     Then login
     When click menu "Administration" and submenu "Service profiles"
     Then verify text "Service profiles"
     Then enter "Service Profile" "USE_SMSConfiguration_CSP"
     When click on button "Search"
     Then verify text "1 matching result(s)"
     When click on link "USE_SMSConfiguration_CSP"
     When click on link "Details"
     When click on link "Connectivity services"
     Then verify text "SMS MT service"
     When click on button "Edit"
     Then select dropdown "SMS delivery notification" "notifySMSDelivery"
     Then enter "* URL" "USE_SMSConfiguration_SMSDeliveryURL"
     Then enter "* Username" "USE_SMSConfiguration_SMSDeliveryUser"
     Then enter "* Password" "USE_SMSConfiguration_SMSDeliveryPwd"
     When click on button "Save"
     #MobilePart
     Given select mobile "mobile2"
     When launch mobile app "MobileNetworkSettings"
     Then switch on airplane mode
     #Webpart
     Then send SMStype "Payload""SMS MT message with data coding" from IMSI "USE_SMSConfiguration_IMSIMT" to shortcode "USE_SMSConfiguration_Shortcode"
     Then store time in "strtime"
     Then Set SMS Advance Setting of Validity "5" Period "Minutes" Encoding "7 bit GSM" Priority "HIGH" MessageUDH "Not Present" Overwrite "No"
     Then verify text "An SMS has been submitted to Device"
     Then wait for 330 seconds
     When click on link "History"
     Then verify text "Voice"
     Then select radiobutton "Activity list"
     Then select dropdown "Type" "SMS"
     When click on button "Search"
     Then click on results based on below criteria
       |values|
       |strtime|
       |SMS Payload |
       |Failed   |
     Then verify text "Expired"
     Then verify
     | type | value              |
     | text | Event date         |
     | text | Report Date        |
     | text | Type               |
     | text | Service Profile    |
     | text | Other party number |
     | text | State              |
     Then report "Payload SMS Result is Failed due to Failure reason is Expired"
     #Verify whether any delivery notification has been sent when the delivery notification is enabled
     #Reverting Airplane mode
     Given select mobile "mobile2"
     When launch mobile app "MobileNetworkSettings"
     Then switch off airplane mode
     Then logout

  @REG_R7.0_SMS_MT_010
  Scenario: verify that the status of SMS MT is updated successfully when MS Delivery Notification Service Enabled
     Given test case starts
     Given browser is open
     Then login
     Then verify text "USE_SMSConfiguration_OpCoAdmin"
     When click on link "USE_SMSConfiguration_OpCoAdmin"
     Then verify text "USE_SMSConfiguration_CustAdmin"
     When click on link "USE_SMSConfiguration_CustAdmin"
     Then send SMStype "Payload""SMS MT message with data coding" from IMSI "USE_SMSConfiguration_IMSIMT" to shortcode "USE_SMSConfiguration_Shortcode"
     Then store time in "strtime"
     Then Set SMS Advance Setting of Validity "15" Period "Minutes" Encoding "7 bit GSM" Priority "HIGH" MessageUDH "Not Present" Overwrite "No"
     Then verify text "An SMS has been submitted to Device"
     # Mobile verification part has to be coded.
     Given select mobile "mobile2"
     When launch mobile app "message"
     Then verify if SMS "SMS MT message with data coding" on "USE_SMSConfiguration_Mobile2deviceId"
     Then report "SMS Message verified on the device successfully"
     #WebPart
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
        |SMS Payload |
        |Success   |
     Then verify
        | type | value              |
        | text | Report Date        |
        | text | Result             |
     Then report "SMS Payload details are available"
     Then logout


  @REG_R10.0_SMS_MT_012
  Scenario: verify that SMS MT gets delivered if device registered on the network before SMS Validity Period expired
    #Turn the device on before default SMS validity period gets expired
    #MobilePart
     Given test case starts
     Given select mobile "mobile2"
     When launch mobile app "MobileNetworkSettings"
     Then switch on airplane mode
     Given browser is open
     Then login
     Then verify text "USE_SMSConfiguration_OpCoAdmin"
     When click on link "USE_SMSConfiguration_OpCoAdmin"
     Then verify text "USE_SMSConfiguration_CustAdmin"
     When click on link "USE_SMSConfiguration_CustAdmin"
     Then send SMStype "Payload""Test SMS mt" from IMSI "USE_SMSConfiguration_IMSIMT" to shortcode "USE_SMSConfiguration_Shortcode"
     Then store time in "strtime"
     Then Set SMS Advance Setting of Validity "10" Period "Minutes" Encoding "7 bit GSM" Priority "MEDIUMLOW" MessageUDH "Not Present" Overwrite "No"
     Then verify text "An SMS has been submitted to Device"
     Then wait for 120 seconds
     #MobilePart
     Given select mobile "mobile2"
     When launch mobile app "MobileNetworkSettings"
     Then switch off airplane mode
     Then wait for 20 seconds
     When launch mobile app "message"
     Then verify if SMS "Test SMS mt" on "USE_SMSConfiguration_Mobile2deviceId"
     Then report "SMS Message verified on the device successfully"
    #Webpart
     When click on link "History"
     Then verify text "Voice"
     Then select radiobutton "Activity list"
     Then select dropdown "Type" "SMS"
     Then wait for 10 seconds
     When click on button "Search"
     Then verify text "Results"
     # Validate the correct message with timestamp
     Then click on results based on below criteria
        |values|
        |strtime|
        |SMS Payload |
        |Success   |
     Then verify
        | type | value              |
        | text | Report Date        |
        | text | Result             |
     Then report "SMS Payload details are available"
     Then logout


  @REG_R10.0_SMS_MT_013
  Scenario: verify that Default SMS replace-if-present funtionality works fine for SMS MT
     Given test case starts
     Given select mobile "mobile2"
     When launch mobile app "MobileNetworkSettings"
     Then switch on airplane mode
    #Webpart
     Given browser is open
     Then login
     Then verify text "USE_SMSConfiguration_OpCoAdmin"
     When click on link "USE_SMSConfiguration_OpCoAdmin"
     Then verify text "USE_SMSConfiguration_CustAdmin"
     When click on link "USE_SMSConfiguration_CustAdmin"
     Then send SMStype "Payload""Test SMS mt1" from IMSI "USE_SMSConfiguration_IMSIMT" to shortcode "USE_SMSConfiguration_Shortcode"
     Then store time in "strtime"
     When click on button "Send"
     Then verify text "An SMS has been submitted to Device"
     #Resending OverwriteSMS
     When click on button "Go to operations"
     When click on button "Send SMS"
     Then enter "* Sender's Number" "USE_SMSConfiguration_Shortcode"
     Then select dropdown "* Type" "Payload"
     Then enter textarea "Message" "Test SMS mt Overwrite"
     Then store time in "strtime2"
     Then Set SMS Advance Setting of Validity "15" Period "Minutes" Encoding "7 bit GSM" Priority "MEDIUMLOW" MessageUDH "Not Present" Overwrite "Yes"
     Then verify text "An SMS has been submitted to Device"
     #Mobile part
     Given select mobile "mobile2"
     When launch mobile app "MobileNetworkSettings"
     Then switch off airplane mode
     #Mobile part
     Then wait for 20 seconds
     When launch mobile app "message"
     Then verify if SMS "Test SMS mt Overwrite" on "USE_SMSConfiguration_Mobile2deviceId"
     Then report "SMS Message verified on the device successfully"
     Then wait for 30 seconds
    #Webpart
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
       |SMS Payload |
       |Failed   |
     Then verify text "Deleted"
     Then report "Deleted verified successfully in SMS history"
     Then click on results based on below criteria
       |values|
       |strtime2|
       |SMS Payload |
       |Success   |
     Then verify text "Success"
     Then report "SMS Overwrite is successful"
     Then logout

  @REG_R9.1_SMS_MT_014
  Scenario: verify that SMS MT can be sent from Customer user when SIM is Active.Standby state
       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       Then verify text "USE_SMSConfiguration_OpCoAdmin"
       When click on link "USE_SMSConfiguration_OpCoAdmin"
       Then verify text "USE_SMSConfiguration_CustAdmin"
       When click on link "USE_SMSConfiguration_CustAdmin"
       Then change sim "USE_SMSConfiguration_IMSIMT" from "Active.Live" to "Active.Standby"
       Then send SMStype "Payload""Test SMS MT" from IMSI "USE_SMSConfiguration_IMSIMT" to shortcode "USE_SMSConfiguration_Shortcode"
       Then store time in "strtime"
       When click on button "Send"
       Then verify text "An SMS has been submitted to Device"
       #Mobile part
       Given select mobile "mobile2"
       When launch mobile app "message"
       Then verify if SMS "Test SMS MT" on "USE_SMSConfiguration_Mobile2deviceId"
       Then report "SMS Message verified on the device successfully"
       #Webpart
       When click menu "Devices" and submenu "All devices"
       Then enter textarea "IMSI" "USE_SMSConfiguration_IMSIMT"
       When click on button "Search"
       Then verify text "Active.Live"
       When click on link "IMSI" "USE_SMSConfiguration_IMSIMT"
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
        |SMS Payload|
        |Success   |
       Then verify
        | type | value              |
        | text | Event date         |
        | text | Report Date        |
        | text | Result             |
        | text | Type               |
        | text | Service Profile    |
        | text | Other party number |
        | text | State              |
       Then report "Payload SMS details are available"
       Then logout

  @REG_R10.0_SMS_MT_015
  Scenario: verify that MT SMS upto 160 characters sent to M2M platform is updated successfully
       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       Then verify text "USE_SMSConfiguration_OpCoAdmin"
       When click on link "USE_SMSConfiguration_OpCoAdmin"
       Then verify text "USE_SMSConfiguration_CustAdmin"
       When click on link "USE_SMSConfiguration_CustAdmin"
       Then send SMStype "Payload""USE_SMSConfiguration_MsgGreaterThan160char" from IMSI "USE_SMSConfiguration_IMSIMT" to shortcode "USE_SMSConfiguration_Shortcode"
       Then verify text "-1 characters to use"
       Then enter textarea "Message" "USE_SMSConfiguration_Msg160char"
       Then store time in "strtime"
       #When click on button "Send"
       Then Set SMS Advance Setting of Validity "15" Period "Minutes" Encoding "7 bit GSM" Priority "HIGH" MessageUDH "Not Present" Overwrite "No"
       Then verify text "An SMS has been submitted to Device"
       #Mobile part
       Given select mobile "mobile2"
       When launch mobile app "message"
       Then verify if SMS "USE_SMSConfiguration_Msg160char" on "USE_SMSConfiguration_Mobile2deviceId"
       Then report "SMS Message verified on the device successfully"
       #Webpart
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
        |SMS Payload |
        |Success   |
       Then verify
        | type | value              |
        | text | Report Date        |
        | text | Result             |
       Then report "SMS Payload details are available"
       Then logout

















