@BackgroundReportsUsinginStaging
Feature: This feature covers Background Reports

  @REG_R10_GUI_Background_0
#  updated 19march
  Scenario: Test to verify the steps taken by the Customer User to view Background
  API Usage for Customer report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "API Usage for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | API Usage for Customer    |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "0000" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "API Usage for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | API Usage for Customer    |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "API Usage for Customer" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "API Usage for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | API Usage for Customer    |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "0000" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_002
#    updated 19march
  Scenario: Test to verify the steps taken by the Customer User to view Background
  Barred Calls for Customer report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Barred Calls for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | Barred Calls for Customer |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_CustName" in downloaded file "csv"
    Then verify filetext "PERIOD_START" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Barred Calls for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | Barred Calls for Customer |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_CustName" in downloaded file "pdf"
    Then verify filetext "PERIOD_START" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Barred Calls for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | Barred Calls for Customer |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_CustName" in downloaded file "xml"
    Then verify filetext "PERIOD_START" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_003
#    updated 19march
  Scenario: Test to verify the steps taken by the Customer User to view Background
  Circuit-Switched Usage by IMSI report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Circuit-Switched Usage by IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                         |
      | Circuit-Switched Usage by IMSI |
      | USE_Reporting_RequestedOn      |
      | USE_Reporting_CustName         |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_CustName" in downloaded file "csv"
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Circuit-Switched Usage by IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                         |
      | Circuit-Switched Usage by IMSI |
      | USE_Reporting_RequestedOn      |
      | USE_Reporting_CustName         |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_CustName" in downloaded file "pdf"
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Circuit-Switched Usage by IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                         |
      | Circuit-Switched Usage by IMSI |
      | USE_Reporting_RequestedOn      |
      | USE_Reporting_CustName         |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_CustName" in downloaded file "xml"
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_004
#    updated 19march
  Scenario: Test to verify the steps taken by the Customer User to view Background
  Customer Overview report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Customer Overview"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | Customer Overview         |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_ServingOpco" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Customer Overview"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | Customer Overview         |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_ServingOpco" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Customer Overview"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | Customer Overview         |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_ServingOpco" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_005
#    updated 19march
  Scenario: Test to verify the steps taken by the Customer User to view Background
  High Circuit-Switched Usage Devices report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "High Circuit-Switched Usage Devices"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "Threshold minutes" "USE_Reporting_ThresholdMinutes"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                              |
      | High Circuit-Switched Usage Devices |
      | USE_Reporting_RequestedOn           |
      | USE_Reporting_CustName              |
    Then wait for 60 seconds
    Then verify filetext "High Circuit-Switched Usage SIMs" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "High Circuit-Switched Usage Devices"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "Threshold minutes" "USE_Reporting_ThresholdMinutes"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                              |
      | High Circuit-Switched Usage Devices |
      | USE_Reporting_RequestedOn           |
      | USE_Reporting_CustName              |
    Then wait for 60 seconds
    Then verify filetext "High Circuit-Switched Usage SIMs" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "High Circuit-Switched Usage Devices"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "Threshold minutes" "USE_Reporting_ThresholdMinutes"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                              |
      | High Circuit-Switched Usage Devices |
      | USE_Reporting_RequestedOn           |
      | USE_Reporting_CustName              |
    Then wait for 60 seconds
    Then verify filetext "High Circuit-Switched Usage SIMs" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_006
#    updated 19march
  Scenario: Test to verify the steps taken by the Customer User to view Background
  High Packet-Data Usage Devices report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "High Packet-Data Usage Devices"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "Threshold MIB" "USE_Reporting_ThresholdMIB"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                         |
      | High Packet-Data Usage Devices |
      | USE_Reporting_RequestedOn      |
      | USE_Reporting_CustName         |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "High Packet-Data Usage Devices"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "Threshold MIB" "USE_Reporting_ThresholdMIB"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                         |
      | High Packet-Data Usage Devices |
      | USE_Reporting_RequestedOn      |
      | USE_Reporting_CustName         |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "High Packet-Data Usage Devices"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "Threshold MIB" "USE_Reporting_ThresholdMIB"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                         |
      | High Packet-Data Usage Devices |
      | USE_Reporting_RequestedOn      |
      | USE_Reporting_CustName         |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_007
#    updated 19march
  Scenario: Test to verify the steps taken by the Customer User to view Background
  High Usage Events report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "High Usage Events v2"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | High Usage Events v2      |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "High Usage Events v2"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | High Usage Events v2      |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "High Usage Events v2"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | High Usage Events v2      |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 90 seconds
    Then logout


  @REG_R10_GUI_Background_008
#    updated 19march
  Scenario: Test to verify the steps taken by the Customer User to view Background
  IMEI-Rule Failed Events report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "IMEI-Rule Failed Events"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | IMEI-Rule Failed Events   |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "IMEI-Rule Failed Events"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | IMEI-Rule Failed Events   |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "IMEI-Rule Failed Events"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | IMEI-Rule Failed Events   |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_009
