@EventUsageNotification
Feature: Event Management

  @REG_R8_EventManagement_003
  Scenario: Test to verify whether opco user can create Event for Packet Data Connections(Number) and all notification are received upon breaching the event metric.
      Given test case starts
      Given browser is open
      Then login
      Then create Event for metric "Packet Data Connections (Number)" entitytype "Service profile" profiletype "* Service profile" profilename "USE_EventUsageNotification_CSP1" monitorlevel "Device" monitorperiod "Daily" thresholdtype "Maximum" thresholdvalue "10" deviceaction "BLANK"
      Then verify event
      When mobile usage breached
      Then wait for 60 seconds

      Then download report "Notification Events for Customer" format "CSV"
      Then wait for 30 seconds
      Then verify filetext "Packet Data Connections (Number)" in downloaded file "csv"

      Then select dropdown "* Format" "PDF"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "Packet DataConnections(Number)" in downloaded file "pdf"

      Then select dropdown "* Format" "XML"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "Packet Data Connections (Number)" in downloaded file "xml"
      Then delete event

  @REG_R8_EventManagement_004
  Scenario:Test to verify whether opco user can create Event for Packet Data Volumes(Bytes In+ Out) and all notification are received upon breaching the event metric.
      Given test case starts
      Given browser is open
      Then login
      When click on link "USE_EventUsageNotification_Admin"
      Then verify text "USE_ADMIN_Opco"
      When click on link "USE_ADMIN_Opco"
      Then verify text "M2M"
      Then create Event for metric "Packet Data Volume (Bytes In + Out)" entitytype "SIM group" profiletype "* SIM group" profilename "GroupName4Event" monitorlevel "Device" monitorperiod "Hourly" thresholdtype "Maximum" thresholdvalue "10" deviceaction "None"
      Then verify event
      When mobile usage breached
      Then wait for 30 seconds

      Then download report "Notification Events for Customer" format "CSV"
      Then wait for 30 seconds
      Then verify filetext "Packet Data Volume (Bytes In + Out)" in downloaded file "csv"

      Then select dropdown "* Format" "PDF"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "Packet Data Volume(Bytes In + Out)" in downloaded file "pdf"

      Then select dropdown "* Format" "XML"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "Packet Data Volume (Bytes In + Out)" in downloaded file "xml"
      Then delete event

  @REG_R8_EventManagement_005
  Scenario: Test to verify whether opco user can create Event for Packet Data Volumes(Bytes In Only) and all notification are received upon breaching the event metric.
      Given test case starts
      Given browser is open
      Then login
      Then create Event for metric "Packet Data Volume (Bytes In Only)" entitytype "APN" profiletype "* APN" profilename "USE_EventUsageNotification_APN" monitorlevel "Compound" monitorperiod "Six hourly" thresholdtype "Minimum" thresholdvalue "10" deviceaction "BLANK"
      Then verify event
      When mobile usage breached
      Then wait for 30 seconds

      Then download report "Notification Events for Customer" format "CSV"
      Then wait for 30 seconds
      Then verify filetext "Packet Data Volume (Bytes In Only)" in downloaded file "csv"

      Then select dropdown "* Format" "PDF"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "Packet Data Volume(Bytes In Only)" in downloaded file "pdf"

      Then select dropdown "* Format" "XML"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "Packet Data Volume (Bytes In Only)" in downloaded file "xml"
      Then delete event

  @REG_R8_EventManagement_009
  Scenario: Test to verify whether opco user can create Event for SMS delivery notification success percentage and all notification are received upon breaching the event metric.
      Given test case starts
      Given browser is open
      Then login
      Then create Event for metric "SMS Delivery Notification Success Percentage" entitytype "Service profile" profiletype "* Service profile" profilename "USE_EventUsageNotification_CSP1" monitorlevel "BLANK" monitorperiod "Hourly" thresholdtype "BLANK" thresholdvalue "1" deviceaction "BLANK"
      Then send SMStype "Payload""SMS delivery notification" from IMSI "USE_EventUsageNotification_IMSI" to shortcode "USE_CustomerSMS_Shortcode"
      When click on button "Send"
      Then verify text "An SMS has been submitted to Device"
      Then wait for 30 seconds

      Then download report "Notification Events for Customer" format "CSV"
      Then wait for 30 seconds
      Then verify filetext "SMS Delivery Notification Success Percentage" in downloaded file "csv"

      Then select dropdown "* Format" "PDF"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "SMS Delivery Notification Success Percentage" in downloaded file "pdf"

      Then select dropdown "* Format" "XML"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "SMS Delivery Notification Success Percentage" in downloaded file "xml"
      Then delete event

  @REG_R8_EventManagement_010
  Scenario: Test to verify whether opco user can create Event for SMS-MT Transactional  and all notification are received upon breaching the event metric.
      Given test case starts
      Given browser is open
      Then login
      Then create Event for metric "SMS-MT Transactional" entitytype "Service profile" profiletype "* Service profile" profilename "USE_EventUsageNotification_CSP1" monitorlevel "Device" monitorperiod "Hourly" thresholdtype "Minimum" thresholdvalue "1" deviceaction "BLANK"
      Then send SMStype "Transactional""SMS-MT Transactional notification" from IMSI "USE_EventUsageNotification_IMSI" to shortcode "USE_CustomerSMS_Shortcode"
      When click on button "Send"
      Then wait for 5 seconds
      Then verify text "Success"
      Then wait for 30 seconds

      Then download report "Notification Events for Customer" format "CSV"
      Then wait for 30 seconds
      Then verify filetext "SMS-MT Transactional" in downloaded file "csv"

      Then select dropdown "* Format" "PDF"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "SMS-MT Transactional" in downloaded file "pdf"

      Then select dropdown "* Format" "XML"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "SMS-MT Transactional" in downloaded file "xml"
      Then delete event

  @REG_R8_EventManagement_012
  Scenario: Test to verify whether opco user can create Event for SMS-MO (Number)  and all notification are received upon breaching the event metric.
      Given test case starts
      Given browser is open
      Then login
      Then create Event for metric "SMS-MO (Number)" entitytype "Customer" profiletype "BLANK" profilename "BLANK" monitorlevel "Compound" monitorperiod "Weekly" thresholdtype "Maximum" thresholdvalue "100" deviceaction "BLANK"
      Then verify event
      Given select mobile "mobile2"
      When launch mobile app "message"
      Then send sms "SMS MO Number notification" from "USE_mobile2_deviceId" to "USE_CustomerSMS_Shortcode"
      Then wait for 30 seconds

      Then download report "Notification Events for Customer" format "CSV"
      Then wait for 30 seconds
      Then verify filetext "SMSMO (Number)" in downloaded file "csv"

      Then select dropdown "* Format" "PDF"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "SMSMO (Number)" in downloaded file "pdf"

      Then select dropdown "* Format" "XML"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "SMSMO (Number)" in downloaded file "xml"
      Then delete event


  @REG_R8_EventManagement_014
  Scenario: Test to verify whether opco user can create Event for SMSMT Payload (Number)  and all notification are received upon breaching the event metric.
      Given test case starts
      Given browser is open
      Then login
      Then create Event for metric "SMS-MT with payload (Number)" entitytype "Customer" profiletype "BLANK" profilename "BLANK" monitorlevel "Device" monitorperiod "Weekly" thresholdtype "Maximum" thresholdvalue "1" deviceaction "BLANK"
      Then verify event
      Then send SMStype "Payload""SMS-MT with Payload (Number) notification" from IMSI "USE_EventUsageNotification_IMSI" to shortcode "USE_CustomerSMS_Shortcode"
      When click on button "Send"
      Then wait for 30 seconds

      Then download report "Notification Events for Customer" format "CSV"
      Then wait for 30 seconds
      Then verify filetext "SMSMT with payload (Number)" in downloaded file "csv"

      Then select dropdown "* Format" "PDF"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "SMSMT withpayload (Number)" in downloaded file "pdf"

      Then select dropdown "* Format" "XML"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "SMSMT with payload (Number)" in downloaded file "xml"
      Then delete event

  @REG_R8_EventManagement_015
  Scenario:Test to verify whether opco user can create Event for Time in State  and all notification are received upon breaching the event metric.
      Given test case starts
      Given browser is open
      Then login
      Then create Event for metric "Time In State" entitytype "Customer" profiletype "* SIM state" profilename "USE_EventUsageNotification_State1" monitorlevel "BLANK" monitorperiod "BLANK" thresholdtype "BLANK" thresholdvalue "30" deviceaction "Change state"
      Then verify event
      Then wait for 30 seconds

      Then download report "Notification Events for Customer" format "CSV"
      Then wait for 30 seconds
      Then verify filetext "Time In State" in downloaded file "csv"

      Then select dropdown "* Format" "PDF"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "Time In State" in downloaded file "pdf"

      Then select dropdown "* Format" "XML"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "Time In State" in downloaded file "xml"
      Then delete event


  @REG_R8_EventManagement_016
  Scenario: Test to verify whether opco user can create Event for Voice Connections (Number) and all notification are received upon breaching the event metric.
      Given test case starts
      Given browser is open
      Then login
      Then create Event for metric "Voice Connections (Number)" entitytype "Customer" profiletype "BLANK" profilename "BLANK" monitorlevel "Device" monitorperiod "Six hourly" thresholdtype "Minimum" thresholdvalue "1" deviceaction "None"
      Then verify event
      #When breached
      Then wait for 30 seconds

      Then download report "Notification Events for Customer" format "CSV"
      Then wait for 30 seconds
      Then verify filetext "Voice Connections (Number)" in downloaded file "csv"

      Then select dropdown "* Format" "PDF"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "Voice Connections (Number)" in downloaded file "pdf"

      Then select dropdown "* Format" "XML"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "Voice Connections (Number)" in downloaded file "xml"
      Then delete event

  @REG_R8_EventManagement_017
  Scenario: Test to verify whether opco user can create Event for Voice Duration and all notification are received upon breaching the event metric.
      Given test case starts
      Given browser is open
      Then login
      Then create Event for metric "Voice Duration" entitytype "Customer" profiletype "BLANK" profilename "BLANK" monitorlevel "Device" monitorperiod "Monthly" thresholdtype "Maximum" thresholdvalue "30" deviceaction "None"
      #When breached
      Then verify event
      Then wait for 30 seconds

      Then download report "Notification Events for Customer" format "CSV"
      Then wait for 30 seconds
      Then verify filetext "Voice Duration" in downloaded file "csv"

      Then select dropdown "* Format" "PDF"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "Voice Duration" in downloaded file "pdf"

      Then select dropdown "* Format" "XML"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "Voice Duration" in downloaded file "xml"
      Then delete event

  @REG_R8_EventManagement_018
  Scenario: Test to verify whether opco user can create Event for SIM State Transition and all notification are received upon breaching the event metric.
      Given test case starts
      Given browser is open
      Then login
      Then create Event for metric "SIM State Transition" entitytype "Customer" profiletype "* SIM state" profilename "USE_EventUsageNotification_TransitionState" monitorlevel "BLANK" monitorperiod "BLANK" thresholdtype "BLANK" thresholdvalue "BLANK" deviceaction "BLANK"
      Then change sim "USE_EventUsageNotification_FreshInactiveIMSI" from "Active.Live" to "Inactive"
      Then wait for 30 seconds

      Then download report "Notification Events for Customer" format "CSV"
      Then wait for 30 seconds
      Then verify filetext "SIM State Transition" in downloaded file "csv"

      Then select dropdown "* Format" "PDF"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "SIM State Transition" in downloaded file "pdf"

      Then select dropdown "* Format" "XML"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "SIM State Transition" in downloaded file "xml"
      Then delete event

  @REG_R8_EventManagement_022
  Scenario:Test to verify whether opco user can create Event for Move SIM Out of CSP and all notification are received upon breaching the event metric.
      Given test case starts
      Given browser is open
      Then login
      Then create Event for metric "Move SIM Out of CSP" entitytype "BLANK" profiletype "* Service profile" profilename "USE_EventUsageNotification_CSP1" monitorlevel "BLANK" monitorperiod "BLANK" thresholdtype "BLANK" thresholdvalue "BLANK" deviceaction "BLANK"
      Then verify text "M2M"
      When click on menu "Devices"
      When click on submenu "All devices"
      Then verify text "IMSI"
      Then enter textarea "IMSI" "USE_EventUsageNotification_IMSI"
      When click on button "Search"
      Then verify text "Results"
      Then click on "checkbox" of table based on below criteria
      | IMSI                   |
      | USE_EventUsageNotification_IMSI |
      When click on link "Operations"
      When click on button "Next"
      Then verify text "* Action"
      Then select dropdown "* Action" "Change service profile"
      #When click on input "* Organisation" and enter value "USE_EventUsageNotification_Cust1"
      Then select dropdown "New service profile" "USE_EventUsageNotification_CSP2"
      When click on button "Next"
      Then verify text "Action"
      When click on button "Submit"
      Then verify text "successfully submitted"
      When click on button "Go to devices"
      Then verify text "Results"
      When click on link "USE_EventUsageNotification_IMSI"
      Then verify text "Overview"
      Then verify text "USE_EventUsageNotification_Cust1"
      Then verify text "USE_EventUsageNotification_CSP2"
      Then wait for 30 seconds

      Then download report "Notification Events for Customer" format "CSV"
      Then wait for 30 seconds
      Then verify filetext "Move SIM Out of CSP" in downloaded file "csv"

      Then select dropdown "* Format" "PDF"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "Move SIM Out of CSP" in downloaded file "pdf"

      Then select dropdown "* Format" "XML"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "Move SIM Out of CSP" in downloaded file "xml"
      Then delete event

  @REG_R8_EventManagement_023
  Scenario: Test to verify whether opco user can create Event for Move SIM into CSP and all notification are received upon breaching the event metric.
      Given test case starts
      Given browser is open
      Then login
      Then create Event for metric "Move SIM Into CSP" entitytype "BLANK" profiletype "* Service profile" profilename "USE_EventUsageNotification_CSP1" monitorlevel "BLANK" monitorperiod "BLANK" thresholdtype "BLANK" thresholdvalue "BLANK" deviceaction "BLANK"
      Then verify text "M2M"
      When click on menu "Devices"
      When click on submenu "All devices"
      Then verify text "IMSI"
      Then enter textarea "IMSI" "USE_EventUsageNotification_IMSI"
      When click on button "Search"
      Then verify text "Results"
      Then click on "checkbox" of table based on below criteria
      | IMSI                   |
      | USE_EventUsageNotification_IMSI |
      When click on link "Operations"
      When click on button "Next"
      Then verify text "* Action"
      Then select dropdown "* Action" "Change service profile"
      Then select dropdown "New service profile" "USE_EventUsageNotification_CSP1"
      When click on button "Next"
      Then verify text "Action"
      When click on button "Submit"
      Then verify text "successfully submitted"
      When click on button "Go to devices"
      Then verify text "Results"
      When click on link "USE_EventUsageNotification_IMSI"
      Then verify text "Overview"
      Then verify text "USE_EventUsageNotification_Cust1"
      Then verify text "USE_EventUsageNotification_CSP1"
      Then wait for 60 seconds

      Then download report "Notification Events for Customer" format "CSV"
      Then wait for 30 seconds
      Then verify filetext "Move SIM Into CSP" in downloaded file "csv"

      Then select dropdown "* Format" "PDF"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "Move SIM Into CSP" in downloaded file "pdf"

      Then select dropdown "* Format" "XML"
      When click on button "Generate"
      Then wait for 30 seconds
      Then verify filetext "Move SIM Into CSP" in downloaded file "xml"
      Then delete event