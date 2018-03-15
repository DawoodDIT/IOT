@AAA_Voice

  Feature: AAA Voice

    @tc_GUI_Voice_001
    Scenario: Test to verify whether Opco user can create new VPN Group

     Given test case starts
     Given browser is open
     Then login
     Then verify text "M2M Dashboard"
     When click on menu "Administration"
     Then verify text "Customers"
     When click on submenu "Customers"
     Then verify text "Results"
     Then enter "Organisation" "USE_AAAVoiceConfiguration_Custname"
     When click on button "Search"
     Then verify text "Results"
     When click on link "USE_AAAVoiceConfiguration_Custname"
     Then verify text "Information"
     When click on tab "Details"
     Then verify text "Devices"
     When click on link "Connectivity services"
     Then verify text "VPN groups"
     When click on button "VPN Plus"
     Then verify text "New VPN"
     Then generate unique name starts with "VPN" and store in "VPNname"
     Then enter "* VPN group name" "VPNname"
     Then enter "Description" "USE_AAAVoiceConfiguration_NewVPNdescription"
     When click on button "Save"
     Then verify text "VPN groups"
     Then verify text "VPNname"
     Then logout

   @tc_GUI_Voice_002
    Scenario: Test to verify whether Opco user can create new Number List

     Given test case starts
     Given browser is open
     Then login
     Then verify text "M2M Dashboard"
     When click on menu "Administration"
     Then verify text "Customers"
     When click on submenu "Customers"
     Then verify text "Results"
     Then enter "Organisation" "USE_AAAVoiceConfiguration_Custname"
     When click on button "Search"
     Then verify text "Results"
     When click on link "USE_AAAVoiceConfiguration_Custname"
     Then verify text "Information"
     When click on tab "Details"
     Then verify text "Devices"
     When click on link "Connectivity services"
     Then verify text "VPN groups"
     When click on button "VPN Plus"
     Then verify text "New VPN"
     Then generate unique name starts with "VPN" and store in "VPNname"
     Then enter "* VPN group name" "VPNname"
     Then enter "Description" "USE_AAAVoiceConfiguration_NewVPNdescription"
     When click on link "Add block"
     Then enter "Block" "USE_AAAVoiceConfiguration_BlockAllnumber"
     Then select check box "Incoming"
     Then select check box "Outgoing"
     When click on link "Add allow"
     Then enter "But allow" "USE_AAAVoiceConfiguration_AllowAllnumber"
     Then select check box "Incoming" on position 2
     Then select check box "Outgoing" on position 2
     When click on button "Save"
     Then verify text "VPN groups"
     Then verify text "VPNname"
     Then verify text "USE_AAAVoiceConfiguration_BlockAllnumber"
     Then verify text "USE_AAAVoiceConfiguration_AllowAllnumber"
     Then logout

   @tc_GUI_Voice_003
    Scenario: Test to verify whether Opco user can create new White Call List Configuration

     Given test case starts
     Given browser is open
     Then login
     Then verify text "M2M Dashboard"
     When click on menu "Administration"
     Then verify text "Customers"
     When click on submenu "Customers"
     Then verify text "Results"
     Then enter "Organisation" "USE_AAAVoiceConfiguration_Custname"
     When click on button "Search"
     Then verify text "Results"
     When click on link "USE_AAAVoiceConfiguration_Custname"
     Then verify text "Information"
     When click on tab "Details"
     Then verify text "Devices"
     When click on link "Connectivity services"
     Then verify text "VPN groups"
     Then verify text "USE_AAAVoiceConfiguration_BlacklistVPN"
     When click on expand link "USE_AAAVoiceConfiguration_BlacklistVPN"
     When click on button "Edit" on position 6
     Then enter "But allow" "USE_AAAVoiceConfiguration_Allownumber"
     When click on button "Save"
     Then verify text "VPN groups"
     Then verify text "USE_AAAVoiceConfiguration_BlacklistVPN"
     Then verify text "None"
     Then logout


   @tc_GUI_Voice_004
    Scenario: Test to verify whether Opco user can create new Black Call List Configuration

     Given test case starts
     Given browser is open
     Then login
     Then verify text "M2M Dashboard"
     When click on menu "Administration"
     Then verify text "Customers"
     When click on submenu "Customers"
     Then verify text "Results"
     Then enter "Organisation" "USE_AAAVoiceConfiguration_Custname"
     When click on button "Search"
     Then verify text "Results"
     When click on link "USE_AAAVoiceConfiguration_Custname"
     Then verify text "Information"
     When click on tab "Details"
     Then verify text "Devices"
     When click on link "Connectivity services"
     Then verify text "VPN groups"
     Then verify text "USE_AAAVoiceConfiguration_BlacklistVPN"
     When click on expand link "USE_AAAVoiceConfiguration_BlacklistVPN"
     When click on button "Edit" on position 6
     Then enter "But allow" "USE_AAAVoiceConfiguration_Allownumber"
     When click on button "Save"
     Then verify text "VPN groups"
     Then verify text "USE_AAAVoiceConfiguration_BlacklistVPN"
     Then verify text "None"
     Then logout

   @tc_GUI_Voice_005
    Scenario: Test to verify whether Opco user can create Configure Calling Restrictions for a VPN Group

     Given test case starts
     Given browser is open
     Then login
     Then verify text "M2M Dashboard"
     When click on menu "Administration"
     Then verify text "Customers"
     When click on submenu "Customers"
     Then verify text "Results"
     Then enter "Organisation" "USE_AAAVoiceConfiguration_Custname"
     When click on button "Search"
     Then verify text "Results"
     When click on link "USE_AAAVoiceConfiguration_Custname"
     Then verify text "Information"
     When click on tab "Details"
     Then verify text "Devices"
     When click on link "Connectivity services"
     Then verify text "VPN groups"
     Then verify text "USE_AAAVoiceConfiguration_BlacklistVPN"
     When click on expand link "USE_AAAVoiceConfiguration_BlacklistVPN"
     When click on button "Edit" on position 6
     Then enter "But allow" "USE_AAAVoiceConfiguration_Allownumber"
     Then select check box "Incoming"
     Then select check box "Incoming"
     When click on button "Save"
     Then verify text "VPN groups"
     Then verify text "USE_AAAVoiceConfiguration_BlacklistVPN"
     Then verify text "None"
     Then logout

   @tc_GUI_Voice_008
    Scenario: Test to verify whether Opco user can Configure Calling Restrictions for a voice enabled customer

     Given test case starts
     Given browser is open
     Then login
     Then verify text "M2M Dashboard"
     When click on menu "Administration"
     Then verify text "Customers"
     When click on submenu "Customers"
     Then verify text "Results"
     Then enter "Organisation" "USE_AAAVoiceConfiguration_Custname"
     When click on button "Search"
     Then verify text "Results"
     When click on link "USE_AAAVoiceConfiguration_Custname"
     Then verify text "Information"
     When click on tab "Details"
     Then verify text "Devices"
     When click on link "Connectivity services"
     Then verify text "VPN groups"
     Then verify text "USE_AAAVoiceConfiguration_BlacklistVPN"
     When click on expand link "USE_AAAVoiceConfiguration_BlacklistVPN"
     When click on button "Edit" on position 6
     Then enter "But allow" "USE_AAAVoiceConfiguration_Allownumber"
     Then select check box "Outgoing"
     Then select check box "Outgoing"
     When click on button "Save"
     Then verify text "VPN groups"
     Then verify text "USE_AAAVoiceConfiguration_BlacklistVPN"
     Then verify text "None"
     Then logout


   @tc_GUI_Voice_009
    Scenario: Test to verify that opco user can configure VPN Group for a CSP

     Given test case starts
     Given browser is open
     Then login
     Then verify text "M2M Dashboard"
     When click on menu "Administration"
     Then verify text "Service profiles"
     When click on submenu "Service profiles"
     Then verify text "Results"
     Then enter "Service Profile" "USE_AAAVoiceConfiguration_CSPname"
     When click on button "Search"
     Then verify text "Results"
     When click on link "USE_AAAVoiceConfiguration_CSPname"
     Then verify text "Information"
     When click on tab "Details"
     Then verify text "SIM state"
     When click on link "Connectivity services"
     Then verify text "Connectivity services"
     Then verify text "Voice service"
     When click on button "Edit" on position 3
     Then select dropdown "VPN group" "USE_AAAVoiceConfiguration_NewVPNname"
     When click on button "Save"
     Then verify text "USE_AAAVoiceConfiguration_NewVPNname"
     Then logout

   @tc_GUI_Voice_0010
    Scenario: Test to verify that Customer user can configure VPN Group for a CSP

     Given test case starts
     Given browser is open
     Then login
     Then verify text "M2M Dashboard"
     When click on link "USE_ADMIN_Opco"
     Then verify text "USE_ADMIN_CustLBS"
     When click on link "USE_ADMIN_CustLBS"
     When click on menu "Administration"
     Then verify text "Service profiles"
     When click on submenu "Service profiles"
     Then verify text "Results"
     Then verify text "Results"
     Then enter "Service Profile" "USE_AAAVoiceConfiguration_CSPname"
     When click on button "Search"
     Then verify text "Results"
     When click on link "USE_AAAVoiceConfiguration_CSPname"
     Then verify text "Information"
     When click on tab "Details"
     Then verify text "SIM state"
     When click on link "Connectivity services"
     Then verify text "Connectivity services"
     Then verify text "Voice service"
     Then verify text "USE_AAAVoiceConfiguration_CSPVPNname"
     Then logout


