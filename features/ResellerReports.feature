@ResellerReports
Feature: Reseller Reports


  @REG_R10_GUI_OpCo_001_Edit
  #  Success
  Scenario: Test to verify the steps taken by the Reseller OpCo to view Reseller OpCo Usage Overview report from the Global M2M Platform in CSV, PDF and XML format
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_ResellerAdministratorRole"
    When click on link "USE_Reporting_ResellerAdministratorRole"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Reseller Opco Usage Overview"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "PERIOD_START" in downloaded file "csv"
    Then verify filetext "Data Usage Total" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Reseller Opco Usage Overview"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "PERIOD_START" in downloaded file "pdf"
    Then verify filetext "Data Usage Total" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Reseller Opco Usage Overview"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "PERIOD_START" in downloaded file "xml"
    Then verify filetext "Data Usage Total" in downloaded file "xml"
    When click on link "USE_Reporting_ResellerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 10 seconds
    Then logout


  @REG_R10_GUI_OpCo_002
  #  Failure/Report is not available in M2M
  Scenario: Test to verify the steps taken by the Reseller OpCo to view Reseller OpCo Usage Overview v2 report from the Global M2M Platform in CSV, PDF and XML format
  test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then verify text "USE_Reporting_ResellerAdministratorRole"
    When click on link "USE_Reporting_ResellerAdministratorRole"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Reseller Opco Usage Overview v2"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "PERIOD_START" in downloaded file "csv"
    Then verify filetext "Data Usage Total" in downloaded file "csv"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Reseller Opco Usage Overview v2"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "PERIOD_START" in downloaded file "pdf"
    Then verify filetext "Data Usage Total" in downloaded file "pdf"
    When click menu "Reporting" and submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Reseller Opco Usage Overview v2"
    Then wait for 15 seconds
    Then verify text "* Period"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriod"
    Then select dropdown "* Format" "XML"
    When click on button "Generate"
    Then wait for 60 seconds
    Then verify filetext "PERIOD_START" in downloaded file "xml"
    Then verify filetext "Data Usage Total" in downloaded file "xml"
    When click on link "USE_Reporting_ResellerAdministratorRole"
    When click on link "USE_Reporting_OperatorAdministratorRole"
    Then wait for 10 seconds
    Then logout

