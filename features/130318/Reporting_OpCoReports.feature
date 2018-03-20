@OpcoReports
Feature: This feature covers OpCo Reports
#Ready for Batch Run at 19Th March
  @REG_R10_GUI_OpCo_001
#    Success
  Scenario: Test to verify the steps taken by the OpCo User to view Configured Event Business Rules report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    When click on input "Organisation" and enter value "USE_Reporting_CustName"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Configured Event Business Rules"
    Then wait for 15 seconds
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "Time In State" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    When click on input "Organisation" and enter value "USE_Reporting_CustName"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Configured Event Business Rules"
    Then wait for 15 seconds
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "Time In State" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    When click on input "Organisation" and enter value "USE_Reporting_CustName"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Configured Event Business Rules"
    Then wait for 15 seconds
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "Time In State" in downloaded file "xml"
    Then logout


  @REG_R10_GUI_OpCo_003

  Scenario: Test to verify the steps taken by the OpCo User to view Contracting OpCo Overview v2 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Contracting OpCo Overview v2"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_CustName" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Contracting OpCo Overview v2"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_CustName" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Contracting OpCo Overview v2"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_CustName" in downloaded file "xml"
    Then logout

  @REG_R10_GUI_OpCo_004
#    updated 19th March
  Scenario: Test to verify the steps taken by the OpCo User to view Currently Suspended Devices for Customer report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Currently Suspended Devices for Customer"
    Then wait for 15 seconds
    Then select dropdown "Customer" "USE_Reporting_CustName"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "Suspended Devices" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then wait for 15 seconds
    Then select dropdown "* Report" "Currently Suspended Devices for Customer"
    Then wait for 15 seconds
    Then select dropdown "Customer" "USE_Reporting_CustName"
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "Suspended Devices" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then wait for 15 seconds
    Then select dropdown "* Report" "Currently Suspended Devices for Customer"
    Then wait for 15 seconds
    Then select dropdown "Customer" "USE_Reporting_CustName"
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "Suspended Devices" in downloaded file "xml"
    Then logout


  @REG_R10_GUI_OpCo_006
#    updated 19th March
  Scenario: Test to verify the steps taken by the OpCo User to view Customer Invoice-Data v2 report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Customer Invoice-Data v2"
    Then wait for 15 seconds
    Then enter "* Date" "USE_Reporting_InvoiceDate"
    Then select dropdown "Customer" "USE_Reporting_CustNameInvoiceData"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "Recurring SIM Charges" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Customer Invoice-Data v2"
    Then wait for 15 seconds
    Then enter "* Date" "USE_Reporting_InvoiceDate"
    Then select dropdown "Customer" "USE_Reporting_CustNameInvoiceData"
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "Recurring SIM Charges" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Customer Invoice-Data v2"
    Then wait for 15 seconds
    Then enter "* Date" "USE_Reporting_InvoiceDate"
    Then select dropdown "Customer" "USE_Reporting_CustNameInvoiceData"
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "Recurring SIM Charges" in downloaded file "xml"
    Then logout

  @REG_R10_GUI_OpCo_007
#    updated 19th March
  Scenario: Test to verify the steps taken by the OpCo User to view Customer VPN Numbers report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Customer VPN Numbers"
    Then wait for 15 seconds
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "Whitelisted" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Customer VPN Numbers"
    Then wait for 15 seconds
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "Whitelisted" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Customer VPN Numbers"
    Then wait for 15 seconds
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "Whitelisted" in downloaded file "xml"
    Then logout


  @REG_R10_GUI_OpCo_008
#    updated 19th March
  Scenario: Test to verify the steps taken by the OpCo User to view IMEI Locked Devices report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "IMEI Locked Devices"
    Then wait for 15 seconds
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "IMEI Locked Devices" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "IMEI Locked Devices"
    Then wait for 15 seconds
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "IMEI Locked Devices" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "IMEI Locked Devices"
    Then wait for 15 seconds
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "IMEI Locked Devices" in downloaded file "xml"
    Then logout

  @REG_R10_GUI_OpCo_009
#    Success
  Scenario: Test to verify the steps taken by the OpCo User to view Notification Events for Customer report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Notification Events for Customer"
    Then wait for 15 seconds
    Then select dropdown "* Customer" "USE_Reporting_CustName"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Notification Events for Customer"
    Then wait for 15 seconds
    Then select dropdown "* Customer" "USE_Reporting_CustName"
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Notification Events for Customer"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Customer" "USE_Reporting_CustName"
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "xml"
    Then logout


  @REG_R10_GUI_OpCo_010
#    Failed to download M2M issue
  Scenario: Test to verify the steps taken by the OpCo User to view Operating Company Summary report from the Global M2M Platform in CSV and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Operating Company Summary v2"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_CustName" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Operating Company Summary v2"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_CustName" in downloaded file "xml"
    Then logout


  @REG_R10_GUI_OpCo_013
