@PSdata_B1
  ##3GPP
Feature: PS Data session
  @REG_R5.0_PSData_003
  Scenario: Test to verify the activities necessary for a Device to establish a PS Session.
     Given test case starts
     Given browser is open
     Then login
     Given select mobile "mobile2"
     Then launch APN app
     Then create new APN
     Then fill APN fields with below values
        |fieldname|fieldvalue     |
        |Name     |test           |
        |APN      |USE_CustomerDATA_DataAPN|
        |Username |gdsp           |
        |Password |gdsp           |
        |Authentication type|PAP or CHAP|
        |APN protocol|IPv4        |
     Then save APN details
     When launch mobile app "APNsettings"
     Then scroll to text "USE_CustomerDATA_DataAPN"
     Then select mobile radiobutton "USE_CustomerDATA_DataAPN"
     When launch mobile app "MobileNetworkSettings"
     Then switch on mobile data for "USE_CustomerDATA_Mobile2deviceId"
     When launch mobile app "MobileNetworkSettings"
     Then verify if data signal available for "USE_CustomerDATA_Mobile2deviceId"
     When launch mobile app "youtube"
     Then verify text "Home" on mobile
     Then report "PS session established successfully"
     Then logout

  @REG_R11.0_GUI_3GPP_001
  Scenario: Test to verify that a PS session is successfully established
    Given test case starts
    Given select mobile "mobile2"
    When launch mobile app "APNsettings"
    Then scroll to text "USE_CustomerDATA_DataAPN"
    Then select mobile radiobutton "USE_CustomerDATA_DataAPN"
    When launch mobile app "MobileNetworkSettings"
    Then switch off mobile data for "USE_CustomerDATA_Mobile2deviceId"
    Then wait for 20 seconds
    Then store time in "strtime"
    Then switch on mobile data for "USE_CustomerDATA_Mobile2deviceId"
    When launch mobile app "MobileNetworkSettings"
    Then verify if data signal available for "USE_CustomerDATA_Mobile2deviceId"
    #WebPart
    Given browser is open
    Then login
    Then click on Recent Data Usage for Imsi "USE_CustomerDATA_IMSIData"
    Then click on results based on below criteria
     |values|
     |strtime|
     |USE_CustomerDATA_DataAPN|
    Then verify
     | type | value      |
     | text | Start date |
     | text | Active for |
     | text | APN   |
    Then logout

  #PDP Context
  @REG_R7.0_GUI_PSData_017
  Scenario: Test to verify whether Customer User can Stop ongoing Packet Data Session
    Given test case starts
    Given select mobile "mobile2"
    When launch mobile app "APNsettings"
    Then scroll to text "USE_CustomerDATA_DataAPN"
    Then select mobile radiobutton "USE_CustomerDATA_DataAPN"
    When launch mobile app "MobileNetworkSettings"
    Then switch off mobile data for "USE_CustomerDATA_Mobile2deviceId"
    Then wait for 20 seconds
    Then store time in "strtime"
    Then switch on mobile data for "USE_CustomerDATA_Mobile2deviceId"
    When launch mobile app "MobileNetworkSettings"
    Then verify if data signal available for "USE_CustomerDATA_Mobile2deviceId"
    #WebPart
    Given browser is open
    Then login
    Then verify text "USE_CustomerDATA_OpCoAdmin"
    When click on link "USE_CustomerDATA_OpCoAdmin"
    Then verify text "USE_CustomerDATA_CustAdmin"
    When click on link "USE_CustomerDATA_CustAdmin"
    Then click on Recent Data Usage for Imsi "USE_CustomerDATA_IMSIData"
    Then click on results based on below criteria
     |values|
     |strtime|
     |USE_CustomerDATA_DataAPN|
    Then get value of "Start date" and store in "storeStarttime"
    When click on link "Operations"
    When click on link "Stop data session"
    When click on button "Stop"
    Then verify text "A Stop data session request has been submitted for Device"
    Then wait for 60 seconds
    When click on link "Details"
    When click on link "Recent data usage"
    Then click on results based on below criteria
     |values|
     |USE_CustomerDATA_DataAPN|
    Then get value of "Start date" and store in "storeStarttime2"
    Then verify if "storeStarttime" "not equal" "storeStarttime2"
    Then report "Stop PS session is successful"
    Then logout
    #Alternate way to validate####
