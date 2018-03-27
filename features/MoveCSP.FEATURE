@CSPOperations_MoveCSP
Feature: MoveCSP

@tc_GUI_MoveCSP_006
  Scenario: Test to verify that Opco User can Move the SIM from LBS-disabled CSP to LBS-enabled.


       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       When click on menu "Devices"
       Then verify text "All devices"
       When click on submenu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_CSPOperations_LBSDisabledCustIMSI"
       When click on button "Search"
       Then verify text "Results"
       Then click on "checkbox" of table based on below criteria
      | IMSI                   |
      | USE_CSPOperations_LBSDisabledCustIMSI |
       When click on link "Operations"
       Then verify text "Batch Operations"
       When click on button "Next"
       Then verify text "* Action"
       Then select dropdown "* Action" "Change service profile"
       When click on input "* Organisation" and enter value "USE_CSPOperations_LBSEnabledCust"
       Then select dropdown "New service profile" "USE_CSPOperations_LBSEnabledCSP"
       When click on button "Next"
       Then verify text "Action"
       When click on button "Submit"
       Then verify text "successfully submitted"
       When click on menu "Devices"
       When click on submenu "All devices"
       Then enter textarea "IMSI" "USE_CSPOperations_LBSDisabledCustIMSI"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_CSPOperations_LBSDisabledCustIMSI"
       Then verify text "Overview"
       Then verify text "USE_CSPOperations_LBSEnabledCust"
       Then verify text "USE_CSPOperations_LBSEnabledCSP"
       Then logout

  @tc_GUI_MoveCSP_008
   Scenario: Test to verify that Opco User can Move the SIM from SMPP-disabled CSP to SMPP-enabled.


       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       When click on menu "Devices"
       Then verify text "All devices"
       When click on submenu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_CSPOperations_SMPPDisabledCustIMSI"
       When click on button "Search"
       Then verify text "Results"
       Then click on "checkbox" of table based on below criteria
      | IMSI                   |
      | USE_CSPOperations_SMPPDisabledCustIMSI |
       When click on link "Operations"
       Then verify text "Batch Operations"
       When click on button "Next"
       Then verify text "* Action"
       Then select dropdown "* Action" "Change service profile"
       When click on input "* Organisation" and enter value "USE_CSPOperations_SMPPEnabledCust"
       Then select dropdown "New service profile" "USE_CSPOperations_SMPPEnabledCSP"
       When click on button "Next"
       Then verify text "Action"
       When click on button "Submit"
       Then verify text "successfully submitted"
       When click on menu "Devices"
       When click on submenu "All devices"
       Then enter textarea "IMSI" "USE_CSPOperations_SMPPDisabledCustIMSI"
       When click on button "Search"
       When click on link "USE_CSPOperations_SMPPDisabledCustIMSI"
       Then verify text "Overview"
       Then verify text "USE_CSPOperations_SMPPEnabledCust"
       Then verify text "USE_CSPOperations_SMPPEnabledCSP"
       Then logout


  @tc_GUI_MoveCSP_010
   Scenario: Test to verify that Opco User can Move the SIM from SMS MO rating by serving OpCo disabled CSP to SMS MO rating by serving OpCo enabled


       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       When click on menu "Devices"
       Then verify text "All devices"
       When click on submenu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_CSPOperations_SMSMOratingDisabledCustIMSI"
       When click on button "Search"
       Then verify text "Results"
       Then click on "checkbox" of table based on below criteria
      | IMSI                   |
      | USE_CSPOperations_SMSMOratingDisabledCustIMSI |
       When click on link "Operations"
       Then verify text "Batch Operations"
       When click on button "Next"
       Then verify text "* Action"
       Then select dropdown "* Action" "Change service profile"
       When click on input "* Organisation" and enter value "USE_CSPOperations_SMSMOratingEnabledCust"
       Then select dropdown "New service profile" "USE_CSPOperations_SMSMOratingEnabledCSP"
       When click on button "Next"
       Then verify text "Action"
       When click on button "Submit"
       Then verify text "successfully submitted"
       When click on menu "Devices"
       When click on submenu "All devices"
       Then enter textarea "IMSI" "USE_CSPOperations_SMSMOratingDisabledCustIMSI"
       When click on button "Search"
       When click on link "USE_CSPOperations_SMSMOratingDisabledCustIMSI"
       Then verify text "Overview"
       Then verify text "USE_CSPOperations_SMSMOratingEnabledCust"
       Then verify text "USE_CSPOperations_SMSMOratingEnabledCSP"
       Then logout

 @tc_GUI_MoveCSP_003
   Scenario: Test to verify that Customer User can move the SIM to other service profile using GUI


       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       Then verify text "USE_ADMIN_Cust3"
       When click on link "USE_ADMIN_Cust3"
       Then verify text "M2M Dashboard"
       When click on menu "Devices"
       Then verify text "All devices"
       When click on submenu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_CSPOperations_MovetoOtherCSPIMSI"
       When click on button "Search"
       Then verify text "Results"
       Then click on "checkbox" of table based on below criteria
      | IMSI                   |
      | USE_CSPOperations_MovetoOtherCSPIMSI |
       When click on link "Operations"
       Then verify text "Batch Operations"
       When click on button "Next"
       Then verify text "* Action"
       Then select dropdown "* Action" "Change service profile"
       Then select dropdown "New service profile" "USE_CSPOperations_MovetoOtherCSPCSPname"
       When click on button "Next"
       Then verify text "Action"
       When click on button "Submit"
       Then verify text "successfully submitted"
       When click on menu "Devices"
       When click on submenu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_CSPOperations_MovetoOtherCSPIMSI"
       When click on button "Search"
       When click on link "USE_CSPOperations_MovetoOtherCSPIMSI"
       Then verify text "Overview"
       Then verify text "USE_CSPOperations_MovetoOtherCSPCustname"
       Then verify text "USE_CSPOperations_MovetoOtherCSPCSPname"
       When click on link "USE_ADMIN_Cust3"
       Then verify text "USE_ADMIN_Opco"
       When click on link "USE_ADMIN_Opco"
       Then logout

   @tc_GUI_MoveCSP_004
   Scenario: Test to verify that OpCo user can move the SIM to different Service Profile with different SMS-MO Routin


       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       When click on menu "Devices"
       Then verify text "All devices"
       When click on submenu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_CSPOperations_TodifferentSMSMOratingEnabledIMSI"
       When click on button "Search"
       Then verify text "Results"
       Then click on "checkbox" of table based on below criteria
      | IMSI                   |
      | USE_CSPOperations_TodifferentSMSMOratingEnabledIMSI |
       When click on link "Operations"
       Then verify text "Batch Operations"
       When click on button "Next"
       Then verify text "* Action"
       Then select dropdown "* Action" "Change service profile"
       When click on input "* Organisation" and enter value "USE_CSPOperations_TodifferentSMSMOratingEnabledCustname"
       Then select dropdown "New service profile" "USE_CSPOperations_TodifferentSMSMOratingEnabledCSPname"
       When click on button "Next"
       Then verify text "Action"
       When click on button "Submit"
       Then verify text "successfully submitted"
       When click on menu "Devices"
       When click on submenu "All devices"
       Then enter textarea "IMSI" "USE_CSPOperations_TodifferentSMSMOratingEnabledIMSI"
       When click on button "Search"
       When click on link "USE_CSPOperations_TodifferentSMSMOratingEnabledIMSI"
       Then verify text "Overview"
       Then verify text "USE_CSPOperations_TodifferentSMSMOratingEnabledCustname"
       Then verify text "USE_CSPOperations_TodifferentSMSMOratingEnabledCSPname"
       Then logout


  @tc_GUI_MoveCSP_002
   Scenario: Test to verify that Opco User can move the SIM from Voice-disabled customer to Voice-enabled customer


       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       When click on menu "Devices"
       Then verify text "All devices"
       When click on submenu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_CSPOperations_VoicedisabledCustIMSI"
       When click on button "Search"
       Then verify text "Results"
       Then click on "checkbox" of table based on below criteria
      | IMSI                   |
      | USE_CSPOperations_VoicedisabledCustIMSI |
       When click on link "Operations"
       Then verify text "Batch Operations"
       When click on button "Next"
       Then verify text "* Action"
       Then select dropdown "* Action" "Change service profile"
       When click on input "* Organisation" and enter value "USE_CSPOperations_VoiceEnabledCust"
       Then select dropdown "New service profile" "USE_CSPOperations_VoiceEnabledCustCSP"
       When click on button "Next"
       Then verify text "Action"
       When click on button "Submit"
       Then verify text "successfully submitted"
       When click on menu "Devices"
       When click on submenu "All devices"
       Then enter textarea "IMSI" "USE_CSPOperations_VoicedisabledCustIMSI"
       When click on button "Search"
       When click on link "USE_CSPOperations_VoicedisabledCustIMSI"
       Then verify text "Overview"
       Then verify text "USE_CSPOperations_VoiceEnabledCust"
       Then verify text "USE_CSPOperations_VoiceEnabledCustCSP"
    #       Then logout

#    Restore
       When click on menu "Devices"
       Then verify text "All devices"
       When click on submenu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_CSPOperations_VoicedisabledCustIMSI"
       When click on button "Search"
       Then verify text "Results"
       Then click on "checkbox" of table based on below criteria
      | IMSI                   |
      | USE_CSPOperations_VoicedisabledCustIMSI |
       When click on link "Operations"
       Then verify text "Batch Operations"
       When click on button "Next"
       Then verify text "* Action"
       Then select dropdown "* Action" "Change service profile"
       When click on input "* Organisation" and enter value "USE_CSPOperations_VoiceDisabledCust"
       Then select dropdown "New service profile" "USE_CSPOperations_VoiceDisabledCustCSP"
       When click on button "Next"
       Then verify text "Action"
       When click on button "Submit"
       Then verify text "successfully submitted"
       Then logout
