@BatchOperation_Customer
  ##Upload SIM Batch

Feature: Customer User
  @REG_R10_GUI_SIM_Batch_001_Cust
  Scenario: Test to verify whether Customer user can perform SIM State Change Operation via Batch File
     Given test case starts
     Given browser is open
     Then login
     When click on link "USE_BatchOperationCustomer_OpCoAdmin"
     Then verify text "USE_BatchOperationCustomer_CustomerAdmin"
     When click on link "USE_BatchOperationCustomer_CustomerAdmin"
     Then wait for 20 seconds
     Then verify text "Devices"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationCustomer_IMSI"
     #Same IMSI should be used in Batch file
     When click on button "Search"
     Then Verify text "Inactive"
     When click on link "Operations"
     Then verify text "You can also perform operations from file"
     When click on link "> You can also perform operations from file"
     Then verify text "Select file"
     When click on input "Organisation" and enter value "USE_BatchOperationCustomer_Cust"
     When select upload button "Select file" and upload file "01_StateChange.txt"
     When click on button "Next"
     Then verify text "You are about to Change state to 1 SIM number"
     When click on button "Submit"
     Then verify text "The batch operation was successfully submitted"
     When click on button "Go to devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationCustomer_IMSI"
     When click on button "Search"
     Then verify text "Active.Live"
     Then logout

   #Veirfy the CSP of the IMSI used before running
  @REG_R10_GUI_SIM_Batch_002_Cust
  Scenario: Test to verify whether Customer user can perform Move CSP Operation via Batch File
     Given test case starts
     Given browser is open
     Then login
     When click on link "USE_BatchOperationCustomer_OpCoAdmin"
     Then verify text "USE_BatchOperationCustomer_CustomerAdmin"
     When click on link "USE_BatchOperationCustomer_CustomerAdmin"
     Then wait for 20 seconds
     Then verify text "Devices"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationCustomer_IMSI3"
     #Same IMSI should be used in Batch file
     When click on button "Search"
     Then verify text "Operations"
     When click on link "Operations"
     Then verify text "You can also perform operations from file"
     When click on link "> You can also perform operations from file"
     Then verify text "Select file"
     When click on input "Organisation" and enter value "USE_BatchOperationCustomer_Cust"
     When select upload button "Select file" and upload file "02_ChangeCSP.txt"
     When click on button "Next"
     Then verify text "You are about to Change service profile to 1 SIM number"
     When click on button "Submit"
     Then verify text "The batch operation was successfully submitted"
     Then wait for 20 seconds
     When click on button "Go to devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationCustomer_IMSI3"
     When click on button "Search"
     Then verify text "AutoDataCSP"
     Then logout


  @REG_R10_GUI_SIM_Batch_004_Cust
  Scenario: Test to verify whether Customer user can perform Update SIM Custom Attributes Operation via Batch File
     Given test case starts
     Given browser is open
     Then login
     When click on link "USE_BatchOperationCustomer_OpCoAdmin"
     Then verify text "USE_BatchOperationCustomer_CustomerAdmin"
     When click on link "USE_BatchOperationCustomer_CustomerAdmin"
     Then wait for 20 seconds
     Then verify text "Devices"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationCustomer_IMSI"
     #Same IMSI should be used in Batch file
     When click on button "Search"
     Then verify text "Operations"
     When click on link "Operations"
     Then verify text "You can also perform operations from file"
     When click on link "> You can also perform operations from file"
     Then verify text "Select file"
     When click on input "Organisation" and enter value "USE_BatchOperationCustomer_Cust"
     When select upload button "Select file" and upload file "03_SimAttrbts.txt"
     When click on button "Next"
     Then verify text "You are about to Update attributes to 1 SIM number(s)."
     When click on button "Submit"
     Then verify text "The batch operation was successfully submitted"
     When click on button "Go to devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationCustomer_IMSI"
     When click on button "Search"
     Then verify text "USE_BatchOperationCustomer_IMSI"
     When click on link "USE_BatchOperationCustomer_IMSI"
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
     Then verify text "Select file"
     When click on input "Organisation" and enter value "USE_BatchOperationCustomer_Cust"
     When select upload button "Select file" and upload file "04_DltAttrbts.txt"
     When click on button "Next"
     Then verify text "You are about to Update attributes to 1 SIM number(s)."
     When click on button "Submit"
     Then wait for 10 seconds
     Then verify text "The batch operation was successfully submitted"
     Then logout


  @REG_R10_GUI_SIM_Batch_007
  Scenario: Test to verify whether Customer user can perform Update Home Country Operation via Batch File
     Given test case starts
     Given browser is open
     Then login
     When click on link "USE_BatchOperationCustomer_OpCoAdmin"
     Then verify text "USE_BatchOperationCustomer_CustomerAdmin"
     When click on link "USE_BatchOperationCustomer_CustomerAdmin"
     Then wait for 20 seconds
     Then verify text "Devices"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationCustomer_IMSIHomeCountry"
     #Same IMSI should be used in Batch file
     When click on button "Search"
     Then verify text "Operations"
     When click on link "Operations"
     Then verify text "You can also perform operations from file"
     When click on link "> You can also perform operations from file"
     Then verify text "Select file"
     When click on input "Organisation" and enter value "USE_BatchOperationCustomer_Cust"
    #Same IMSI should be used in Batch file
     When select upload button "Select file" and upload file "05_Homeloctn.txt"
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
      |AutomationCust1|
      |Update DeviceAttributes|
      |strtime|
     Then wait for 60 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"

