@EventManagement_BREModification_MonthlyMonitoringPeriodEnhancements

  Feature: EventManagement - BREModification_Monthly Monitoring Period Enhancements

    @R11.0_MR_GUI_Monthly_Monitoring_Period_Enhancements_R11.0_GUI_MM_007
    Scenario:Test to verify whether opco user can create Event for Voice Duration with Monitoring period as Annual and entity as Customer

       Given test case starts
       Given browser is open
       Then login
       When click on menu "Tools"
       When click on submenu "Event triggers"
       Then verify text "Results"
       When click on button "Create event trigger"
       Then verify text "Information"
       Then generate unique name starts with "Event" and store in "Eventname"
       Then enter "* Event trigger name" "Eventname"
       Then enter "Description" "USE_EMBREModification_Description"
       When click on input "* Organisation" and enter value "USE_EMBREModification_Custname"
       Then select dropdown "* Event metric" "USE_EMBREModification_Eventmetric1"
       Then select dropdown "* Entity type" "USE_EMBREModification_Entitytype2"
       Then select radiobutton "Yes" on position 2
       Then verify text "Configuration"
       Then select dropdown "* Monitoring level" "USE_EMBREModification_Monitoringlevel1"
       Then select radiobutton "By number"
       Then enter "* On" "USE_EMBREModification_Onvalue"
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod5"
       Then select radiobutton "Maximum Usage"
       Then enter "* Threshold value" "USE_EMBREModification_Throesholdvalue"
       Then select dropdown "* Threshold value" "USE_EMBREModification_Threshold1"
       Then select radiobutton "Enabled"
       Then select check box "Warning"
       Then select check box "Immediate email"
       Then select check box "Daily report"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created!"

#    Mobile part 1 - Voice MO

       Given select mobile "mobile2"
       When launch mobile app "PhoneDialer"
       Then from "USE_EMBREModification_CSdeviceID2" call No "USE_EMBREModification_CSdeviceMSISDN1"

#    Mobile part 2
       Given select mobile "mobile3"
       When launch mobile app "PhoneDialer"
       Then answer call from "USE_EMBREModification_CSdeviceID1"
       Then wait for 10 seconds
       Then end call from "USE_EMBREModification_CSdeviceID1"

#    Verification
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

#    Immediate email verification requirement shared with Saurabh

       Then logout

  @R11.0_MR_GUI_Monthly_Monitoring_Period_Enhancements_R11.0_GUI_MM_008
    Scenario:Test to verify whether opco user can create Event Event for Packet Data Volumes (Bytes In+ Out) with Monitoring period as Annual and entity as Service profile

       Given test case starts
       Given browser is open
       Then login
       When click on menu "Tools"
       When click on submenu "Event triggers"
       Then verify text "Results"
       When click on button "Create event trigger"
       Then verify text "Information"
       Then generate unique name starts with "Event" and store in "Eventname"
       Then enter "* Event trigger name" "Eventname"
       Then enter "Description" "USE_EMBREModification_Description"
       When click on input "* Organisation" and enter value "USE_EMBREModification_Custname"
       Then select dropdown "* Event metric" "USE_EMBREModification_Eventmetric2"
       Then select dropdown "* Entity type" "USE_EMBREModification_Entitytype3"
       Then select dropdown "* Service profile" "USE_EMBREModification_Serviceprofile"
       Then select radiobutton "Yes" on position 2
       Then verify text "Configuration"
       Then select dropdown "* Monitoring level" "USE_EMBREModification_Monitoringlevel3"
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod5"
       Then select radiobutton "Maximum Usage"
       Then enter "* Threshold value" "USE_EMBREModification_Throesholdvalue"
       Then select dropdown "* Threshold value" "USE_EMBREModification_Threshold3"
       Then select radiobutton "Enabled"
       Then select check box "Warning"
       Then select check box "Immediate email"
       Then select check box "Daily report"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created!"

#    Mobile part - Data

       Given select mobile "mobile2"
       When launch mobile app "youtube"
       Then verify text "Home" on mobile
       Then click on mobile icon "Search"
       Then tap on enter key on mobile
       Then enter "Search YouTube" "java" on mobile
       When click on mobile link "Java Programming"

#    Verification
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