#    updated 19march
  Scenario: Test to verify the steps taken by the Customer User to view Background
  IMSI-MSISDN Pairing report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "IMSI-MSISDN Pairing"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | IMSI-MSISDN Pairing       |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "IMSI-MSISDN Pairing"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | IMSI-MSISDN Pairing       |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "IMSI-MSISDN Pairing"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | IMSI-MSISDN Pairing       |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout

  @REG_R10_GUI_Background_010
#    updated 19march
  Scenario: Test to verify the steps taken by the Customer User to view Background
  IP Allocation for Customer report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "IP Allocation for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                     |
      | IP Allocation for Customer |
      | USE_Reporting_RequestedOn  |
      | USE_Reporting_CustName     |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_IPAllocationAPN" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "IP Allocation for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                     |
      | IP Allocation for Customer |
      | USE_Reporting_RequestedOn  |
      | USE_Reporting_CustName     |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_IPAllocationAPN" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "IP Allocation for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                     |
      | IP Allocation for Customer |
      | USE_Reporting_RequestedOn  |
      | USE_Reporting_CustName     |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_IPAllocationAPN" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_011
#    12/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  Itemised Circuit-Switched Usage for Customer report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Circuit-Switched Usage for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                       |
      | Itemised Circuit-Switched Usage for Customer |
      | USE_Reporting_RequestedOn                    |
      | USE_Reporting_CustName                       |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Circuit-Switched Usage for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                       |
      | Itemised Circuit-Switched Usage for Customer |
      | USE_Reporting_RequestedOn                    |
      | USE_Reporting_CustName                       |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Circuit-Switched Usage for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                       |
      | Itemised Circuit-Switched Usage for Customer |
      | USE_Reporting_RequestedOn                    |
      | USE_Reporting_CustName                       |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_012
#    12/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  Itemised Circuit-Switched Usage for Customer Profile report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Circuit-Switched Usage for Customer Profile"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Service profile" "USE_Reporting_SIMHistoryCSP"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                               |
      | Itemised Circuit-Switched Usage for Customer Profile |
      | USE_Reporting_RequestedOn                            |
      | USE_Reporting_CustName                               |
    Then wait for 60 seconds
    Then verify filetext "PERIOD_START" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Circuit-Switched Usage for Customer Profile"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Service profile" "USE_Reporting_SIMHistoryCSP"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                               |
      | Itemised Circuit-Switched Usage for Customer Profile |
      | USE_Reporting_RequestedOn                            |
      | USE_Reporting_CustName                               |
    Then wait for 60 seconds
    Then verify filetext "PERIOD_START" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Circuit-Switched Usage for Customer Profile"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Service profile" "USE_Reporting_SIMHistoryCSP"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                               |
      | Itemised Circuit-Switched Usage for Customer Profile |
      | USE_Reporting_RequestedOn                            |
      | USE_Reporting_CustName                               |
    Then wait for 60 seconds
    Then verify filetext "PERIOD_START" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_013
#    12/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  Itemised Circuit-Switched Usage for IMSI report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Circuit-Switched Usage for IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "* IMSI" "USE_Reporting_NotificationIMSI"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                   |
      | Itemised Circuit-Switched Usage for IMSI |
      | USE_Reporting_RequestedOn                |
      | USE_Reporting_CustName                   |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Circuit-Switched Usage for IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "* IMSI" "USE_Reporting_NotificationIMSI"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                   |
      | Itemised Circuit-Switched Usage for IMSI |
      | USE_Reporting_RequestedOn                |
      | USE_Reporting_CustName                   |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Circuit-Switched Usage for IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "* IMSI" "USE_Reporting_NotificationIMSI"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                   |
      | Itemised Circuit-Switched Usage for IMSI |
      | USE_Reporting_RequestedOn                |
      | USE_Reporting_CustName                   |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout

  @REG_R10_GUI_Background_014
#    12/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  Itemised Packet-Data Usage for Customer v5 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Packet-Data Usage for Customer v5"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                     |
      | Itemised Packet-Data Usage for Customer v5 |
      | USE_Reporting_RequestedOn                  |
      | USE_Reporting_CustName                     |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Packet-Data Usage for Customer v5"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                     |
      | Itemised Packet-Data Usage for Customer v5 |
      | USE_Reporting_RequestedOn                  |
      | USE_Reporting_CustName                     |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Packet-Data Usage for Customer v5"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                     |
      | Itemised Packet-Data Usage for Customer v5 |
      | USE_Reporting_RequestedOn                  |
      | USE_Reporting_CustName                     |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_015
#    15/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  Itemised Packet-Data Usage for Customer Profile v5 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Packet-Data Usage for Customer Profile v5"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Service profile" "USE_Reporting_SIMHistoryCSP"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                             |
      | Itemised Packet-Data Usage for Customer Profile v5 |
      | USE_Reporting_RequestedOn                          |
      | USE_Reporting_CustName                             |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Packet-Data Usage for Customer Profile v5"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Service profile" "USE_Reporting_SIMHistoryCSP"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                             |
      | Itemised Packet-Data Usage for Customer Profile v5 |
      | USE_Reporting_RequestedOn                          |
      | USE_Reporting_CustName                             |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Packet-Data Usage for Customer Profile v5"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Service profile" "USE_Reporting_SIMHistoryCSP"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                             |
      | Itemised Packet-Data Usage for Customer Profile v5 |
      | USE_Reporting_RequestedOn                          |
      | USE_Reporting_CustName                             |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_016