#     When click on button "Go to devices"
#     Then enter textarea "IMSI" "USE_BatchOperationCustomer_IMSIHomeCountry"
#     When click on button "Search"
#     When click on link "USE_BatchOperationCustomer_IMSIHomeCountry"
#     Then Verify text "United Kingdom"
     Then logout

  @REG_R10_GUI_SIM_Batch_008
  Scenario: Test to verify whether Customer user can perform Delete Home Country Operation via Batch File
     Given test case starts
     Given browser is open
     Then login
     When click on link "USE_BatchOperationCustomer_OpCoAdmin"
     Then verify text "USE_BatchOperationCustomer_CustomerAdmin"
     When click on link "USE_BatchOperationCustomer_CustomerAdmin"
     Then wait for 20 seconds
     Then verify text "Devices"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationCustomer_IMSIHomeCountry"
     #Same IMSI should be used in Batch file
     When click on button "Search"
     Then verify text "Operations"
     When click on link "Operations"
     Then verify text "You can also perform operations from file"
     When click on link "> You can also perform operations from file"
     Then verify text "Select file"
     When click on input "Organisation" and enter value "USE_BatchOperationCustomer_Cust"
    #Same IMSI should be used in Batch file
     When select upload button "Select file" and upload file "06_DltHme.txt"
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
      |AutomationCust1|
      |Update DeviceAttributes|
      |strtime|
     Then wait for 60 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"

