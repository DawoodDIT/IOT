@EventConfig
Feature: Event Configuration part of Event Management functionality

  @REG_R10_GUI_Event_Config_005
#    Success
  Scenario:  Test to verify that OpCo User can edit any Event available event on Manage Events page.
    Given test case starts
    Given browser is open
    Then login
#    Below Code is to create an Event for rest of test cases in batch and is part of creating data
    When click on menu "Tools"
    When click on submenu "Event triggers"
    Then verify text "Event triggers"
    When click on button "Create event trigger"
    Then verify text "Create event trigger"
    Then enter "* Event trigger name" "USE_EventManagement_EventName"
    Then enter "Description" "USE_EventManagement_EventDescription"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    Then select dropdown "* Event metric" "USE_EventManagement_EventMetric"
    Then select dropdown "* Business service" "USE_EventManagement_BusinessService5"
    Then select radiobutton "Yes" on position 2
    Then select dropdown "* Monitoring period" "USE_EventManagement_MonitoringPeriodQuarterly"
    Then enter "* Threshold value" "USE_EventManagement_ThresholdValue"
    Then select check box "Immediate email"
    When click on button "Next"
    Then verify text "You are about to create the event"
    When click on button "Create"
    Then verify text "was successfully created!"
#    Test data creation ends, Actual test case starts below
    When click on menu "Tools"
    When click on submenu "Event triggers"
    Then verify text "Results"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    When click on button "Search"
    Then verify text "Event trigger"
    Then verify text "Entity type"
    Then verify text "Entity"
    Then verify text "Event metric"
    Then verify text "Organisation"
    Then enter "Event trigger" "USE_EventManagement_EventName"
    When click on button "Search"
    Then verify text "USE_EventManagement_EventName"
    When click on link "USE_EventManagement_EventName"
    Then verify text "Information"
    When click on button "Edit" on position 1
    Then enter "Description" "USE_EventManagement_EventDescriptionEdit"
    Then select radiobutton "Yes"
    When click on button "Save"
    Then enter "Description" "USE_EventManagement_EventDescriptionEdit"
    When click on button "Edit" on position 2
    Then select dropdown "* Monitoring period" "USE_EventManagement_MonitoringPeriodHourly"
    Then enter "* Threshold value" "USE_EventManagement_ThresholdValue"
    When click on button "Save"
    Then verify text "USE_EventManagement_ThresholdValue"
    Then verify text "USE_EventManagement_MonitoringPeriodHourly"
    When click on button "Edit" on position 3
    Then select check box "Warning"
    Then select check box "Immediate email"
    Then select check box "Daily report"
    When click on button "Save"
    Then verify text "Immediate email"
    Then wait for 5 seconds
    Then logout

  @REG_R10_GUI_Event_Config_006
#    Success
  Scenario: Test to verify that OpCo User can make changes to Threshold Enabled and Customer Controlled of an event using Icons available on Manage Event Page
    Given test case starts
    Given browser is open
    Then login
    When click on menu "Tools"
    When click on submenu "Event triggers"
    Then verify text "Results"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    When click on button "Search"
    Then verify text "Event trigger"
    Then verify text "Entity type"
    Then verify text "Entity"
    Then verify text "Event metric"
    Then verify text "Organisation"
    Then enter "Event trigger" "USE_EventManagement_EventName"
    When click on button "Search"
    Then verify text "USE_EventManagement_EventName"
    When click on link "USE_EventManagement_EventName"
    Then verify text "Information"
    When click on button "Edit" on position 1
    Then select radiobutton "No"
    When click on button "Save"
    Then verify text "No"
    When click on button "Edit" on position 1
    Then select radiobutton "Yes"
    When click on button "Save"
    Then verify text "Yes"
    When click on button "Edit" on position 2
    Then select radiobutton "Enabled"
    When click on button "Save"
    Then verify text "Enabled"
    When click on button "Edit" on position 2
    Then select radiobutton "Disabled"
    When click on button "Save"
    Then verify text "Disabled"
    Then wait for 5 seconds
    Then logout

  @REG_R10_GUI_Event_Config_007
#    Success
  Scenario: Test to verify that Customer User can Edit Event if Customer controlled is Enabled for an Event at Opco level
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_EventManagement_OperatorAdministratorRole"
    When click on link "USE_EventManagement_CustomerAdministratorRole"
    When click on menu "Tools"
    When click on submenu "Event triggers"
    Then verify text "Results"
    Then verify text "Event trigger"
    Then verify text "Entity type"
    Then verify text "Entity"
    Then verify text "Event metric"
    Then enter "Event trigger" "USE_EventManagement_EventName"
    When click on button "Search"
    Then verify text "USE_EventManagement_EventName"
    When click on link "USE_EventManagement_EventName"
    Then verify text "Information"
    When click on button "Edit" on position 2
    Then select radiobutton "Enabled"
    When click on button "Save"
    Then verify text "Enabled"
    When click on button "Edit" on position 2
    Then select dropdown "* Monitoring period" "USE_EventManagement_MonitoringPeriodMonthly"
    Then enter "* Threshold value" "USE_EventManagement_ThresholdValue"
    When click on button "Save"
    Then verify text "USE_EventManagement_ThresholdValue"
    Then verify text "USE_EventManagement_MonitoringPeriodMonthly"
    When click on button "Edit" on position 2
    Then select radiobutton "Disabled"
    When click on button "Save"
    Then verify text "Disabled"
    When click on menu "Tools"
    When click on submenu "Event triggers"
    Then verify text "Results"
    Then enter "Event trigger" "USE_EventManagement_EventName"
    When click on button "Search"
    Then verify text "USE_EventManagement_EventName"
    Then verify text "Disabled"
    When click on link "USE_EventManagement_CustomerAdministratorRole"
    When click on link "USE_EventManagement_OperatorAdministratorRole"
    Then wait for 10 seconds
    Then logout

  @REG_R5_GUI_Event_Config_002