#    15/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  Itemised Packet-Data Usage for SIM v5 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Packet-Data Usage for SIM v5"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* SIM Identifier" "USE_Reporting_SIMIdentifier"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                |
      | Itemised Packet-Data Usage for SIM v5 |
      | USE_Reporting_RequestedOn             |
      | USE_Reporting_CustName                |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_SIMIdentifier" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Packet-Data Usage for SIM v5"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* SIM Identifier" "USE_Reporting_SIMIdentifier"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                |
      | Itemised Packet-Data Usage for SIM v5 |
      | USE_Reporting_RequestedOn             |
      | USE_Reporting_CustName                |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_SIMIdentifier" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Packet-Data Usage for SIM v5"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* SIM Identifier" "USE_Reporting_SIMIdentifier"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                |
      | Itemised Packet-Data Usage for SIM v5 |
      | USE_Reporting_RequestedOn             |
      | USE_Reporting_CustName                |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_SIMIdentifier" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_017
#    16/01/2018
  Scenario:Test to verify the steps taken by the Customer User to view Background
  Itemised Packet-Data Usage with SMS Events for Customer report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Packet-Data Usage with SMS Events for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                                  |
      | Itemised Packet-Data Usage with SMS Events for Customer |
      | USE_Reporting_RequestedOn                               |
      | USE_Reporting_CustName                                  |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Packet-Data Usage with SMS Events for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                                  |
      | Itemised Packet-Data Usage with SMS Events for Customer |
      | USE_Reporting_RequestedOn                               |
      | USE_Reporting_CustName                                  |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Packet-Data Usage with SMS Events for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                                  |
      | Itemised Packet-Data Usage with SMS Events for Customer |
      | USE_Reporting_RequestedOn                               |
      | USE_Reporting_CustName                                  |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_018
#    16/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  Itemised Packet-Data Usage with SMS Events for Customer Profile report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Packet-Data Usage with SMS Events for Customer Profile"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Service profile" "USE_Reporting_SIMHistoryCSP"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                                          |
      | Itemised Packet-Data Usage with SMS Events for Customer Profile |
      | USE_Reporting_RequestedOn                                       |
      | USE_Reporting_CustName                                          |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Packet-Data Usage with SMS Events for Customer Profile"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Service profile" "USE_Reporting_SIMHistoryCSP"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                                          |
      | Itemised Packet-Data Usage with SMS Events for Customer Profile |
      | USE_Reporting_RequestedOn                                       |
      | USE_Reporting_CustName                                          |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Packet-Data Usage with SMS Events for Customer Profile"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Service profile" "USE_Reporting_SIMHistoryCSP"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                                          |
      | Itemised Packet-Data Usage with SMS Events for Customer Profile |
      | USE_Reporting_RequestedOn                                       |
      | USE_Reporting_CustName                                          |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_019
#    16/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  Itemised Packet-Data Usage with SMS Events for IMSI report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Packet-Data Usage with SMS Events for IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "* IMSI" "USE_Reporting_PacketDataIMSI"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                              |
      | Itemised Packet-Data Usage with SMS Events for IMSI |
      | USE_Reporting_RequestedOn                           |
      | USE_Reporting_CustName                              |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_ServingOpco" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Packet-Data Usage with SMS Events for IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "* IMSI" "USE_Reporting_PacketDataIMSI"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                              |
      | Itemised Packet-Data Usage with SMS Events for IMSI |
      | USE_Reporting_RequestedOn                           |
      | USE_Reporting_CustName                              |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_ServingOpco" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised Packet-Data Usage with SMS Events for IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "* IMSI" "USE_Reporting_PacketDataIMSI"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                              |
      | Itemised Packet-Data Usage with SMS Events for IMSI |
      | USE_Reporting_RequestedOn                           |
      | USE_Reporting_CustName                              |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_ServingOpco" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_020
#    16/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  Itemised SMS Usage By Customer report from the Global M2M Platform in CSV and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised SMS Usage By Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                         |
      | Itemised SMS Usage By Customer |
      | USE_Reporting_RequestedOn      |
      | USE_Reporting_CustName         |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised SMS Usage By Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                         |
      | Itemised SMS Usage By Customer |
      | USE_Reporting_RequestedOn      |
      | USE_Reporting_CustName         |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_021
#  17/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  Itemised SMS Usage By Customer Profile report from the Global M2M Platform in CSV and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised SMS Usage By Customer Profile"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Service profile" "USE_Reporting_SIMHistoryCSP"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                 |
      | Itemised SMS Usage By Customer Profile |
      | USE_Reporting_RequestedOn              |
      | USE_Reporting_CustName                 |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised SMS Usage By Customer Profile"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Service profile" "USE_Reporting_SIMHistoryCSP"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                 |
      | Itemised SMS Usage By Customer Profile |
      | USE_Reporting_RequestedOn              |
      | USE_Reporting_CustName                 |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_022
