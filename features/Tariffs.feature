@Tariff
Feature: Tariff Activation
##Activate/DeActivate Tariff##

@REG_R5_GUI_Activation_001
#Took 3m45.525s
Scenario: verify that OpCo user can Request Tariff Version Activation when Invalid data is entered at first.

Given test case starts
Given browser is open
Then login
Then verify text "Administration"
When click on menu "Administration"
Then verify text "Tariffs"
When click on submenu "Tariffs"
Then verify text "Results"
Then enter "Tariff" "USE_Tariffs_Tariff5"
When click on button "Search"
Then verify text "USE_Tariffs_Tariff5"
When click on link "USE_Tariffs_Tariff5"
Then verify text "Tariff"

When click on button "Edit"
Then verify text "Withdraw Date (UTC)"
Then enter date "Withdraw Date (UTC)" "USE_Tariffs_futureDate2"
When click on button "Save"

Then verify text "Create new version"
When click on link "Create new version"
Then verify text "Version information"


Then verify text "* Start date (UTC)"
Then enter date "* Start date (UTC)" "USE_Tariffs_oldDate"
Then select dropdown "* Type" "Both SIM and Usage"
When click on button "Next"
Then verify text "Tariff Start Date must not be in the past or today's date"
Then get todays date and store in "today"
Then enter date "* Start date (UTC)" "today"
When click on button "Next"
Then verify text "Settings successfully updated"
Then wait for 10 seconds
Then verify text "Administration"
When click on menu "Administration"
Then verify text "Tariffs"
When click on menu "Tariffs"
Then verify text "Results"
Then enter "Tariff" "USE_Tariffs_Tariff5"
When click on button "Search"
Then verify text "USE_Tariffs_Tariff5"
When click on link "USE_Tariffs_Tariff5"
Then verify text "Tariff"
When click on link "Next version"
Then verify text "Version"
Then logout



#    #Creation of Tariff
#    When click on button "Create tariff"
#    Then verify text "* Tariff"
#     Then generate unique name starts with "Tariff_" and store in "TarName"
#     Then enter "* Tariff" "TarName"
#    Then verify text "* Organisation"
#    When click on input "* Organisation" and enter value "E2Ereseller"
#    Then verify text "* Currency"
#    Then enter "* Currency" "gbp"
#    When click on button "Next"
#    Then verify text "Version information"
#    Then verify text "* Start date (UTC)"
#    Then wait for 10 seconds
#    Then enter date for "Start date (UTC)" "today +10 days"
#    Then wait for 10 seconds
#    Then select dropdown "* Type" "Both SIM and Usage"
#    Then wait for 20 seconds
#    Then verify text "* Roaming group"
#    Then select dropdown "* Roaming group" "CSDB_ALL NETWORKS"
#     When click on button "Next"
#    Then verify text "Recurring state charges"
#    Then verify text "State change charges"
#    When click on button "Next"
#    Then verify text "Tariff band"
#    Then verify text "Tariff usage"
#    Then select dropdown "* Inclusive usage" "No Inclusive Usage"
#    When click on button "Next"
#    When click on button "Create"
#    Then verify text "was successfully created!"
#
#    #Tariff Version Activation
#    When click on button "Go to tariffs"
#    Then enter "Tariff" "USE_Tariffs_TarName"
#    When click on button "Search"
#    Then verify text "USE_Tariffs_TarName"
#    When click on link "USE_Tariffs_TarName"
#    Then verify text "Tariff"
#    When click on button "Edit"
#    Then verify text "Withdraw Date (UTC)"
#    Then enter date "Withdraw Date (UTC)" "USE_Tariffs_futureDate2"
#    When click on button "Save"
#    Then verify text "Create new version"
#    When click on link "Create new version"
#    Then verify text "Version information"
#    #When click on button "Edit" on Position 1
#    Then verify text "* Start date (UTC)"
#    Then wait for 10 seconds
#    Then enter date "* Start date (UTC)" "USE_Tariffs_oldDate"
#    Then select dropdown "* Type" "Both SIM and Usage"
#    When click on button "Next"
#    Then verify text "Tariff Start Date must not be in the past or today's date"
#   # Then get todays date and store in "today"
#    Then wait for 10 seconds
#   # Then enter date "Start date (UTC)" "today"
#    Then enter date for "Start date (UTC)" "today +10 days"
#    Then wait for 20 seconds
#    Then verify text "* Roaming group"
#    Then select dropdown "* Roaming group" "CSDB_ALL NETWORKS"
#    When click on button "Next"
#    Then verify text "Recurring state charges"
#    Then verify text "State change charges"
#    When click on button "Next"
#    Then verify text "Tariff band"
#    Then verify text "Tariff usage"
#    Then select dropdown "* Inclusive usage" "No Inclusive Usage"
#    When click on button "Next"
#    When click on button "Create"
#    Then verify text "The tariff version for the tariff"
#    When click on button "Go to tariffs"
#    Then wait for 10 seconds
#    Then verify text "Administration"
#    When click on menu "Administration"
#    Then verify text "Tariffs"
#    When click on menu "Tariffs"
#    Then verify text "Results"
#    Then enter "Tariff" "USE_Tariffs_TarName"
#    When click on button "Search"
#    Then verify text "USE_Tariffs_TarName"
#    When click on link "USE_Tariffs_TarName"
#    Then verify text "Tariff"
#    When click on link "Overview"
#    Then verify text "Current Version"
#    Then verify text "Next Version"
#    Then logout


