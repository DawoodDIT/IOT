@SMSWakeup
##Please refer SMSConfiguration in TestData.json for Test data
Feature: SMS wakeup Device
  ##Please refer SMSConfiguration in TestData.json for Test data
  ####SMS Wakeup Device
  @REG_R10.0_Wakeup_004
  Scenario: verify that Opco user can view  Wakeup SMS details
    Given test case starts
    Given browser is open
    Then login
    When click menu "Devices" and submenu "All devices"
    Then enter textarea "IMSI" "SMSConfiguration_IMSIwakeup"
    When click on button "Search"
    When click on link "USE_SMSConfiguration_IMSIwakeup"
    When click on link "Operations"
    When click on link "Send SMS"
    Then enter "* Sender's Number" "USE_SMSConfiguration_Shortcode"
    Then select dropdown "* Type" "Wakeup"
    Then store time in "strtime"
    When click on link "Send"
    Then verify text "An SMS has been submitted to Device"
    #Mobile Part
    Given select mobile "mobile2"
    When launch mobile app "message"
    Then verify if SMS is empty on "USE_SMSConfiguration_Mobile2deviceId"
    Then report "SMS Message verified on the device successfully"
    Then wait for 60 seconds
    #Webpart
    When click on link "History"
    Then verify text "Activity list"
    Then select radiobutton "Activity list"
    Then select dropdown "Type" "SMS"
    When click on button "Search"
    Then verify text "Results"
    Then click on results based on below criteria
      |values|
      |strtime|
      |SMS Wakeup |
      |Success   |
    Then verify
     | type |value |
     | text |Event date |
     | text |Report Date |
     | text |Result      |
     | text |Type        |
     | text |Service Profile|
     | text |Other party number|
     | text |State             |
    Then report "Wake Up SMS details are available"
    Then logout

  @REG_R10.0_Wakeup_005
  Scenario: verify that Customer user can view  Wakeup SMS details
    Given test case starts
    Given browser is open
    Then login
    Then verify text "USE_SMSConfiguration_OpCoAdmin"
    When click on link "USE_SMSConfiguration_OpCoAdmin"
    Then verify text "USE_SMSConfiguration_CustAdmin"
    When click on link "USE_SMSConfiguration_CustAdmin"
    When click menu "Devices" and submenu "All devices"
    Then enter textarea "IMSI" "USE_SMSConfiguration_IMSIwakeup"
    When click on button "Search"
    When click on link "USE_SMSConfiguration_IMSIwakeup"
    When click on link "History"
    Then select radiobutton "Activity list"
    Then select dropdown "Type" "SMS"
    When click on button "Search"
    When click on link "SMS Wakeup"
    Then verify text "Results"
    Then verify
    | type |value |
    | text |Event date |
    | text |Report Date |
    | text |Result      |
    | text |Type        |
    | text |Service Profile|
    | text |Other party number|
    | text |State             |
    Then report "Wake Up SMS details are available"
    Then logout