#    17/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  Itemised SMS Usage By IMSI report from the Global M2M Platform in CSV and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised SMS Usage By IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "* IMSI" "USE_Reporting_NotificationIMSI"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                     |
      | Itemised SMS Usage By IMSI |
      | USE_Reporting_RequestedOn  |
      | USE_Reporting_CustName     |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "csv"
    Then verify filetext "DATA_CODING" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Itemised SMS Usage By IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "* IMSI" "USE_Reporting_NotificationIMSI"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                     |
      | Itemised SMS Usage By IMSI |
      | USE_Reporting_RequestedOn  |
      | USE_Reporting_CustName     |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "xml"
    Then verify filetext "DATA_CODING" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_023
#    17/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  Packet-Data Usage By IMSI report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Packet-Data Usage By IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | Packet-Data Usage By IMSI |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Packet-Data Usage By IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | Packet-Data Usage By IMSI |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Packet-Data Usage By IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | Packet-Data Usage By IMSI |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout

  @REG_R10_GUI_Background_024
#    17/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  Packet-Data Usage By IMSI and APN report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Packet-Data Usage By IMSI and APN v2"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                               |
      | Packet-Data Usage By IMSI and APN v2 |
      | USE_Reporting_RequestedOn            |
      | USE_Reporting_CustName               |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "csv"
    Then verify filetext "USE_Reporting_PdAPN" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Packet-Data Usage By IMSI and APN v2"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                               |
      | Packet-Data Usage By IMSI and APN v2 |
      | USE_Reporting_RequestedOn            |
      | USE_Reporting_CustName               |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "pdf"
    Then verify filetext "USE_Reporting_PdAPN" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Packet-Data Usage By IMSI and APN v2"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                               |
      | Packet-Data Usage By IMSI and APN v2 |
      | USE_Reporting_RequestedOn            |
      | USE_Reporting_CustName               |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "xml"
    Then verify filetext "USE_Reporting_PdAPN" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_025
#    17/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  RADIUS Authentication Failures for Customer report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "RADIUS Authentication Failures for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                      |
      | RADIUS Authentication Failures for Customer |
      | USE_Reporting_RequestedOn                   |
      | USE_Reporting_CustName                      |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_RadiusFailureReason" in downloaded file "csv"
    Then verify filetext "USE_Reporting_RadiusFailureIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "RADIUS Authentication Failures for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                      |
      | RADIUS Authentication Failures for Customer |
      | USE_Reporting_RequestedOn                   |
      | USE_Reporting_CustName                      |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_RadiusFailureReason" in downloaded file "pdf"
    Then verify filetext "USE_Reporting_RadiusFailureIMSI" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "RADIUS Authentication Failures for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                      |
      | RADIUS Authentication Failures for Customer |
      | USE_Reporting_RequestedOn                   |
      | USE_Reporting_CustName                      |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_RadiusFailureReason" in downloaded file "xml"
    Then verify filetext "USE_Reporting_RadiusFailureIMSI" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_026
#    17/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  RADIUS Authentication Failures for Customer Profile report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "RADIUS Authentication Failures for Customer Profile"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Service profile" "USE_Reporting_RadiusFailureCSP"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                              |
      | RADIUS Authentication Failures for Customer Profile |
      | USE_Reporting_RequestedOn                           |
      | USE_Reporting_CustName                              |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_RadiusFailureReason" in downloaded file "csv"
    Then verify filetext "USE_Reporting_RadiusFailureIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "RADIUS Authentication Failures for Customer Profile"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Service profile" "USE_Reporting_RadiusFailureCSP"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                              |
      | RADIUS Authentication Failures for Customer Profile |
      | USE_Reporting_RequestedOn                           |
      | USE_Reporting_CustName                              |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_RadiusFailureReason" in downloaded file "pdf"
    Then verify filetext "USE_Reporting_RadiusFailureIMSI" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "RADIUS Authentication Failures for Customer Profile"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Service profile" "USE_Reporting_RadiusFailureCSP"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                              |
      | RADIUS Authentication Failures for Customer Profile |
      | USE_Reporting_RequestedOn                           |
      | USE_Reporting_CustName                              |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_RadiusFailureReason" in downloaded file "xml"
    Then verify filetext "USE_Reporting_RadiusFailureIMSI" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_027
