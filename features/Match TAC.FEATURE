@IMEIOperations_MatchTAC
Feature: IMEI Operations/Match TAC

@tc_Match_TAC_001
Scenario: Test to verify whether the device will Not Tear Down session and No Event Action gets triggered when SIM is used in a device with IMEI which is configured in GDSP

       Given test case starts
#       Mobile Part
       Given select mobile "mobile2"
       When launch mobile app "youtube"
       Then verify text "Home" on mobile
       Then click on mobile icon "Search"
       Then tap on enter key on mobile
       Then enter "Search YouTube" "java" on mobile
       When click on mobile link "Java Programming"

#       Web Part
       Given browser is open
       Then login
       When click on menu "Devices"
       When click on submenu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_IMEIOperations_MatchTACNoTearDownandEventActionIMSI"
       When click on button "Search"
       When click on link "USE_IMEIOperations_MatchTACNoTearDownandEventActionIMSI"
       Then verify text "Overview"
       When click on link "Operations"
       Then verify text "Take action"
       When click on link "Configure"
       When click on link "Set IMEI (assigned)"
       Then verify text "IMEI (Last detected)"
       When click on link "Use"
       When click on button "Next"
       When click on button "Confirm"
       Then verify text "successfully set"
#       CSP modification
       When click on menu "Administration"
       When click on submenu "Service profile"
       Then verify text "Results"
       Then enter "Service Profile" "USE_IMEIOperations_MatchTACNoTearDownandEventActionCSPname"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_IMEIOperations_MatchTACNoTearDownandEventActionCSPname"
       When click on link "Details"
       Then verify text "IMEI matching"
       When click on button "Edit" on position 3
       Then select dropdown "Match rule" "Match TAC"
       Then enter "* TAC" "USE_IMEIOperations_MatchTACValue"
       Then select dropdown "Capture rule" "Set explicitly"
       Then select dropdown "Event action" "Immediate Email"
       Then select dropdown "Device action" "Teardown"
       When click on button "Save"
#       Mobile Part
       Given select mobile "mobile2"
       When launch mobile app "youtube"
       Then verify text "Home" on mobile
       Then click on mobile icon "Search"
       Then tap on enter key on mobile
       Then enter "Search YouTube" "java" on mobile
       When click on mobile link "Java Programming"
#       Restore
       When click on menu "Administration"
       When click on submenu "Service profile"
       Then verify text "Results"
       Then enter "Service Profile" "USE_IMEIOperations_MatchTACNoTearDownandEventActionCSPname"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_IMEIOperations_MatchTACNoTearDownandEventActionCSPname"
       When click on link "Details"
       Then verify text "IMEI matching"
       When click on button "Edit" on position 3
       Then select dropdown "Match rule" "Disabled"
       When click on button "Save"
       Then logout


  @tc_Match_TAC_002
  Scenario: Test to verify whether the device gets Tear Down and Event Action gets triggered when SIM is used in a device with IMEI other than the configured one in GDSP

       Given test case starts
#       Mobile Part
       Given select mobile "mobile2"
       When launch mobile app "youtube"
       Then verify text "Home" on mobile
       Then click on mobile icon "Search"
       Then tap on enter key on mobile
       Then enter "Search YouTube" "java" on mobile
       When click on mobile link "Java Programming"
#       Web Part
       Given browser is open
       Then login
       When click on menu "Devices"
       When click on submenu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_IMEIOperations_MatchTACTearDownandEventActionIMSI"
       When click on button "Search"
       When click on link "USE_IMEIOperations_MatchTACTearDownandEventActionIMSI"
       Then verify text "Overview"
       When click on link "Operations"
       Then verify text "Take action"
       When click on link "Configure"
       When click on link "Set IMEI (assigned)"
       Then verify text "IMEI (Last detected)"
       Then enter "IMEI" "USE_IMEIOperations_MatchTACTearDownandEventActionIMEI"
       When click on button "Next"
       Then verify text "set"
       When click on button "Confirm"
       Then verify text "successfully set"
#       CSP modification
       When click on menu "Administration"
       When click on submenu "Service profile"
       Then verify text "Results"
       Then enter "Service Profile" "USE_IMEIOperations_MatchTACTearDownandEventActionCSPname"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_IMEIOperations_MatchTACTearDownandEventActionCSPname"
       When click on link "Details"
       Then verify text "IMEI matching"
       When click on button "Edit" on position 3
       Then select dropdown "Match rule" "Match TAC"
       Then enter "* TAC" "USE_IMEIOperations_MatchTACValue"
       Then select dropdown "Capture rule" "Set explicitly"
       Then select dropdown "Event action" "Daily report"
       Then select dropdown "Device action" "Teardown"
       When click on button "Save"