@REG_R5_GUI_Activation_004
#Took 1m29.924s
Scenario: Test to verify that OpCo user can Deactivate an active Tariff in GDSP for selling.
Given test case starts
Given browser is open
Then login
Then verify text "Administration"
When click on menu "Administration"
Then verify text "Tariffs"
When click on menu "Tariffs"
Then verify text "Results"
Then enter "Tariff" "USE_Tariffs_Tariff1"
When click on button "Search"
Then verify text "USE_Tariffs_Tariff1"
When click on link "USE_Tariffs_Tariff1"
Then verify text "Overview"
Then verify text "Information"
When click on button "Edit" on Position 1
Then verify text "Withdraw Date (UTC)"
#Then enter date "Withdraw Date (UTC)" "2018-03-30"
Then enter date "Withdraw Date (UTC)" "USE_Tariffs_futureDate"
When click on button "Save"
Then verify text "Settings successfully updated"
Then logout


@REG_R5_GUI_Activation_005
#Took 1m51.501s
Scenario: verify that OpCo user can  Deactivate an active Tariff  when Invalid data is entered at first.
Given test case starts
Given browser is open
Then login
Then verify text "Administration"
When click on menu "Administration"
Then verify text "Tariffs"
When click on menu "Tariffs"
Then verify text "Results"
Then enter "Tariff" "USE_Tariffs_Tariff1"
When click on button "Search"
Then verify text "USE_Tariffs_Tariff1"
When click on link "USE_Tariffs_Tariff1"
Then verify text "Overview"
Then verify text "Information"
When click on button "Edit" on Position 1
Then verify text "Withdraw Date (UTC)"
Then enter date "Withdraw Date (UTC)" "USE_Tariffs_oldDate"
When click on button "Save"
Then verify text "Withdrawn date must be greater or equal than the current date."
# Then enter date "Withdraw Date (UTC)" "2018-12-30"
Then enter date "Withdraw Date (UTC)" "USE_Tariffs_futureDate"
When click on button "Save"
Then verify text "Settings successfully updated"
Then logout