#    18/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  RADIUS Authentication Failures for IMSI report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "RADIUS Authentication Failures for IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "* IMSI" "USE_Reporting_RadiusFailureIMSI"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                  |
      | RADIUS Authentication Failures for IMSI |
      | USE_Reporting_RequestedOn               |
      | USE_Reporting_CustName                  |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_RadiusFailureReason" in downloaded file "csv"
    Then verify filetext "USE_Reporting_RadiusFailureIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "RADIUS Authentication Failures for IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "* IMSI" "USE_Reporting_RadiusFailureIMSI"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                  |
      | RADIUS Authentication Failures for IMSI |
      | USE_Reporting_RequestedOn               |
      | USE_Reporting_CustName                  |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_RadiusFailureReason" in downloaded file "pdf"
    Then verify filetext "USE_Reporting_RadiusFailureIMSI" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "RADIUS Authentication Failures for IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "* IMSI" "USE_Reporting_RadiusFailureIMSI"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                  |
      | RADIUS Authentication Failures for IMSI |
      | USE_Reporting_RequestedOn               |
      | USE_Reporting_CustName                  |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_RadiusFailureReason" in downloaded file "xml"
    Then verify filetext "USE_Reporting_RadiusFailureIMSI" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_029
#    18/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  Rogue Usage Events report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Rogue Usage Events v2"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | Rogue Usage Events v2     |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "Rogue Usage Events" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Rogue Usage Events v2"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | Rogue Usage Events v2     |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "Rogue Usage Events" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Rogue Usage Events v2"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | Rogue Usage Events v2     |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "Rogue Usage Events" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout

  @REG_R10_GUI_Background_030
#    19/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  Secondary MSISDN Mapping report from the Global M2M Platform in CSV format.
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "Secondary MSISDN Mapping"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | Secondary MSISDN Mapping  |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_RadiusFailureIMSI" in downloaded file "csv"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout

  @REG_R10_GUI_Background_031
#    19/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  SIM Delta Events for Customer report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "SIM Delta Events for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select radiobutton "Yes"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes" on position 2
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                        |
      | SIM Delta Events for Customer |
      | USE_Reporting_RequestedOn     |
      | USE_Reporting_CustName        |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "SIM Delta Events for Customer"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then select radiobutton "Yes"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes" on position 2
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                        |
      | SIM Delta Events for Customer |
      | USE_Reporting_RequestedOn     |
      | USE_Reporting_CustName        |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout

  @REG_R10_GUI_Background_032
#    19/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  SIM Delta Events for Customer Profile report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "SIM Delta Events for Customer Profile"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "* Service profile" "USE_Reporting_SIMHistoryCSP"
    Then select radiobutton "Yes"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes" on position 2
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                |
      | SIM Delta Events for Customer Profile |
      | USE_Reporting_RequestedOn             |
      | USE_Reporting_CustName                |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "csv"
    Then verify filetext "USE_Reporting_SIMHistoryCSP" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "SIM Delta Events for Customer Profile"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "* Service profile" "USE_Reporting_SIMHistoryCSP"
    Then select radiobutton "Yes"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes" on position 2
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                                |
      | SIM Delta Events for Customer Profile |
      | USE_Reporting_RequestedOn             |
      | USE_Reporting_CustName                |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_PacketDataIMSI" in downloaded file "xml"
    Then verify filetext "USE_Reporting_SIMHistoryCSP" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_033
#    22/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  SIM Delta Events for IMSI report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    Then get todays date and store in "ToDate"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "SIM Delta Events for IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "* IMSI" "USE_Reporting_NotificationIMSI"
    Then select radiobutton "Yes"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | SIM Delta Events for IMSI |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_SIMHistoryCSP" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "SIM Delta Events for IMSI"
    Then verify text "* Period"
    Then select dropdown "* Period" "Range"
    Then enter date "* Between" "USE_Reporting_RangeBetween"
    Then enter date "* and" "USE_Reporting_RangeAnd"
    Then enter "* IMSI" "USE_Reporting_NotificationIMSI"
    Then select radiobutton "Yes"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | SIM Delta Events for IMSI |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_SIMHistoryCSP" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout


  @REG_R10_GUI_Background_034
#    22/01/2018
  Scenario: Test to verify the steps taken by the Customer User to view Background
  SIM Group Detail report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "SIM Group Detail"
    Then select dropdown "* SIM group name" "USE_Reporting_SIMGroup"
    Then select dropdown "* Format" "CSV"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | SIM Group Detail          |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_SIMGroup" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "SIM Group Detail"
    Then select dropdown "* SIM group name" "USE_Reporting_SIMGroup"
    Then select dropdown "* Format" "PDF"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | SIM Group Detail          |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_SIMGroup" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "SIM Group Detail"
    Then select dropdown "* SIM group name" "USE_Reporting_SIMGroup"
    Then select dropdown "* Format" "XML"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "Contact"
    Then select dropdown "Contact *" "USE_Reporting_NotificationContact"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then click on results based on below criteria
      | values                    |
      | SIM Group Detail          |
      | USE_Reporting_RequestedOn |
      | USE_Reporting_CustName    |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_SIMGroup" in downloaded file "xml"
    When click on link "USE_Reporting_CustomerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 5 seconds
    Then logout

#  Aravinth Test Cases are Below

  @REG_R10_GUI_Background_035