#     When click on button "Go to devices"
#     Then enter textarea "IMSI" "USE_BatchOperationCustomer_IMSIHomeCountry"
#     When click on button "Search"
#     When click on link "USE_BatchOperationCustomer_IMSIHomeCountry"
#     Then verify no text "United Kingdom"
     Then logout


  @REG_R10_GUI_SIM_Batch_009
  Scenario: Test to verify whether Customer user can perform Update IMEI Operation via Batch File
     Given test case starts
     Given browser is open
     Then login
     When click on link "USE_BatchOperationCustomer_OpCoAdmin"
     Then verify text "USE_BatchOperationCustomer_CustomerAdmin"
     When click on link "USE_BatchOperationCustomer_CustomerAdmin"
     Then wait for 20 seconds
     Then verify text "Devices"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationCustomer_IMSI"
     #Same IMSI should be used in Batch file
     When click on button "Search"
     Then verify text "Operations"
     When click on link "Operations"
     Then verify text "You can also perform operations from file"
     When click on link "> You can also perform operations from file"
     Then verify text "Select file"
     When click on input "Organisation" and enter value "USE_BatchOperationCustomer_Cust"
    #Same IMSI should be used in Batch file
     When select upload button "Select file" and upload file "20_UpdtIMEI.txt"
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
      |AutomationCust1|
      |Update DeviceAttributes|
      |strtime|
     Then wait for 60 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationCustomer_IMSI"
     When click on button "Search"
     Then verify text "USE_BatchOperationCustomer_IMSI"
     When click on link "USE_BatchOperationCustomer_IMSI"
     Then Verify text "USE_BatchOperationCustomer_IMEI"
     Then logout

  @REG_R10_GUI_SIM_Batch_010
  Scenario: Test to verify whether Customer user can perform Delete IMEI Operation via Batch File
     Given test case starts
     Given browser is open
     Then login
     When click on link "USE_BatchOperationCustomer_OpCoAdmin"
     Then verify text "USE_BatchOperationCustomer_CustomerAdmin"
     When click on link "USE_BatchOperationCustomer_CustomerAdmin"
     Then wait for 20 seconds
     Then verify text "Devices"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationCustomer_IMSI"
     #Same IMSI should be used in Batch file
     When click on button "Search"
     Then verify text "Operations"
     When click on link "Operations"
     Then verify text "You can also perform operations from file"
     When click on link "> You can also perform operations from file"
     Then verify text "Select file"
     When click on input "Organisation" and enter value "USE_BatchOperationCustomer_Cust"
    #Same IMSI should be used in Batch file
     When select upload button "Select file" and upload file "21_DeleteIMEI.txt"
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
      |AutomationCust1|
      |Update DeviceAttributes|
      |strtime|
     Then wait for 60 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationCustomer_IMSI"
     When click on button "Search"
     Then verify text "USE_BatchOperationCustomer_IMSI"
     When click on link "USE_BatchOperationCustomer_IMSI"
     Then verify no text "USE_BatchOperationCustomer_IMEI"
     Then logout

  @REG_R10_GUI_SIM_Batch_011
  Scenario: Test to verify whether Customer user can perform Insert or Update Static Ip Operation via Batch File
     Given test case starts
     Given browser is open
     Then login
     When click on link "USE_BatchOperationCustomer_OpCoAdmin"
     Then verify text "USE_BatchOperationCustomer_CustomerAdmin"
     When click on link "USE_BatchOperationCustomer_CustomerAdmin"
     Then wait for 20 seconds
     When customer upload batch file for customer "USE_BatchOperationCustomer_Cust" Imsi "USE_BatchOperationCustomer_IMSIStatic" and Batch "07_StaticIP.txt"
     Then verify text "See batch operation result"
     Then wait for 20 seconds
     When click on link "See batch operation result"
     Then wait for 10 seconds
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Update SIM Static IP Address|
        |strtime|
     Then wait for 60 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then logout


  @REG_R10_GUI_SIM_Batch_012
  Scenario: Test to verify whether Customer user can perform Delete Static Ip Operation via Batch File
     Given test case starts
     Given browser is open
     Then login
     When click on link "USE_BatchOperationCustomer_OpCoAdmin"
     Then verify text "USE_BatchOperationCustomer_CustomerAdmin"
     When click on link "USE_BatchOperationCustomer_CustomerAdmin"
     Then wait for 20 seconds
     When customer upload batch file for customer "USE_BatchOperationCustomer_Cust" Imsi "USE_BatchOperationCustomer_IMSIStatic" and Batch "09_DltStcIP.txt"
     Then verify text "See batch operation result"
     Then wait for 20 seconds
     When click on link "See batch operation result"
     Then wait for 10 seconds
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Delete SIM Static IP Address|
        |strtime|
     Then wait for 60 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then logout

  @REG_R10_GUI_SIM_Batch_013
  Scenario: Test to verify whether Customer user can perform Insert or Update Static Ip specific to an APN via Batch File
     Given test case starts
     Given browser is open
     Then login
     When click on link "USE_BatchOperationCustomer_OpCoAdmin"
     Then verify text "USE_BatchOperationCustomer_CustomerAdmin"
     When click on link "USE_BatchOperationCustomer_CustomerAdmin"
     Then wait for 20 seconds
     When customer upload batch file for customer "USE_BatchOperationCustomer_Cust" Imsi "USE_BatchOperationCustomer_IMSIStatic" and Batch "08_StaticIPApn.txt"
     Then verify text "See batch operation result"
     Then wait for 20 seconds
     When click on link "See batch operation result"
     Then wait for 10 seconds
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Update SIM Static IP Address|
        |strtime|
     Then wait for 60 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then logout

  @REG_R10_GUI_SIM_Batch_014
  Scenario: Test to verify whether Customer user can perform Delete Static Ip specific to an APN via Batch File
     Given test case starts
     Given browser is open
     Then login
     When click on link "USE_BatchOperationCustomer_OpCoAdmin"
     Then verify text "USE_BatchOperationCustomer_CustomerAdmin"
     When click on link "USE_BatchOperationCustomer_CustomerAdmin"
     Then wait for 20 seconds
     When customer upload batch file for customer "USE_BatchOperationCustomer_Cust" Imsi "USE_BatchOperationCustomer_IMSIStatic" and Batch "10_dltSpStcIP.txt"
     Then verify text "See batch operation result"
     Then wait for 20 seconds
     When click on link "See batch operation result"
     Then wait for 10 seconds
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Delete SIM Static IP Address|
        |strtime|
     Then wait for 60 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then logout

  @REG_R10_GUI_SIM_Batch_015
  Scenario: Test to verify whether Customer user can perform Insert or Update SIM Credentials via Batch File
     Given test case starts
     Given browser is open
     Then login
     When click on link "USE_BatchOperationCustomer_OpCoAdmin"
     Then verify text "USE_BatchOperationCustomer_CustomerAdmin"
     When click on link "USE_BatchOperationCustomer_CustomerAdmin"
     Then wait for 20 seconds
     When customer upload batch file for customer "USE_BatchOperationCustomer_Cust" Imsi "USE_BatchOperationCustomer_IMSIAPNCred" and Batch "11_Credtls.txt"
     Then verify text "See batch operation result"
     Then wait for 50 seconds
     When click on link "See batch operation result"
     Then wait for 10 seconds
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Upload Device Credentials|
        |strtime|
     Then wait for 60 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then logout

  @REG_R10_GUI_SIM_Batch_017
  Scenario: Test to verify whether Customer user can perform Insert or Update SIM Credentials specific to an APN via Batch File
     Given test case starts
     Given browser is open
     Then login
     When click on link "USE_BatchOperationCustomer_OpCoAdmin"
     Then verify text "USE_BatchOperationCustomer_CustomerAdmin"
     When click on link "USE_BatchOperationCustomer_CustomerAdmin"
     Then wait for 20 seconds
     When customer upload batch file for customer "USE_BatchOperationCustomer_Cust" Imsi "USE_BatchOperationCustomer_IMSI" and Batch "12_CrdtlsApn.txt"
     Then verify text "See batch operation result"
     Then wait for 20 seconds
     When click on link "See batch operation result"
     Then wait for 10 seconds
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Upload Device Credentials|
        |strtime|
     Then wait for 60 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     Then logout

  @REG_R10_GUI_SIM_Batch_019
  Scenario: Test to verify whether Customer user can perform Insert or Update SIM Device Group via Batch File
     Given test case starts
     Given browser is open
     Then login
     When click on link "USE_BatchOperationCustomer_OpCoAdmin"
     Then verify text "USE_BatchOperationCustomer_CustomerAdmin"
     When click on link "USE_BatchOperationCustomer_CustomerAdmin"
     Then wait for 20 seconds
     When customer upload batch file for customer "USE_BatchOperationCustomer_Cust" Imsi "USE_BatchOperationCustomer_IMSI" and Batch "17_DvcGrp.txt"
     Then verify text "See batch operation result"
     Then wait for 20 seconds
     When click on link "See batch operation result"
     Then wait for 10 seconds
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Upload Device Group|
        |strtime|
     Then wait for 60 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationCustomer_IMSI"
     When click on button "Search"
     Then verify text "USE_BatchOperationCustomer_IMSI"
     When click on link "USE_BatchOperationCustomer_IMSI"
     Then verify text "USE_BatchOperationCustomer_DeviceGroup"
     Then logout

     #Update test data file and batch file with a sim with any status that is not Live(say Inactive).
  @REG_R10_GUI_SIM_Batch_021
  Scenario: Test to verify whether Customer user can perform SIM State Change Operation providing Reason via Batch File
     Given test case starts
     Given browser is open
     Then login
     When click on link "USE_BatchOperationCustomer_OpCoAdmin"
     Then verify text "USE_BatchOperationCustomer_CustomerAdmin"
     When click on link "USE_BatchOperationCustomer_CustomerAdmin"
     Then wait for 20 seconds
     When customer upload batch file for customer "USE_BatchOperationCustomer_Cust" Imsi "USE_BatchOperationCustomer_NotLiveIMSI1" and Batch "26_StateWthRsn.txt"
     Then verify text "See batch operation result"
     Then wait for 50 seconds
     When click on link "See batch operation result"
     Then wait for 10 seconds
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Change Device State|
        |strtime|
     Then wait for 60 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationCustomer_NotLiveIMSI1"
     When click on button "Search"
     Then Verify text "USE_BatchOperationCustomer_ChangeState"
     Then logout


     #Update test data file and batch file with a sim with any status that is not Live(say Inactive).
  @REG_R10_GUI_SIM_Batch_022
  Scenario: Test to verify whether Customer user can perform SIM State Change Operation providing Reason as Other via Batch File
     Given test case starts
     Given browser is open
     Then login
     When click on link "USE_BatchOperationCustomer_OpCoAdmin"
     Then verify text "USE_BatchOperationCustomer_CustomerAdmin"
     When click on link "USE_BatchOperationCustomer_CustomerAdmin"
     Then wait for 20 seconds
     When customer upload batch file for customer "USE_BatchOperationCustomer_Cust" Imsi "USE_BatchOperationCustomer_NotLiveIMSI2" and Batch "27_StCngOthr.txt"
     Then verify text "See batch operation result"
     Then wait for 20 seconds
     When click on link "See batch operation result"
     Then wait for 10 seconds
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Change Device State|
        |strtime|
     Then wait for 60 seconds
     Then verify filetext "SUCCESSFUL" in downloaded file "txt"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationCustomer_NotLiveIMSI2"
     When click on button "Search"
     Then Verify text "USE_BatchOperationCustomer_ChangeState"
     Then logout


   #Before run verify that IMSI 1 is not in CSP1 and IMSI2 not in CSP2
  @REG_R10_GUI_SIM_Batch_024
  Scenario: Test to verify whether Customer user can perform MOVE SIM to non-unique CSP names Operation via Batch File
     Given test case starts
     Given browser is open
     Then login
     When click on link "USE_BatchOperationCustomer_OpCoAdmin"
     Then verify text "USE_BatchOperationCustomer_CustomerAdmin"
     When click on link "USE_BatchOperationCustomer_CustomerAdmin"
     Then wait for 20 seconds
     Then verify text "Devices"
     When click on menu "Devices"
     Then wait for 5 seconds
     Then verify text "All devices"
     When click on submenu "All devices"
     Then wait for 5 seconds
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationCustomer_IMSI"
     When click on button "Search"
     Then verify not
     |type|value|
     |text|USE_BatchOperationCustomer_CSP1|
     When click on link "Clear fields"
     Then verify text "IMSI"
     Then enter textarea "IMSI" "USE_BatchOperationCustomer_IMSI2"
     When click on button "Search"
     Then verify not
     |type|value|
     |text|USE_BatchOperationCustomer_CSP2|

     When click on link "Operations"
     Then verify text "You can also perform operations from file"
     When click on link "> You can also perform operations from file"
     Then verify text "Select file"
     When click on input "Organisation" and enter value "USE_BatchOperationCustomer_Cust"
     When select upload button "Select file" and upload file "02_CSPMulti.txt"
     When click on button "Next"
     Then verify text "You are about to Change service profile to 2 SIM number(s)"
     Then store time in "strtime"
     When click on button "Submit"
     Then verify text "The batch operation was successfully submitted"
     Then wait for 20 seconds
     When click on link "See batch operation result"
     Then wait for 10 seconds
     Then verify text "Results"
     Then click on results based on below criteria
        |values|
        |AutomationCust1|
        |Change Device Service Profile|
        |strtime|
     Then wait for 60 seconds
     Then join below strings and store in "IMSI1Success"
     |strings|
     |IMSI=|
     |USE_BatchOperationCustomer_IMSI|
     |"[SUCCESSFUL]|

     Then join below strings and store in "IMSI2Success"
     |strings|
     |IMSI=|
     |USE_BatchOperationCustomer_IMSI2|
     |"[SUCCESSFUL]|


     Then verify filetext 'IMSI1Success' in file "txt"
     Then verify filetext 'IMSI2Success' in file "txt"

     Then logout
