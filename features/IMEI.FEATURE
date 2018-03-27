@IMEITestCases
Feature: IMEI


  @tc_GUI_IMEI_006
  Scenario: Test to verify whether System identifies error when Opco User set Last Detected IMEI as the IMEI of the SIM when NO IMEI is already detected

       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       When click on menu "Devices"
       Then verify text "All devices"
       When click on submenu "All devices"
       Then enter textarea "IMSI" "USE_IMEI_IMSIwithnoIMEIDetected"
       When click on button "Search"
       When click on link "USE_IMEI_IMSIwithnoIMEIDetected"
       Then verify text "Overview"
       When click on link "Operations"
       Then verify text "Take action"
       When click on link "Configure"
       When click on link "Set IMEI (assigned)"
       Then verify text "The IMEI (assigned) is not set"
       Then verify no text "Last detected"
       When click on link "Cancel"
       Then logout


  @tc_GUI_IMEI_001
  Scenario: Test to verify whether Opco User can update IMEI details of the SIM

       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       When click on menu "Devices"
       Then verify text "All devices"
       When click on submenu "All devices"
       Then enter textarea "IMSI" "USE_IMEI_IMSIUpdatewithnoIMEIDetected"
       When click on button "Search"
       When click on link "USE_IMEI_IMSIUpdatewithnoIMEIDetected"
       Then verify text "Overview"
       When click on link "Operations"
       Then verify text "Take action"
       When click on link "Configure"
       When click on link "Set IMEI (assigned)"
       Then enter "IMEI" "USE_IMEI_IMSIUpdatewithnewIMEI"
       When click on button "Next"
       Then verify text "USE_IMEI_IMSIUpdatewithnewIMEI"
       When click on button "Confirm"
       Then verify text "successfully set"
       When click on button "Go to operations"
       Then verify text "Take action"
       Then verify text "Set IMEI (assigned)"
       When click on link "Set IMEI (assigned)"
       Then verify text "The IMEI (assigned) is currently set to"
       Then verify text "USE_IMEI_IMSIUpdatewithnewIMEI"
       Then logout

#  @tc_GUI_IMEI_003
#  Scenario: Test to verify whether the Last Detected IMEI gets update when IMEI Rule is set and PD Usage has been made
#
#       Given test case starts
##       Mobile Part
#       Given select mobile "mobile2"
#       When launch mobile app "youtube"
#       Then get IMEI of "USE_IMEI_LastDetectedIMEIDeviceID" and store in "DeviceIMEI"
#       Then verify text "Home" on mobile
#       Then click on mobile icon "Search"
#       Then tap on enter key on mobile
#       Then enter "Search YouTube" "java" on mobile
#       When click on mobile link "Java Programming"
##       Web Part
#       Given browser is open
#       Then login
#       Then verify text "M2M Dashboard"
#       When click on menu "Devices"
#       Then verify text "All devices"
#       When click on submenu "All devices"
#       Then enter textarea "IMSI" "USE_IMEI_IMSIwithLastDetectedIMEI"
#       When click on button "Search"
#       When click on link "USE_IMEI_IMSIwithLastDetectedIMEI"
#       Then verify text "Overview"
#       When click on link "Operations"
#       Then verify text "Take action"
#       When click on link "Configure"
#       When click on link "Set IMEI (assigned)"
#       Then verify text "IMEI (Last detected)"
#       Then get value of "IMEI (Last detected)" and store in "DetectedIMEI"
##       Verification
#       When launch mobile app "youtube"
#       Then verify IMEI "DetectedIMEI" "equal" "DeviceIMEI"
#       Then logout

  @tc_GUI_IMEI_005
  Scenario: Test to verify whether Opco User set Last Detected IMEI as the IMEI of the SIM

       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       When click on menu "Devices"
       Then verify text "All devices"
       When click on submenu "All devices"
       Then enter textarea "IMSI" "USE_IMEI_IMSISetwithLastDetectedIMEI"
       When click on button "Search"
       When click on link "USE_IMEI_IMSISetwithLastDetectedIMEI"
       Then verify text "Overview"
       When click on link "Operations"
       Then verify text "Take action"
       When click on link "Configure"
       When click on link "Set IMEI (assigned)"
       Then verify text "IMEI (Last detected)"
       Then get value of "IMEI (Last detected)" and store in "IMEI1"
       When click on link "Use"
       When click on button "Next"
       Then verify text "Please confirm"
       When click on button "Confirm"
       Then verify text "successfully set"
       When click on button "Go to operations"
#       Verification
       When click on link "Overview"
       Then verify text "Information"
       Then verify text "IMEI (Assigned)"
       Then get value of "IMEI (Assigned)" and store in "IMEI2"
       Then verify if "IMEI1" "equal" "IMEI2"
       Then logout

  @tc_GUI_IMEI_004
  Scenario: Test to verify whether Customer User set Last Detected IMEI as the IMEI of the SIM

       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       When click on link "USE_ADMIN_Opco"
       Then verify text "USE_ADMIN_Cust1"
       When click on link "USE_ADMIN_Cust1"
       Then verify text "M2M Dashboard"
       When click on menu "Devices"
       Then verify text "All devices"
       When click on submenu "All devices"
       Then enter textarea "IMSI" "USE_IMEI_IMSISetwithLastDetectedIMEI"
       When click on button "Search"
       When click on link "USE_IMEI_IMSISetwithLastDetectedIMEI"
       Then verify text "Overview"
       When click on link "Operations"
       Then verify text "Take action"
       When click on link "Configure"
       When click on link "Set IMEI (assigned)"
       Then verify text "IMEI (Last detected)"
       Then get value of "IMEI (Last detected)" and store in "IMEI1"
       When click on link "Use"
       When click on button "Next"
       Then verify text "Please confirm"
       When click on button "Confirm"
       Then verify text "successfully set"
       When click on button "Go to operations"
#       Verification
       When click on link "Overview"
       Then verify text "Information"
       Then verify text "IMEI (Assigned)"
       Then get value of "IMEI (Assigned)" and store in "IMEI2"
       Then verify if "IMEI1" "equal" "IMEI2"
       Then logout