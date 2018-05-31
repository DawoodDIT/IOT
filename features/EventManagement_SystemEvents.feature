@SystemEvents
Feature: System Events part of Event Management functionality


  @REG_R8_EM_002
  Scenario: Test to verify that Opco user can copy system event Active.Ready to Active.Standby and notification are received upon breaching the event metric for copied system event
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Tools" and submenu "Event triggers"
    Then wait for 15 seconds
    Then verify text "Results"
    When click on button "Create event trigger"
    Then wait for 15 seconds
    #Then verify text "Create event trigger"
    Then generate unique name starts with "SysEvnt" and store in "SystemEventName"
    Then enter "* Event trigger name" "SystemEventName"
    Then enter "Description" "USE_EventManagement_EventDescription"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    Then select radiobutton "Yes"
    Then wait for 5 seconds
    Then select dropdown "* Copy settings from" "Active.Ready to Active.Standby"
    Then enter "* Threshold value" "USE_EventManagement_ThresholdValue"
    When click on button "Next"
    Then verify text "You are about to create the event"
    When click on button "Create"
    Then verify text "was successfully created!"
#    Add some code here to break the threshold
    When click on menu "Reporting"
    When click on submenu "Reports"
    Then verify text "Reports"
    When click on input "Organisation" and enter value "USE_EventManagement_CustName"
    Then select dropdown "Report family" "Others"
    Then select dropdown "* Report" "Configured Event Business Rules"
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
#    Need to add code for verification of downloaded file
    Then logout


  @REG_R8_EM_003
  Scenario: Test to verify that Opco user can copy system event Active.Suspend to Active.Sleep and notification are received upon breaching the event metric for copied system event
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Tools" and submenu "Event triggers"
    Then wait for 15 seconds
    Then verify text "Results"
    When click on button "Create event trigger"
    Then wait for 15 seconds
    #Then verify text "Create event trigger"
    Then generate unique name starts with "SysEvnt" and store in "SystemEventName"
    Then enter "* Event trigger name" "SystemEventName"
    Then enter "Description" "USE_EventManagement_EventDescription"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    Then select radiobutton "Yes"
    Then wait for 5 seconds
    Then select dropdown "* Copy settings from" "Active.Suspend to Active.Sleep"
    Then enter "* Threshold value" "USE_EventManagement_ThresholdValue"
    When click on button "Next"
    Then verify text "You are about to create the event"
    When click on button "Create"
    Then verify text "was successfully created!"
#    Add some code here to break the threshold
    When click on menu "Reporting"
    When click on submenu "Reports"
    Then verify text "Reports"
    When click on input "Organisation" and enter value "USE_EventManagement_CustName"
    Then select dropdown "Report family" "Others"
    Then select dropdown "* Report" "Configured Event Business Rules"
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
#    Need to add code for verification of downloaded file
    Then logout

  @REG_R8_EM_004
  Scenario: Test to verify that Opco user can copy system event Inactive.Stopped to Terminated and notification are received upon breaching the event metric for copied system event
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Tools" and submenu "Event triggers"
    Then wait for 15 seconds
    Then verify text "Results"
    When click on button "Create event trigger"
    Then wait for 15 seconds
    #Then verify text "Create event trigger"
    Then generate unique name starts with "SysEvnt" and store in "SystemEventName"
    Then enter "* Event trigger name" "SystemEventName"
    Then enter "Description" "USE_EventManagement_EventDescription"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    Then select radiobutton "Yes"
    Then wait for 5 seconds
    Then select dropdown "* Copy settings from" "Inactive.Stopped to Terminated"
    Then wait for 15 seconds
    Then enter "* Threshold value" "USE_EventManagement_ThresholdValue"
    When click on button "Next"
    Then verify text "You are about to create the event"
    When click on button "Create"
    Then verify text "was successfully created!"
#    Add some code here to break the threshold
    When click on menu "Reporting"
    When click on submenu "Reports"
    Then verify text "Reports"
    When click on input "Organisation" and enter value "USE_EventManagement_CustName"
    Then select dropdown "Report family" "Others"
    Then select dropdown "* Report" "Configured Event Business Rules"
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
#    Need to add code for verification of downloaded file
    Then logout

  @REG_R8_EM_006
  Scenario: Test to verify that System event Notify Inactive.Stopped Transition triggers email notification upon breaching the event metric
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Tools" and submenu "Event triggers"
    Then wait for 15 seconds
    Then verify text "Results"
    When click on button "Create event trigger"
    Then wait for 15 seconds
    #Then verify text "Create event trigger"
    Then generate unique name starts with "SysEvnt" and store in "SystemEventName"
    Then enter "* Event trigger name" "SystemEventName"
    Then enter "Description" "USE_EventManagement_EventDescription"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    Then select radiobutton "Yes"
    Then wait for 5 seconds
    Then select dropdown "* Copy settings from" "Notify Inactive.Stopped Transition"
    Then wait for 15 seconds
    When click on button "Next"
    Then verify text "You are about to create the event"
    When click on button "Create"
    Then verify text "was successfully created!"
#    Add some code here to break the threshold
    When click on menu "Reporting"
    When click on submenu "Reports"
    Then verify text "Reports"
    When click on input "Organisation" and enter value "USE_EventManagement_CustName"
    Then select dropdown "Report family" "Others"
    Then select dropdown "* Report" "Configured Event Business Rules"
    Then select dropdown "* Format" "PDF"
    When click on button "Generate"
#    Need to add code for verification of downloaded file
    Then logout


  @REG_R9_EM_001
