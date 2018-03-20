@CustomerReports1
Feature: Customer Reports 1


  @REG_R10_GUI_Customer001
  Scenario: verify the steps taken by the Customer User to view API Usage for Customer report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "API Usage for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "xml"
    Then verify filetext "RESULT_MAJOR" in downloaded file "xml"
    Then verify filetext "API_NAME" in downloaded file "xml"
    Then verify filetext "RESULT_MINOR" in downloaded file "xml"
    Then verify filetext "API_COUNT" in downloaded file "xml"
    
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "csv"
    Then verify filetext "RESULT_MAJOR" in downloaded file "csv"
    Then verify filetext "API_NAME" in downloaded file "csv"
    Then verify filetext "RESULT_MINOR" in downloaded file "csv"
    Then verify filetext "API_COUNT" in downloaded file "csv"
    
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "api count" in downloaded file "pdf"
    Then verify filetext "api name" in downloaded file "pdf"
    Then verify filetext "result major" in downloaded file "pdf"
    Then verify filetext "result minor" in downloaded file "pdf"

    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Customer004
  Scenario: verify the steps taken by the Customer User to view Barred Calls for Customer v3 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "Barred Calls for Customer v3"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "xml"
    Then verify filetext "SIM_ID" in downloaded file "xml"
    Then verify filetext "MSISDN" in downloaded file "xml"
    Then verify filetext "SERVING_OPCO" in downloaded file "xml"
    Then verify filetext "SESSION_ATTEMPTED" in downloaded file "xml"
    Then verify filetext "CALL_SCENARIO" in downloaded file "xml"
    Then verify filetext "Service_Type" in downloaded file "xml"
    Then verify filetext "OTHER_PARTY_NUMBER" in downloaded file "xml"


    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "sim id" in downloaded file "pdf"
    Then verify filetext "msisdn" in downloaded file "pdf"
    Then verify filetext "serving opco" in downloaded file "pdf"
    Then verify filetext "session attempted" in downloaded file "pdf"
    Then verify filetext "service type" in downloaded file "pdf"
    Then verify filetext "other party number" in downloaded file "pdf"

    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "csv"
    Then verify filetext "SIM_ID" in downloaded file "csv"
    Then verify filetext "MSISDN" in downloaded file "csv"
    Then verify filetext "SERVING_OPCO" in downloaded file "csv"
    Then verify filetext "SESSION_ATTEMPTED" in downloaded file "csv"
    Then verify filetext "CALL_SCENARIO" in downloaded file "csv"
    Then verify filetext "SERVICE_TYPE" in downloaded file "csv"
    Then verify filetext "OTHER_PARTY_NUMBER" in downloaded file "csv"

    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Customer008
  Scenario: verify the steps taken by the Customer User to view Circuit Switched Usage by SIM v4 report from the Global M2M Platform in CSV PDF and XML format    Given test case starts
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "Circuit-Switched Usage by SIM v4"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds


    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "xml"
    Then verify filetext "SIM_ID" in downloaded file "xml"
    Then verify filetext "SERVING_OPCO" in downloaded file "xml"
    Then verify filetext "TIM_STATE" in downloaded file "xml"
    Then verify filetext "HOME_COUNTRY" in downloaded file "xml"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
    Then verify filetext "DURATION" in downloaded file "xml"
    Then verify filetext "LAST_USED" in downloaded file "xml"
    Then verify filetext "NUM_DAYS_USED" in downloaded file "xml"
    Then verify filetext "NUM_CS_SESSIONS_MO" in downloaded file "xml"
    Then verify filetext "NUM_CS_SESSIONS_MT" in downloaded file "xml


    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds


    Then verify filetext "sim id" in downloaded file "pdf"
    Then verify filetext "serving opco" in downloaded file "pdf"
    Then verify filetext "tim state" in downloaded file "pdf"
    Then verify filetext "home country" in downloaded file "pdf"
    Then verify filetext "customer code" in downloaded file "pdf"
    Then verify filetext "tim state" in downloaded file "pdf"
    Then verify filetext "duration" in downloaded file "pdf"
    Then verify filetext "last used" in downloaded file "pdf"
    Then verify filetext "num days used" in downloaded file "pdf"
    Then verify filetext "num cs sessionsmo" in downloaded file "pdf"
    Then verify filetext "num cs sessions mt" in downloaded file "pdf

    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "csv"
    Then verify filetext "SIM_ID" in downloaded file "csv"
    Then verify filetext "SERVING_OPCO" in downloaded file "csv"
    Then verify filetext "TIM_STATE" in downloaded file "csv"
    Then verify filetext "HOME_COUNTRY" in downloaded file "csv"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
    Then verify filetext "DURATION" in downloaded file "csv"
    Then verify filetext "LAST_USED" in downloaded file "csv"
    Then verify filetext "NUM_DAYS_USED" in downloaded file "csv"
    Then verify filetext "NUM_CS_SESSIONS_MO" in downloaded file "csv"
    Then verify filetext "NUM_CS_SESSIONS_MT" in downloaded file "csv"

    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Customer009
  Scenario: verify the steps taken by the Customer User to view Configured Event Business Rules report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "Configured Event Business Rules"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "csv"
    Then verify filetext "EVENT_NAME" in downloaded file "csv"
    Then verify filetext "EVENT_DESCRIPTION" in downloaded file "csv"
    Then verify filetext "MONITORING_LEVEL" in downloaded file "csv"
    Then verify filetext "ENTITY_TYPE" in downloaded file "csv"
    Then verify filetext "ENTITY" in downloaded file "csv"
    Then verify filetext "TRIGGER_ON_NUMBER_OF_DEVICES" in downloaded file "csv"
    Then verify filetext "TRIGGER_ON_PCT_OF_DEVICES" in downloaded file "csv"
    Then verify filetext "EVENT_METRIC" in downloaded file "csv"
    Then verify filetext "THRESHOLD_VALUE" in downloaded file "csv"
    Then verify filetext "THRESHOLD_TYPE" in downloaded file "csv"
    Then verify filetext "MONITORING_PERIOD" in downloaded file "csv"
    Then verify filetext "NOTIFICATION_ACTION" in downloaded file "csv"
    Then verify filetext "DEVICE_ACTION" in downloaded file "csv"
    Then verify filetext "CHANGE_TO_SERVICE_PROFILE" in downloaded file "csv"
    Then verify filetext "CHANGE_TO_STATE" in downloaded file "csv"
    Then verify filetext "THRESHOLD_ENABLED" in downloaded file "csv"
    Then verify filetext "CUSTOMER_CONTROLLED" in downloaded file "csv"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "xml"
    Then verify filetext "EVENT_NAME" in downloaded file "xml"
    Then verify filetext "EVENT_DESCRIPTION" in downloaded file "xml"
    Then verify filetext "MONITORING_LEVEL" in downloaded file "xml"
    Then verify filetext "ENTITY_TYPE" in downloaded file "xml"
    Then verify filetext "ENTITY" in downloaded file "xml"
    Then verify filetext "TRIGGER_ON_NUMBER_OF_DEVICES" in downloaded file "xml"
    Then verify filetext "TRIGGER_ON_PCT_OF_DEVICES" in downloaded file "xml"
    Then verify filetext "EVENT_METRIC" in downloaded file "xml"
    Then verify filetext "THRESHOLD_VALUE" in downloaded file "xml"
    Then verify filetext "THRESHOLD_TYPE" in downloaded file "xml"
    Then verify filetext "MONITORING_PERIOD" in downloaded file "xml"
    Then verify filetext "NOTIFICATION_ACTION" in downloaded file "xml"
    Then verify filetext "DEVICE_ACTION" in downloaded file "xml"
    Then verify filetext "CHANGE_TO_SERVICE_PROFILE" in downloaded file "xml"
    Then verify filetext "CHANGE_TO_STATE" in downloaded file "xml"
    Then verify filetext "THRESHOLD_ENABLED" in downloaded file "xml"
    Then verify filetext "CUSTOMER_CONTROLLED" in downloaded file "xml"

    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds


    Then verify filetext "event name" in downloaded file "pdf"
    Then verify filetext "event description" in downloaded file "pdf"
    Then verify filetext "monitoring level" in downloaded file "pdf"
    Then verify filetext "entity type" in downloaded file "pdf"
    Then verify filetext "entity" in downloaded file "pdf"
    Then verify filetext "trigger on numberof devices" in downloaded file "pdf"
    Then verify filetext "trigger on pct ofdevices" in downloaded file "pdf"
    Then verify filetext "event metric" in downloaded file "pdf"
    Then verify filetext "threshold value" in downloaded file "pdf"
    Then verify filetext "threshold type" in downloaded file "pdf"
    Then verify filetext "monitoring period" in downloaded file "pdf"
    Then verify filetext "notification action" in downloaded file "pdf"
    Then verify filetext "device action" in downloaded file "pdf"
    Then verify filetext "change to serviceprofile" in downloaded file "pdf"
    Then verify filetext "change to state" in downloaded file "pdf"
    Then verify filetext "threshold enabled" in downloaded file "pdf"
    Then verify filetext "customer controlled" in downloaded file "pdf"

    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Customer011
  Scenario: verify the steps taken by the Customer User to view Customer Overview v2 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "Customer Overview v2"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "csv"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
    Then verify filetext "TOTAL_BYTES" in downloaded file "csv"
    Then verify filetext "TOTAL_PS_SESSIONS_COUNT" in downloaded file "csv"
    Then verify filetext "NUM_SMS_MT_WAKEUP" in downloaded file "csv"
    Then verify filetext "NUM_SMS_MT" in downloaded file "csv"
    Then verify filetext "NUM_SMS_MT_TRANS" in downloaded file "csv"
    Then verify filetext "NUM_SMS_MT_TRANS_RESPONSE" in downloaded file "csv"
    Then verify filetext "NUM_SMS_MO" in downloaded file "csv"
    Then verify filetext "TOTAL_CS_DURATION" in downloaded file "csv"
    Then verify filetext "TOTAL_CS_SESSIONS_COUNT" in downloaded file "csv"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "xml"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
    Then verify filetext "TOTAL_BYTES" in downloaded file "xml"
    Then verify filetext "TOTAL_PS_SESSIONS_COUNT" in downloaded file "xml"
    Then verify filetext "NUM_SMS_MT_WAKEUP" in downloaded file "xml"
    Then verify filetext "NUM_SMS_MT" in downloaded file "xml"
    Then verify filetext "NUM_SMS_MT_TRANS" in downloaded file "xml"
    Then verify filetext "NUM_SMS_MT_TRANS_RESPONSE" in downloaded file "xml"
    Then verify filetext "NUM_SMS_MO" in downloaded file "xml"
    Then verify filetext "TOTAL_CS_DURATION" in downloaded file "xml"
    Then verify filetext "TOTAL_CS_SESSIONS_COUNT" in downloaded file "xml"

    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds


    Then verify filetext "customer code" in downloaded file "pdf"
    Then verify filetext "total bytes" in downloaded file "pdf"
    Then verify filetext "total ps sessionscount" in downloaded file "pdf"
    Then verify filetext "num sms mtwakeup" in downloaded file "pdf"
    Then verify filetext "num sms mt" in downloaded file "pdf"
    Then verify filetext "num sms mt trans" in downloaded file "pdf"
    Then verify filetext "num sms mt transresponse" in downloaded file "pdf"
    Then verify filetext "num sms mo" in downloaded file "pdf"
    Then verify filetext "total cs duration" in downloaded file "pdf"

    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Customer013
  Scenario: verify the steps taken by the Customer User to view High Circuit Switched Usage Devices v2 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "High Circuit-Switched Usage Devices v2"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "csv"
    Then verify filetext "High Circuit-Switched Usage SIMs" in downloaded file "csv"
    Then verify filetext "SIM_ID" in downloaded file "csv"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
    Then verify filetext "TOTAL_DURATION_IN_SECS" in downloaded file "csv"
    Then verify filetext "NUM_SESSIONS" in downloaded file "csv"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "xml"
    Then verify filetext "High Circuit-Switched Usage SIMs" in downloaded file "xml"
    Then verify filetext "SIM_ID" in downloaded file "xml"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
    Then verify filetext "TOTAL_DURATION_IN_SECS" in downloaded file "xml"
    Then verify filetext "NUM_SESSIONS" in downloaded file "xml"

    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds


    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "pdf"
    Then verify filetext "sim id" in downloaded file "pdf"
    Then verify filetext "customer code" in downloaded file "pdf"
    Then verify filetext "num sessions" in downloaded file "pdf"
    Then verify filetext "total duration insecs" in downloaded file "pdf"

    Then wait for 5 seconds
    Then logout

  #Error
  @REG_R10_GUI_Customer016
  Scenario: verify the steps taken by the Customer User to view High Packet-Data Usage Devices v3 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "High Packet-Data Usage Devices v3"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"

    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "csv"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
    Then verify filetext "EVENT_TIMESTAMP" in downloaded file "csv"
    Then verify filetext "SIM_ID" in downloaded file "csv"
    Then verify filetext "THRESHOLD_VALUE" in downloaded file "csv"
    Then verify filetext "THRESHOLD_PERIOD" in downloaded file "csv"
    Then verify filetext "THRESHOLD_NAME" in downloaded file "csv"
    Then verify filetext "ACCUMULATED_USAGE" in downloaded file "csv"
    Then verify filetext "ATTRIBUTE1" in downloaded file "csv"
    Then verify filetext "ATTRIBUTE2" in downloaded file "csv"
    Then verify filetext "ATTRIBUTE3" in downloaded file "csv"
    Then verify filetext "ATTRIBUTE4" in downloaded file "csv"
    Then verify filetext "ATTRIBUTE5" in downloaded file "csv"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "xml"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
    Then verify filetext "EVENT_TIMESTAMP" in downloaded file "xml"
    Then verify filetext "SIM_ID" in downloaded file "xml"
    Then verify filetext "THRESHOLD_VALUE" in downloaded file "xml"
    Then verify filetext "THRESHOLD_PERIOD" in downloaded file "xml"
    Then verify filetext "THRESHOLD_NAME" in downloaded file "xml"
    Then verify filetext "ACCUMULATED_USAGE" in downloaded file "xml"
    Then verify filetext "ATTRIBUTE1" in downloaded file "xml"
    Then verify filetext "ATTRIBUTE2" in downloaded file "xml"
    Then verify filetext "ATTRIBUTE3" in downloaded file "xml"
    Then verify filetext "ATTRIBUTE4" in downloaded file "xml"
    Then verify filetext "ATTRIBUTE5" in downloaded file "xml"

    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds


    Then verify filetext "customer code" in downloaded file "pdf"
    Then verify filetext "event timestamp" in downloaded file "pdf"
    Then verify filetext "sim id" in downloaded file "pdf"
    Then verify filetext "threshold value" in downloaded file "pdf"
    Then verify filetext "threshold period" in downloaded file "pdf"
    Then verify filetext "threshold name" in downloaded file "pdf"
    Then verify filetext "accumulated usage" in downloaded file "pdf"

    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Customer019
  Scenario: verify the steps taken by the Customer User to view High Usage Events v3 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "High Usage Events v3"
    Then verify text "* Period"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"

    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "csv"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
    Then verify filetext "EVENT_TIMESTAMP" in downloaded file "csv"
    Then verify filetext "SIM_ID" in downloaded file "csv"
    Then verify filetext "THRESHOLD_VALUE" in downloaded file "csv"
    Then verify filetext "THRESHOLD_PERIOD" in downloaded file "csv"
    Then verify filetext "THRESHOLD_NAME" in downloaded file "csv"
    Then verify filetext "ACCUMULATED_USAGE" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute1" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute2" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute3" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute4" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute5" in downloaded file "csv"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 10 seconds

    Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
    Then verify filetext "EVENT_TIMESTAMP" in downloaded file "xml"
    Then verify filetext "SIM_ID" in downloaded file "xml"
    Then verify filetext "THRESHOLD_VALUE" in downloaded file "xml"
    Then verify filetext "THRESHOLD_PERIOD" in downloaded file "xml"
    Then verify filetext "THRESHOLD_NAME" in downloaded file "xml"
    Then verify filetext "ACCUMULATED_USAGE" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute1" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute2" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute3" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute4" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute5" in downloaded file "xml"

    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 10 seconds

    Then verify filetext "customer code" in downloaded file "pdf"
    Then verify filetext "event timestamp" in downloaded file "pdf"
    Then verify filetext "sim id" in downloaded file "pdf"
    Then verify filetext "threshold value" in downloaded file "pdf"
    Then verify filetext "threshold period" in downloaded file "pdf"
    Then verify filetext "threshold name" in downloaded file "pdf"
    Then verify filetext "accumulated usage" in downloaded file "pdf"

    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Customer021
  Scenario: verify the steps taken by the Customer User to view IMEI-Rule Failed Events v2 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "IMEI-Rule Failed Events v2"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"

    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "csv"
    Then verify filetext "SIM_ID" in downloaded file "csv"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
    Then verify filetext "CUSTOMER_PROFILE_NAME" in downloaded file "csv"
    Then verify filetext "DT_DETECTION" in downloaded file "csv"
    Then verify filetext "IMEI" in downloaded file "csv"
    Then verify filetext "DETECTED_IMEI" in downloaded file "csv"
    Then verify filetext "IMEI_MATCH_RULE" in downloaded file "csv"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "xml"
    Then verify filetext "SIM_ID" in downloaded file "xml"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
    Then verify filetext "CUSTOMER_PROFILE_NAME" in downloaded file "xml"
    Then verify filetext "DT_DETECTION" in downloaded file "xml"
    Then verify filetext "IMEI" in downloaded file "xml"
    Then verify filetext "DETECTED_IMEI" in downloaded file "xml"
    Then verify filetext "IMEI_MATCH_RULE" in downloaded file "xml"

    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds


    Then verify filetext "customer code" in downloaded file "pdf"
    Then verify filetext "sim id" in downloaded file "pdf"
    Then verify filetext "customer profilename" in downloaded file "pdf"
    Then verify filetext "dt detection" in downloaded file "pdf"
    Then verify filetext "threshold name" in downloaded file "pdf"
    Then verify filetext "imei" in downloaded file "pdf"
    Then verify filetext "detected imei" in downloaded file "pdf"
    Then verify filetext "imei match rule" in downloaded file "pdf"

    Then wait for 5 seconds
    Then logout

  #Pass
  @REG_R10_GUI_Customer022
  Scenario: verify the steps taken by the Customer User to view IMSI MSISDN Pairing report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "IMSI-MSISDN Pairing"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"

    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "PROVISIONING_DATE" in downloaded file "csv"
    Then verify filetext "IMSI" in downloaded file "csv"
    Then verify filetext "PRIMARY_MSISDN" in downloaded file "csv"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "PROVISIONING_DATE" in downloaded file "xml"
    Then verify filetext "IMSI" in downloaded file "xml"
    Then verify filetext "PRIMARY_MSISDN" in downloaded file "xml"

    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "provisioning date" in downloaded file "pdf"
    Then verify filetext "imsi" in downloaded file "pdf"
    Then verify filetext "primary msisdn" in downloaded file "pdf"

    Then wait for 10 seconds
    Then logout

  #Pass
  @REG_R10_GUI_Customer023
  Scenario: verify the steps taken by the Customer User to view IP Allocation for Customer report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "IP Allocation for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"

    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "APN_NAME" in downloaded file "csv"
    Then verify filetext "IP_POOL_SIZE" in downloaded file "csv"
    Then verify filetext "NUMBER_OF_IP_ALLOCATED" in downloaded file "csv"
    Then verify filetext "NUMBER_OF_MAX_IP_ALLOCATED" in downloaded file "csv"
    Then verify filetext "NUMBER_OF_MIN_IP_ALLOCATED" in downloaded file "csv"
    Then verify filetext "AVERAGE_IP_ALLOCATED" in downloaded file "csv"
    Then verify filetext "GGSN" in downloaded file "csv"
    Then verify filetext "TIMESTAMP" in downloaded file "csv"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds


    Then verify filetext "APN_NAME" in downloaded file "xml"
    Then verify filetext "IP_POOL_SIZE" in downloaded file "xml"
    Then verify filetext "NUMBER_OF_IP_ALLOCATED" in downloaded file "xml"
    Then verify filetext "NUMBER_OF_MAX_IP_ALLOCATED" in downloaded file "xml"
    Then verify filetext "NUMBER_OF_MIN_IP_ALLOCATED" in downloaded file "xml"
    Then verify filetext "AVERAGE_IP_ALLOCATED" in downloaded file "xml"
    Then verify filetext "GGSN" in downloaded file "xml"
    Then verify filetext "TIMESTAMP" in downloaded file "xml"

    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "apn name" in downloaded file "pdf"
    Then verify filetext "ip pool size" in downloaded file "pdf"
    Then verify filetext "number of ipallocated" in downloaded file "pdf"
    Then verify filetext "number of max ipallocated" in downloaded file "pdf"
    Then verify filetext "number of min ipallocated" in downloaded file "pdf"
    Then verify filetext "average ip allocated" in downloaded file "pdf"
    Then verify filetext "ggsn" in downloaded file "pdf"
    Then verify filetext "timestamp" in downloaded file "pdf"

    Then wait for 5 seconds
    Then logout

  #DataNotAvailable
  @REG_R10_GUI_Customer024
  Scenario: verify the steps taken by the Customer User to view Itemised Circuit-Switched Usage for Customer report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "Itemised Circuit-Switched Usage for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "xml"
    Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
    Then verify filetext "IMSI" in downloaded file "xml"
    Then verify filetext "TIM_STATE" in downloaded file "xml"
    Then verify filetext "SERVING_OPCO" in downloaded file "xml"
    Then verify filetext "SESSION_START" in downloaded file "xml"
    Then verify filetext "SESSION_END" in downloaded file "xml"
    Then verify filetext "DURATION" in downloaded file "xml"


    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds


    Then verify filetext "customer id" in downloaded file "pdf"
    Then verify filetext "customer code" in downloaded file "pdf"
    Then verify filetext "imsi" in downloaded file "pdf"
    Then verify filetext "tim state" in downloaded file "pdf"
    Then verify filetext "serving opco" in downloaded file "pdf"
    Then verify filetext "session start" in downloaded file "pdf"
    Then verify filetext "session end" in downloaded file "pdf"
    Then verify filetext "duration" in downloaded file "pdf"

    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

   Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "csv"
    Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
    Then verify filetext "IMSI" in downloaded file "csv"
    Then verify filetext "TIM_STATE" in downloaded file "csv"
    Then verify filetext "SERVING_OPCO" in downloaded file "csv"
    Then verify filetext "SESSION_START" in downloaded file "csv"
    Then verify filetext "SESSION_END" in downloaded file "csv"
    Then verify filetext "DURATION" in downloaded file "csv"

    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Customer028
  Scenario: verify the steps taken by the Customer User to view Itemised Circuit-Switched Usage for Customer v5 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "Itemised Circuit-Switched Usage for Customer v5"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "xml"
    Then verify filetext "UNIQUE_TRANSACTION_ID" in downloaded file "xml"
    Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
    Then verify filetext "SIM_ID" in downloaded file "xml"
    Then verify filetext "MSISDN" in downloaded file "xml"
    Then verify filetext "TIM_STATE" in downloaded file "xml"
    Then verify filetext "SERVING_OPCO" in downloaded file "xml"
    Then verify filetext "SESSION_START" in downloaded file "xml"
    Then verify filetext "SESSION_END" in downloaded file "xml"
    Then verify filetext "DURATION" in downloaded file "xml"
    Then verify filetext "CALL_SCENARIO" in downloaded file "xml"
    Then verify filetext "OTHER_PARTY_NUMBER" in downloaded file "xml"

    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds


    Then verify filetext "unique transactionid" in downloaded file "pdf"
    Then verify filetext "customer id" in downloaded file "pdf"
    Then verify filetext "customer code" in downloaded file "pdf"
    Then verify filetext "sim id" in downloaded file "pdf"
    Then verify filetext "msisdn" in downloaded file "pdf"
    Then verify filetext "tim state" in downloaded file "pdf"
    Then verify filetext "serving opco" in downloaded file "pdf"
    Then verify filetext "session start" in downloaded file "pdf"
    Then verify filetext "session end" in downloaded file "pdf"
    Then verify filetext "duration" in downloaded file "pdf"
    Then verify filetext "call scenario" in downloaded file "pdf"
    Then verify filetext "other party number" in downloaded file "pdf"

    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "csv"
    Then verify filetext "UNIQUE_TRANSACTION_ID" in downloaded file "csv"
    Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
    Then verify filetext "SIM_ID" in downloaded file "csv"
    Then verify filetext "MSISDN" in downloaded file "csv"
    Then verify filetext "TIM_STATE" in downloaded file "csv"
    Then verify filetext "SERVING_OPCO" in downloaded file "csv"
    Then verify filetext "SESSION_START" in downloaded file "csv"
    Then verify filetext "SESSION_END" in downloaded file "csv"
    Then verify filetext "DURATION" in downloaded file "csv"
    Then verify filetext "CALL_SCENARIO" in downloaded file "csv"
    Then verify filetext "OTHER_PARTY_NUMBER" in downloaded file "csv"

    Then wait for 5 seconds
    Then logout

  @REG_R10_GUI_Customer033
  Scenario: verify the steps taken by the Customer User to view Itemised Circuit-Switched Usage for Customer Profile v5 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "Itemised Circuit-Switched Usage for Customer Profile v5"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"
    Then select dropdown "* Service profile" "USE_CustomerReports1_CSP1"

    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "csv"
    Then verify filetext "UNIQUE_TRANSACTION_ID" in downloaded file "csv"
    Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
    Then verify filetext "SIM_ID" in downloaded file "csv"
    Then verify filetext "MSISDN" in downloaded file "csv"
    Then verify filetext "TIM_STATE" in downloaded file "csv"
    Then verify filetext "SERVING_OPCO" in downloaded file "csv"
    Then verify filetext "SESSION_START" in downloaded file "csv"
    Then verify filetext "SESSION_END" in downloaded file "csv"
    Then verify filetext "DURATION" in downloaded file "csv"
    Then verify filetext "CALL_SCENARIO" in downloaded file "csv"
    Then verify filetext "OTHER_PARTY_NUMBER" in downloaded file "csv"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "xml"
    Then verify filetext "UNIQUE_TRANSACTION_ID" in downloaded file "xml"
    Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
    Then verify filetext "SIM_ID" in downloaded file "xml"
    Then verify filetext "MSISDN" in downloaded file "xml"
    Then verify filetext "TIM_STATE" in downloaded file "xml"
    Then verify filetext "SERVING_OPCO" in downloaded file "xml"
    Then verify filetext "SESSION_START" in downloaded file "xml"
    Then verify filetext "SESSION_END" in downloaded file "xml"
    Then verify filetext "DURATION" in downloaded file "xml"
    Then verify filetext "CALL_SCENARIO" in downloaded file "xml"
    Then verify filetext "OTHER_PARTY_NUMBER" in downloaded file "xml"

    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds


    Then verify filetext "unique transactionid" in downloaded file "pdf"
    Then verify filetext "customer id" in downloaded file "pdf"
    Then verify filetext "customer code" in downloaded file "pdf"
    Then verify filetext "sim id" in downloaded file "pdf"
    Then verify filetext "msisdn" in downloaded file "pdf"
    Then verify filetext "tim state" in downloaded file "pdf"
    Then verify filetext "serving opco" in downloaded file "pdf"
    Then verify filetext "session start" in downloaded file "pdf"
    Then verify filetext "session end" in downloaded file "pdf"
    Then verify filetext "duration" in downloaded file "pdf"

    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Customer038
  Scenario: verify the steps taken by the Customer User to view Itemised Circuit-Switched Usage for SIM v5 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "Itemised Circuit-Switched Usage for SIM v5"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"
    Then enter "* SIM Identifier" "USE_CustomerReports1_SIMId"

    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "csv"
    Then verify filetext "UNIQUE_TRANSACTION_ID" in downloaded file "csv"
    Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
    Then verify filetext "SIM_ID" in downloaded file "csv"
    Then verify filetext "MSISDN" in downloaded file "csv"
    Then verify filetext "TIM_STATE" in downloaded file "csv"
    Then verify filetext "SERVING_OPCO" in downloaded file "csv"
    Then verify filetext "SESSION_START" in downloaded file "csv"
    Then verify filetext "SESSION_END" in downloaded file "csv"
    Then verify filetext "DURATION" in downloaded file "csv"
    Then verify filetext "CALL_SCENARIO" in downloaded file "csv"
    Then verify filetext "OTHER_PARTY_NUMBER" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute1" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute2" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute3" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute4" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute5" in downloaded file "csv"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "USE_CustomerReports1_OpcoName" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_CustName" in downloaded file "xml"
    Then verify filetext "UNIQUE_TRANSACTION_ID" in downloaded file "xml"
    Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
    Then verify filetext "SIM_ID" in downloaded file "xml"
    Then verify filetext "MSISDN" in downloaded file "xml"
    Then verify filetext "TIM_STATE" in downloaded file "xml"
    Then verify filetext "SERVING_OPCO" in downloaded file "xml"
    Then verify filetext "SESSION_START" in downloaded file "xml"
    Then verify filetext "SESSION_END" in downloaded file "xml"
    Then verify filetext "DURATION" in downloaded file "xml"
    Then verify filetext "CALL_SCENARIO" in downloaded file "xml"
    Then verify filetext "OTHER_PARTY_NUMBER" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute1" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute2" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute3" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute4" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute5" in downloaded file "xml"

    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds


    Then verify filetext "unique transactionid" in downloaded file "pdf"
    Then verify filetext "customer id" in downloaded file "pdf"
    Then verify filetext "customer code" in downloaded file "pdf"
    Then verify filetext "sim id" in downloaded file "pdf"
    Then verify filetext "msisdn" in downloaded file "pdf"
    Then verify filetext "tim state" in downloaded file "pdf"
    Then verify filetext "serving opco" in downloaded file "pdf"
    Then verify filetext "session start" in downloaded file "pdf"
    Then verify filetext "session end" in downloaded file "pdf"
    Then verify filetext "duration" in downloaded file "pdf"
    Then verify filetext "call scenario" in downloaded file "pdf"
    Then verify filetext "other party number" in downloaded file "pdf"

    Then wait for 5 seconds
    Then logout

  #Pass
  @REG_R10_GUI_Customer039
  Scenario: verify the steps taken by the Customer User to view Itemised Packet-Data Usage for Customer v5 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "Itemised Packet-Data Usage for Customer v5"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"
    #Then select dropdown "* Service profile" "USE_CustomerReports1_CSP1"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "UNIQUE_TRANSACTION_ID" in downloaded file "csv"
    Then verify filetext "SESSION_IDENTIFIER" in downloaded file "csv"
    Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
    Then verify filetext "SIM_ID" in downloaded file "csv"
    Then verify filetext "MSISDN" in downloaded file "csv"
    Then verify filetext "TIM_STATE" in downloaded file "csv"
    Then verify filetext "SERVING_OPCO" in downloaded file "csv"
    Then verify filetext "SESSION_START" in downloaded file "csv"
    Then verify filetext "SESSION_END" in downloaded file "csv"
    Then verify filetext "BYTES_INPUT" in downloaded file "csv"
    Then verify filetext "BYTES_OUTPUT" in downloaded file "csv"
    Then verify filetext "APN" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute1" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute2" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute3" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute4" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute5" in downloaded file "csv"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds


    Then verify filetext "UNIQUE_TRANSACTION_ID" in downloaded file "xml"
    Then verify filetext "SESSION_IDENTIFIER" in downloaded file "xml"
    Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
    Then verify filetext "SIM_ID" in downloaded file "xml"
    Then verify filetext "MSISDN" in downloaded file "xml"
    Then verify filetext "TIM_STATE" in downloaded file "xml"
    Then verify filetext "SERVING_OPCO" in downloaded file "xml"
    Then verify filetext "SESSION_START" in downloaded file "xml"
    Then verify filetext "SESSION_END" in downloaded file "xml"
    Then verify filetext "BYTES_INPUT" in downloaded file "xml"
    Then verify filetext "BYTES_OUTPUT" in downloaded file "xml"
    Then verify filetext "APN" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute1" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute2" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute3" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute4" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute5" in downloaded file "xml"

    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "uniquetransaction id" in downloaded file "pdf"
    Then verify filetext "session identifier" in downloaded file "pdf"
    Then verify filetext "sim id" in downloaded file "pdf"
    Then verify filetext "msisdn" in downloaded file "pdf"
    Then verify filetext "tim state" in downloaded file "pdf"
    Then verify filetext "serving opco" in downloaded file "pdf"
    Then verify filetext "session start" in downloaded file "pdf"
    Then verify filetext "session end" in downloaded file "pdf"
    Then verify filetext "data volumein(B)" in downloaded file "pdf"
    Then verify filetext "data volumeout(B)" in downloaded file "pdf"
    Then verify filetext "apn" in downloaded file "pdf"

    Then wait for 10 seconds
    Then logout


  @REG_R10_GUI_Customer040
  Scenario: verify the steps taken by the Customer User to view Itemised Packet-Data Usage for Customer Profile v5 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "Itemised Packet-Data Usage for Customer Profile v5"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"
    Then select dropdown "* Service profile" "USE_CustomerReports1_CSP1"

    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "UNIQUE_TRANSACTION_ID" in downloaded file "csv"
    Then verify filetext "SESSION_IDENTIFIER" in downloaded file "csv"
    Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
    Then verify filetext "SIM_ID" in downloaded file "csv"
    Then verify filetext "MSISDN" in downloaded file "csv"
    Then verify filetext "TIM_STATE" in downloaded file "csv"
    Then verify filetext "SERVING_OPCO" in downloaded file "csv"
    Then verify filetext "SESSION_START" in downloaded file "csv"
    Then verify filetext "SESSION_END" in downloaded file "csv"
    Then verify filetext "BYTES_INPUT" in downloaded file "csv"
    Then verify filetext "BYTES_OUTPUT" in downloaded file "csv"
    Then verify filetext "APN" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute1" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute2" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute3" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute4" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute5" in downloaded file "csv"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds


    Then verify filetext "UNIQUE_TRANSACTION_ID" in downloaded file "xml"
    Then verify filetext "SESSION_IDENTIFIER" in downloaded file "xml"
    Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
    Then verify filetext "SIM_ID" in downloaded file "xml"
    Then verify filetext "MSISDN" in downloaded file "xml"
    Then verify filetext "TIM_STATE" in downloaded file "xml"
    Then verify filetext "SERVING_OPCO" in downloaded file "xml"
    Then verify filetext "SESSION_START" in downloaded file "xml"
    Then verify filetext "SESSION_END" in downloaded file "xml"
    Then verify filetext "BYTES_INPUT" in downloaded file "xml"
    Then verify filetext "BYTES_OUTPUT" in downloaded file "xml"
    Then verify filetext "APN" in downloaded file "xml"
    Then verify filetext "Edit-1" in downloaded file "xml"
    Then verify filetext "Edit-2" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute1" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute2" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute3" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute4" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute5" in downloaded file "xml"

    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "uniquetransaction id" in downloaded file "pdf"
    Then verify filetext "session identifier" in downloaded file "pdf"
    Then verify filetext "sim id" in downloaded file "pdf"
    Then verify filetext "msisdn" in downloaded file "pdf"
    Then verify filetext "tim state" in downloaded file "pdf"
    Then verify filetext "serving opco" in downloaded file "pdf"
    Then verify filetext "session start" in downloaded file "pdf"
    Then verify filetext "session end" in downloaded file "pdf"
    Then verify filetext "data volumein(B)" in downloaded file "pdf"
    Then verify filetext "data volumeout(B)" in downloaded file "pdf"
    Then verify filetext "apn" in downloaded file "pdf"

    Then wait for 5 seconds
    Then logout
  #Pass
  @REG_R10_GUI_Customer043
  Scenario: verify the steps taken by the Customer User to view Itemised Packet-Data Usage for SIM v5 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "Itemised Packet-Data Usage for SIM v5"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"
    Then enter "* SIM Identifier" "USE_CustomerReports1_SIMId"
    
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "UNIQUE_TRANSACTION_ID" in downloaded file "csv"
    Then verify filetext "SESSION_IDENTIFIER" in downloaded file "csv"
    Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
    Then verify filetext "SIM_ID" in downloaded file "csv"
    Then verify filetext "MSISDN" in downloaded file "csv"
    Then verify filetext "TIM_STATE" in downloaded file "csv"
    Then verify filetext "SERVING_OPCO" in downloaded file "csv"
    Then verify filetext "SESSION_START" in downloaded file "csv"
    Then verify filetext "SESSION_END" in downloaded file "csv"
    Then verify filetext "BYTES_INPUT" in downloaded file "csv"
    Then verify filetext "BYTES_OUTPUT" in downloaded file "csv"
    Then verify filetext "APN" in downloaded file "csv"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds


    Then verify filetext "UNIQUE_TRANSACTION_ID" in downloaded file "xml"
    Then verify filetext "SESSION_IDENTIFIER" in downloaded file "xml"
    Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
    Then verify filetext "SIM_ID" in downloaded file "xml"
    Then verify filetext "MSISDN" in downloaded file "xml"
    Then verify filetext "TIM_STATE" in downloaded file "xml"
    Then verify filetext "SERVING_OPCO" in downloaded file "xml"
    Then verify filetext "SESSION_START" in downloaded file "xml"
    Then verify filetext "SESSION_END" in downloaded file "xml"
    Then verify filetext "BYTES_INPUT" in downloaded file "xml"
    Then verify filetext "BYTES_OUTPUT" in downloaded file "xml"
    Then verify filetext "APN" in downloaded file "xml"

    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "uniquetransaction id" in downloaded file "pdf"
    Then verify filetext "session identifier" in downloaded file "pdf"
    Then verify filetext "sim id" in downloaded file "pdf"
    Then verify filetext "msisdn" in downloaded file "pdf"
    Then verify filetext "tim state" in downloaded file "pdf"
    Then verify filetext "serving opco" in downloaded file "pdf"
    Then verify filetext "session start" in downloaded file "pdf"
    Then verify filetext "session end" in downloaded file "pdf"
    Then verify filetext "data volumein(B)" in downloaded file "pdf"
    Then verify filetext "data volumeout(B)" in downloaded file "pdf"
    Then verify filetext "apn" in downloaded file "pdf"

    Then wait for 5 seconds
    Then logout

  #Error
  @REG_R10_GUI_Customer047
  Scenario: verify the steps taken by the Customer User to view Itemised Packet-Data Usage with SMS Events for Customer Profile v4 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "Itemised Packet-Data Usage with SMS Events for Customer Profile v4"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"
    Then select dropdown "* Service profile" "USE_CustomerReports1_CSP1"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "UNIQUE_TRANSACTION_ID" in downloaded file "csv"
    Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
    Then verify filetext "IMSI" in downloaded file "csv"
    Then verify filetext "MSISDN" in downloaded file "csv"
    Then verify filetext "TIM_STATE" in downloaded file "csv"
    Then verify filetext "SERVING_OPCO" in downloaded file "csv"
    Then verify filetext "SESSION_START" in downloaded file "csv"
    Then verify filetext "SESSION_END" in downloaded file "csv"
    Then verify filetext "BYTES_INPUT" in downloaded file "csv"
    Then verify filetext "BYTES_OUTPUT" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute1" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute2" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute3" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute4" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute5" in downloaded file "csv"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds


    Then verify filetext "UNIQUE_TRANSACTION_ID" in downloaded file "xml"
    Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
    Then verify filetext "IMSI" in downloaded file "xml"
    Then verify filetext "MSISDN" in downloaded file "xml"
    Then verify filetext "TIM_STATE" in downloaded file "xml"
    Then verify filetext "SERVING_OPCO" in downloaded file "xml"
    Then verify filetext "SESSION_START" in downloaded file "xml"
    Then verify filetext "SESSION_END" in downloaded file "xml"
    Then verify filetext "BYTES_INPUT" in downloaded file "xml"
    Then verify filetext "BYTES_OUTPUT" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute1" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute2" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute3" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute4" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute5" in downloaded file "xml"

    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "uniquetransaction id" in downloaded file "pdf"
    Then verify filetext "imsi" in downloaded file "pdf"
    Then verify filetext "msisdn" in downloaded file "pdf"
    Then verify filetext "tim state" in downloaded file "pdf"
    Then verify filetext "serving opco" in downloaded file "pdf"
    Then verify filetext "session start" in downloaded file "pdf"
    Then verify filetext "session end" in downloaded file "pdf"
    Then verify filetext "data volumein(B)" in downloaded file "pdf"
    Then verify filetext "data volumeout(B)" in downloaded file "pdf"

    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Customer051
  Scenario: verify the steps taken by the Customer User to view Itemised Packet-Data Usage with SMS Events for Customer v4 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "Itemised Packet-Data Usage with SMS Events for Customer v4"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"

    Then verify filetext "UNIQUE_TRANSACTION_ID" in downloaded file "csv"
    Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
    Then verify filetext "IMSI" in downloaded file "csv"
    Then verify filetext "MSISDN" in downloaded file "csv"
    Then verify filetext "TIM_STATE" in downloaded file "csv"
    Then verify filetext "SERVING_OPCO" in downloaded file "csv"
    Then verify filetext "SESSION_START" in downloaded file "csv"
    Then verify filetext "SESSION_END" in downloaded file "csv"
    Then verify filetext "BYTES_INPUT" in downloaded file "csv"
    Then verify filetext "BYTES_OUTPUT" in downloaded file "csv"
    Then verify filetext "APN" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute1" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute2" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute3" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute4" in downloaded file "csv"
    Then verify filetext "USE_CustomerReports1_attribute5" in downloaded file "csv"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds


    Then verify filetext "UNIQUE_TRANSACTION_ID" in downloaded file "xml"
    Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
    Then verify filetext "IMSI" in downloaded file "xml"
    Then verify filetext "MSISDN" in downloaded file "xml"
    Then verify filetext "TIM_STATE" in downloaded file "xml"
    Then verify filetext "SERVING_OPCO" in downloaded file "xml"
    Then verify filetext "SESSION_START" in downloaded file "xml"
    Then verify filetext "SESSION_END" in downloaded file "xml"
    Then verify filetext "BYTES_INPUT" in downloaded file "xml"
    Then verify filetext "BYTES_OUTPUT" in downloaded file "xml"
    Then verify filetext "APN" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute1" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute2" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute3" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute4" in downloaded file "xml"
    Then verify filetext "USE_CustomerReports1_attribute5" in downloaded file "xml"


    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "uniquetransaction id" in downloaded file "pdf"
    Then verify filetext "imsi" in downloaded file "pdf"
    Then verify filetext "msisdn" in downloaded file "pdf"
    Then verify filetext "tim state" in downloaded file "pdf"
    Then verify filetext "serving opco" in downloaded file "pdf"
    Then verify filetext "session start" in downloaded file "pdf"
    Then verify filetext "session end" in downloaded file "pdf"
    Then verify filetext "data volumein(B)" in downloaded file "pdf"
    Then verify filetext "data volumeout(B)" in downloaded file "pdf"
    Then verify filetext "apn" in downloaded file "pdf"

    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Customer055
  Scenario: verify the steps taken by the Customer User to view Itemised Packet-Data Usage with SMS Events for IMSI v4 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    Then verify text "USE_ADMIN_Cust1"
    When click on link "USE_ADMIN_Cust1"
    Then wait for 5 seconds
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Generate report"
    Then select dropdown "* Report" "Itemised Packet-Data Usage with SMS Events for IMSI v4"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_CustomerReports1_Period1"
    Then enter date "* Between" "USE_CustomerReports1_StartDate"
    Then enter date "* and" "USE_CustomerReports1_EndDate"
    Then enter "* SIM Identifier" "USE_CustomerReports1_SIMId"

    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "UNIQUE_TRANSACTION_ID" in downloaded file "csv"
    Then verify filetext "CUSTOMER_ID" in downloaded file "csv"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "csv"
    Then verify filetext "IMSI" in downloaded file "csv"
    Then verify filetext "MSISDN" in downloaded file "csv"
    Then verify filetext "TIM_STATE" in downloaded file "csv"
    Then verify filetext "SERVING_OPCO" in downloaded file "csv"
    Then verify filetext "SESSION_START" in downloaded file "csv"
    Then verify filetext "SESSION_END" in downloaded file "csv"
    Then verify filetext "BYTES_INPUT" in downloaded file "csv"
    Then verify filetext "BYTES_OUTPUT" in downloaded file "csv"
    Then verify filetext "APN" in downloaded file "csv"

    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds


    Then verify filetext "UNIQUE_TRANSACTION_ID" in downloaded file "xml"
    Then verify filetext "CUSTOMER_ID" in downloaded file "xml"
    Then verify filetext "CUSTOMER_CODE" in downloaded file "xml"
    Then verify filetext "IMSI" in downloaded file "xml"
    Then verify filetext "MSISDN" in downloaded file "xml"
    Then verify filetext "TIM_STATE" in downloaded file "xml"
    Then verify filetext "SERVING_OPCO" in downloaded file "xml"
    Then verify filetext "SESSION_START" in downloaded file "xml"
    Then verify filetext "SESSION_END" in downloaded file "xml"
    Then verify filetext "BYTES_INPUT" in downloaded file "xml"
    Then verify filetext "BYTES_OUTPUT" in downloaded file "xml"
    Then verify filetext "APN" in downloaded file "xml"

    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds

    Then verify filetext "unique transactionid" in downloaded file "pdf"
    Then verify filetext "imsi" in downloaded file "pdf"
    Then verify filetext "msisdn" in downloaded file "pdf"
    Then verify filetext "tim state" in downloaded file "pdf"
    Then verify filetext "serving opco" in downloaded file "pdf"
    Then verify filetext "session start" in downloaded file "pdf"
    Then verify filetext "session end" in downloaded file "pdf"
    Then verify filetext "data volume in(B)" in downloaded file "pdf"
    Then verify filetext "data volumeout(B)" in downloaded file "pdf"
    Then verify filetext "apn" in downloaded file "pdf"

    Then wait for 5 seconds
    Then logout