#    Success
  Scenario: Test to verify that OpCo User can copy an existing event business rule
    Given test case starts
    Given browser is open
    Then login
    When click on menu "Tools"
    When click on submenu "Event triggers"
    When click on button "Create event trigger"
    Then verify text "Create event trigger"
    Then enter "* Event trigger name" "USE_EventManagement_EventNameForCopy"
    Then enter "Description" "USE_EventManagement_EventDescription"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    Then select radiobutton "Yes"
    Then select dropdown "* Copy settings from" "USE_EventManagement_EventName"
    Then wait for 5 seconds
    Then select dropdown "* Business service" "USE_EventManagement_BusinessService6"
    When click on button "Next"
    Then verify text "You are about to create the event"
    When click on button "Create"
    Then verify text "was successfully created!"
    When click on link "See event detail"
    Then verify text "USE_EventManagement_EventNameForCopy"
    Then verify text "USE_EventManagement_EventDescription"
    Then verify text "Information"
    Then verify text "Configuration"
    Then verify text "Actions"
    Then logout


  @REG_R5_GUI_Event_Config_003
#    Success
  Scenario: Test to verify that OpCo User can delete an existing event business rule
    Given test case starts
    Given browser is open
    Then login
    When click on menu "Tools"
    When click on submenu "Event triggers"
    Then verify text "Results"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    Then enter "Event trigger" "USE_EventManagement_EventNameForCopy"
    When click on button "Search"
    When click on link "USE_EventManagement_EventNameForCopy"
    Then verify text "Event trigger"
    When click on button "Delete event trigger"
    Then verify text "You're about to delete"
    When click on button "Delete"
    Then verify text "was successfully deleted!"
    When click on menu "Tools"
    When click on submenu "Event triggers"
    Then verify text "Results"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    Then enter "Event trigger" "USE_EventManagement_EventNameForCopy"
    When click on button "Search"
    Then verify text "No results were found"
    Then logout

  @REG_R5_GUI_Event_Config_004
#    Success
  Scenario: Test to verify that OpCo User can edit copied Event while creating the copy
    Given test case starts
    Given browser is open
    Then login
    When click on menu "Tools"
    When click on submenu "Event triggers"
    When click on button "Create event trigger"
    Then verify text "Create event trigger"
    Then enter "* Event trigger name" "USE_EventManagement_EventNameForCopy"
    Then enter "Description" "USE_EventManagement_EventDescription"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    Then select radiobutton "Yes"
    Then select dropdown "* Copy settings from" "USE_EventManagement_EventName"
    Then wait for 5 seconds
    Then select dropdown "* Business service" "USE_EventManagement_BusinessService4"
    Then select check box "Warning"
    Then select check box "Immediate email"
    When click on button "Next"
    Then verify text "You are about to create the event"
    When click on button "Create"
    Then verify text "was successfully created!"
    When click on menu "Tools"
    When click on submenu "Event triggers"
    Then verify text "Results"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    Then enter "Event trigger" "USE_EventManagement_EventNameForCopy"
    When click on button "Search"
    When click on link "USE_EventManagement_EventNameForCopy"
    Then verify text "USE_EventManagement_EventNameForCopy"
    Then verify text "USE_EventManagement_EventDescription"
    Then verify text "Information"
    Then verify text "Configuration"
    Then verify text "Actions"
    Then verify text "USE_EventManagement_BusinessService4"
    Then logout


  @REG_R5_GUI_Event_Config_001
#    Partially Success
  Scenario: Test to verify that system do not send daily event notification when there is no notification event occur in the day
    Given test case starts
    Given browser is open
    Then login
    When click on menu "Reporting"
    When click on submenu "Reports"
    Then verify text "Reports"
    Then select dropdown "Report family" "All"
    Then select dropdown "* Report" "Notification Events for Customer"
    Then select dropdown "* Period" "USE_Reporting_ReportPeriodImmediate"
    Then select dropdown "* Customer" "USE_Reporting_CustName"
    Then select dropdown "* Format" "CSV"
    When click on button "Generate"
#    No text in file, verification required
    Then verify filetext "USE_Reporting_NotificationIMSI" in downloaded file "csv"
    Then logout

  @ClearData
#    Success
  Scenario: To delete the created events for batch execution
    Given test case starts
    Given browser is open
    Then login
    When click on menu "Tools"
    When click on submenu "Event triggers"
    Then verify text "Results"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    Then enter "Event trigger" "USE_EventManagement_EventNameForCopy"
    When click on button "Search"
    When click on link "USE_EventManagement_EventNameForCopy"
    Then verify text "Event trigger"
    When click on button "Delete event trigger"
    Then verify text "You're about to delete"
    When click on button "Delete"
    Then verify text "was successfully deleted!"
    When click on menu "Tools"
    When click on submenu "Event triggers"
    Then verify text "Results"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    Then enter "Event trigger" "USE_EventManagement_EventName"
    When click on button "Search"
    When click on link "USE_EventManagement_EventName"
    Then verify text "Event trigger"
    When click on button "Delete event trigger"
    Then verify text "You're about to delete"
    When click on button "Delete"
    Then verify text "was successfully deleted!"
    Then logout









