#
#@REG_R5_GUI_Activation_008
#    #Took 2m47.162s
#    #This test case marked as "Cannot be automated".Can be performed manually only
#  Scenario: verify that OpCo user can Request Tariff Version Activation.
#    Given test case starts
#    Given browser is open
#    Then login
#    When click on menu "Administration"
#    When click on menu "Tariffs"
#    Then verify text "Results"
#    Then enter "Tariff" "USE_Tariffs_Tariff1"
#    When click on button "Search"
#    When click on link "USE_Tariffs_Tariff1"
#    Then verify text "Tariff"
#    When click on link "Next version"
#    Then verify text "Version"
#    When click on button "Edit" on Position 1
#    Then enter date "Start date (UTC)" "2017-12-25"
#    When click on button "Save"
#    Then verify text "Settings successfully updated"
#    When click on menu "Administration"
#    When click on menu "Tariffs"
#    Then verify text "Results"
#    Then enter "Tariff" "USE_Tariffs_Tariff1"
#    When click on button "Search"
#    When click on link "USE_Tariffs_Tariff1"
#    Then verify text "Tariff"
#    When click on link "Next version"
#    Then verify text "Version"
#    Then logout
#
#
#  #@REG_R7_GUI_Activation_007
#    #This test case marked as "Cannot be automated".Can be performed manually only
#    #Took 1m7.862s
#  Scenario: verify that the tariff version gets activated when the timer for Tariff Version activation expires.
#    Given test case starts
#    Given browser is open
#    Then login
#    When click on menu "Administration"
#    When click on menu "Tariffs"
#    Then verify text "Results"
#    Then enter "Tariff" "USE_Tariffs_Tariff1"
#    When click on button "Search"
#    When click on link "USE_Tariffs_Tariff1"
#    Then verify text "Tariff"
#    When click on link "Current Version"
#    Then verify text "Version"
#    Then verify text "Start date (UTC)"
#    #Old Tariff Version is marked as read only
#    #Timer Elapsed, since start date is same as that of current date
#    #System set the New Tariff Version to active
#    Then logout

#Create Tariff

@REG_R5_GUI_Create_Tariff_011
#Took 3m31.053s
Scenario: verify that an OpCo User can create a new Tariff in GDSP
Given test case starts
Given browser is open
Then login
Then verify text "Administration"
When click on menu "Administration"
Then verify text "Tariffs"
When click on menu "Tariffs"
Then verify text "Results"
Then generate unique name starts with "Test_" and store in "001"
Then enter "Tariff" "001"
When click on button "Search"
Then verify text "No results were found"
When click on button "Create tariff"
Then verify text "Tariff Information"
Then enter "* Tariff" "001"
When click on input "* Organisation" and enter value "USE_Tariffs_Org"
Then enter "* Currency" "gbp"
Then enter date "Withdraw Date (UTC)" "USE_Tariffs_futureDate"
When click on button "Next"
Then verify text "Version details"
Then verify text "Start date (UTC)"
Then enter date "Start date (UTC)" "USE_Tariffs_futureDate"
Then select dropdown "* Type" "Both SIM and Usage"
Then verify text "Roaming"
Then select dropdown "* Roaming group" "test"
When click on button "Next"
Then verify text "Device charge"
When click on button "Next"
Then verify text "Usage charge"
When click on button "Next"
Then verify text "Confirmation"
When click on button "Create"
Then verify text "was successfully created!"
# Then verify text "Go to tariffs"
When click on button "Go to tariffs"
Then verify text "Tariff"
Then enter "Tariff" "001"
When click on button "Search"
Then verify text "001"
When click on link "001"
Then verify text "Overview"
#Then report "Assurance details is displayed on "Tariff" page"#########################
Then logout


