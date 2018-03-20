@IMEIOperations_IMEI
Feature: IMEI Operations/IMEI

  @tc_IMEI_003
  Scenario: Test to verify whether IMEI of the Device is not detected automatically when configured as set explicitly

       Given test case starts
#       CSP modification
       Given browser is open
       Then login
       When click on menu "Administration"
       When click on submenu "Service profile"
       Then verify text "Results"
       Then enter "Service Profile" "USE_IMEIOperations_CSPwithExplicitlyCSPname"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_IMEIOperations_CSPwithExplicitlyCSPname"
       When click on link "Details"
       Then verify text "IMEI matching"
       When click on button "Edit" on position 3
       Then select dropdown "Match rule" "Match IMEI"
       Then select dropdown "Capture rule" "Set explicitly"
       Then select dropdown "Event action" "None"
       Then select dropdown "Device action" "None"
       When click on button "Save"
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
       Then enter textarea "IMSI" "USE_IMEIOperations_CSPwithExplicitlyIMSI"
       When click on button "Search"
       When click on link "USE_IMEIOperations_CSPwithExplicitlyIMSI"
       Then verify text "Overview"
       When click on link "Operations"
       Then verify text "Take action"
       When click on link "Configure"
       When click on link "Set IMEI (assigned)"
       Then verify text "The IMEI (assigned) is not set"
       When click on link "Cancel"
       Then logout

  @tc_IMEI_001
  Scenario: Test to verify whether IMEI of the Device get detected automatically on First Ever Use

       Given test case starts
#       CSP modification
       Given browser is open
       Then login
       When click on menu "Administration"
       When click on submenu "Service profile"
       Then verify text "Results"
       Then enter "Service Profile" "USE_IMEIOperations_CSPwithFirstEverUseCSPname"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_IMEIOperations_CSPwithFirstEverUseCSPname"
       When click on link "Details"
       Then verify text "IMEI matching"
       When click on button "Edit" on position 3
       Then select dropdown "Match rule" "Match IMEI"
       Then select dropdown "Capture rule" "Auto-detect on first ever use"
       Then select dropdown "Event action" "None"
       Then select dropdown "Device action" "None"
       When click on button "Save"
#       Mobile Part
       Given select mobile "mobile2"
       When launch mobile app "youtube"
       Then verify text "Home" on mobile
       Then click on mobile icon "Search"
       Then tap on enter key on mobile
       Then enter "Search YouTube" "java" on mobile
       When click on mobile link "Java Programming"
#       Web Part

       When click on menu "Devices"
       When click on submenu "All devices"
       Then enter textarea "IMSI" "USE_IMEIOperations_CSPwithFirstEverUseIMSI"
       When click on button "Search"
       When click on link "USE_IMEIOperations_CSPwithFirstEverUseIMSI"
       Then verify text "Overview"
       When click on link "Operations"
       Then verify text "Take action"
       When click on link "Configure"
       When click on link "Set IMEI (assigned)"
       Then verify text "IMEI (Last detected)"

       When click on link "Cancel"
       Then logout

  @tc_IMEI_002
  Scenario: Test to verify whether IMEI of the Device get detected automatically on First Active-Live Use

       Given test case starts
#       CSP modification
       Given browser is open
       Then login
       When click on menu "Administration"
       When click on submenu "Service profile"
       Then verify text "Results"
       Then enter "Service Profile" "USE_IMEIOperations_CSPwithFirstActiveUseCSPname"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_IMEIOperations_CSPwithFirstActiveUseCSPname"
       When click on link "Details"
       Then verify text "IMEI matching"
       When click on button "Edit" on position 3
       Then select dropdown "Match rule" "Match IMEI"
       Then select dropdown "Capture rule" "Auto-detect on first Active-Live use"
       Then select dropdown "Event action" "None"
       Then select dropdown "Device action" "None"
       When click on button "Save"
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
       Then enter textarea "IMSI" "USE_IMEIOperations_CSPwithFirstActiveUseIMSI"
       When click on button "Search"
       When click on link "USE_IMEIOperations_CSPwithFirstActiveUseIMSI"
       Then verify text "Overview"
       When click on link "Operations"
       Then verify text "Take action"
       When click on link "Configure"
       When click on link "Set IMEI (assigned)"
       Then verify text "IMEI (Last detected)"

       When click on link "Cancel"
       Then logout