# Below Failed TC

     @tc_MR_GUI_Call_Waiting_CS_Sessions_001
    Scenario: Test to verify the Call Waiting (CW) for SIMs with Voice Services enabled and CW_Activation as Y provisioning profile is activated successfully

     Given test case starts
#Mobile part 1
     Given select mobile "mobile3"
     When launch mobile app "PhoneDialer"
     Then from "USE_AAACallwaiting_CSdeviceID1" call No "USE_AAACallwaiting_NonIOTdevice"

#Web part
     Given browser is open
     Then login
     Then verify text "M2M Dashboard"
     When click on menu "Devices"
     Then verify text "All devices"
     When click on submenu "All devices"
     Then verify text "Results"
     Then enter textarea "IMSI" "USE_AAACallwaiting_CSdeviceMSISDN1"
     When click on button "Search"
     When click on link "USE_AAACallwaiting_CSdeviceMSISDN1"
     Then verify text "Overview"
     When click on tab "Details"
     Then verify text "Details"
     Then verify text "Recent voice usage"
     When click on link "Recent voice usage"
     Then verify text "Other party number"
     Then verify text "Serving Opco"
     Then logout

#Mobile part 2
     Given select mobile "mobile2"
     When launch mobile app "PhoneDialer"
     Then from "USE_AAACallwaiting_CSdeviceID2" call No "USE_AAACallwaiting_CSdeviceMSISDN1"
     Then wait for 10 seconds
     Then verify if "End" image button on mobile
     Then logout


   @tc_MR_GUI_Call_Waiting_CS_Sessions_002
    Scenario: Test to verify the Call Waiting (CW) for SIMs with Voice Services enabled and CW_Activation as N provisioning profile is not activated

     Given test case starts
