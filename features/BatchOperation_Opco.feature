@BatchOperations_Opco
  ##Upload SIM Batch

  Feature: Customer User

  @REG_R10_GUI_SIM_Batch_001_Opco
  Scenario: Test to verify whether Opco user can perform SIM State Change Operation via Batch File
     Given test case starts
     Given browser is open
     Then login
     Then verify text "Devices"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationOpco_NotLiveIMSI1"
     When click on button "Search"
     Then verify text "Inactive"
     When click on link "Operations"
     Then verify text "You can also perform operations from file"
     When click on link "> You can also perform operations from file"
     Then verify text "Organisation"
     When click on input "Organisation" and enter value "USE_BatchOperationOpco_Cust"
    #Same IMSI should be used in Batch file
     Then wait for 10 seconds
     Then verify text "Select file"
     When select upload button "Select file" and upload file "01_StateChangeOpco.txt"
     When click on button "Next"
     Then verify text "You are about to Change state to 1 SIM number"
     When click on button "Submit"
     Then verify text "The batch operation was successfully submitted"
     When click on button "Go to devices"
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationOpco_NotLiveIMSI1"
     When click on button "Search"
     Then verify text "Active.Live"
     Then logout

  @REG_R10_GUI_SIM_Batch_002_Opco
  Scenario: Test to verify whether Opco user can perform Move CSP Operation via Batch File
     Given test case starts
     Given browser is open
     Then login
     Then verify text "Devices"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationOpco_IMSI3"
     #Same IMSI should be used in Batch file
     When click on button "Search"
     Then verify text "Operations"
     When click on link "Operations"
     Then verify text "You can also perform operations from file"
     When click on link "> You can also perform operations from file"
     Then verify text "Organisation"
     When click on input "Organisation" and enter value "USE_BatchOperationOpco_Cust"
    #Same IMSI should be used in Batch file
     Then wait for 10 seconds
     Then verify text "Select file"
     When select upload button "Select file" and upload file "02_ChangeCSPOpco.txt"
     When click on button "Next"
     Then verify text "You are about to Change service profile to 1 SIM number"
     When click on button "Submit"
     Then verify text "The batch operation was successfully submitted"
     When click on button "Go to devices"
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationOpco_IMSI3"
     Then wait for 10 seconds
     When click on button "Search"
     Then verify text "AutoDataCSP"
     Then logout

 @REG_R10_GUI_SIM_Batch_004_Opco
  Scenario: Test to verify whether Opco user can perform Update SIM Custom Attributes Operation via Batch File
     Given test case starts
     Given browser is open
     Then login
     Then verify text "Devices"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationOpco_IMSI"
     #Same IMSI should be used in Batch file
     When click on button "Search"
     Then verify text "Operations"
     When click on link "Operations"
     Then verify text "You can also perform operations from file"
     When click on link "> You can also perform operations from file"
     Then verify text "Organisation"
     When click on input "Organisation" and enter value "USE_BatchOperationOpco_Cust"
    #Same IMSI should be used in Batch file
     Then wait for 10 seconds
     Then verify text "Select file"
     When select upload button "Select file" and upload file "03_SimAttrbtsOpco.txt"
     When click on button "Next"
     Then verify text "You are about to Update attributes to 1 SIM number(s)."
     When click on button "Submit"
     Then verify text "The batch operation was successfully submitted"
     When click on button "Go to devices"
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationOpco_IMSI"
     When click on button "Search"
     Then verify text "USE_BatchOperationOpco_IMSI"
     When click on link "USE_BatchOperationOpco_IMSI"
     Then Verify text "Mach000001"
     Then Verify text "Mach000002"
     Then Verify text "Mach000003"
     Then Verify text "Mach000004"
     Then Verify text "Mach000005"
     When click on button "Back"
     Then verify text "Operations"
     When click on link "Operations"
     Then verify text "You can also perform operations from file"
     When click on link "> You can also perform operations from file"
     Then verify text "Organisation"
     When click on input "Organisation" and enter value "USE_BatchOperationOpco_Cust"
    #Same IMSI should be used in Batch file
     Then wait for 10 seconds
     Then verify text "Select file"
     When select upload button "Select file" and upload file "04_DltAttrbtsOpco.txt"
     When click on button "Next"
     Then verify text "You are about to Update attributes to 1 SIM number(s)."
     When click on button "Submit"
     Then verify text "The batch operation was successfully submitted"
     Then logout

  @REG_R10_GUI_SIM_Batch_007_Opco1
  Scenario: Test to verify whether Opco user can perform Update Home Country Operation via Batch File
     Given test case starts
     Given browser is open
     Then login
     Then verify text "Devices"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationOpco_IMSIHomeCountry"
     #Same IMSI should be used in Batch file
     When click on button "Search"
     Then verify text "Operations"
     When click on link "Operations"
     Then verify text "You can also perform operations from file"
     When click on link "> You can also perform operations from file"
     Then wait for 5 seconds
     Then verify text "Organisation"
     When click on input "Organisation" and enter value "USE_BatchOperationOpco_Cust"
     Then wait for 10 seconds
     Then verify text "Select file"
     When select upload button "Select file" and upload file "05_HomeloctnOpco.txt"
     When click on button "Next"
     Then verify text "You are about to Update attributes to 1 SIM number"
     When click on button "Submit"
     Then store time in "strtime"
     Then verify text "The batch operation was successfully submitted"
     Then wait for 20 seconds
     When click on link "See batch operation result"
     Then wait for 10 seconds
     Then verify text "Results"
     Then click on results based on below criteria
      |values|
      |PPVGE|
      |Update DeviceAttributes|
      |strtime|
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then verify text "Devices"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationOpco_IMSIHomeCountry"
     When click on button "Search"
     Then verify text "USE_BatchOperationOpco_IMSIHomeCountry"
     When click on link "USE_BatchOperationOpco_IMSIHomeCountry"
     Then Verify text "United Kingdom"
     Then logout

 @REG_R10_GUI_SIM_Batch_009_opco
  Scenario: Test to verify whether Opco user can perform Update IMEI Operation via Batch File
     Given test case starts
     Given browser is open
     Then login
     When opco upload batch file for customer "USE_BatchOperationOpco_Cust" Imsi "USE_BatchOperationOpco_IMSIIMEI" and Batch "20_UpdtIMEIOpco.txt"
     Then wait for 40 seconds
     Then verify text "See batch operation result"
     When click on link "See batch operation result"
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Update DeviceAttributes|
        |strtime|
     Then wait for 40 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then verify text "Devices"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationOpco_IMSIIMEI"
     When click on button "Search"
     Then verify text "USE_BatchOperationOpco_IMSIIMEI"
     When click on link "USE_BatchOperationOpco_IMSIIMEI"
     Then Verify text "USE_BatchOperationOpco_IMEI"
     Then logout

 @REG_R10_GUI_SIM_Batch_010_opco
  Scenario: Test to verify whether Customer user can perform Delete IMEI Operation via Batch File
     Given test case starts
     Given browser is open
     Then login
     When opco upload batch file for customer "USE_BatchOperationOpco_Cust" Imsi "USE_BatchOperationOpco_IMSIIMEI" and Batch "21_DeleteIMEIOpco.txt"
     Then wait for 40 seconds
     Then verify text "See batch operation result"
     When click on link "See batch operation result"
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Update DeviceAttributes|
        |strtime|
     Then wait for 40 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then verify text "Devices"
     When click on menu "Devices"
     Then verify text "All devices"
     When click on submenu "All devices"
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationOpco_IMSIIMEI"
     When click on button "Search"
     Then verify text "USE_BatchOperationOpco_IMSIIMEI"
     When click on link "USE_BatchOperationOpco_IMSIIMEI"
     Then verify no text "USE_BatchOperationOpco_IMEI"
     Then logout

  @REG_R10_GUI_SIM_Batch_011_opco
  Scenario: Test to verify whether Opco user can perform Insert or Update Static Ip Operation via Batch File
     Given test case starts
     Given browser is open
     Then login
     When opco upload batch file for customer "USE_BatchOperationOpco_Cust" Imsi "USE_BatchOperationOpco_IMSIStatic" and Batch "07_StaticIPOpco.txt"
     Then wait for 40 seconds
     Then verify text "See batch operation result"
     When click on link "See batch operation result"
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Update SIM Static IP Address|
        |strtime|
     Then wait for 40 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then logout

  @REG_R10_GUI_SIM_Batch_012_opco
  Scenario: Test to verify whether Opco user can perform Delete Static Ip Operation via Batch File
     Given test case starts
     Given browser is open
     Then login
     When opco upload batch file for customer "USE_BatchOperationOpco_Cust" Imsi "USE_BatchOperationOpco_IMSIStatic" and Batch "09_DltStcIPOpco.txt"
     Then wait for 40 seconds
     Then verify text "See batch operation result"
     When click on link "See batch operation result"
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Delete SIM Static IP Address|
        |strtime|
     Then wait for 40 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then logout

  @REG_R10_GUI_SIM_Batch_013_opco
  Scenario: Test to verify whether Opco user can perform Insert or Update Static Ip specific to an APN via Batch File
     Given test case starts
     Given browser is open
     Then login
     When opco upload batch file for customer "USE_BatchOperationOpco_Cust" Imsi "USE_BatchOperationOpco_IMSIStatic" and Batch "08_StaticIPApnOpco.txt"
     Then wait for 40 seconds
     Then verify text "See batch operation result"
     When click on link "See batch operation result"
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Update SIM Static IP Address|
        |strtime|
     Then wait for 40 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then logout

  @REG_R10_GUI_SIM_Batch_014_opco
  Scenario: Test to verify whether Opco user can perform Delete Static Ip specific to an APN via Batch File
     Given test case starts
     Given browser is open
     Then login
     When opco upload batch file for customer "USE_BatchOperationOpco_Cust" Imsi "USE_BatchOperationOpco_IMSIStatic" and Batch "10_dltSpStcIPOpco.txt"
     Then wait for 40 seconds
     Then verify text "See batch operation result"
     When click on link "See batch operation result"
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Delete SIM Static IP Address|
        |strtime|
     Then wait for 40 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then logout

  @REG_R10_GUI_SIM_Batch_015_opco
  Scenario: Test to verify whether Opco user can perform Insert or Update SIM Credentials via Batch File
     Given test case starts
     Given browser is open
     Then login
     When opco upload batch file for customer "USE_BatchOperationOpco_Cust" Imsi "USE_BatchOperationOpco_IMSIAPNCred" and Batch "11_CredtlsOpco.txt"
     Then wait for 40 seconds
     Then verify text "See batch operation result"
     When click on link "See batch operation result"
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Upload Device Credentials|
        |strtime|
     Then wait for 40 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then logout

 @REG_R10_GUI_SIM_Batch_017_opco
  Scenario: Test to verify whether Opco user can perform Insert or Update SIM Credentials specific to an APN via Batch File
     Given test case starts
     Given browser is open
     Then login
     When opco upload batch file for customer "USE_BatchOperationOpco_Cust" Imsi "USE_BatchOperationOpco_IMSI1" and Batch "12_CrdtlsApnOpco.txt"
     Then wait for 40 seconds
     Then verify text "See batch operation result"
     When click on link "See batch operation result"
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Upload Device Credentials|
        |strtime|
     Then wait for 40 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then logout

  @REG_R10_GUI_SIM_Batch_018_opco

  Scenario: Test to verify whether Opco user can perform Delete SIM Credentials specific to an APN via Batch File
     Given test case starts
     Given browser is open
     Then login
     When opco upload batch file for customer "USE_BatchOperationOpco_Cust" Imsi "USE_BatchOperationOpco_IMSI1" and Batch "14_DltCrdtlsApnOpco.txt"
     Then wait for 40 seconds
     Then verify text "See batch operation result"
      When click on link "See batch operation result"
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Upload Device Credentials|
        |strtime|
     Then wait for 40 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then logout

  @REG_R10_GUI_SIM_Batch_019_opco
  Scenario: Test to verify whether Opco user can perform Insert or Update SIM Device Group via Batch File
     Given test case starts
     Given browser is open
     Then login
     When opco upload batch file for customer "USE_BatchOperationOpco_Cust" Imsi "USE_BatchOperationOpco_IMSI1" and Batch "17_DvcGrpOpco.txt"
     Then wait for 40 seconds
     Then verify text "See batch operation result"
     When click on link "See batch operation result"
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Upload Device Group|
        |strtime|
     Then wait for 40 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then verify text "Devices"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationOpco_IMSI1"
     When click on button "Search"
     Then verify text "USE_BatchOperationOpco_IMSI1"
     When click on link "USE_BatchOperationOpco_IMSI1"
     Then verify text "USE_BatchOperationOpco_DeviceGroup"
     Then logout

 @REG_R10_GUI_SIM_Batch_021_opco
  Scenario: Test to verify whether Opco user can perform SIM State Change Operation providing Reason via Batch File
     Given test case starts
     Given browser is open
     Then login
     When opco upload batch file for customer "USE_BatchOperationOpco_Cust" Imsi "USE_BatchOperationOpco_NotLiveIMSI2" and Batch "26_StateWthRsnOpco.txt"
     Then wait for 40 seconds
     Then verify text "See batch operation result"
     When click on link "See batch operation result"
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |PPVGE|
        |Change Device State|
        |strtime|
     Then wait for 40 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then verify text "Devices"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationOpco_NotLiveIMSI2"
     When click on button "Search"
     Then Verify text "USE_BatchOperationOpco_ChangeState"
     Then logout

  @REG_R10_GUI_SIM_Batch_022_opco
  Scenario: Test to verify whether Opco user can perform SIM State Change Operation providing Reason as Other via Batch File
     Given test case starts
     Given browser is open
     Then login
     When opco upload batch file for customer "USE_BatchOperationOpco_Cust" Imsi "USE_BatchOperationOpco_NotLiveIMSI3" and Batch "27_StCngOthrOpco.txt"
     Then wait for 40 seconds
     Then verify text "See batch operation result"
     When click on link "See batch operation result"
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |PPVGE|
        |Change Device State|
        |strtime|
     Then wait for 40 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then verify text "Devices"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationOpco_NotLiveIMSI3"
     When click on button "Search"
     Then Verify text "USE_BatchOperationOpco_ChangeState"
     Then logout

  #This test case cannot be automated anymore,due to functionality removal
  #@REG_R10_GUI_SIM_Batch_025_opco
  ##read and correct
