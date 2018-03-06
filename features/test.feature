@TEST
Feature: Operator Group User

  @TC_1
  Scenario: Login - Make remember last user role persistent
    Given test case starts
    Given browser is open
    Then login
    When click on link "USE_ADMIN_Opco"
    When click on link "USE_ADMIN_Platform"
    When click on menu "Administration"
    When click on submenu "Operators"
    Then verify text "Results"
    Then enter "Organisation" "USE_APIThrottle_OpConame"
    When click on button "Search"
    Then verify text "Results"
    When click on link "USE_APIThrottle_OpConame"
    Then verify text "Information"
    When click on tab "Details"
    Then verify text "Devices"
    When click on link "Web services"
    Then verify text "API configuration"
    When click on button "Devices" on position 2
    Then verify text "Devices"
##
#    When click on link "111110001000002"
#    Then verify text "Overview"
#    When click on tab "Details"
#    Then verify text "SIM"
##    Then click on button "Change..." on position 2
#    Then verify
#    | type  | value  |
#    | link  | Saurabh |
#    | link  | Connectivity services   |
#    | link  | Profiles and groups |
#    | link  | Contract |
#    | link  | Recent data usage |
#    Then verify any
#    | type  | value  |
#    | link  | Conn services   |
#    | link  | Profiles and groups |
#    | link  | Contract |
#    | link  | Recent data usage |
#    | link  | Mobility |



  #    Then click on header "lastcolumn"
#    When click on link "+America+"
#    Then verify text "Overview"
#    When click on tab "Details"
#    Then verify text "SIM state"
#    When click on button "Edit" on position 2
#    Then set the value of "Volume limit" infinity
#    When click on infinity button of "NB-IoT message limit"

#    Then get value of "Parent Organisation" of table based on below criteria and store in "strval"
#    |IMSI|Organisation|
#    |111110001000002|IITC_FORD|
#    Then click on "checkbox" of table based on below criteria
#    |IMSI|
#    |111110001000002|

#    Then select all from table
#    When click on link "USE_Customer1_Status"
#    When click on link "Search"
#    When click on button "Create customer"
#    Then verify text "Basic information"
#    Then enter "Name" "AutoTest1"
#    Then enter "Description" "Code test"
#    When click on input "Parent organisation" and enter value "PPTOMTOM"
#    Then select radiobutton "Yes"
##    Then select radiobutton "Yes" on position 2

  @TC_2
  Scenario: Test case 2
    Given test case starts
    Given browser is open
    Then login
    When click on menu "Devices"
    When click on menu "All devices"
    Then verify text "Results"
    Then enter textarea "IMSI" "USE_Customer1_MSISDN1"
    When click on button "Search"
    Then verify text "Inactive"
    Then click on "checkbox" of table based on below criteria
      | IMSI        |
      | USE_Customer1_MSISDN1 |
    When click on link "Operations"
    When click on button "Next"
    Then select dropdown "* Action" "Change state"
    Then verify text "Batch operation"
    Then select dropdown "New State" "Active.Live"
        #Then select dropdown "State change reason" "End of contract"
    When click on button "Next"
    When click on button "Submit"
    Then verify text "The batch operation was successfully submitted"
    When click on button "Go to devices"
    Then verify text "Active.Live"
    Then report "State change is successful"