#    Failed as report is not available in catalogue
  Scenario: Test to verify the steps taken by the OpCo User to view Reseller Summary report from the Global M2M Platform in CSV and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Reseller Summary"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds
#    Content of file need to verify here
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Reseller Summary"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds
#    Content of file need to verify here
    Then logout


  @REG_R10_GUI_OpCo_014
#    Failed due to not able to download report/verification part pending
  Scenario: Test to verify the steps taken by the OpCo User to view Reseller Summary v2 report from the Global M2M Platform in CSV and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Reseller Summary v2"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds
#    Content of file need to verify here, not downloaded
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Reseller Summary v2"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds
#    Content of file need to verify here
    Then logout


  @REG_R10_GUI_OpCo_015
#    updated 19th March
  Scenario: Test to verify the steps taken by the OpCo User to view SIM Group Detail report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "SIM Group Detail"
    Then wait for 15 seconds
    Then select dropdown "* Customer" "USE_Reporting_SIMGroupCustomer"
    Then select dropdown "* SIM group name" "USE_Reporting_SimGroup"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_SimGroup" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "SIM Group Detail"
    Then wait for 15 seconds
    Then select dropdown "* Customer" "USE_Reporting_SIMGroupCustomer"
    Then select dropdown "* SIM group name" "USE_Reporting_SimGroup"
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_SimGroup" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "SIM Group Detail"
    Then wait for 15 seconds
    Then select dropdown "* Customer" "USE_Reporting_SIMGroupCustomer"
    Then select dropdown "* SIM group name" "USE_Reporting_SimGroup"
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_SimGroup" in downloaded file "xml"
    Then logout


  @REG_R10_GUI_OpCo_016
#    updated 19th March
  Scenario: Test to verify the steps taken by the OpCo User to view SIM Group Summary report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "SIM Group Summary"
    Then wait for 15 seconds
    Then select dropdown "* Customer" "USE_Reporting_SIMGroupCustomer"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_SimGroup" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "SIM Group Summary"
    Then wait for 15 seconds
    Then select dropdown "* Customer" "USE_Reporting_SIMGroupCustomer"
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_SimGroup" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "SIM Group Summary"
    Then wait for 15 seconds
    Then select dropdown "* Customer" "USE_Reporting_SIMGroupCustomer"
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_SimGroup" in downloaded file "xml"
    Then logout


  @REG_R10_GUI_OpCo_017
#    Success
  Scenario: Test to verify the steps taken by the OpCo User to view SIM History Audit for Customer report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "SIM History Audit for Customer"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Customer" "USE_Reporting_CustName"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_CustName" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "SIM History Audit for Customer"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Customer" "USE_Reporting_CustName"
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_CustName" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "SIM History Audit for Customer"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Customer" "USE_Reporting_CustName"
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_CustName" in downloaded file "xml"
    Then logout


  @REG_R10_GUI_OpCo_018
#    Success
  Scenario: Test to verify the steps taken by the OpCo User to view SIM History Audit for Customer Profile report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "SIM History Audit for Customer Profile"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Service profile" "USE_Reporting_SIMHistoryCSP"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_SIMHistoryIMSI" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "SIM History Audit for Customer Profile"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Service profile" "USE_Reporting_SIMHistoryCSP"
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_SIMHistoryIMSI" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "SIM History Audit for Customer Profile"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Service profile" "USE_Reporting_SIMHistoryCSP"
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_SIMHistoryIMSI" in downloaded file "xml"
    Then logout


  @REG_R10_GUI_OpCo_019
#updated 19th March
  Scenario: Test to verify the steps taken by the OpCo User to view SIM History Audit for Customer IMSI report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "SIM History Audit for IMSI"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then enter "* IMSI" "USE_Reporting_NotificationIMSI"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "csv"
    Then verify filetext "USE_Reporting_SIMHistoryCountry" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "SIM History Audit for IMSI"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then enter "* IMSI" "USE_Reporting_NotificationIMSI"
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "pdf"
    Then verify filetext "USE_Reporting_SIMHistoryCountry" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "SIM History Audit for IMSI"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then enter "* IMSI" "USE_Reporting_NotificationIMSI"
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "xml"
    Then verify filetext "USE_Reporting_SIMHistoryCountry" in downloaded file "xml"
    Then logout


  @REG_R10_GUI_OpCo_020
#    Success
  Scenario: Test to verify the steps taken by the OpCo User to view Transaction report from the Global M2M Platform in CSV PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Transaction Report"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "Success" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Transaction Report"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "Success" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Transaction Report"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "Success" in downloaded file "xml"
    Then logout