#    Immediate email verification requirement shared with Saurabh

       Then logout


  @R11.0_MR_GUI_Monthly_Monitoring_Period_Enhancements_R11.0_GUI_MM_010
    Scenario:Test to verify whether opco user can create Event for API Call Success Percentage with Monitoring period as Six-Monthly and entity as CSP

       Given test case starts
       Given browser is open
       Then login
       When click on menu "Tools"
       When click on submenu "Event triggers"
       Then verify text "Results"
       When click on button "Create event trigger"
       Then verify text "Information"
       Then generate unique name starts with "Event" and store in "Eventname"
       Then enter "* Event trigger name" "Eventname"
       Then enter "Description" "USE_EMBREModification_Description"
       When click on input "* Organisation" and enter value "USE_EMBREModification_Custname"
       Then select dropdown "* Event metric" "USE_EMBREModification_Eventmetric3"
       Then select dropdown "* Entity type" "USE_EMBREModification_Entitytype3"
       Then select dropdown "* Service profile" "USE_EMBREModification_Serviceprofile"
       Then select radiobutton "Yes" on position 2
       Then verify text "Configuration"
       Then select dropdown "* Monitoring level" "USE_EMBREModification_Monitoringlevel2"
       Then select dropdown "* Required state" "USE_EMBREModification_Requiredstate"
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod6"
       Then enter "* Threshold value" "USE_EMBREModification_Throesholdvalue"
       Then select radiobutton "Enabled"
       Then select check box "Warning"
       Then select check box "Immediate email"
       Then select check box "Daily report"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created!"
       Then logout

  @R11.0_MR_GUI_Monthly_Monitoring_Period_Enhancements_R11.0_GUI_MM_011
    Scenario:Test to verify whether opco user can create Event Event for Packet Data Volume (Bytes In only) with Monitoring period as Quaterly and entity as APN

       Given test case starts
       Given browser is open
       Then login
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
       Then select dropdown "* Entity type" "USE_EMBREModification_Entitytype4"
       Then select dropdown "* APN" "USE_EMBREModification_APN"
       Then select radiobutton "Yes" on position 2
       Then verify text "Configuration"
       Then select dropdown "* Monitoring level" "USE_EMBREModification_Monitoringlevel1"
       Then select radiobutton "By number"
       Then enter "* On" "USE_EMBREModification_Onvalue"
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod2"
       Then select radiobutton "Maximum Usage"
       Then enter "* Threshold value" "USE_EMBREModification_Throesholdvalue"
       Then select dropdown "* Threshold value" "USE_EMBREModification_Threshold3"
       Then select radiobutton "Enabled"
       Then select check box "Warning"
       Then select check box "Immediate email"
       Then select check box "Daily report"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created!"

#    Mobile part - Data

       Given select mobile "mobile2"
       When launch mobile app "youtube"
       Then verify text "Home" on mobile
       Then click on mobile icon "Search"
       Then tap on enter key on mobile
       Then enter "Search YouTube" "java" on mobile
       When click on mobile link "Java Programming"

#    Verification
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

#    Immediate email verification requirement shared with Saurabh

       Then logout

  @R11.0_MR_GUI_Monthly_Monitoring_Period_Enhancements_R11.0_GUI_MM_012
    Scenario:Test to verify whether opco user can create Event for Voice Connections (Number)  with Monitoring period as Quaterly and entity as Customer

       Given test case starts
       Given browser is open
       Then login
       When click on menu "Tools"
       When click on submenu "Event triggers"
       Then verify text "Results"
       When click on button "Create event trigger"
       Then verify text "Information"
       Then generate unique name starts with "Event" and store in "Eventname"
       Then enter "* Event trigger name" "Eventname"
       Then enter "Description" "USE_EMBREModification_Description"
       When click on input "* Organisation" and enter value "USE_EMBREModification_Custname"
       Then select dropdown "* Event metric" "USE_EMBREModification_Eventmetric5"
       Then select dropdown "* Entity type" "USE_EMBREModification_Entitytype2"
       Then select radiobutton "Yes" on position 2
       Then verify text "Configuration"
       Then select dropdown "* Monitoring level" "USE_EMBREModification_Monitoringlevel2"
       Then select dropdown "* Required state" "USE_EMBREModification_Requiredstate"
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod7"
       Then select radiobutton "Maximum Usage"
       Then enter "* Threshold value" "USE_EMBREModification_Throesholdvalue"
       Then select radiobutton "Enabled"
       Then select check box "Warning"
       Then select check box "Immediate email"
       Then select check box "Daily report"
       Then select dropdown "* Device action" "USE_EMBREModification_Deviceaction1"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created!"