#    Success
  Scenario: Test to verify that Manage Events Overview page displays default system level events when logged in as Opco user
    Given test case starts
    Given browser is open
    Then login
    Then verify text "M2M Dashboard"
    When click menu "Tools" and submenu "Event triggers"
    Then wait for 15 seconds
    Then verify text "Results"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    Then enter "Event trigger" "Active.Ready to Active.Standby"
    When click on button "Search"
    Then verify text "Active.Ready to Active.Standby"
    Then click on "Event triggers" of table based on below criteria
      | Event trigger                  | Entity type |
      | Active.Ready to Active.Standby | System      |
    When click on link "Active.Ready to Active.Standby"
    Then wait for 10 seconds
    Then verify no text "Edit"
    Then verify no text "Organisation"
    When click on link "Back"
    Then wait for 15 seconds
    Then enter "Event trigger" "Active.Suspend to Active.Sleep"
    When click on button "Search"
    Then verify text "Active.Suspend to Active.Sleep"
    Then click on "Event triggers" of table based on below criteria
      | Event trigger                  | Entity type |
      | Active.Suspend to Active.Sleep | System      |
    When click on link "Active.Active.Suspend to Active.Sleep"
    Then wait for 10 seconds
    Then verify no text "Edit"
    Then verify no text "Organisation"
    When click on link "Back"
    Then wait for 15 seconds
    Then enter "Event trigger" "Inactive.Stopped to Terminated"
    When click on button "Search"
    Then verify text "Inactive.Stopped to Terminated"
    Then click on "Event triggers" of table based on below criteria
      | Event trigger                  | Entity type |
      | Inactive.Stopped to Terminated | System      |
    When click on link "Inactive.Stopped to Terminated"
    Then wait for 10 seconds
    Then verify no text "Edit"
    Then verify no text "Organisation"
    When click on link "Back"
    Then wait for 15 seconds
    Then enter "Event trigger" "Notify Imminent Termination"
    When click on button "Search"
    Then verify text "Notify Imminent Termination"
    Then click on "Event triggers" of table based on below criteria
      | Event trigger               | Entity type |
      | Notify Imminent Termination | System      |
    When click on link "Notify Imminent Termination"
    Then wait for 10 seconds
    Then verify no text "Edit"
    Then verify no text "Organisation"
    When click on link "Back"
    Then wait for 15 seconds
    Then enter "Event trigger" "Notify Inactive.Stopped Transition"
    When click on button "Search"
    Then verify text "Notify Inactive.Stopped Transition"
    Then click on "Event triggers" of table based on below criteria
      | Event trigger                      | Entity type |
      | Notify Inactive.Stopped Transition | System      |
    When click on link "Notify Inactive.Stopped Transition"
    Then wait for 10 seconds
    Then verify no text "Edit"
    Then verify no text "Organisation"
    When click on link "Back"
    Then wait for 15 seconds
    When click on button "Create event trigger"
    Then wait for 15 seconds
    #Then verify text "Create event trigger"
    Then generate unique name starts with "SysEvnt" and store in "SystemEventName"
    Then enter "* Event trigger name" "SystemEventName"
    Then enter "Description" "USE_EventManagement_EventDescription"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    Then select radiobutton "Yes"
    Then wait for 5 seconds
    Then select dropdown "* Copy settings from" "Active.Ready to Active.Standby"
    Then wait for 15 seconds
    Then enter "* Threshold value" "USE_EventManagement_ThresholdValue"
    When click on button "Next"
    Then verify text "You are about to create the event"
    When click on button "Create"
    Then verify text "was successfully created!"
    When click on link "See event detail"
    Then verify text "USE_EventManagement_CustName"
    Then verify
      | type   | value                |
      | button | Edit                 |
      | button | Delete event trigger |
    When click on button "Delete event trigger"
    Then verify text "You're about to delete"
    When click on button "Delete"
    Then verify text "was successfully deleted!"
    When click menu "Tools" and submenu "Event triggers"
    Then wait for 15 seconds
    Then verify text "Results"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    When click on button "Search"
    Then verify text "Event trigger"
    Then click on "Event triggers" of table based on below criteria
      | Entity type | Event metric  |
      | Customer    | Time In State |
    When click on button "Delete event trigger"
    Then verify text "You're about to delete"
    When click on button "Delete"
    Then verify text "was successfully deleted!"
    When click menu "Tools" and submenu "Event triggers"
    Then wait for 15 seconds
    Then verify text "Results"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    When click on button "Search"
    Then verify text "Event trigger"
    Then click on "Event triggers" of table based on below criteria
      | Entity type | Event metric  |
      | Customer    | Time In State |
    When click on button "Delete event trigger"
    Then verify text "You're about to delete"
    When click on button "Delete"
    Then verify text "was successfully deleted!"
    When click menu "Tools" and submenu "Event triggers"
    Then wait for 15 seconds
    Then verify text "Results"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    When click on button "Search"
    Then verify text "Event trigger"
    Then click on "Event triggers" of table based on below criteria
      | Entity type | Event metric  |
      | Customer    | Time In State |
    When click on button "Delete event trigger"
    Then verify text "You're about to delete"
    When click on button "Delete"
    Then verify text "was successfully deleted!"
    When click on menu e"Tools"
    When click on submenu "Event triggers"
    Then wait for 15 seconds
    Then verify text "Results"
    When click on input "* Organisation" and enter value "USE_EventManagement_CustName"
    When click on button "Search"
    Then verify text "Event trigger"
    Then click on "Event triggers" of table based on below criteria
      | Entity type | Event metric  |
      | Customer    | Time In State |
    When click on button "Delete event trigger"
    Then verify text "You're about to delete"
    When click on button "Delete"
    Then verify text "was succssfully deleted!"
    Then logout