#Mobile part 1
     Given select mobile "mobile3"
     When launch mobile app "PhoneDialer"
     Then from "USE_AAACallwaiting_CSdeviceID1" call No "USE_AAACallwaiting_NonIOTdevice"

#Web part
     Given browser is open
     Then login
     Then verify text "M2M Dashboard"
     When click on menu "Devices"
     Then verify text "All devices"
     When click on submenu "All devices"
     Then verify text "Results"
     Then enter textarea "IMSI" "USE_AAACallwaiting_CSdeviceMSISDN1"
     When click on button "Search"
     When click on link "USE_AAACallwaiting_CSdeviceMSISDN1"
     Then verify text "Overview"
     When click on tab "Details"
     Then verify text "Details"
     Then verify text "Recent voice usage"
     When click on link "Recent voice usage"
     Then verify text "Other party number"
     Then verify text "Serving Opco"
     Then logout

#Mobile part 2
     Given select mobile "mobile2"
     When launch mobile app "PhoneDialer"
     Then from "USE_AAACallwaiting_CSdeviceID2" call No "USE_AAACallwaiting_CSdeviceMSISDN1"
     Then wait for 10 seconds
     Then verify if "End" image button not on mobile
     Then logout

   @tc_REG_R7.0_GUI_Voice_011
    Scenario: Test to verify whether Customer User can Stop ongoing Voice Session

     Given test case starts