#    Scripted not executed
  Scenario: Test to verify the steps taken by the Customer User to view Background SIM Inventory for Customer report from the Global M2M Platform in CSV, PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Cust1"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype14"
    Then select dropdown "SIM state" "USE_Reporting_SIMState"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact3"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype14 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "imsi" in downloaded file "pdf"
    Then verify filetext "TodayDate" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype14"
    Then select dropdown "SIM state" "USE_Reporting_SIMState"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat2"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact3"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype14 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "imsi" in downloaded file "csv"
    Then verify filetext "TodayDate" in downloaded file "csv"

    Then logout


  @REG_R10_GUI_Background_036
  #    Scripted not executed
  Scenario: Test to verify the steps taken by the Customer User to view Background SIM Pairings file report from the Global M2M Platform in CSV, PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Cust1"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype15"
    Then enter "* Customer order number" "USE_Reporting_Customerorderno"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat2"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact3"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype15 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_Custname" in downloaded file "csv"
    Then logout


  @REG_R10_GUI_Background_037
  #    Scripted not executed
  Scenario: Test to verify the steps taken by the Customer User to view Background SMS Usage by IMSI report from the Global M2M Platform in CSV, PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Cust1"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype16"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then enter "* IMSI" "USE_Reporting_ReportFormat"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat1"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype16 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "Circuit-Switched Usage by IMSI" in downloaded file "xml"
    Then verify filetext "IMSI" in downloaded file "xml"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype16"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then enter "* IMSI" "USE_Reporting_ReportFormat"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat2"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype16 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "Circuit-Switched Usage by IMSI" in downloaded file "csv"
    Then verify filetext "IMSI" in downloaded file "csv"
    Then logout


  @REG_R10_GUI_Background_038
  #    Scripted not executed
  Scenario: Test to verify the steps taken by the Customer User to view Background State Changes by Date report from the Global M2M Platform in CSV, PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Cust1"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype17"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype17 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_Custname" in downloaded file "pdf"
    Then verify filetext "change date" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype17"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat1"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype17 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_Custname" in downloaded file "xml"
    Then verify filetext "change date" in downloaded file "xml"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype17"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat2"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype17 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_Custname" in downloaded file "csv"
    Then verify filetext "change date" in downloaded file "csv"
    Then logout

  @REG_R10_GUI_Background_039
  #    Scripted not executed
  Scenario: Test to verify the steps taken by the Customer User to view Background State Changes Summary report from the Global M2M Platform in CSV, PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Cust1"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype10"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype10 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_Custname" in downloaded file "pdf"
    Then verify filetext "from state" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype10"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat1"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype10 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_Custname" in downloaded file "xml"
    Then verify filetext "from state" in downloaded file "xml"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype10"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat2"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype10 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_Custname" in downloaded file "csv"
    Then verify filetext "from state" in downloaded file "csv"
    Then logout

  @REG_R10_GUI_Background_040
  #    Scripted not executed
  Scenario: Test to verify the steps taken by the Customer User to view Background Static IP Address Allocations report from the Global M2M Platform in CSV, PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Cust1"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype11"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat1"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype11 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_Custname" in downloaded file "xml"
    Then verify filetext "Static IP Address Allocations" in downloaded file "xml"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype11"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat2"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype11 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_Custname" in downloaded file "csv"
    Then verify filetext "Static IP Address Allocations" in downloaded file "csv"
    Then logout


  @REG_R10_GUI_Background_041
  #    Scripted not executed
  Scenario: Test to verify the steps taken by the Customer User to view Background Top and Bottom Circuit-Switched Devices by Duration report from the Global M2M Platform in CSV, PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Cust1"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype12"
    Then enter date for "* Date" "2017-12-05"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype12 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "Top and Bottom Circuit-Switched Devices by Duration" in downloaded file "pdf"
    Then verify filetext "USE_Reporting_Custname" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype12"
    Then enter date for "* Date" "2017-12-05"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat1"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype12 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "Top and Bottom Circuit-Switched Devices by Duration" in downloaded file "xml"
    Then verify filetext "USE_Reporting_Custname" in downloaded file "xml"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype12"
    Then enter date for "* Date" "2017-12-05"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat2"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype12 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "Top and Bottom Circuit-Switched Devices by Duration" in downloaded file "csv"
    Then verify filetext "USE_Reporting_Custname" in downloaded file "csv"
    Then logout


  @REG_R10_GUI_Background_042
  #    Scripted not executed
  Scenario: Test to verify the steps taken by the Customer User to view Background Top and Bottom Packet-Data Devices by Data Usage report from the Global M2M Platform in CSV, PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Cust1"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype13"
    Then enter date for "* Date" "2017-12-05"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype13 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "Top and Bottom Packet-Data Devices by Data Usage" in downloaded file "pdf"
    Then verify filetext "USE_Reporting_Custname" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype13"
    Then enter date for "* Date" "2017-12-05"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat1"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype13 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "Top and Bottom Packet-Data Devices by Data Usage" in downloaded file "xml"
    Then verify filetext "USE_Reporting_Custname" in downloaded file "xml"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype13"
    Then enter date for "* Date" "2017-12-05"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat2"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                     |
      | USE_Reporting_Reporttype13 |
      | USE_Reporting_Custname     |
      | TodayDate                  |
    Then wait for 60 seconds
    Then verify filetext "Top and Bottom Packet-Data Devices by Data Usage" in downloaded file "csv"
    Then verify filetext "USE_Reporting_Custname" in downloaded file "csv"
    Then logout


  @REG_R10_GUI_Background_043
  #    Scripted not executed
  Scenario: Test to verify the steps taken by the OpCo User to view Background Contracting OpCo Overview report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                   |
      | USE_Reporting_Reporttype |
      | TodayDate                |
    Then wait for 60 seconds
    Then verify filetext "Data Usage Total" in downloaded file "pdf"
    Then verify filetext "Data Usage By Serving Opco" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat1"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                   |
      | USE_Reporting_Reporttype |
      | TodayDate                |
    Then wait for 60 seconds
    Then verify filetext "Data Usage Total" in downloaded file "xml"
    Then verify filetext "Data Usage By Serving Opco" in downloaded file "xml"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat2"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                   |
      | USE_Reporting_Reporttype |
      | TodayDate                |
    Then wait for 60 seconds
    Then verify filetext "Data Usage Total" in downloaded file "csv"
    Then verify filetext "Data Usage By Serving Opco" in downloaded file "csv"
    Then logout


  @REG_R10_GUI_Background_044
  #    Scripted not executed
  Scenario: Test to verify the steps taken by the Opco User to view Background IMEI Locked Devices report from the Global M2M Platform in CSV, PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype1"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype1 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "IMEI Locked Devices" in downloaded file "pdf"
    Then verify filetext "USE_Reporting_OpConame" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype1"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat1"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype1 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "IMEI Locked Devices" in downloaded file "xml"
    Then verify filetext "USE_Reporting_OpConame" in downloaded file "xml"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype1"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat2"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype1 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "IMEI Locked Devices" in downloaded file "csv"
    Then verify filetext "USE_Reporting_OpConame" in downloaded file "csv"
    Then logout


  @REG_R10_GUI_Background_045
  #    Scripted not executed
  Scenario: Test to verify the steps taken by the Opco User to view Background Notification Events for Customer report from the Global M2M Platform in CSV, PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype2"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Customer" "USE_Reporting_Custname"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype2 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "Notification Events for Customer" in downloaded file "pdf"
    Then verify filetext "imsi" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype2"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Customer" "USE_Reporting_Custname"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat1"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype2 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "Notification Events for Customer" in downloaded file "xml"
    Then verify filetext "imsi" in downloaded file "xml"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype2"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Customer" "USE_Reporting_Custname"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat2"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype2 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "Notification Events for Customer" in downloaded file "csv"
    Then verify filetext "imsi" in downloaded file "csv"
    Then logout


  @REG_R10_GUI_Background_046
  #    Scripted not executed
  Scenario: Test to verify the steps taken by the Opco User to view Background SIM Group Detail report from the Global M2M Platform in CSV, PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype3"
    Then select dropdown "* Customer" "USE_Reporting_Custname"
    Then select dropdown "* SIM group name" "USE_Reporting_SIMgroup"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype3 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "SIM Group Detail" in downloaded file "pdf"
    Then verify filetext "imsi" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype3"
    Then select dropdown "* Customer" "USE_Reporting_Custname"
    Then select dropdown "* SIM group name" "USE_Reporting_SIMgroup"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat1"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype3 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "SIM Group Detail" in downloaded file "xml"
    Then verify filetext "imsi" in downloaded file "xml"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype3"
    Then select dropdown "* Customer" "USE_Reporting_Custname"
    Then select dropdown "* SIM group name" "USE_Reporting_SIMgroup"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat2"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype3 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "SIM Group Detail" in downloaded file "csv"
    Then verify filetext "imsi" in downloaded file "csv"
    Then logout

  @REG_R10_GUI_Background_047
  #    Scripted not executed
  Scenario: Test to verify the steps taken by the Opco User to view Background SIM History Audit for Customer report from the Global M2M Platform in CSV, PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype4"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Customer" "USE_Reporting_Custname"
    Then select dropdown "Change type" "USE_Reporting_Changetype"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype4 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "SIM History Audit for Customer" in downloaded file "pdf"
    Then verify filetext "USE_Reporting_Custname" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype4"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Customer" "USE_Reporting_Custname"
    Then select dropdown "Change type" "USE_Reporting_Changetype"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat1"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype4 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "SIM History Audit for Customer" in downloaded file "xml"
    Then verify filetext "USE_Reporting_Custname" in downloaded file "xml"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype4"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Customer" "USE_Reporting_Custname"
    Then select dropdown "Change type" "USE_Reporting_Changetype"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat2"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype4 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "SIM History Audit for Customer" in downloaded file "csv"
    Then verify filetext "USE_Reporting_Custname" in downloaded file "csv"
    Then logout


  @REG_R10_GUI_Background_048
  #    Scripted not executed
  Scenario: Test to verify the steps taken by the Opco User to view Background SIM History Audit for Customer Profile report from the Global M2M Platform in CSV, PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype5"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Service profile" "USE_Reporting_Serviceprofile"
    Then select dropdown "Change type" "USE_Reporting_Changetype"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype5 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "SIM History Audit for Customer Profile" in downloaded file "pdf"
    Then verify filetext "USE_Reporting_Custname" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype5"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Service profile" "USE_Reporting_Serviceprofile"
    Then select dropdown "Change type" "USE_Reporting_Changetype"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat1"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype5 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "SIM History Audit for Customer Profile" in downloaded file "xml"
    Then verify filetext "USE_Reporting_Custname" in downloaded file "xml"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype5"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Service profile" "USE_Reporting_Serviceprofile"
    Then select dropdown "Change type" "USE_Reporting_Changetype"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat2"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype5 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "SIM History Audit for Customer Profile" in downloaded file "csv"
    Then verify filetext "USE_Reporting_Custname" in downloaded file "csv"
    Then logout


  @REG_R10_GUI_Background_049
  #    Scripted not executed
  Scenario: Test to verify the steps taken by the Opco User to view Background SIM History Audit for IMSI report from the Global M2M Platform in CSV, PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype6"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then enter "* IMSI" "USE_Reporting_IMSI"
    Then select dropdown "Change type" "USE_Reporting_Changetype"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype6 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "SIM History Audit for IMSI" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype6"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then enter "* IMSI" "USE_Reporting_IMSI"
    Then select dropdown "Change type" "USE_Reporting_Changetype"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat1"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype6 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "SIM History Audit for IMSI" in downloaded file "xml"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype6"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then enter "* IMSI" "USE_Reporting_IMSI"
    Then select dropdown "Change type" "USE_Reporting_Changetype"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat2"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype6 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "SIM History Audit for IMSI" in downloaded file "csv"
    Then logout

  @REG_R10_GUI_Background_050
  #    Scripted not executed
  Scenario: Test to verify the steps taken by the Opco User to view Background Unauthorised API Requests report from the Global M2M Platform in CSV, PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype7"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Customer" "USE_Reporting_Custname"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype7 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "Unauthorised API Requests" in downloaded file "pdf"
    Then verify filetext "USE_Reporting_Custname" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype7"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Customer" "USE_Reporting_Custname"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat1"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype7 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "Unauthorised API Requests" in downloaded file "xml"
    Then verify filetext "USE_Reporting_Custname" in downloaded file "xml"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype7"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Customer" "USE_Reporting_Custname"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat2"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype7 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "Unauthorised API Requests" in downloaded file "csv"
    Then verify filetext "USE_Reporting_Custname" in downloaded file "csv"
    Then logout

  @REG_R10_GUI_Background_051
  #    Scripted not executed
  Scenario: Test to verify the steps taken by the Opco User to view Background Transaction report from the Global M2M Platform in CSV, PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype8"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype8 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "Transaction Report" in downloaded file "pdf"
    Then verify filetext "Data" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype8"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat1"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype8 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "Transaction Report" in downloaded file "xml"
    Then verify filetext "Data" in downloaded file "xml"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype8"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat2"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype8 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "Transaction Report" in downloaded file "csv"
    Then verify filetext "Data" in downloaded file "csv"
    Then logout

  @REG_R10_GUI_Background_052
  #    Scripted not executed
  Scenario: Test to verify the steps taken by the Opco User to view Background Serving OpCo Packet-Data Overview report from the Global M2M Platform in CSV, PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype9"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype9 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "Serving OpCo Packet-Data Overview" in downloaded file "pdf"
    Then verify filetext "Packet Data Usage For Serving Opco" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype9"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat1"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype9 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "Serving OpCo Packet-Data Overview" in downloaded file "xml"
    Then verify filetext "Packet Data Usage For Serving Opco" in downloaded file "xml"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "* Report" "USE_Reporting_Reporttype9"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "USE_Reporting_ReportFormat2"
    Then select radiobutton "Background"
    Then select radiobutton "Yes"
    Then select dropdown "* Notification Method" "USE_Reporting_NotificationMethod1"
    Then select dropdown "Contact *" "USE_Reporting_Contact1"
    When click on button "Generate"
    Then wait for 15 seconds
    When click menu "Reporting" and submenu "Background reports"
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then verify text "Results"
    Then click on header "Requested on"
    Then wait for 30 seconds
    Then get todays date and store in "TodayDate"
    Then click on results based on below criteria
      | values                    |
      | USE_Reporting_Reporttype9 |
      | TodayDate                 |
    Then wait for 60 seconds
    Then verify filetext "Serving OpCo Packet-Data Overview" in downloaded file "csv"
    Then verify filetext "Packet Data Usage For Serving Opco" in downloaded file "csv"
    Then logout