#    Mobile part 1 - Voice MO

       Given select mobile "mobile2"
       When launch mobile app "PhoneDialer"
       Then from "USE_EMBREModification_CSdeviceID2" call No "USE_EMBREModification_CSdeviceMSISDN1"

#    Mobile part 2
       Given select mobile "mobile3"
       When launch mobile app "PhoneDialer"
       Then answer call from "USE_EMBREModification_CSdeviceID1"
       Then wait for 10 seconds
       Then end call from "USE_EMBREModification_CSdeviceID1"


#    Verification
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

#    Immediate email verification requirement shared with Saurabh

       Then logout

  @R11.0_MR_GUI_Monthly_Monitoring_Period_Enhancements_R11.0_GUI_MM_015
    Scenario:Test to verify whether opco user can create Event Event for Combined Usage with Monitoring period as Annual and entity as SIM Group

       Given test case starts
       Given browser is open
       Then login
       When click on menu "Tools"
       When click on submenu "Event triggers"
       Then verify text "Results"
       When click on button "Create event trigger"
       Then verify text "Information"
       Then generate unique name starts with "Event" and store in "Eventname"
       Then enter "* Event trigger name" "Eventname"
       Then enter "Description" "USE_EMBREModification_Description"
       When click on input "* Organisation" and enter value "USE_EMBREModification_Custname"
       Then select dropdown "* Event metric" "USE_EMBREModification_Eventmetric"
       Then select dropdown "* Entity type" "USE_EMBREModification_Entitytype1"
       Then select dropdown "* SIM group" "USE_EMBREModification_SIMgroup"
       Then select radiobutton "Yes" on position 2
       Then verify text "Configuration"
       Then select dropdown "* Required state" "USE_EMBREModification_Requiredstate"
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod5"
       Then select radiobutton "Maximum Usage"
       Then enter "* Threshold value" "USE_EMBREModification_Throesholdvalue"
       Then select radiobutton "Enabled"
       Then select check box "Warning"
       Then select check box "Immediate email"
       Then select check box "Daily report"
       Then select dropdown "* Device action" "USE_EMBREModification_Deviceaction1"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created!"

#    Mobile part - Data

       Given select mobile "mobile2"
       When launch mobile app "youtube"
       Then verify text "Home" on mobile
       Then click on mobile icon "Search"
       Then tap on enter key on mobile
       Then enter "Search YouTube" "java" on mobile
       When click on mobile link "Java Programming"

#    Verification
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

