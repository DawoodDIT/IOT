@CustomerReports2
Feature: Customer Reports


@REG_R10_GUI_Customer_057
Scenario: Test to verify the steps taken by the Customer User to view Itemised SMS Usage by Customer v2 report from the Global M2M Platform in CSV PDF and XML format
  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "Itemised SMS Usage By Customer v2"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate"
  Then enter date for "and" "today"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds

 Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "Itemised SMS Usage By Customer" in downloaded file "xml"
  Then verify filetext "2.0" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then get todays date and store in "today"
  Then verify filetext "today" in downloaded file "xml"
  Then verify filetext "UNIQUE_ID" in downloaded file "xml"
  Then verify filetext "EVENT_ID" in downloaded file "xml"
  Then verify filetext "SIM_ID" in downloaded file "xml"
  Then verify filetext "MSISDN" in downloaded file "xml"
  Then verify filetext "EVENT_TIMESTAMP" in downloaded file "xml"
  Then verify filetext "REPORT_TIMESTAMP" in downloaded file "xml"
  Then verify filetext "TYPE" in downloaded file "xml"
  Then verify filetext "SERVING_NETWORK" in downloaded file "xml"
  Then verify filetext "SHORT_CODE" in downloaded file "xml"
  Then verify filetext "DATA_CODING" in downloaded file "xml"
  Then verify filetext "STATUS" in downloaded file "xml"
  Then verify filetext "REASON" in downloaded file "xml"


  Then verify text "Generate report"
  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "Itemised SMS Usage By Customer" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "today" in downloaded file "csv"
  Then verify filetext "UNIQUE_ID" in downloaded file "csv"
  Then verify filetext "EVENT_ID" in downloaded file "csv"
  Then verify filetext "SIM_ID" in downloaded file "csv"
  Then verify filetext "MSISDN" in downloaded file "csv"
  Then verify filetext "EVENT_TIMESTAMP" in downloaded file "csv"
  Then verify filetext "REPORT_TIMESTAMP" in downloaded file "csv"
  Then verify filetext "TYPE" in downloaded file "csv"
  Then verify filetext "SERVING_NETWORK" in downloaded file "csv"
  Then verify filetext "SHORT_CODE" in downloaded file "csv"
  Then verify filetext "DATA_CODING" in downloaded file "csv"
  Then verify filetext "STATUS" in downloaded file "csv"
  Then verify filetext "REASON" in downloaded file "csv"
  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout


@REG_R10_GUI_Customer_059
Scenario: Test to verify the steps taken by the customer user to view Itemised SMS Usage by Customer Profile v2 report from the Global M2M Platform in CSV, PDF and XML format

  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "Itemised SMS Usage By Customer Profile v2"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate"
  Then enter date for "and" "today"
  Then select dropdown "Service profile" "AutoCSP2"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds

  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "Itemised SMS Usage By Customer Profile" in downloaded file "xml"
  Then verify filetext "2.0" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "CUSTOMER_PROFILE_NAME" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then get todays date and store in "today"
  Then verify filetext "today" in downloaded file "xml"
  Then verify filetext "UNIQUE_ID" in downloaded file "xml"
  Then verify filetext "EVENT_ID" in downloaded file "xml"
  Then verify filetext "SIM_ID" in downloaded file "xml"
  Then verify filetext "MSISDN" in downloaded file "xml"
  Then verify filetext "EVENT_TIMESTAMP" in downloaded file "xml"
  Then verify filetext "REPORT_TIMESTAMP" in downloaded file "xml"
  Then verify filetext "TYPE" in downloaded file "xml"
  Then verify filetext "SERVING_NETWORK" in downloaded file "xml"
  Then verify filetext "SHORT_CODE" in downloaded file "xml"
  Then verify filetext "DATA_CODING" in downloaded file "xml"
  Then verify filetext "STATUS" in downloaded file "xml"
  Then verify filetext "REASON" in downloaded file "xml"


  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "Itemised SMS Usage By Customer Profile" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "CUSTOMER_PROFILE_NAME" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "today" in downloaded file "csv"
  Then verify filetext "UNIQUE_ID" in downloaded file "csv"
  Then verify filetext "EVENT_ID" in downloaded file "csv"
  Then verify filetext "SIM_ID" in downloaded file "csv"
  Then verify filetext "MSISDN" in downloaded file "csv"
  Then verify filetext "EVENT_TIMESTAMP" in downloaded file "csv"
  Then verify filetext "REPORT_TIMESTAMP" in downloaded file "csv"
  Then verify filetext "TYPE" in downloaded file "csv"
  Then verify filetext "SERVING_NETWORK" in downloaded file "csv"
  Then verify filetext "SHORT_CODE" in downloaded file "csv"
  Then verify filetext "DATA_CODING" in downloaded file "csv"
  Then verify filetext "STATUS" in downloaded file "csv"
  Then verify filetext "REASON" in downloaded file "csv"
  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout


@REG_R10_GUI_Customer_061
Scenario: Test to verify the steps taken by the customer user to view Itemised SMS Usage by SIM v2 report from the Global M2M Platform in CSV, PDF and XML format
  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "Itemised SMS Usage By SIM v2"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate"
  Then enter date for "and" "today"
  Then enter "SIM Identifier" "USE_CustomerReports2_SimWithSMSUsage"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "Itemised SMS Usage By SIM" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_SimWithSMSUsage" in downloaded file "xml"
  Then verify filetext "2.0" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then get todays date and store in "today"
  Then verify filetext "today" in downloaded file "xml"
  Then verify filetext "UNIQUE_ID" in downloaded file "xml"
  Then verify filetext "EVENT_ID" in downloaded file "xml"
  Then verify filetext "SIM_ID" in downloaded file "xml"
  Then verify filetext "MSISDN" in downloaded file "xml"
  Then verify filetext "EVENT_TIMESTAMP" in downloaded file "xml"
  Then verify filetext "REPORT_TIMESTAMP" in downloaded file "xml"
  Then verify filetext "TYPE" in downloaded file "xml"
  Then verify filetext "SERVING_NETWORK" in downloaded file "xml"
  Then verify filetext "SHORT_CODE" in downloaded file "xml"
  Then verify filetext "DATA_CODING" in downloaded file "xml"
  Then verify filetext "STATUS" in downloaded file "xml"
  Then verify filetext "REASON" in downloaded file "xml"


  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_SimWithSMSUsage" in downloaded file "csv"
  Then verify filetext "Itemised SMS Usage By SIM" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "today" in downloaded file "csv"
  Then verify filetext "UNIQUE_ID" in downloaded file "csv"
  Then verify filetext "EVENT_ID" in downloaded file "csv"
  Then verify filetext "SIM_ID" in downloaded file "csv"
  Then verify filetext "MSISDN" in downloaded file "csv"
  Then verify filetext "EVENT_TIMESTAMP" in downloaded file "csv"
  Then verify filetext "REPORT_TIMESTAMP" in downloaded file "csv"
  Then verify filetext "TYPE" in downloaded file "csv"
  Then verify filetext "SERVING_NETWORK" in downloaded file "csv"
  Then verify filetext "SHORT_CODE" in downloaded file "csv"
  Then verify filetext "DATA_CODING" in downloaded file "csv"
  Then verify filetext "STATUS" in downloaded file "csv"
  Then verify filetext "REASON" in downloaded file "csv"
  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout


@REG_R10_GUI_Customer_064
Scenario: Test to verify the steps taken by the customer user to view Itemised SMS Usage for SIM v3 report from the Global M2M Platform in CSV, PDF and XML format  Given test case starts

  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "Itemised SMS Usage for SIM v3"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate"
  Then enter date for "and" "today"
  Then enter "SIM Identifier" "USE_CustomerReports2_SimWithSMSUsage"
  Then select dropdown "Message Type" "Sent"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "Itemised SMS Usage" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_SimWithSMSUsage" in downloaded file "xml"
  Then verify filetext "3.0" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then get todays date and store in "today"
  Then verify filetext "today" in downloaded file "xml"


  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "TIMESTAMP" in downloaded file "xml"
  Then verify filetext "EVENT_TIMESTAMP" in downloaded file "xml"
  Then verify filetext "EVENT_STATUS" in downloaded file "xml"
  Then verify filetext "MSG_TYPE" in downloaded file "xml"
  Then verify filetext "SENT" in downloaded file "xml"
  Then verify filetext "SOURCE" in downloaded file "xml"
  Then verify filetext "DESTINATION" in downloaded file "xml"
  Then verify filetext "TIM_STATE" in downloaded file "xml"
  Then verify filetext "CUSTOMER_PROFILE_ID" in downloaded file "xml"
  Then verify filetext "CONTRACTING_OPCO_ID" in downloaded file "xml"
  Then verify filetext "MESSAGE_BODY" in downloaded file "xml"
  Then verify filetext "DATA_CODING" in downloaded file "xml"
  Then verify filetext "UDH_INDICATOR" in downloaded file "xml"
  Then verify filetext "CHARACTER_TYPE" in downloaded file "xml"
  Then verify filetext "SIM_ID" in downloaded file "xml"
  Then verify filetext "DATA_CODING" in downloaded file "xml"
  Then verify filetext "REASON" in downloaded file "xml"


  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "Itemised SMS Usage" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_SimWithSMSUsage" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "today" in downloaded file "csv"



  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "TIMESTAMP" in downloaded file "csv"
  Then verify filetext "EVENT_TIMESTAMP" in downloaded file "csv"
  Then verify filetext "EVENT_STATUS" in downloaded file "csv"
  Then verify filetext "MSG_TYPE" in downloaded file "csv"
  Then verify filetext "SENT" in downloaded file "csv"
  Then verify filetext "SOURCE" in downloaded file "csv"
  Then verify filetext "DESTINATION" in downloaded file "csv"
  Then verify filetext "TIM_STATE" in downloaded file "csv"
  Then verify filetext "CUSTOMER_PROFILE_ID" in downloaded file "csv"
  Then verify filetext "CONTRACTING_OPCO_ID" in downloaded file "csv"
  Then verify filetext "MESSAGE_BODY" in downloaded file "csv"
  Then verify filetext "DATA_CODING" in downloaded file "csv"
  Then verify filetext "UDH_INDICATOR" in downloaded file "csv"
  Then verify filetext "CHARACTER_TYPE" in downloaded file "csv"
  Then verify filetext "SIM_ID" in downloaded file "csv"
  Then verify filetext "DATA_CODING" in downloaded file "csv"
  Then verify filetext "REASON" in downloaded file "csv"


  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout

@REG_R10_GUI_Customer_065
Scenario: Test to verify the steps taken by the customer user to view Packet-Data Usage by IMSI report from the Global M2M Platform in CSV, PDF and XML format
  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "Packet-Data Usage by IMSI"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate"
  Then enter date for "and" "today"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "Packet-Data Usage by IMSI" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then get todays date and store in "today"
  Then verify filetext "today" in downloaded file "xml"

  Then verify filetext "IMSI" in downloaded file "xml"
  Then verify filetext "SERVING_OPCO" in downloaded file "xml"
  Then verify filetext "TIM_STATE" in downloaded file "xml"
  Then verify filetext "HOME_COUNTRY" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"

  Then verify filetext "Packet Data Usage" in downloaded file "xml"
  Then verify filetext "BYTES_INPUT" in downloaded file "xml"
  Then verify filetext "BYTES_OUTPUT" in downloaded file "xml"
  Then verify filetext "TOTAL_KB" in downloaded file "xml"
  Then verify filetext "LAST_USED" in downloaded file "xml"
  Then verify filetext "NUM_DAYS_USED" in downloaded file "xml"
  Then verify filetext "NUM_SESSIONS" in downloaded file "xml"



  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "Packet-Data Usage by IMSI" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "today" in downloaded file "csv"



  Then verify filetext "IMSI" in downloaded file "csv"
  Then verify filetext "SERVING_OPCO" in downloaded file "csv"
  Then verify filetext "TIM_STATE" in downloaded file "csv"
  Then verify filetext "HOME_COUNTRY" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"

  Then verify filetext "Packet Data Usage" in downloaded file "csv"
  Then verify filetext "BYTES_INPUT" in downloaded file "csv"
  Then verify filetext "BYTES_OUTPUT" in downloaded file "csv"
  Then verify filetext "TOTAL_KB" in downloaded file "csv"
  Then verify filetext "LAST_USED" in downloaded file "csv"
  Then verify filetext "NUM_DAYS_USED" in downloaded file "csv"
  Then verify filetext "NUM_SESSIONS" in downloaded file "csv"

  Then select dropdown "* Format" "PDF"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "pdf"
  Then verify filetext "Packet-Data Usage by IMSI" in downloaded file "pdf"
  Then verify filetext "From" in downloaded file "pdf"
  Then verify filetext "To" in downloaded file "pdf"

  Then verify filetext "imsi" in downloaded file "pdf"
  Then verify filetext "serving opco" in downloaded file "pdf"
  Then verify filetext "tim state" in downloaded file "pdf"
  Then verify filetext "home country" in downloaded file "pdf"
  Then verify filetext "customer code" in downloaded file "pdf"

  Then verify filetext "Packet Data Usage" in downloaded file "pdf"
  Then verify filetext "bytes input" in downloaded file "pdf"
  Then verify filetext "bytes output" in downloaded file "pdf"
  Then verify filetext "total kb" in downloaded file "pdf"
  Then verify filetext "last used" in downloaded file "pdf"
  Then verify filetext "num days used" in downloaded file "pdf"
  Then verify filetext "num sessions" in downloaded file "pdf"


  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout

@REG_R10_GUI_Customer_069
Scenario: Test to verify the steps taken by the customer user to view Packet-Data Usage by SIM and APN (v4) report from the Global M2M Platform in CSV, PDF and XML format

  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "Packet-Data Usage By SIM And APN v4"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate"
  Then enter date for "and" "today"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "Packet-Data Usage By SIM And APN" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then get todays date and store in "today"
  Then verify filetext "today" in downloaded file "xml"

  Then verify filetext "SIM_ID" in downloaded file "xml"
  Then verify filetext "SERVING_OPCO" in downloaded file "xml"
  Then verify filetext "TIM_STATE" in downloaded file "xml"
  Then verify filetext "HOME_COUNTRY" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "APN" in downloaded file "xml"

  Then verify filetext "Packet Data Usage" in downloaded file "xml"
  Then verify filetext "BYTES_INPUT" in downloaded file "xml"
  Then verify filetext "BYTES_OUTPUT" in downloaded file "xml"
  Then verify filetext "TOTAL_IN_KBS" in downloaded file "xml"
  Then verify filetext "LAST_USED" in downloaded file "xml"
  Then verify filetext "NUM_DAYS_USED" in downloaded file "xml"
  Then verify filetext "NUM_SESSIONS" in downloaded file "xml"



  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "Packet-Data Usage By SIM And APN" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "today" in downloaded file "csv"



  Then verify filetext "SIM_ID" in downloaded file "csv"
  Then verify filetext "SERVING_OPCO" in downloaded file "csv"
  Then verify filetext "TIM_STATE" in downloaded file "csv"
  Then verify filetext "HOME_COUNTRY" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "APN" in downloaded file "csv"

  Then verify filetext "Packet Data Usage" in downloaded file "csv"
  Then verify filetext "BYTES_INPUT" in downloaded file "csv"
  Then verify filetext "BYTES_OUTPUT" in downloaded file "csv"
  Then verify filetext "TOTAL_IN_KBS" in downloaded file "csv"
  Then verify filetext "LAST_USED" in downloaded file "csv"
  Then verify filetext "NUM_DAYS_USED" in downloaded file "csv"
  Then verify filetext "NUM_SESSIONS" in downloaded file "csv"

  Then select dropdown "* Format" "PDF"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "pdf"
  Then verify filetext "Packet-Data Usage By SIM And APN" in downloaded file "pdf"
  Then verify filetext "From" in downloaded file "pdf"
  Then verify filetext "To" in downloaded file "pdf"

  Then verify filetext "sim id" in downloaded file "pdf"
  Then verify filetext "serving opco" in downloaded file "pdf"
  Then verify filetext "tim state" in downloaded file "pdf"
  Then verify filetext "home country" in downloaded file "pdf"
  Then verify filetext "customer code" in downloaded file "pdf"
  Then verify filetext "apn" in downloaded file "pdf"

  Then verify filetext "Packet Data Usage" in downloaded file "pdf"
  Then verify filetext "bytes input" in downloaded file "pdf"
  Then verify filetext "bytes output" in downloaded file "pdf"
  Then verify filetext "total in kbs" in downloaded file "pdf"
  Then verify filetext "last used" in downloaded file "pdf"
  Then verify filetext "num days used" in downloaded file "pdf"
  Then verify filetext "num sessions" in downloaded file "pdf"


  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout

@REG_R10_GUI_Customer_072
Scenario: Test to verify the steps taken by the customer user to view RADIUS Authentication Failures for Customer v3 report from the Global M2M Platform in CSV, PDF and XML format

  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "RADIUS Authentication Failures for Customer v3"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate"
  Then enter date for "and" "today"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "RADIUS Authentication Failures for Customer" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then get todays date and store in "today"
  Then verify filetext "today" in downloaded file "xml"

  Then verify filetext "SIM_ID" in downloaded file "xml"
  Then verify filetext "LOAD_TIMESTAMP" in downloaded file "xml"
  Then verify filetext "SERVER_TIMESTAMP" in downloaded file "xml"
  Then verify filetext "CHARGING_ID" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "APN" in downloaded file "xml"

  Then verify filetext "Data" in downloaded file "xml"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "xml"
  Then verify filetext "FAILURE_REASON" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "CUSTOMER_PROFILE_NAME" in downloaded file "xml"

  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "RADIUS Authentication Failures for Customer" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "today" in downloaded file "csv"



  Then verify filetext "SIM_ID" in downloaded file "csv"
  Then verify filetext "LOAD_TIMESTAMP" in downloaded file "csv"
  Then verify filetext "SERVER_TIMESTAMP" in downloaded file "csv"
  Then verify filetext "CHARGING_ID" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "APN" in downloaded file "csv"

  Then verify filetext "Data" in downloaded file "csv"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "csv"
  Then verify filetext "FAILURE_REASON" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "CUSTOMER_PROFILE_NAME" in downloaded file "csv"

   Then select dropdown "* Format" "PDF"
   When click on button "Generate"
   Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "pdf"
  Then verify filetext "RADIUS Authentication Failures for Customer" in downloaded file "pdf"
  Then verify filetext "From" in downloaded file "pdf"
  Then verify filetext "To" in downloaded file "pdf"

  Then verify filetext "sim id" in downloaded file "pdf"
  Then verify filetext "load timestamp" in downloaded file "pdf"
  Then verify filetext "server timestamp" in downloaded file "pdf"
  Then verify filetext "charging id" in downloaded file "pdf"
  Then verify filetext "customer code" in downloaded file "pdf"
  Then verify filetext "apn" in downloaded file "pdf"

  Then verify filetext "Data" in downloaded file "pdf"
  Then verify filetext "vf opco code" in downloaded file "pdf"
  Then verify filetext "failure reason" in downloaded file "pdf"
  Then verify filetext "customer profile" in downloaded file "pdf"
  Then verify filetext "name" in downloaded file "pdf"


  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout

@REG_R10_GUI_Customer_075
Scenario: Test to verify the steps taken by the customer user to view RADIUS Authentication Failures for Customer Profile v3 report from the Global M2M Platform in CSV, PDF and XML format

  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "RADIUS Authentication Failures for Customer Profile v3"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate"
  Then enter date for "and" "today"
  Then select dropdown "Service profile" "USE_CustomerReports2_profileWitRadiusFailure"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "RADIUS Authentication Failures for Customer Profile" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then get todays date and store in "today"
  Then verify filetext "today" in downloaded file "xml"

  Then verify filetext "SIM_ID" in downloaded file "xml"
  Then verify filetext "LOAD_TIMESTAMP" in downloaded file "xml"
  Then verify filetext "SERVER_TIMESTAMP" in downloaded file "xml"
  Then verify filetext "CHARGING_ID" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "APN" in downloaded file "xml"

  Then verify filetext "Data" in downloaded file "xml"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "xml"
  Then verify filetext "FAILURE_REASON" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "CUSTOMER_PROFILE_NAME" in downloaded file "xml"

  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "RADIUS Authentication Failures for Customer Profile" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "today" in downloaded file "csv"



  Then verify filetext "SIM_ID" in downloaded file "csv"
  Then verify filetext "LOAD_TIMESTAMP" in downloaded file "csv"
  Then verify filetext "SERVER_TIMESTAMP" in downloaded file "csv"
  Then verify filetext "CHARGING_ID" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "APN" in downloaded file "csv"

  Then verify filetext "Data" in downloaded file "csv"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "csv"
  Then verify filetext "FAILURE_REASON" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "CUSTOMER_PROFILE_NAME" in downloaded file "csv"

  Then select dropdown "* Format" "PDF"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "pdf"
  Then verify filetext "RADIUS Authentication Failures for Customer Profile" in downloaded file "pdf"
  Then verify filetext "From" in downloaded file "pdf"
  Then verify filetext "To" in downloaded file "pdf"

  Then verify filetext "sim id" in downloaded file "pdf"
  Then verify filetext "load timestamp" in downloaded file "pdf"
  Then verify filetext "server timestamp" in downloaded file "pdf"
  Then verify filetext "charging id" in downloaded file "pdf"
  Then verify filetext "customer code" in downloaded file "pdf"
  Then verify filetext "apn" in downloaded file "pdf"

  Then verify filetext "Data" in downloaded file "pdf"
  Then verify filetext "vf opco code" in downloaded file "pdf"
  Then verify filetext "failure reason" in downloaded file "pdf"
  Then verify filetext "customer code" in downloaded file "pdf"
  Then verify filetext "customer profile" in downloaded file "pdf"
  Then verify filetext "name" in downloaded file "pdf"


  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout

@REG_R10_GUI_Customer_078
Scenario: Test to verify the steps taken by the customer user to view RADIUS Authentication Failures for SIM v3 report from the Global M2M Platform in CSV, PDF and XML format
  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "RADIUS Authentication Failures for SIM v3"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate"
  Then enter date for "and" "today"
  Then enter "SIM Identifier" "USE_CustomerReports2_SimWithRadFailure"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "RADIUS Authentication Failures for SIM" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then get todays date and store in "today"
  Then verify filetext "today" in downloaded file "xml"

  Then verify filetext "SIM_IDENTIFIER" in downloaded file "xml"
  Then verify filetext "SIM_ID" in downloaded file "xml"
  Then verify filetext "LOAD_TIMESTAMP" in downloaded file "xml"
  Then verify filetext "SERVER_TIMESTAMP" in downloaded file "xml"
  Then verify filetext "CHARGING_ID" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "APN" in downloaded file "xml"

  Then verify filetext "Data" in downloaded file "xml"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "xml"
  Then verify filetext "FAILURE_REASON" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "CUSTOMER_PROFILE_NAME" in downloaded file "xml"
  Then verify filetext "L_A" in downloaded file "xml"
  Then verify filetext "L_B" in downloaded file "xml"
  Then verify filetext "L_C" in downloaded file "xml"
  Then verify filetext "L_D" in downloaded file "xml"
  Then verify filetext "L_E" in downloaded file "xml"

  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds

  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "RADIUS Authentication Failures for SIM" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "today" in downloaded file "csv"


  Then verify filetext "SIM_IDENTIFIER" in downloaded file "csv"
  Then verify filetext "SIM_ID" in downloaded file "csv"
  Then verify filetext "LOAD_TIMESTAMP" in downloaded file "csv"
  Then verify filetext "SERVER_TIMESTAMP" in downloaded file "csv"
  Then verify filetext "CHARGING_ID" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "APN" in downloaded file "csv"

  Then verify filetext "Data" in downloaded file "csv"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "csv"
  Then verify filetext "FAILURE_REASON" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "CUSTOMER_PROFILE_NAME" in downloaded file "csv"
  Then verify filetext "A" in downloaded file "csv"
  Then verify filetext "B" in downloaded file "csv"
  Then verify filetext "C" in downloaded file "csv"
  Then verify filetext "D" in downloaded file "csv"
  Then verify filetext "E" in downloaded file "csv"

  Then select dropdown "* Format" "PDF"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "pdf"
  Then verify filetext "RADIUS Authentication Failures for SIM" in downloaded file "pdf"
  Then verify filetext "From" in downloaded file "pdf"
  Then verify filetext "To" in downloaded file "pdf"

  Then verify filetext "sim id" in downloaded file "pdf"
  Then verify filetext "load timestamp" in downloaded file "pdf"
  Then verify filetext "server timestamp" in downloaded file "pdf"
  Then verify filetext "charging id" in downloaded file "pdf"
  Then verify filetext "customer code" in downloaded file "pdf"
  Then verify filetext "apn" in downloaded file "pdf"

  Then verify filetext "Data" in downloaded file "pdf"
  Then verify filetext "vf opco code" in downloaded file "pdf"
  Then verify filetext "failure reason" in downloaded file "pdf"
  Then verify filetext "customer code" in downloaded file "pdf"
  Then verify filetext "customer profile" in downloaded file "pdf"
  Then verify filetext "name" in downloaded file "pdf"

  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout


@REG_R10_GUI_Customer_082
Scenario: Test to verify the steps taken by the customer user to view Rogue Usage Events v3 report from the Global M2M Platform in CSV, PDF and XML format

  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "Rogue Usage Events v3"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate"
  Then enter date for "and" "today"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "Rogue Usage Events" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then get todays date and store in "today"
  Then verify filetext "today" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"


  Then verify filetext "Rogue Usage Events" in downloaded file "xml"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "xml"
  Then verify filetext "SIM_ID" in downloaded file "xml"
  Then verify filetext "EVENT_TIMESTAMP" in downloaded file "xml"
  Then verify filetext "THRESHOLD_VALUE" in downloaded file "xml"
  Then verify filetext "THRESHOLD_PERIOD" in downloaded file "xml"
  Then verify filetext "THRESHOLD_NAME" in downloaded file "xml"
  Then verify filetext "ACCUMULATED_USAGE" in downloaded file "xml"
  Then verify filetext "L_A" in downloaded file "xml"
  Then verify filetext "L_B" in downloaded file "xml"
  Then verify filetext "L_C" in downloaded file "xml"
  Then verify filetext "L_D" in downloaded file "xml"
  Then verify filetext "L_E" in downloaded file "xml"

  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "Rogue Usage Events" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "today" in downloaded file "csv"


  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"


  Then verify filetext "Rogue Usage Events" in downloaded file "csv"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "csv"
  Then verify filetext "SIM_ID" in downloaded file "csv"
  Then verify filetext "EVENT_TIMESTAMP" in downloaded file "csv"
  Then verify filetext "THRESHOLD_VALUE" in downloaded file "csv"
  Then verify filetext "THRESHOLD_PERIOD" in downloaded file "csv"
  Then verify filetext "THRESHOLD_NAME" in downloaded file "csv"
  Then verify filetext "ACCUMULATED_USAGE" in downloaded file "csv"
  Then verify filetext "A" in downloaded file "csv"
  Then verify filetext "B" in downloaded file "csv"
  Then verify filetext "C" in downloaded file "csv"
  Then verify filetext "D" in downloaded file "csv"
  Then verify filetext "E" in downloaded file "csv"

  Then select dropdown "* Format" "PDF"
  When click on button "Generate"
  Then wait for 60 seconds

  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "pdf"
  Then verify filetext "Rogue Usage Events" in downloaded file "pdf"
  Then verify filetext "From" in downloaded file "pdf"
  Then verify filetext "To" in downloaded file "pdf"

  Then verify filetext "event timestamp" in downloaded file "pdf"
  Then verify filetext "customer code" in downloaded file "pdf"


  Then verify filetext "sim id" in downloaded file "pdf"
  Then verify filetext "threshold value" in downloaded file "pdf"
  Then verify filetext "threshold period" in downloaded file "pdf"
  Then verify filetext "threshold name" in downloaded file "pdf"
  Then verify filetext "accumulated usage" in downloaded file "pdf"


  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout

@REG_R10_GUI_Customer_084
Scenario: Test to verify the steps taken by the customer user to view Secondary MSISDN Mapping v2 report from the Global M2M Platform in CSV, PDF and XML format

  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "Secondary MSISDN Mapping v2"
  Then verify text "Format"
  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "Secondary MSISDN Mapping" in downloaded file "csv"


  Then verify filetext "Data" in downloaded file "csv"
  Then verify filetext "ICCID" in downloaded file "csv"
  Then verify filetext "SIM_ID" in downloaded file "csv"
  Then verify filetext "PRIMARY_MSISDN" in downloaded file "csv"
  Then verify filetext "SECONDARY_MSISDN" in downloaded file "csv"

  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout

@REG_R10_GUI_Customer_085
Scenario: Test to verify the steps taken by the customer user to view Service Profile Details for Customer report from the Global M2M Platform in CSV, PDF and XML format

  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "Service Profile Details for Customer"
  Then verify text "Format"
  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds



  Then verify filetext "SERVICE_PROFILE_NAME" in downloaded file "csv"
  Then verify filetext "SERVICE_PROFILE_ID" in downloaded file "csv"
  Then verify filetext "SERVICE_PROFILE_DESCRIPTION" in downloaded file "csv"
  Then verify filetext "TARIFF" in downloaded file "csv"
  Then verify filetext "APN" in downloaded file "csv"
  Then verify filetext "NUMBER_OF_SIMS" in downloaded file "csv"
  Then verify filetext "RED_SIMS" in downloaded file "csv"
  Then verify filetext "AMBER_SIMS" in downloaded file "csv"
  Then verify filetext "GREEN_SIMS" in downloaded file "csv"
  Then verify filetext "PROVISIONING_PROFILE" in downloaded file "csv"
  Then verify filetext "PLMN_LIST" in downloaded file "csv"
  Then verify filetext "SIM_DEFAULT_STATE" in downloaded file "csv"
  Then verify filetext "POST_STATE" in downloaded file "csv"
  Then verify filetext "BASE_COUNTRY" in downloaded file "csv"
  Then verify filetext "HIGHUSAGE_EVENT_THRESHOLD" in downloaded file "csv"
  Then verify filetext "HIGHUSAGE_EVENT_ACTION" in downloaded file "csv"
  Then verify filetext "HIGHUSAGE_MONITOR_PER" in downloaded file "csv"
  Then verify filetext "HIGHUSAGE_CS_THRESHOLD" in downloaded file "csv"
  Then verify filetext "HIGHUSAGE_CS_ACTION" in downloaded file "csv"
  Then verify filetext "HIGHUSAGE_CS_MONITOR_PER" in downloaded file "csv"
  Then verify filetext "HIGHUSAGE_SMSMO_THRESHOLD" in downloaded file "csv"
  Then verify filetext "HIGHUSAGE_SMSMO_ACTION" in downloaded file "csv"
  Then verify filetext "HIGHUSAGE_SMSMO_MONITOR_PER" in downloaded file "csv"
  Then verify filetext "ROGUEUSAGE_EVENT_THRESHOLD" in downloaded file "csv"
  Then verify filetext "ROGUEUSAGE_EVENT_ACTION" in downloaded file "csv"
  Then verify filetext "ROGUEUSAGE_MONITOR_PER" in downloaded file "csv"
  Then verify filetext "ROGUEUSAGE_CS_THRESHOLD" in downloaded file "csv"
  Then verify filetext "ROGUEUSAGE_CS_ACTION" in downloaded file "csv"
  Then verify filetext "ROGUEUSAGE_MONITOR_PER" in downloaded file "csv"
  Then verify filetext "ROGUEUSAGE_CS_MONITOR_PER" in downloaded file "csv"
  Then verify filetext "ROGUEUSAGE_SMSMO_THRESHOLD" in downloaded file "csv"
  Then verify filetext "ROGUEUSAGE_SMSMO_ACTION" in downloaded file "csv"
  Then verify filetext "ROGUEUSAGE_SMSMO_MONITOR_PER" in downloaded file "csv"
  Then verify filetext "LINKED_PROFILE" in downloaded file "csv"
  Then verify filetext "IMEI_MATCH_RULE" in downloaded file "csv"
  Then verify filetext "IMEI_CAPTURE_RULE" in downloaded file "csv"
  Then verify filetext "IMEI_EVENT_ACTION" in downloaded file "csv"
  Then verify filetext "IMEI_DEVICE_ACTION" in downloaded file "csv"
  Then verify filetext "DEFAULT_SMS_PRIORITY" in downloaded file "csv"
  Then verify filetext "DEFAULT_SMS_VALIDITY_PERIOD" in downloaded file "csv"
  Then verify filetext "DEFAULT_SMS_REPLACE" in downloaded file "csv"
  Then verify filetext "IMSI_RANGE" in downloaded file "csv"
  Then verify filetext "LOCATION_FIX_ENABLED" in downloaded file "csv"
  Then verify filetext "DEVICE_TRACKING_ENABLED" in downloaded file "csv"
  Then verify filetext "REGIONAL_FOOTPRINT" in downloaded file "csv"
  Then verify filetext "MAX_LOCATION_AGE" in downloaded file "csv"
  Then verify filetext "MAX_TRACKING_PERIOD" in downloaded file "csv"
  Then verify filetext "AGPS_ENABLED" in downloaded file "csv"
  Then verify filetext "AUTO_GEOFENCING" in downloaded file "csv"
  Then verify filetext "RADIUS" in downloaded file "csv"
  Then verify filetext "GEOFENCE_NOTIF_ON_BREACH" in downloaded file "csv"
  Then verify filetext "GEOFENCE_NOTIF_ON_ENTRY" in downloaded file "csv"
  Then verify filetext "GEOFENCE_NOTIF_ON_RENTRY" in downloaded file "csv"
  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout

@REG_R10_GUI_Customer_088
Scenario: Test to verify the steps taken by the customer user to view SIM Delta Events for Customer v3 report from the Global M2M Platform in CSV, PDF and XML format
  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "SIM Delta Events for Customer v3"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate"
  Then enter date for "and" "today"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "SIM Delta Events for Customer" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then get todays date and store in "today"
  Then verify filetext "today" in downloaded file "xml"

  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "SIM_ID" in downloaded file "xml"
  Then verify filetext "INCLUDE_INITIAL_VALUES" in downloaded file "xml"
  Then verify filetext "DT_TIM_CHANGE" in downloaded file "xml"
  Then verify filetext "CHANGE_TYPE" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"

  Then verify filetext "Data" in downloaded file "xml"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "xml"
  Then verify filetext "TIM_STATE" in downloaded file "xml"
  Then verify filetext "CUSTOMER_PROFILE_NAME" in downloaded file "xml"
  Then verify filetext "HOME_COUNTRY" in downloaded file "xml"
  Then verify filetext "L_A" in downloaded file "xml"
  Then verify filetext "L_B" in downloaded file "xml"
  Then verify filetext "L_C" in downloaded file "xml"
  Then verify filetext "L_D" in downloaded file "xml"
  Then verify filetext "L_E" in downloaded file "xml"

  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "SIM Delta Events for Customer" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "today" in downloaded file "csv"


  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "SIM_ID" in downloaded file "csv"
  Then verify filetext "INCLUDE_INITIAL_VALUES" in downloaded file "csv"
  Then verify filetext "DT_TIM_CHANGE" in downloaded file "csv"
  Then verify filetext "CHANGE_TYPE" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"


  Then verify filetext "Data" in downloaded file "csv"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "csv"
  Then verify filetext "TIM_STATE" in downloaded file "csv"
  Then verify filetext "CUSTOMER_PROFILE_NAME" in downloaded file "csv"
  Then verify filetext "HOME_COUNTRY" in downloaded file "csv"
  Then verify filetext "A" in downloaded file "csv"
  Then verify filetext "B" in downloaded file "csv"
  Then verify filetext "C" in downloaded file "csv"
  Then verify filetext "D" in downloaded file "csv"
  Then verify filetext "E" in downloaded file "csv"


  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout


@REG_R10_GUI_Customer_091
Scenario: Test to verify the steps taken by the customer user to view SIM Delta Events for Customer Profile v3 report from the Global M2M Platform in CSV, PDF and XML format  Given test case starts
  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "SIM Delta Events for Customer Profile v3"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate"
  Then enter date for "and" "today"
  Then select dropdown "Service profile" "AutoCSP2"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "SIM Delta Events for Customer Profile" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then get todays date and store in "today"
  Then verify filetext "today" in downloaded file "xml"

  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "SIM_ID" in downloaded file "xml"
  Then verify filetext "INCLUDE_INITIAL_VALUES" in downloaded file "xml"
  Then verify filetext "DT_TIM_CHANGE" in downloaded file "xml"
  Then verify filetext "CHANGE_TYPE" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"

  Then verify filetext "Data" in downloaded file "xml"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "xml"
  Then verify filetext "TIM_STATE" in downloaded file "xml"
  Then verify filetext "CUSTOMER_PROFILE_NAME" in downloaded file "xml"
  Then verify filetext "HOME_COUNTRY" in downloaded file "xml"
  Then verify filetext "L_A" in downloaded file "xml"
  Then verify filetext "L_B" in downloaded file "xml"
  Then verify filetext "L_C" in downloaded file "xml"
  Then verify filetext "L_D" in downloaded file "xml"
  Then verify filetext "L_E" in downloaded file "xml"

  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "SIM Delta Events for Customer Profile" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "today" in downloaded file "csv"


  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "SIM_ID" in downloaded file "csv"
  Then verify filetext "INCLUDE_INITIAL_VALUES" in downloaded file "csv"
  Then verify filetext "DT_TIM_CHANGE" in downloaded file "csv"
  Then verify filetext "CHANGE_TYPE" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"


  Then verify filetext "Data" in downloaded file "csv"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "csv"
  Then verify filetext "TIM_STATE" in downloaded file "csv"
  Then verify filetext "CUSTOMER_PROFILE_NAME" in downloaded file "csv"
  Then verify filetext "HOME_COUNTRY" in downloaded file "csv"
  Then verify filetext "A" in downloaded file "csv"
  Then verify filetext "B" in downloaded file "csv"
  Then verify filetext "C" in downloaded file "csv"
  Then verify filetext "D" in downloaded file "csv"
  Then verify filetext "E" in downloaded file "csv"


  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout


@REG_R10_GUI_Customer_093
Scenario: Test to verify the steps taken by the customer user to view SIM Delta Events for SIM v2 report from the Global M2M Platform in CSV, PDF and XML format

  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "SIM Delta Events for SIM v2"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate"
  Then enter date for "and" "today"
  Then enter "SIM Identifier" "USE_CustomerReports2_SimWithRadFailure"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "SIM Delta Events for SIM" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then get todays date and store in "today"
  Then verify filetext "today" in downloaded file "xml"

  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "SIM_IDENTIFIER" in downloaded file "xml"
  Then verify filetext "INCLUDE_INITIAL_VALUES" in downloaded file "xml"
  Then verify filetext "DT_TIM_CHANGE" in downloaded file "xml"
  Then verify filetext "CHANGE_TYPE" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"

  Then verify filetext "Data" in downloaded file "xml"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "xml"
  Then verify filetext "TIM_STATE" in downloaded file "xml"
  Then verify filetext "CUSTOMER_PROFILE_NAME" in downloaded file "xml"
  Then verify filetext "HOME_COUNTRY" in downloaded file "xml"


  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "SIM Delta Events for SIM" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "today" in downloaded file "csv"


  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "SIM_IDENTIFIER" in downloaded file "csv"
  Then verify filetext "INCLUDE_INITIAL_VALUES" in downloaded file "csv"
  Then verify filetext "DT_TIM_CHANGE" in downloaded file "csv"
  Then verify filetext "CHANGE_TYPE" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"


  Then verify filetext "Data" in downloaded file "csv"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "csv"
  Then verify filetext "TIM_STATE" in downloaded file "csv"
  Then verify filetext "CUSTOMER_PROFILE_NAME" in downloaded file "csv"
  Then verify filetext "HOME_COUNTRY" in downloaded file "csv"



  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout







@REG_R10_GUI_Customer_094
Scenario: Test to verify the steps taken by the customer user to view SIM Group Detail report from the Global M2M Platform in CSV, PDF and XML format


  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "SIM Group Detail"
  Then verify text "SIM group name"
  Then select dropdown "* SIM group name" "USE_CustomerReports2_SIMGroupName"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "SIM Group Detail" in downloaded file "xml"


  Then verify filetext "SIM_GROUP_NAME" in downloaded file "xml"
  Then verify filetext "USER_NAME" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "VF_OPCO_ID" in downloaded file "xml"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "xml"
  Then verify filetext "TIMESTAMP" in downloaded file "xml"
  Then verify filetext "Details" in downloaded file "xml"




  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "SIM Group Detail" in downloaded file "csv"


  Then verify filetext "SIM_GROUP_NAME" in downloaded file "csv"
  Then verify filetext "USER_NAME" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "VF_OPCO_ID" in downloaded file "csv"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "csv"
  Then verify filetext "TIMESTAMP" in downloaded file "csv"
  Then verify filetext "Details" in downloaded file "csv"

  Then select dropdown "* Format" "PDF"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "pdf"
  Then verify filetext "SIM Group Detail" in downloaded file "pdf"


  Then verify filetext "sim group name" in downloaded file "pdf"
  Then verify filetext "imsi" in downloaded file "pdf"
  Then verify filetext "Details" in downloaded file "pdf"


  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout



@REG_R10_GUI_Customer_096
Scenario: Test to verify the steps taken by the customer user to view SIM Identifier-MSISDN Pairing v2 report from the Global M2M Platform in CSV, PDF and XML format


  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "SIM Identifier-MSISDN Pairing v2"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate2"
  Then enter date for "and" "today"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "SIM Identifier-MSISDN Pairing" in downloaded file "xml"


  Then verify filetext "PROVISIONING_DATE" in downloaded file "xml"
  Then verify filetext "USER_NAME" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "VF_OPCO_ID" in downloaded file "xml"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "xml"
  Then verify filetext "TIMESTAMP" in downloaded file "xml"
  Then verify filetext "SIM_ID" in downloaded file "xml"
  Then verify filetext "PRIMARY_MSISDN" in downloaded file "xml"




  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "SIM Identifier-MSISDN Pairing" in downloaded file "csv"


  Then verify filetext "PROVISIONING_DATE" in downloaded file "csv"
  Then verify filetext "USER_NAME" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "VF_OPCO_ID" in downloaded file "csv"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "csv"
  Then verify filetext "TIMESTAMP" in downloaded file "csv"
  Then verify filetext "SIM_ID" in downloaded file "csv"
  Then verify filetext "PRIMARY_MSISDN" in downloaded file "csv"


  Then select dropdown "* Format" "PDF"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "pdf"
  Then verify filetext "SIM Identifier-MSISDN Pairing" in downloaded file "pdf"


  Then verify filetext "Data" in downloaded file "pdf"
  Then verify filetext "provisioning date" in downloaded file "pdf"
  Then verify filetext "sim id" in downloaded file "pdf"
  Then verify filetext "primary msisdn" in downloaded file "pdf"

  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout


@REG_R10_GUI_Customer_098
Scenario: Test to verify the steps taken by the customer user to view SIM Inventory for Customer v2 report from the Global M2M Platform in CSV, PDF format
  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "SIM Inventory for Customer v2"
  Then verify text "SIM state"
  Then select dropdown "SIM state" "All"
  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "SIM Inventory for Customer" in downloaded file "csv"


  Then verify filetext "USER_NAME" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "VF_OPCO_ID" in downloaded file "csv"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "csv"
  Then verify filetext "TIMESTAMP" in downloaded file "csv"
  Then verify filetext "SIM_ID" in downloaded file "csv"
  Then verify filetext "SIM_STATE" in downloaded file "csv"

  Then verify filetext "ICCID" in downloaded file "csv"
  Then verify filetext "LAST_APN" in downloaded file "csv"
  Then verify filetext "SIM_STATE" in downloaded file "csv"
  Then verify filetext "CELL_ID" in downloaded file "csv"
  Then verify filetext "SIM_ALERTS" in downloaded file "csv"
  Then verify filetext "IMEI" in downloaded file "csv"
  Then verify filetext "ACTIVATED_DATE" in downloaded file "csv"
  Then verify filetext "CURRENT_STATE_DATE" in downloaded file "csv"
  Then verify filetext "A" in downloaded file "csv"
  Then verify filetext "B" in downloaded file "csv"
  Then verify filetext "C" in downloaded file "csv"
  Then verify filetext "D" in downloaded file "csv"
  Then verify filetext "E" in downloaded file "csv"


  Then select dropdown "* Format" "PDF"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "pdf"
  Then verify filetext "SIM Inventory for Customer" in downloaded file "pdf"

  Then verify filetext "sim id" in downloaded file "pdf"
  Then verify filetext "sim state" in downloaded file "pdf"

  Then verify filetext "iccid" in downloaded file "pdf"
  Then verify filetext "last apn" in downloaded file "pdf"
  Then verify filetext "cell id" in downloaded file "pdf"
  Then verify filetext "sim alerts" in downloaded file "pdf"
  Then verify filetext "imei" in downloaded file "pdf"
  Then verify filetext "activated date" in downloaded file "pdf"
  Then verify filetext "current state date" in downloaded file "pdf"

  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout


@REG_R10_GUI_Customer_100
Scenario: Test to verify the steps taken by the customer user to view SIM Pairing file v2 report from the Global M2M Platform in CSV format

  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust2"
  When click on link "USE_CustomerReports2_Cust2"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "SIM Pairings file v2"
  Then verify text "Customer order number"
  Then enter "Customer order number" "USE_CustomerReports2_CustOrderNo"

  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_Cust2" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_CustOrderNo" in downloaded file "csv"
  Then verify filetext "TIM_ICCID" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "SIM_ID" in downloaded file "csv"
  Then verify filetext "Tim_Record_Created" in downloaded file "csv"
  Then verify filetext "VF_OPCO_CODE" in downloaded file "csv"

  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout


@REG_R10_GUI_Customer_102
Scenario: Test to verify the steps taken by the customer user to view SMS Usage by SIM v2 report from the Global M2M Platform in CSV, PDF and XML format


  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "SMS Usage by SIM v2"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate"
  Then enter date for "and" "today"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "SMS Usage by SIM" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_SimWithSMSUsage" in downloaded file "xml"
  Then verify filetext "2.0" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then get todays date and store in "today"
  Then verify filetext "today" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "TIMESTAMP" in downloaded file "xml"
  Then verify filetext "SIM_ID" in downloaded file "xml"
  Then verify filetext "EVENT_DATE" in downloaded file "xml"
  Then verify filetext "TIM_STATE" in downloaded file "xml"
  Then verify filetext "SMS_WAKEUP_COUNT" in downloaded file "xml"
  Then verify filetext "SMSMT_COUNT" in downloaded file "xml"
  Then verify filetext "SMSMT_TRANS_COUNT" in downloaded file "xml"
  Then verify filetext "SMSMT_TRANS_RESPONSE_COUNT" in downloaded file "xml"
  Then verify filetext "SMSMO_COUNT" in downloaded file "xml"


  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_SimWithSMSUsage" in downloaded file "csv"
  Then verify filetext "SMS Usage by SIM" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "today" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "TIMESTAMP" in downloaded file "csv"
  Then verify filetext "SIM_ID" in downloaded file "csv"
  Then verify filetext "EVENT_DATE" in downloaded file "csv"
  Then verify filetext "TIM_STATE" in downloaded file "csv"
  Then verify filetext "SMS_WAKEUP_COUNT" in downloaded file "csv"
  Then verify filetext "SMSMT_COUNT" in downloaded file "csv"
  Then verify filetext "SMSMT_TRANS_COUNT" in downloaded file "csv"
  Then verify filetext "SMSMT_TRANS_RESPONSE_COUNT" in downloaded file "csv"
  Then verify filetext "SMSMO_COUNT" in downloaded file "csv"

  Then select dropdown "* Format" "PDF"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "pdf"
  Then verify filetext "USE_CustomerReports2_SimWithSMSUsage" in downloaded file "pdf"
  Then verify filetext "SMS Usage by SIM" in downloaded file "pdf"
  Then verify filetext "From" in downloaded file "pdf"
  Then verify filetext "To" in downloaded file "pdf"
  Then verify filetext "sim id" in downloaded file "pdf"
  Then verify filetext "event date" in downloaded file "pdf"
  Then verify filetext "tim state" in downloaded file "pdf"
  Then verify filetext "sms wakeup count" in downloaded file "pdf"
  Then verify filetext "smsmt count" in downloaded file "pdf"
  Then verify filetext "smsmt trans count" in downloaded file "pdf"
  Then verify filetext "smsmt trans" in downloaded file "pdf"
  Then verify filetext "response count" in downloaded file "pdf"
  Then verify filetext "smsmo count" in downloaded file "pdf"


  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout


@REG_R10_GUI_Customer_103
Scenario: Test to verify the steps taken by the customer user to view State Changes by Date report from the Global M2M Platform in CSV, PDF and XML format

  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "State Changes by Date"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate"
  Then enter date for "and" "today"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "State Changes by Date" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then get todays date and store in "today"
  Then verify filetext "today" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "TIMESTAMP" in downloaded file "xml"
  Then verify filetext "State Changes" in downloaded file "xml"
  Then verify filetext "FROM_STATE" in downloaded file "xml"
  Then verify filetext "TO_STATE" in downloaded file "xml"
  Then verify filetext "CHANGE_DATE" in downloaded file "xml"
  Then verify filetext "CUSTOMER" in downloaded file "xml"
  Then verify filetext "NUM_CHANGES" in downloaded file "xml"



  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "State Changes by Date" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "today" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "TIMESTAMP" in downloaded file "csv"
  Then verify filetext "State Changes" in downloaded file "csv"
  Then verify filetext "FROM_STATE" in downloaded file "csv"
  Then verify filetext "TO_STATE" in downloaded file "csv"
  Then verify filetext "CHANGE_DATE" in downloaded file "csv"
  Then verify filetext "CUSTOMER" in downloaded file "csv"
  Then verify filetext "NUM_CHANGES" in downloaded file "csv"

   Then select dropdown "* Format" "PDF"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "pdf"
  Then verify filetext "State Changes by Date" in downloaded file "pdf"
  Then verify filetext "From" in downloaded file "pdf"
  Then verify filetext "To" in downloaded file "pdf"
  Then verify filetext "State Changes" in downloaded file "pdf"
  Then verify filetext "from state" in downloaded file "pdf"
  Then verify filetext "to state" in downloaded file "pdf"
  Then verify filetext "change date" in downloaded file "pdf"
  Then verify filetext "customer" in downloaded file "pdf"
  Then verify filetext "num changes" in downloaded file "pdf"

  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout

@REG_R10_GUI_Customer_104
Scenario: Test to verify the steps taken by the customer user to view State Changes by Home Country report from the Global M2M Platform in CSV, PDF and XML format

  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "State Changes by Home Country"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate"
  Then enter date for "and" "today"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds

  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "State Changes by Home Country" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then get todays date and store in "today"
  Then verify filetext "today" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "TIMESTAMP" in downloaded file "xml"
  Then verify filetext "State Changes" in downloaded file "xml"
  Then verify filetext "FROM_STATE" in downloaded file "xml"
  Then verify filetext "TO_STATE" in downloaded file "xml"
  Then verify filetext "HOME_COUNTRY" in downloaded file "xml"
  Then verify filetext "CUSTOMER" in downloaded file "xml"
  Then verify filetext "NUM_CHANGES" in downloaded file "xml"



  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "State Changes by Home Country" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "today" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "TIMESTAMP" in downloaded file "csv"
  Then verify filetext "State Changes" in downloaded file "csv"
  Then verify filetext "FROM_STATE" in downloaded file "csv"
  Then verify filetext "TO_STATE" in downloaded file "csv"
  Then verify filetext "HOME_COUNTRY" in downloaded file "csv"
  Then verify filetext "CUSTOMER" in downloaded file "csv"
  Then verify filetext "NUM_CHANGES" in downloaded file "csv"

  Then select dropdown "* Format" "PDF"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "pdf"
  Then verify filetext "State Changes by Home Country" in downloaded file "pdf"
  Then verify filetext "From" in downloaded file "pdf"
  Then verify filetext "To" in downloaded file "pdf"
  Then verify filetext "State Changes" in downloaded file "pdf"
  Then verify filetext "from state" in downloaded file "pdf"
  Then verify filetext "to state" in downloaded file "pdf"
  Then verify filetext "home country" in downloaded file "pdf"
  Then verify filetext "customer" in downloaded file "pdf"
  Then verify filetext "num changes" in downloaded file "pdf"

  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout

@REG_R10_GUI_Customer_105
Scenario: Test to verify the steps taken by the customer user to view State Changes by Home Country and Date report from the Global M2M Platform in CSV, PDF and XML format


  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "State Changes by Home Country and Date"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate"
  Then enter date for "and" "today"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "State Changes by Home Country and Date" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then get todays date and store in "today"
  Then verify filetext "today" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "TIMESTAMP" in downloaded file "xml"
  Then verify filetext "State Changes" in downloaded file "xml"
  Then verify filetext "FROM_STATE" in downloaded file "xml"
  Then verify filetext "TO_STATE" in downloaded file "xml"
  Then verify filetext "CHANGE_DATE" in downloaded file "xml"
  Then verify filetext "HOME_COUNTRY" in downloaded file "xml"
  Then verify filetext "CUSTOMER" in downloaded file "xml"
  Then verify filetext "NUM_CHANGES" in downloaded file "xml"



  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds

  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "State Changes by Home Country and Date" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "today" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "TIMESTAMP" in downloaded file "csv"
  Then verify filetext "State Changes" in downloaded file "csv"
  Then verify filetext "FROM_STATE" in downloaded file "csv"
  Then verify filetext "TO_STATE" in downloaded file "csv"
  Then verify filetext "CHANGE_DATE" in downloaded file "csv"
  Then verify filetext "HOME_COUNTRY" in downloaded file "csv"
  Then verify filetext "CUSTOMER" in downloaded file "csv"
  Then verify filetext "NUM_CHANGES" in downloaded file "csv"

  Then select dropdown "* Format" "PDF"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "pdf"
  Then verify filetext "State Changes by Home Country and Date" in downloaded file "pdf"
  Then verify filetext "From" in downloaded file "pdf"
  Then verify filetext "To" in downloaded file "pdf"
  Then verify filetext "State Changes" in downloaded file "pdf"
  Then verify filetext "from state" in downloaded file "pdf"
  Then verify filetext "to state" in downloaded file "pdf"
  Then verify filetext "change date" in downloaded file "pdf"
  Then verify filetext "home country" in downloaded file "pdf"
  Then verify filetext "customer" in downloaded file "pdf"
  Then verify filetext "num changes" in downloaded file "pdf"


  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout


@REG_R10_GUI_Customer_106
Scenario: Test to verify the steps taken by the customer user to view State Changes Summary report from the Global M2M Platform in CSV, PDF and XML format


  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "State Changes Summary"
  Then verify text "* Period"
  Then select dropdown "* Period" "Range"
  Then enter date "Between" "USE_CustomerReports2_StartDate"
  Then enter date for "and" "today"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "State Changes Summary" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then get todays date and store in "today"
  Then verify filetext "today" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "TIMESTAMP" in downloaded file "xml"
  Then verify filetext "State Changes" in downloaded file "xml"
  Then verify filetext "FROM_STATE" in downloaded file "xml"
  Then verify filetext "TO_STATE" in downloaded file "xml"
  Then verify filetext "CUSTOMER" in downloaded file "xml"
  Then verify filetext "NUM_CHANGES" in downloaded file "xml"



  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "State Changes Summary" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "today" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "TIMESTAMP" in downloaded file "csv"
  Then verify filetext "State Changes" in downloaded file "csv"
  Then verify filetext "FROM_STATE" in downloaded file "csv"
  Then verify filetext "TO_STATE" in downloaded file "csv"
  Then verify filetext "CUSTOMER" in downloaded file "csv"
  Then verify filetext "NUM_CHANGES" in downloaded file "csv"

  Then select dropdown "* Format" "PDF"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "pdf"
  Then verify filetext "State Changes Summary" in downloaded file "pdf"
  Then verify filetext "From" in downloaded file "pdf"
  Then verify filetext "To" in downloaded file "pdf"
  Then verify filetext "State Changes" in downloaded file "pdf"
  Then verify filetext "from state" in downloaded file "pdf"
  Then verify filetext "to state" in downloaded file "pdf"
  Then verify filetext "customer" in downloaded file "pdf"
  Then verify filetext "num changes" in downloaded file "pdf"

  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout



@REG_R10_GUI_Customer_107
Scenario: Test to verify the steps taken by customer user to view the State Counts by Home Country report from the Global M2M Platform in CSV, PDF and XML format


  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "State Counts by Home Country"
  Then verify text "* Date"
  Then enter date "* Date" "USE_CustomerReports2_StartDate"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "State Counts by Home Country" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "TIMESTAMP" in downloaded file "xml"
  Then verify filetext "State Counts" in downloaded file "xml"
  Then verify filetext "TIM_STATE" in downloaded file "xml"
  Then verify filetext "HOME_COUNTRY" in downloaded file "xml"
  Then verify filetext "NUM_TIMS_IN_STATE" in downloaded file "xml"

  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds

  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "State Counts by Home Country" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "TIMESTAMP" in downloaded file "csv"
  Then verify filetext "State Counts" in downloaded file "csv"
  Then verify filetext "TIM_STATE" in downloaded file "csv"
  Then verify filetext "HOME_COUNTRY" in downloaded file "csv"
  Then verify filetext "NUM_TIMS_IN_STATE" in downloaded file "csv"

  Then select dropdown "* Format" "PDF"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "pdf"
  Then verify filetext "State Counts by Home Country" in downloaded file "pdf"
  Then verify filetext "For" in downloaded file "pdf"
  Then verify filetext "State Counts" in downloaded file "pdf"
  Then verify filetext "tim state" in downloaded file "pdf"
  Then verify filetext "home country" in downloaded file "pdf"
  Then verify filetext "customer code" in downloaded file "pdf"
  Then verify filetext "num tims in state" in downloaded file "pdf"
  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout


@REG_R10_GUI_Customer_108
Scenario: Test to verify the steps taken by customer user to view State Counts Summary report from the Global M2M Platform in CSV, PDF and XML format

  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "State Counts Summary"
  Then verify text "* Date"
  Then enter date "* Date" "USE_CustomerReports2_StartDate"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "State Counts Summary" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "PERIOD_END" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "TIMESTAMP" in downloaded file "xml"
  Then verify filetext "State Counts" in downloaded file "xml"
  Then verify filetext "TIM_STATE" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "NUM_TIMS_IN_STATE" in downloaded file "xml"



  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "State Counts Summary" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "PERIOD_END" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_StartDate" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "TIMESTAMP" in downloaded file "csv"
  Then verify filetext "State Counts" in downloaded file "csv"
  Then verify filetext "TIM_STATE" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "NUM_TIMS_IN_STATE" in downloaded file "csv"

  Then select dropdown "* Format" "PDF"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "pdf"
  Then verify filetext "State Counts Summary" in downloaded file "pdf"
  Then verify filetext "State Counts" in downloaded file "pdf"
  Then verify filetext "customer code" in downloaded file "pdf"
  Then verify filetext "State Counts" in downloaded file "pdf"
  Then verify filetext "tim state" in downloaded file "pdf"
  Then verify filetext "num tims in state" in downloaded file "pdf"
  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout


@REG_R10_GUI_Customer_112
Scenario: Test to verify the steps taken by the customer user to view Top and Bottom Circuit-Switched Devices by Duration v2 report from the Global M2M Platform in CSV, PDF and XML format

  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust3"
  When click on link "USE_CustomerReports2_Cust3"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "Top and Bottom Circuit-Switched Devices by Duration"
  Then verify text "* Date"
  Then enter date "* Date" "USE_CustomerReports2_DateWithCalls"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_Cust3" in downloaded file "xml"
  Then verify filetext "Top and Bottom Circuit-Switched Devices by Duration" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "USE_CustomerReports2_DateWithCalls" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "TIMESTAMP" in downloaded file "xml"
  Then verify filetext "ReportReferenceData" in downloaded file "xml"
  Then verify filetext "TopDevices" in downloaded file "xml"
  Then verify filetext "BottomDevices" in downloaded file "xml"
  Then verify filetext "RANK" in downloaded file "xml"
  Then verify filetext "CUSTOMER_PROFILE" in downloaded file "xml"
  Then verify filetext "IMSI" in downloaded file "xml"
  Then verify filetext "TOTAL_CS_VOICE_DURATION" in downloaded file "xml"
  Then verify filetext "TOTAL_CS_DATA_DURATION" in downloaded file "xml"
  Then verify filetext "CHARGING_SOURCE" in downloaded file "xml"



  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_Cust3" in downloaded file "csv"
  Then verify filetext "Top and Bottom Circuit-Switched Devices by Duration" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "USE_CustomerReports2_DateWithCalls" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "TIMESTAMP" in downloaded file "csv"
  Then verify filetext "ReportReferenceData" in downloaded file "csv"
  Then verify filetext "TopDevices" in downloaded file "csv"
  Then verify filetext "BottomDevices" in downloaded file "csv"
  Then verify filetext "RANK" in downloaded file "csv"
  Then verify filetext "CUSTOMER_PROFILE" in downloaded file "csv"
  Then verify filetext "IMSI" in downloaded file "csv"
  Then verify filetext "TOTAL_CS_VOICE_DURATION" in downloaded file "csv"
  Then verify filetext "TOTAL_CS_DATA_DURATION" in downloaded file "csv"
  Then verify filetext "CHARGING_SOURCE" in downloaded file "csv"

  Then select dropdown "* Format" "PDF"
  When click on button "Generate"
  Then wait for 60 seconds

  Then verify filetext "USE_CustomerReports2_Cust3" in downloaded file "pdf"
  Then verify filetext "Top and Bottom Circuit-Switched Devices by Duration" in downloaded file "pdf"
  Then verify filetext "Top Usage Devices" in downloaded file "pdf"
  Then verify filetext "Bottom Usage Devices" in downloaded file "pdf"
  Then verify filetext "rank" in downloaded file "pdf"
  Then verify filetext "customer profile" in downloaded file "pdf"
  Then verify filetext "imsi" in downloaded file "pdf"
  Then verify filetext "total voice duration" in downloaded file "pdf"
  Then verify filetext "total data duration" in downloaded file "pdf"
  Then verify filetext "charging source" in downloaded file "pdf"

  When click on link "USE_CustomerReports2_Cust3Name"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout


  #Data prep: Static IP address has to be set for atleast 1 device belonged to the customer(one time task)
  #Steps:Open link for any device in the customer=> Configure=>Set IP address=>Add any IP under the subnet=>Set successfully
@REG_R10_GUI_Customer_109
  Scenario: Test to verify the steps taken by customer user to view Static IP Address Allocations report from the Global M2M Platform in CSV and XML format

  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "Static IP Address Allocations"
  Then verify text "* Format"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "Static IP Address Allocations" in downloaded file "xml"
  Then verify filetext "1.0" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "IMSI" in downloaded file "xml"
  Then verify filetext "SIM_STATE" in downloaded file "xml"
  Then verify filetext "APN" in downloaded file "xml"
  Then verify filetext "STATIC_IP_ADDRESS" in downloaded file "xml"



  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "Static IP Address Allocations" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "IMSI" in downloaded file "csv"
  Then verify filetext "SIM_STATE" in downloaded file "csv"
  Then verify filetext "APN" in downloaded file "csv"
  Then verify filetext "STATIC_IP_ADDRESS" in downloaded file "csv"
  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout

  #Data prep: Static IP address has to be set for atleast 1 device belonged to the customer(one time task)
  #Steps:Open link for any device in the customer=> Configure=>Set IP address=>Add any IP under the subnet=>Set successfully
@REG_R10_GUI_Customer_110
  Scenario: Test to verify the steps taken by customer user to view Static IP Address Allocations v2 report from the Global M2M Platform in CSV and XML format

  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"
  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "Static IP Address Allocations v2"
  Then verify text "* Format"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "Static IP Address Allocations" in downloaded file "xml"
  Then verify filetext "2.0" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "SIM_ID" in downloaded file "xml"
  Then verify filetext "SIM_STATE" in downloaded file "xml"
  Then verify filetext "APN" in downloaded file "xml"
  Then verify filetext "STATIC_IP_ADDRESS" in downloaded file "xml"



  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "Static IP Address Allocations" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "SIM_ID" in downloaded file "csv"
  Then verify filetext "SIM_STATE" in downloaded file "csv"
  Then verify filetext "APN" in downloaded file "csv"
  Then verify filetext "STATIC_IP_ADDRESS" in downloaded file "csv"
  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout


  #Data prep: Atleast one device of the customer,should have made a data atleast once
  @REG_R10_GUI_Customer_115
  Scenario: Test to verify the steps taken by the customer user to view Top and Bottom Packet-Data Devices by Data Usage v3 report from the Global M2M Platform in CSV, PDF and XML format

  Given test case starts
  Given browser is open
  Then login
  When click on link "USE_CustomerReports2_opCo"
  Then verify text "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_Cust"
  Then wait for 5 seconds
  Then verify text "Reporting"
  When click on menu "Reporting"

  Then wait for 5 seconds
  Then verify text "Reports"
  When click on submenu "Reports"
  Then wait for 5 seconds
  Then verify text "Generate report"
  Then select dropdown "* Report" "Top and Bottom Packet-Data Devices by Data Usage v3"
  Then verify text "* Date"
  Then enter "* Date" "USE_CustomerReports2_DateWithUsage"
  Then select dropdown "* Format" "XML"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "xml"
  Then verify filetext "Top and Bottom Packet-Data Devices by Data Usage" in downloaded file "xml"
  Then verify filetext "ReportReferenceData" in downloaded file "xml"
  Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
  Then verify filetext "PERIOD_START" in downloaded file "xml"
  Then verify filetext "TopDevices" in downloaded file "xml"
  Then verify filetext "BottomDevices" in downloaded file "xml"
  Then verify filetext "RANK" in downloaded file "xml"
  Then verify filetext "CUSTOMER_PROFILE" in downloaded file "xml"
  Then verify filetext "SIM_ID" in downloaded file "xml"
  Then verify filetext "TOTAL_BYTES_IN" in downloaded file "xml"
  Then verify filetext "TOTAL_BYTES_OUT" in downloaded file "xml"
  Then verify filetext "L_A" in downloaded file "xml"
  Then verify filetext "L_B" in downloaded file "xml"
  Then verify filetext "L_C" in downloaded file "xml"
  Then verify filetext "L_D" in downloaded file "xml"
  Then verify filetext "L_E" in downloaded file "xml"




  Then select dropdown "* Format" "CSV"
  When click on button "Generate"
  Then wait for 60 seconds

  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "csv"
  Then verify filetext "Top and Bottom Packet-Data Devices by Data Usage" in downloaded file "csv"
  Then verify filetext "ReportReferenceData" in downloaded file "csv"
  Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
  Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
  Then verify filetext "PERIOD_START" in downloaded file "csv"
  Then verify filetext "TopDevices" in downloaded file "csv"
  Then verify filetext "BottomDevices" in downloaded file "csv"
  Then verify filetext "RANK" in downloaded file "csv"
  Then verify filetext "CUSTOMER_PROFILE" in downloaded file "csv"
  Then verify filetext "SIM_ID" in downloaded file "csv"
  Then verify filetext "TOTAL_BYTES_IN" in downloaded file "csv"
  Then verify filetext "TOTAL_BYTES_OUT" in downloaded file "csv"
  Then verify filetext "A" in downloaded file "csv"
  Then verify filetext "B" in downloaded file "csv"
  Then verify filetext "C" in downloaded file "csv"
  Then verify filetext "D" in downloaded file "csv"
  Then verify filetext "E" in downloaded file "csv"

  Then select dropdown "* Format" "PDF"
  When click on button "Generate"
  Then wait for 60 seconds


  Then verify filetext "USE_CustomerReports2_CustName" in downloaded file "pdf"
  Then verify filetext "Top and Bottom Packet-Data Devices by Data Usage" in downloaded file "pdf"
  Then verify filetext "Top Usage Devices" in downloaded file "pdf"
  Then verify filetext "Bottom Usage Devices" in downloaded file "pdf"
  Then verify filetext "rank" in downloaded file "pdf"
  Then verify filetext "customer profile" in downloaded file "pdf"
  Then verify filetext "sim identifier" in downloaded file "pdf"
  Then verify filetext "volume in (KiB)" in downloaded file "pdf"
  Then verify filetext "volume out (KiB)" in downloaded file "pdf"

  When click on link "USE_CustomerReports2_Cust"
  When click on link "USE_CustomerReports2_opCo"
  Then wait for 5 seconds
  Then logout