@REG_R5_GUI_Create_Tariff_014
#Took 3m33.544s
Scenario: verify OpCo user can create new tariff Element in GDSP.
Given test case starts
Given browser is open
Then login
Then verify text "Administration"
When click on menu "Administration"
Then verify text "Tariffs"
When click on menu "Tariffs"
Then verify text "Results"
Then verify text "Tariff"
Then enter "Tariff" "USE_Tariffs_Tariff3"
When click on button "Search"
Then verify text "USE_Tariffs_Tariff3"
When click on link "USE_Tariffs_Tariff3"
Then verify text "Tariff"
When click on link "Create new version"
Then verify text "Version details"
Then verify text "Start date (UTC)"
Then enter date "Start date (UTC)" "USE_Tariffs_futureDate2"
Then verify text "Roaming"
Then select dropdown "* Roaming group" "test"
When click on button "Next"
Then verify text "Device charge"
When click on button "Next"
Then verify text "Usage charge"
Then verify text "Tariff band"
Then verify text "Tariff usage"
Then select dropdown "* Inclusive usage" "Scaled By Sim and pooled by CSP"
Then verify text "Data"
Then enter "* Included Volume" "100"
Then enter "Price" "2.00"
Then verify text "SMS"
Then enter "* Included SMS MT" "4"
Then enter "* Included SMS MO" "4"
Then enter "* Included SMS wakeup" "4"
Then enter "* Included P2P SMS MT" "5"
Then enter "* Included P2P SMS MO" "5"
Then enter "SMS payload price" "2.00"
Then enter "SMS transactional price" "2.00"
Then enter "SMS transactional response price" "2.00"
Then enter "SMS MO price" "2.00"
Then enter "SMS Wakeup price" "2.00"
Then enter "P2P SMS MT price" "3.00"
Then enter "P2P SMS MO price" "3.00"
Then verify text "Voice"
Then enter "Included voice duration" "60"
Then enter "Included CSD duration" "60"
Then enter "Voice price per second" "2.0000"
Then enter "CSD price per second" "2.0000"
When click on button "Next"
Then verify text "Confirmation"
#Tariff element is added in the Tariff version with correct details
Then logout


@REG_R5_GUI_Create_Tariff_017
#Took 1m57.382s
Scenario: verify that an OpCo User can Cancel creation of a new Tariff in GDSP
Given test case starts
Given browser is open
Then login
Then verify text "Administration"
When click on menu "Administration"
Then verify text "Tariffs"
When click on menu "Tariffs"
Then verify text "Results"
Then verify text "Tariff"
Then enter "Tariff" "USE_Tariffs_Tariff4"
When click on button "Search"
Then verify text "No results were found"
When click on button "Create tariff"
Then verify text "Tariff Information"
Then verify text "* Tariff"
Then enter "* Tariff" "USE_Tariffs_Tariff4"
When click on input "* Organisation" and enter value "USE_Tariffs_Org"
Then verify text "* Currency"
Then enter "* Currency" "gbp"
When click on link "Cancel"
Then verify text "Results"
Then enter "Tariff" "USE_Tariffs_Tariff4"
When click on button "Search"
Then verify text "No results were found"
Then logout


@REG_R5_GUI_Create_Tariff_018
#Took 4m1.195s
Scenario: verify OpCo user can create new tariff Element when invalid details are entered at first
Given test case starts
Given browser is open
Then login
Then verify text "Administration"
When click on menu "Administration"
Then verify text "Tariffs"
When click on menu "Tariffs"
Then verify text "Results"
Then enter "Tariff" "USE_Tariffs_Tariff3"
When click on button "Search"
Then verify text "USE_Tariffs_Tariff3"
When click on link "USE_Tariffs_Tariff3"
Then verify text "Tariff"
Then verify text "Create new version"
When click on link "Create new version"
Then verify text "Version details"
Then verify text "Version information"
Then verify text "Start date (UTC)"
Then enter date "Start date (UTC)" "USE_Tariffs_futureDate2"
Then verify text "Roaming"
Then select dropdown "* Roaming group" "test"
When click on button "Next"
Then verify text "Device charge"
When click on button "Next"
Then verify text "Usage charge"
Then verify text "Tariff band"
Then verify text "Tariff usage"
Then verify text "* Inclusive usage"
Then select dropdown "* Inclusive usage" "Scaled By Sim and pooled by CSP"
Then verify text "Data"
Then enter "* Included Volume" "24abc"
Then enter "Price" "2.00"
Then verify text "SMS"
Then enter "* Included SMS MT" "4"
Then enter "* Included SMS MO" "23"
Then enter "* Included SMS wakeup" "4"
Then enter "* Included P2P SMS MT" "5"
Then enter "* Included P2P SMS MO" "5"
Then enter "SMS payload price" "2.00"
Then enter "SMS transactional price" "2.00"
Then enter "SMS transactional response price" "2.00"
Then enter "SMS MO price" "2.00"
Then enter "SMS Wakeup price" "3.00"
Then enter "P2P SMS MT price" "3.00"
Then enter "P2P SMS MO price" "3.00"
Then verify text "Voice"
Then enter "Included voice duration" "60"
Then enter "Included CSD duration" "60"
Then enter "Voice price per second" "2.0000"
Then enter "CSD price per second" "2.0000"
When click on button "Next"
Then verify text "Data"
Then verify text "* Included Volume"
Then verify text "Please enter a valid number"
Then enter "* Included Volume" "100"
When click on button "Next"
Then verify text "Confirmation"
#Tariff element is added in the Tariff version with correct details
Then logout