#    Immediate email verification requirement shared with Saurabh

       Then logout

  @R11.0_MR_GUI_Monthly_Monitoring_Period_Enhancements_R11.0_GUI_MM_017
    Scenario:Test to verify whether opco user can create Event for SMS Delivery Notification success percentage with Monitoring period as Quaterly and entity as SIM group

       Given test case starts
       Given browser is open
       Then login
       When click on menu "Tools"
       When click on submenu "Event triggers"
       Then verify text "Results"
       When click on button "Create event trigger"
       Then verify text "Information"
       Then generate unique name starts with "Event" and store in "Eventname"
       Then enter "* Event trigger name" "Eventname"
       Then enter "Description" "USE_EMBREModification_Description"
       When click on input "* Organisation" and enter value "USE_EMBREModification_Custname"
       Then select dropdown "* Event metric" "USE_EMBREModification_Eventmetric6"
       Then select dropdown "* Entity type" "USE_EMBREModification_Entitytype1"
       Then select dropdown "* SIM group" "USE_EMBREModification_SIMgroup"
       Then select radiobutton "Yes" on position 2
       Then verify text "Configuration"
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod7"
       Then enter "* Threshold value" "USE_EMBREModification_Throesholdvalue"
       Then select radiobutton "Enabled"
       Then select check box "Warning"
       Then select check box "Immediate email"
       Then select check box "Daily report"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created!"
       Then logout

  @R11.0_MR_GUI_Monthly_Monitoring_Period_Enhancements_R11.0_GUI_MM_018
    Scenario:Test to verify whether opco user can create Event Event for SMS Delivery Notification success percentage with Monitoring period as Quaterly and entity as Service Profile and date defined according to Customer start date

       Given test case starts
       Given browser is open
       Then login
       When click on menu "Tools"
       When click on submenu "Event triggers"
       Then verify text "Results"
       When click on button "Create event trigger"
       Then verify text "Information"
       Then generate unique name starts with "Event" and store in "Eventname"
       Then enter "* Event trigger name" "Eventname"
       Then enter "Description" "USE_EMBREModification_Description"
       When click on input "* Organisation" and enter value "USE_EMBREModification_Custname"
       Then select dropdown "* Event metric" "USE_EMBREModification_Eventmetric6"
       Then select dropdown "* Entity type" "USE_EMBREModification_Entitytype3"
       Then select dropdown "* Service profile" "USE_EMBREModification_Serviceprofile"
       Then select radiobutton "Yes" on position 2
       Then verify text "Configuration"
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod7"
       Then enter "* Threshold value" "USE_EMBREModification_Throesholdvalue"
       Then select radiobutton "Enabled"
       Then select check box "Warning"
       Then select check box "Immediate email"
       Then select check box "Daily report"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created!"
       Then logout


  @R11.0_MR_GUI_Monthly_Monitoring_Period_Enhancements_R11.0_GUI_MM_019
    Scenario:Test to verify whether opco user can create Event for Voice Connections (Number) with Monitoring period as Monthly and entity as Customer and date defined according to Customer start date

       Given test case starts
       Given browser is open
       Then login
       When click on menu "Tools"
       When click on submenu "Event triggers"
       Then verify text "Results"
       When click on button "Create event trigger"
       Then verify text "Information"
       Then generate unique name starts with "Event" and store in "Eventname"
       Then enter "* Event trigger name" "Eventname"
       Then enter "Description" "USE_EMBREModification_Description"
       When click on input "* Organisation" and enter value "USE_EMBREModification_Custname"
       Then select dropdown "* Event metric" "USE_EMBREModification_Eventmetric5"
       Then select dropdown "* Entity type" "USE_EMBREModification_Entitytype2"
       Then select radiobutton "Yes" on position 2
       Then verify text "Configuration"
       Then select dropdown "* Monitoring level" "USE_EMBREModification_Monitoringlevel2"
       Then select dropdown "* Required state" "USE_EMBREModification_Requiredstate"
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod3"
       Then select radiobutton "Maximum Usage"
       Then enter "* Threshold value" "USE_EMBREModification_Throesholdvalue"
       Then select dropdown "* Threshold value" "USE_EMBREModification_Threshold3"
       Then select radiobutton "Enabled"
       Then select check box "Warning"
       Then select check box "Immediate email"
       Then select check box "Daily report"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created!"

#    Mobile part 1 - Voice MO

       Given select mobile "mobile2"
       When launch mobile app "PhoneDialer"
       Then from "USE_EMBREModification_CSdeviceID2" call No "USE_EMBREModification_CSdeviceMSISDN1"

#    Mobile part 2
       Given select mobile "mobile3"
       When launch mobile app "PhoneDialer"
       Then answer call from "USE_EMBREModification_CSdeviceID1"
       Then wait for 10 seconds
       Then end call from "USE_EMBREModification_CSdeviceID1"

#    Verification
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

#    Immediate email verification requirement shared with Saurabh

       Then logout

  @R11.0_MR_GUI_Monthly_Monitoring_Period_Enhancements_R11.0_GUI_MM_020
    Scenario:Test to verify whether opco user can create Event for Combined Usage with Monitoring period as yearly and entity as Customer and date defined according to Customer start date

       Given test case starts
       Given browser is open
       Then login
       When click on menu "Tools"
       When click on submenu "Event triggers"
       Then verify text "Results"
       When click on button "Create event trigger"
       Then verify text "Information"
       Then generate unique name starts with "Event" and store in "Eventname"
       Then enter "* Event trigger name" "Eventname"
       Then enter "Description" "USE_EMBREModification_Description"
       When click on input "* Organisation" and enter value "USE_EMBREModification_Custname"
       Then select dropdown "* Event metric" "USE_EMBREModification_Eventmetric"
       Then select dropdown "* Entity type" "USE_EMBREModification_Entitytype2"
       Then select radiobutton "Yes" on position 2
       Then verify text "Configuration"
       Then select dropdown "* Required state" "USE_EMBREModification_Requiredstate"
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod5"
       Then select radiobutton "Maximum Usage"
       Then enter "* Threshold value" "USE_EMBREModification_Throesholdvalue"
       Then select radiobutton "Enabled"
       Then select check box "Warning"
       Then select check box "Immediate email"
       Then select check box "Daily report"
       Then select dropdown "* Device action" "USE_EMBREModification_Deviceaction1"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created!"
       Then logout