#     Mobile part
     Given select mobile "mobile3"
     When launch mobile app "PhoneDialer"
     Then from "USE_AAAVoiceUsage_CSdeviceID1" call No "USE_AAAVoiceUsage_NonIOTdevice"

#     Web part
     Given browser is open
     Then login
     Then verify text "M2M Dashboard"
     When click on menu "Devices"
     Then verify text "All devices"
     When click on submenu "All devices"
     Then verify text "Results"
     Then enter textarea "IMSI" "USE_AAAVoiceUsage_MSISDN"
     When click on button "Search"
     When click on link "USE_AAAVoiceUsage_MSISDN"
     Then verify text "Overview"
     Then verify text "Voice session"
     When click on link "Operations"
     Then verify text "Take action"
     Then verify text "Stop voice session"
     When click on link "Stop voice session"
     When click on button "Stop"
     Then verify text "Stop voice session"
     When click on link "Overview"
     Then verify no text "Ongoing voice session"
     Then logout



   @tc_REG_R9.0_GUI_Voice_008
    Scenario: Test to verify whether User can make a MO call to the White Listed numbers

     Given test case starts

#     Mobile part
     Given select mobile "mobile3"
     When launch mobile app "PhoneDialer"
     Then from "USE_AAAVoiceUsage_CSdeviceID1" call No "USE_AAAVoiceUsage_NonIOTdevice"

#     Web part
     Given browser is open
     Then login
     Then verify text "M2M Dashboard"
     When click on menu "Devices"
     Then verify text "All devices"
     When click on submenu "All devices"
     Then verify text "Results"
     Then enter textarea "IMSI" "USE_AAAVoiceUsage_MSISDN"
     When click on button "Search"
     When click on link "USE_AAAVoiceUsage_MSISDN"
     Then verify text "Overview"
     When click on tab "Details"
     Then verify text "Details"
     Then verify text "Recent voice usage"
     When click on link "Recent voice usage"
     Then verify text "Other party number"
     Then verify text "Serving Opco"
     Then logout

   @tc_REG_R9.0_GUI_Voice_010
    Scenario: Test to verify whether User can not make a MO call to the Black Listed numbers

     Given test case starts
#     Mobile part
     Given select mobile "mobile3"
     When launch mobile app "PhoneDialer"
     Then from "USE_AAAVoiceUsage_CSdeviceID1" call No "USE_AAAVoiceUsage_NonIOTdevice"
     Then wait for 10 seconds
     Then verify if "End" image button not on mobile

#     Web part
     Given browser is open
     Then login
     Then verify text "M2M Dashboard"
     When click on menu "Devices"
     Then verify text "All devices"
     When click on submenu "All devices"
     Then verify text "Results"
     Then enter textarea "IMSI" "USE_AAAVoiceUsage_MSISDN"
     When click on button "Search"
     When click on link "USE_AAAVoiceUsage_MSISDN"
     Then verify text "Overview"
     When click on tab "Details"
     Then verify text "Details"
     Then verify text "Recent voice usage"
     When click on link "Recent voice usage"
     Then verify no text "Other party number"
     Then verify no text "Serving Opco"
     Then logout

   @tc_REG_R9.0_GUI_Voice_012
    Scenario: Test to verify that MO call can be established to the White Listed numbers when calling restriction set for  Customer

     Given test case starts

#     Mobile part
     Given select mobile "mobile3"
     When launch mobile app "PhoneDialer"
     Then from "USE_AAAVoiceUsage_CSdeviceID1" call No "USE_AAAVoiceUsage_NonIOTdevice"

#     Web part
     Given browser is open
     Then login
     Then verify text "M2M Dashboard"
     When click on menu "Devices"
     Then verify text "All devices"
     When click on submenu "All devices"
     Then verify text "Results"
     Then enter textarea "IMSI" "USE_AAAVoiceUsage_MSISDN"
     When click on button "Search"
     When click on link "USE_AAAVoiceUsage_MSISDN"
     Then verify text "Overview"
     When click on tab "Details"
     Then verify text "Details"
     Then verify text "Recent voice usage"
     When click on link "Recent voice usage"
     Then verify text "Other party number"
     Then verify text "Serving Opco"
     Then logout