#    When click on link "History"
#    Then verify text "Activity list"
#    Then select radiobutton "Activity list"
#    Then select dropdown "Type" "Data sessions"
#    When click on button "Search"
#    Then verify text "Results"
#    Then click on results based on below criteria
#     |values|
#     |storeStarttime|
#    Then verify text "Administrative"
#    Then logout

  @REG_R5.0_GUI_PSData_002
  Scenario: Test to verify that Opco user can Tear down PS data session via GUI
    Given test case starts
    Given select mobile "mobile2"
    When launch mobile app "APNsettings"
    Then scroll to text "USE_CustomerDATA_DataAPN"
    Then select mobile radiobutton "USE_CustomerDATA_DataAPN"
    When launch mobile app "MobileNetworkSettings"
    Then switch off mobile data for "USE_CustomerDATA_Mobile2deviceId"
    Then wait for 20 seconds
    Then store time in "strtime"
    Then switch on mobile data for "USE_CustomerDATA_Mobile2deviceId"
    When launch mobile app "MobileNetworkSettings"
    Then verify if data signal available for "USE_CustomerDATA_Mobile2deviceId"
    #WebPart
    Given browser is open
    Then login
    Then click on Recent Data Usage for Imsi "USE_CustomerDATA_IMSIData"
    Then click on results based on below criteria
     |values|
     |strtime|
     |USE_CustomerDATA_DataAPN|
    When click on link "Operations"
    When click on link "Tear down"
    When click on button "Tear down"
    Then verify text "A Stop data session request has been submitted for Device"
    Then wait for 300 seconds
    When click on link "History"
    Then verify text "Activity list"
    Then select radiobutton "Activity list"
    Then select dropdown "Type" "Data sessions"
    When click on button "Search"
    Then verify text "Results"
    Then click on results based on below criteria
     |values|
     |storeStarttime|
    Then verify text "Administrative"
    Then logout

  @REG_R5.0_GUI_PSData_004
  Scenario: Test to verify the exchange of PS data to and from the Device.
    Given test case starts
    Given select mobile "mobile2"
    When launch mobile app "APNsettings"
    Then scroll to text "USE_CustomerDATA_DataAPN"
    Then select mobile radiobutton "USE_CustomerDATA_DataAPN"
    When launch mobile app "MobileNetworkSettings"
    Then switch off mobile data for "USE_CustomerDATA_Mobile2deviceId"
    Then wait for 20 seconds
    Then store time in "strtime"
    Then switch on mobile data for "USE_CustomerDATA_Mobile2deviceId"
    When launch mobile app "MobileNetworkSettings"
    Then verify if data signal available for "USE_CustomerDATA_Mobile2deviceId"
    #Webpart
    Given browser is open
    Then login
    Then click on Recent Data Usage for Imsi "USE_CustomerDATA_IMSIData"
    Then click on results based on below criteria
     |values|
     |strtime|
     |USE_CustomerDATA_DataAPN|
    Then get value of "Downloaded normal" and store in "storedownloadData"
    #MobilePart
    Given select mobile "mobile2"
    When launch mobile app "youtube"
    Then verify text "Home" on mobile
    When launch mobile app "MobileNetworkSettings"
    Then switch off mobile data for "USE_CustomerDATA_Mobile2deviceId"
    Then wait for 60 seconds
    #Webpart
    When click on button "Refresh"
    Then click on results based on below criteria
     |values|
     |strtime|
     |USE_CustomerDATA_DataAPN|
    Then get value of "Downloaded normal" and store in "storedownloadData2"
    Then verify if "storedownloadData" "not equal" "storedownloadData2"
    Then report "Exchange of PS data to and from the Device is successfull"
    Then logout

  @REG_R5.0_PSData_001
  Scenario: Test to verify the user can close the PS data connection
     Given test case starts
     Given browser is open
     Then login
     Given select mobile "mobile2"
     When launch mobile app "APNsettings"
     Then scroll to text "USE_CustomerDATA_DataAPN"
     Then select mobile radiobutton "USE_CustomerDATA_DataAPN"
     When launch mobile app "MobileNetworkSettings"
     Then switch on mobile data for "USE_CustomerDATA_Mobile2deviceId"
     Then wait for 10 seconds
     When launch mobile app "MobileNetworkSettings"
     Then verify if data signal available for "USE_CustomerDATA_Mobile2deviceId"
     When launch mobile app "youtube"
     Then verify text "Home" on mobile
     Then switch off mobile data for "USE_CustomerDATA_Mobile2deviceId"
     Then report "PS data connection is closed successfully"
     Then logout

  @REG_R8.0_GUI_PSData_013
  Scenario: Test to verify that the Dynamic IP Address allocated to the PD session remains constant for the duration of the session
     Given test case starts
     Given select mobile "mobile2"
     When launch mobile app "APNsettings"
     Then scroll to text "USE_CustomerDATA_DynamicAPN"
     Then select mobile radiobutton "USE_CustomerDATA_DynamicAPN"
     When launch mobile app "MobileNetworkSettings"
     Then switch off mobile data for "USE_CustomerDATA_Mobile2deviceId"
     Then wait for 10 seconds
     Then store time in "strtime"
     Then switch on mobile data for "USE_CustomerDATA_Mobile2deviceId"
     When launch mobile app "MobileNetworkSettings"
     Then verify if data signal available for "USE_CustomerDATA_Mobile2deviceId"
     #Web Part
     Given browser is open
     Then login
     Then click on Recent Data Usage for Imsi "USE_CustomerDATA_IMSIData"
     Then click on results based on below criteria
     |values|
     |strtime|
     |USE_CustomerDATA_DynamicAPN|
     Then verify text "Dynamic"
     Then get value of "Device IP address" and store in "DevIpAddress1"
     #Mobile part
     Given select mobile "mobile2"
     When launch mobile app "MobileNetworkSettings"
     Then switch off mobile data for "USE_CustomerDATA_Mobile2deviceId"
     Then wait for 10 seconds
     Then store time in "strtime2"
     Then switch on mobile data for "USE_CustomerDATA_Mobile2deviceId"
     Then wait for 50 seconds
     #Web Part
     When click on button "Refresh"
     Then click on results based on below criteria
     |values|
     |strtime2|
     |USE_CustomerDATA_DynamicAPN|
     Then get value of "Device IP address" and store in "DevIpAddress2"
     Then verify if "DevIpAddress1" "not equal" "DevIpAddress2"
     Then report "New PS session has a diff Dynamic IP Address"
     Then logout

  @REG_R8.0_GUI_PSData_014
  Scenario: Test to verify that the Static IP Address allocated to the PD session remains constant for the duration of the session
     Given test case starts
     Given select mobile "mobile2"
     When launch mobile app "APNsettings"
     Then scroll to text "USE_CustomerDATA_StaticAPN"
     Then select mobile radiobutton "USE_CustomerDATA_StaticAPN"
     When launch mobile app "MobileNetworkSettings"
     Then switch off mobile data for "USE_CustomerDATA_Mobile2deviceId"
     Then wait for 10 seconds
     Then store time in "strtime"
     Then switch on mobile data for "USE_CustomerDATA_Mobile2deviceId"
     When launch mobile app "MobileNetworkSettings"
     Then verify if data signal available for "USE_CustomerDATA_Mobile2deviceId"
     #Web Part
     Given browser is open
     Then login
     Then click on Recent Data Usage for Imsi "USE_CustomerDATA_IMSIData"
     Then click on results based on below criteria
     |values|
     |strtime|
     |USE_CustomerDATA_StaticAPN|
     Then verify text "Static"
     Then get value of "Device IP address" and store in "DevIpAddress1"
     #Mobile part
     Given select mobile "mobile2"
     When launch mobile app "MobileNetworkSettings"
     Then switch off mobile data for "USE_CustomerDATA_Mobile2deviceId"
     Then wait for 10 seconds
     Then store time in "strtime2"
     Then switch on mobile data for "USE_CustomerDATA_Mobile2deviceId"
     Then wait for 50 seconds
     #Web Part
     When click on button "Refresh"
     Then click on results based on below criteria
     |values|
     |strtime2|
     |USE_CustomerDATA_StaticAPN|
     Then get value of "Device IP address" and store in "DevIpAddress2"
     Then verify if "DevIpAddress1" "equal" "DevIpAddress2"
     Then report "New PS session has same Static IP Address"
     Then logout