#  Scenario: Test to verify whether Opco user can perform Update SIM PLMN Lists via Batch File
#     Given test case starts
#     Given browser is open
#     Then login
#     Then verify text "Devices"
#     When click on menu "Devices"
#     Then wait for 5 seconds
#     Then verify text "All devices"
#     When click on submenu "All devices"
#     Then wait for 5 seconds
#     Then verify text "IMSI"
#     Then enter textarea "IMSI" "USE_BatchOperationOpco_PLMNIMSI"
#     When click on button "Search"
#     Then verify text "USE_BatchOperationOpco_PLMNIMSI"
#     When click on link "USE_BatchOperationOpco_PLMNIMSI"
#     Then verify text "Details"
#     When click on link "Details"
#     Then Verify no text "USE_BatchOperationOpco_PLMNText"
#     When click on link "< Back"
#     Then verify text "Operations"
#     When click on link "Operations"
#     Then verify text "You can also perform operations from file"
#     When click on link "> You can also perform operations from file"
#     Then verify text "Organisation"
#     When click on input "Organisation" and enter value "USE_BatchOperationOpco_Cust"
#     Then wait for 10 seconds
#     Then verify text "Select file"
#     When select upload button "Select file" and upload file "19_UpdtSimPlmnOpco.txt"
#     When click on button "Next"
#     Then verify text "You are about to Change PLMN to 1 SIM number(s)"
#     Then store time in "strtime"
#     When click on button "Submit"
#     Then verify text "The batch operation was successfully submitted"
#     Then verify text "See batch operation result"
#     When click on link "See batch operation result"
#     Then verify text "Results"
#     Then click on results based on below criteria
#        |values|
#        |AutomationCust1|
#        |PLMN LIST UPDATE|
#        |strtime|
#     Then verify filetext "INVALID STATUS" in downloaded file "txt"
#     Then verify text "Devices"
#     When click on menu "Devices"
#     Then wait for 5 seconds
#     Then verify text "All devices"
#     When click on submenu "All devices"
#     Then wait for 5 seconds
#     Then verify text "IMSI"
#     Then enter textarea "IMSI" "USE_BatchOperationOpco_PLMNIMSI"
#     When click on button "Search"
#     Then verify text "USE_BatchOperationOpco_PLMNIMSI"
#     When click on link "USE_BatchOperationOpco_PLMNIMSI"
#     Then verify text "Details"
#     When click on link "Details"
#     Then Verify text "USE_BatchOperationOpco_PLMNText"
#     Then logout
#
#  #This test case cannot be automated anymore,due to functionality removal
#  #@REG_R10_GUI_SIM_Batch_026_opco
#  Scenario: Test to verify whether Opco user can perform Update SIM OTA parameters via Batch File
#     Given test case starts
#     Given browser is open
#     Then login
#     When opco upload batch file for customer "USE_BatchOperationOpco_Cust" Imsi "USE_BatchOperationOpco_PLMNIMSI" and Batch "20_UpdtOTAOpco.txt"
#     Then wait for 40 seconds
#     Then verify text "See batch operation result"
#     When click on link "See batch operation result"
#     Then verify text "Results"
#     Then click on results based on below criteria
#        |values|
#        |AutomationCust1|
#        |Change Device State|
#        |strtime|
#     Then wait for 40 seconds
#     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
#     Then logout