#Maintain Tariff

@REG_R5_GUI_Maintain_Tariff_001
#Took 3m7.966s
Scenario: verify that a Customer User can maintain a Tariff assignment to a CSP
Given test case starts
Given browser is open
Then login
Then verify text "Administration"
When click on menu "Administration"
Then verify text "Service profiles"
When click on submenu "Service profiles"
Then verify text "Results"
Then verify text "Service Profile"
Then enter "Service Profile" "USE_Tariffs_TariffSP"
When click on button "Search"
Then verify text "USE_Tariffs_TariffSP"
When click on link "USE_Tariffs_TariffSP"
Then verify text "Service profile"
Then verify text "Details"
When click on link "Details"
Then verify text "Contract"
When click on link "Contract"
Then verify text "Billing"
Then verify text "Edit"
When click on button "Edit" on position 1
Then verify text "* Tarif"
Then select dropdown "* Tariff" "USE_Tariffs_TariffForCSP"
When click on button "Save"
Then verify text "Settings successfully updated"
Then wait for 10 seconds
Then verify text "Administration"
When click on menu "Administration"
Then verify text "Service profiles"
When click on submenu "Service profiles"
Then verify text "Results"

# verifying that changes have been done
Then enter "Service Profile" "USE_Tariffs_TariffSP"
When click on button "Search"
Then verify text "USE_Tariffs_TariffSP"
When click on link "USE_Tariffs_TariffSP"
Then verify text "Service profile"
Then verify text "Details"
When click on link "Details"
Then verify text "Contract"
When click on link "Contract"
Then verify text "Billing"
Then verify text "USE_Tariffs_TariffForCSP"
#Then report "Newly assigned Tariff name is displayed for 'Tariff' attribute."
Then logout


@REG_R5_GUI_Maintain_Tariff_003
#Took 4m37.325s
Scenario: verify that a OpCo User can maintain a Tariff assignment to a customer
Given test case starts
Given browser is open
Then login
Then verify text "Administration"
When click on menu "Administration"
Then verify text "Customers"
When click on menu "Customers"
Then verify text "Results"
Then verify text "Organisation"
Then enter "Organisation" "USE_Tariffs_CustOrg"
When click on button "Search"
Then verify text "USE_Tariffs_CustOrg"
When click on link "USE_Tariffs_CustOrg"
#Then verify text "Customer"
Then verify text "Details"
When click on link "Details"
Then verify text "Contract"
When click on link "Contract"
Then verify text "Contract information"
Then verify text "Edit"
When click on button "Edit" on position 2
Then wait for 15 seconds
Then verify text "* Tariffs"
Then verify text "672Test"
#Then select dropdown "* Tariffs" "USE_Tariffs_ActiveTariff"
Then verify text "Save"
When click on button "Save"
Then wait for 10 seconds
Then verify text "Contract information"
When click on link "Contract information"
Then wait for 10 seconds
When click on button "m2mHome"
Then verify text "Administration"
When click on menu "Administration"
Then wait for 20 seconds
Then verify text "Customers"
When click on menu "Customers"
Then wait for 10 seconds
Then verify text "Organisation"
Then enter "Organisation" "USE_Tariffs_CustOrg"
When click on button "Search"
Then verify text "USE_Tariffs_CustOrg"
When click on link "USE_Tariffs_CustOrg"
Then verify text "Customer"
Then verify text "Details"
When click on link "Details"
Then verify text "Contract"
When click on link "Contract"
Then verify text "Contract information"
Then verify text "USE_Tariffs_ActiveTariff"

#restoring data state
Then verify text "Edit"
When click on button "Edit" on position 2
Then verify text "* Tariffs"
Then remove item "USE_Tariffs_ActiveTariff" by clicking close
Then verify text "Save"
Then verify text "Contract information"
Then logout

