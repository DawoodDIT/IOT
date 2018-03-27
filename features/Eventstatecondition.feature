@EventManagement_BREModification_EventStateConditions

  Feature: EventManagement - BREModification_EventStateConditions

    @R11.0_MR_BRE_Event_State_001
    Scenario:Test to verify that End of period event is triggered with sim state ACTIVE LIVE and RestrictedByState as Y

       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       When click on link "USE_ADMIN_Platform"
       When click on menu "Tools"
       When click on submenu "Event triggers"
       Then verify text "Results"
       When click on button "Create event trigger"
       Then verify text "Information"
       Then generate unique name starts with "Event" and store in "Eventname"
       Then enter "* Event trigger name" "Eventname"
       Then enter "Description" "USE_EMBREModification_Description"
       When click on input "* Organisation" and enter value "USE_EMBREModification_Custname"
       Then select dropdown "* Event metric" "USE_EMBREModification_Eventmetric7"
       Then select radiobutton "Yes" on position 2
       Then verify text "Configuration"
       Then select dropdown "* Required state" "USE_EMBREModification_Requiredstate1"
       Then click on link "* Monitoring level"
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod3"
       Then select radiobutton "Enabled"
       Then select check box "Warning"
       Then select check box "Immediate email"
       Then select check box "Daily report"
       Then select dropdown "* Device action" "USE_EMBREModification_Deviceaction1"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created!"

       When click on link "USE_ADMIN_Platform"
       When click on link "USE_ADMIN_Opco"

#    Reporting
       When click on menu "Reporting"
       When click on submenu "Reports"
       Then verify text "Reports"
       Then select dropdown "Report family" "All"
       Then select dropdown "* Report" "USE_EMBREModification_Reporttype"
       Then select dropdown "* Period" "Today"
       Then select dropdown "* Customer" "USE_EMBREModification_Custname"
       Then select dropdown "* Format" "CSV"
       When click on button "Generate"
##    Content of file need to verify here
       Then verify filetext "Eventname" in downloaded file "csv"

       Then logout

    @R11.0_MR_BRE_Event_State_015
    Scenario:Test to verify that End of period event for Packet Data Volume(Bytes In only) is triggereded with RestrictedBystate as Y

       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       When click on link "USE_ADMIN_Platform"
       When click on menu "Tools"
       When click on submenu "Event triggers"
       Then verify text "Results"
       When click on button "Create event trigger"
       Then verify text "Information"
       Then generate unique name starts with "Event" and store in "Eventname"
       Then enter "* Event trigger name" "Eventname"
       Then enter "Description" "USE_EMBREModification_Description"
       When click on input "* Organisation" and enter value "USE_EMBREModification_Custname"
       Then select dropdown "* Event metric" "USE_EMBREModification_Eventmetric4"
       Then select dropdown "* Entity type" "USE_EMBREModification_Entitytype2"
       Then select radiobutton "Yes" on position 2
       Then verify text "Configuration"
       Then select dropdown "* Monitoring level" "USE_EMBREModification_Monitoringlevel2"
       Then select dropdown "* Required state" "USE_EMBREModification_Requiredstate1"
       Then click on link "* Monitoring level"
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod1"
       Then select radiobutton "Maximum Usage"
       Then enter "* Threshold value" "USE_EMBREModification_Throesholdvalue"
       Then select dropdown "* Threshold value" "USE_EMBREModification_Threshold3"
       Then select radiobutton "Enabled"
       Then select check box "Warning"
       Then select check box "Immediate email"
       Then select check box "Daily report"
       Then select dropdown "* Device action" "USE_EMBREModification_Deviceaction1"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created!"

       When click on link "USE_ADMIN_Platform"
       When click on link "USE_ADMIN_Opco"
#    Mobile part - Data

       Given select mobile "mobile2"
       When launch mobile app "youtube"
       Then verify text "Home" on mobile
       Then click on mobile icon "Search"
       Then tap on enter key on mobile
       Then enter "Search YouTube" "java" on mobile
       When click on mobile link "Java Programming"

#    Reporting
       When click on menu "Reporting"
       When click on submenu "Reports"
       Then verify text "Reports"
       Then select dropdown "Report family" "All"
       Then select dropdown "* Report" "USE_EMBREModification_Reporttype"
       Then select dropdown "* Period" "Today"
       Then select dropdown "* Customer" "USE_EMBREModification_Custname"
       Then select dropdown "* Format" "CSV"
       When click on button "Generate"
##    Content of file need to verify here
       Then verify filetext "Eventname" in downloaded file "csv"

       Then logout