#       Verification
#       Mobile Part
       Given select mobile "mobile2"
       When launch mobile app "youtube"
       Then verify if no data signal for "USE_IMEIOperations_MatchTACTearDownandEventActionDeviceID"
#       Restore
       When click on menu "Administration"
       When click on submenu "Service profile"
       Then verify text "Results"
       Then enter "Service Profile" "USE_IMEIOperations_MatchTACTearDownandEventActionCSPname"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_IMEIOperations_MatchTACTearDownandEventActionCSPname"
       When click on link "Details"
       Then verify text "IMEI matching"
       When click on button "Edit" on position 3
       Then select dropdown "Match rule" "Disabled"
       When click on button "Save"
       Then logout

  @tc_Match_TAC_003
  Scenario: Test to verify whether the device gets Tear Down and IMEI Lock Device along with Event Action gets triggered when SIM is used in a device with IMEI other than the configured one in GDSP

       Given test case starts
#       Mobile Part
       Given select mobile "mobile2"
       When launch mobile app "youtube"
       Then verify text "Home" on mobile
       Then click on mobile icon "Search"
       Then tap on enter key on mobile
       Then enter "Search YouTube" "java" on mobile
       When click on mobile link "Java Programming"
#       Web Part
       Given browser is open
       Then login
       When click on menu "Devices"
       When click on submenu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_IMEIOperations_MatchTACTearDownandIMEILockIMSI"
       When click on button "Search"
       When click on link "USE_IMEIOperations_MatchTACTearDownandIMEILockIMSI"
       Then verify text "Overview"
       When click on link "Operations"
       Then verify text "Take action"
       When click on link "Configure"
       When click on link "Set IMEI (assigned)"
       Then verify text "IMEI (Last detected)"
       Then enter "IMEI" "USE_IMEIOperations_MatchTACTearDownandIMEILockIMEI"
       When click on button "Next"
       Then verify text "set"
       When click on button "Confirm"
       Then verify text "successfully set"
#       CSP modification
       When click on menu "Administration"
       When click on submenu "Service profile"
       Then verify text "Results"
       Then enter "Service Profile" "USE_IMEIOperations_MatchTACTearDownandIMEILockCSPname"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_IMEIOperations_MatchTACTearDownandIMEILockCSPname"
       When click on link "Details"
       Then verify text "IMEI matching"
       When click on button "Edit" on position 3
       Then select dropdown "Match rule" "Match TAC"
       Then enter "* TAC" "USE_IMEIOperations_MatchTACValue"
       Then select dropdown "Capture rule" "Set explicitly"
       Then select dropdown "Event action" "None"
       Then select dropdown "Device action" "Teardown and set IMEI"
       When click on button "Save"
#      Verification
#       Mobile Part
       Given select mobile "mobile2"
       When launch mobile app "youtube"
       Then verify if no data signal for "USE_IMEIOperations_MatchTACTearDownandIMEILockDeviceID"
#       Web Part
       When click on menu "Devices"
       When click on submenu "All devices"
       Then enter textarea "IMSI" "USE_IMEIOperations_MatchTACTearDownandIMEILockIMSI"
       When click on button "Search"
       When click on link "USE_IMEIOperations_MatchTACTearDownandIMEILockIMSI"
       Then verify text "Active.Suspend"

#       Restore 1
       When click on menu "Devices"
       When click on submenu "All devices"
       Then enter textarea "IMSI" "USE_IMEIOperations_MatchTACTearDownandIMEILockIMSI"
       When click on button "Search"
       Then verify text "Results"
       Then click on "checkbox" of table based on below criteria
      | IMSI                   |
      | USE_IMEIOperations_MatchTACTearDownandIMEILockIMSI |
       When click on link "Operations"
       When click on button "Next"
       Then verify text "* Action"
       Then select dropdown "* Action" "Change state"
       Then select dropdown "New State" "Active.Live"
       When click on button "Next"
       Then verify text "Action"
       When click on button "Submit"
       Then verify text "successfully submitted"
#       Restore 2
       When click on menu "Administration"
       When click on submenu "Service profile"
       Then verify text "Results"
       Then enter "Service Profile" "USE_IMEIOperations_MatchTACTearDownandIMEILockCSPname"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_IMEIOperations_MatchTACTearDownandIMEILockCSPname"
       When click on link "Details"
       Then verify text "IMEI matching"
       When click on button "Edit" on position 3
       Then select dropdown "Match rule" "Disabled"
       When click on button "Save"
       Then logout