#Generate CIR report

@REG_R5_GUI_Generate_CIR_024
#Took 2m15.477s
Scenario: verify OpCo User can produce a CIR report for a customer from the GUI in XML format
Given test case starts
Given browser is open
Then login
Then wait for 5 seconds
Then verify text "Reporting"
When click on menu "Reporting"
Then wait for 5 seconds
Then verify text "Reports"
When click on submenu "Reports"
Then wait for 5 seconds
Then verify text "Generate report"
Then select dropdown "* Report" "Customer Invoice-Data"
Then enter date "* Date" "USE_Tariffs_oldDate"
Then select dropdown "* Customer" "USE_Tariffs_CustReport"
Then select dropdown "* Format" "XML"
When click on button "Generate"
Then wait for 60 seconds
Then verify filetext "Customer Invoice-Data" in downloaded file "xml"
#XML file is downloaded andThe system validates the report parameters
Then logout


@REG_R5_GUI_Generate_CIR_025
#Took 2m8.894s
Scenario: verify OpCo User can produce a CIR report for a customer from the GUI in PDF format
Given test case starts
Given browser is open
Then login
Then wait for 5 seconds
Then verify text "Reporting"
When click on menu "Reporting"
Then wait for 5 seconds
Then verify text "Reports"
When click on submenu "Reports"
Then wait for 5 seconds
Then verify text "Generate report"
Then select dropdown "* Report" "Customer Invoice-Data"
#    When click on button "Generate"
#    Then verify text "* Date"
#    Then verify text "This is a mandatory field"
# Then enter date "* Date" "2017-11-05"
Then enter date "* Date" "USE_Tariffs_oldDate"
Then select dropdown "* Customer" "USE_Tariffs_CustReport"
Then select dropdown "* Format" "PDF"
When click on button "Generate"
Then wait for 60 seconds
Then verify filetext "Customer Invoice-Data" in downloaded file "pdf"
#XML file is downloaded andThe system validates the report parameters
Then logout


@REG_R5_GUI_Generate_CIR_026
#Took 2m14.019s
Scenario: verify OpCo User can produce a CIR report for a customer from the GUI in CSV format
Given test case starts
Given browser is open
Then login
Then verify text "Reporting"
When click on menu "Reporting"
Then wait for 5 seconds
Then verify text "Reports"
When click on submenu "Reports"
Then verify text "Generate report"
Then select dropdown "* Report" "Customer Invoice-Data"
When click on button "Generate"
Then verify text "* Date"
Then verify text "This is a mandatory field"
#Then enter date "* Date" "2017-11-05"
Then enter date "* Date" "USE_Tariffs_oldDate"
Then select dropdown "* Customer" "USE_Tariffs_CustReport"
Then select dropdown "* Format" "CSV"
When click on button "Generate"
Then wait for 60 seconds
Then verify filetext "Customer Invoice-Data" in downloaded file "csv"
#XML file is downloaded andThe system validates the report parameters
Then logout



@R11.1_MR_API_CIR_Enhancements_009

Scenario: verify the CIR report invoice can be generated for the customer having Bill cycle start day as 5th of the Month for Aggregation Period as Day Tariff version
Given test case starts
Given browser is open
Then login

Then verify text "Reporting"
When click on menu "Reporting"
Then wait for 5 seconds
Then verify text "Reports"
When click on submenu "Reports"
Then verify text "Generate report"
Then select dropdown "* Report" "Customer Invoice-Data"
#Then enter date "* Date" "2017-10-05"
Then enter date "* Date" "USE_Tariffs_oldDate"
Then select dropdown "* Customer" "USE_Tariffs_CustReport"
Then select dropdown "* Format" "CSV"
When click on button "Generate"
Then wait for 60 seconds
Then verify filetext "Customer Invoice-Data" in downloaded file "csv"
Then verify filetext "TimSummary" in downloaded file "csv"
Then verify filetext "UsageDataSummary" in downloaded file "csv"
Then verify filetext "UsageDetail" in downloaded file "csv"
Then logout






























