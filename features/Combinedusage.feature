@EventManagement_BREModification_CombinedUsage

  Feature: EventManagement - BREModification_CombinedUsage

    @R11.0_MR_GUI_Combined_Usage_Event_001
    Scenario:Test to verify the Combined Usage metric gets triggered upon breaching the event metric with data connection for Service profile group and No Device action


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
       Then select dropdown "* Entity type" "USE_EMBREModification_Entitytype3"
       Then select dropdown "* Service profile" "USE_EMBREModification_Serviceprofile"
       Then select radiobutton "Yes" on position 2
       Then verify text "Configuration"
       Then select dropdown "* Required state" "USE_EMBREModification_Requiredstate"
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod1"
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

       Then delete event
       Then logout




  @R11.0_MR_GUI_Combined_Usage_Event_006
    Scenario:Test to verify the Combined Usage metric gets triggered upon breaching the event metric with Voice MT for SIM Group and Change the Device state

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
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod2"
       Then select radiobutton "Maximum Usage"
       Then enter "* Threshold value" "USE_EMBREModification_Throesholdvalue"
       Then select radiobutton "Enabled"
       Then select check box "Warning"
       Then select check box "Immediate email"
       Then select check box "Daily report"
       Then select dropdown "* Device action" "USE_EMBREModification_Deviceaction2"
       Then select dropdown "state" "Inactive"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created!"

#    Mobile part - Voice MT

#    Mobile part 1

       Given select mobile "mobile3"
       When launch mobile app "PhoneDialer"
       Then from "USE_EMBREModification_CSdeviceID2" call No "USE_EMBREModification_CSdeviceMSISDN1"


#    Mobile part 2
       Given select mobile "mobile2"
       When launch mobile app "PhoneDialer"
       Then answer call from "USE_EMBREModification_CSdeviceID1"
       Then wait for 10 seconds
       Then end call from "USE_EMBREModification_CSdeviceID1"


#    Verification

#     Web part

       When click on menu "Devices"
       When click on submenu "All devices"
       Then enter textarea "IMSI" "USE_EMBREModification_IMSI"
       When click on button "Search"
       When click on link "USE_EMBREModification_IMSI"
       Then verify text "Inactive"

#    Immediate email verification requirement shared with Saurabh

       Then logout

  @R11.0_MR_GUI_Combined_Usage_Event_013
    Scenario:Test to verify the Combined Usage metric gets triggered upon breaching the event metric with SMS MT for Customer and state of the device gets changed

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
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod2"
       Then select radiobutton "Maximum Usage"
       Then enter "* Threshold value" "USE_EMBREModification_Throesholdvalue"
       Then select radiobutton "Enabled"
       Then select check box "Warning"
       Then select check box "Immediate email"
       Then select check box "Daily report"
       Then select dropdown "* Device action" "USE_EMBREModification_Deviceaction2"
       Then select dropdown "state" "Inactive"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created!"

#    Mobile part 1 - SMS MT

       When click on menu "Devices"
       When click on menu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_EMBREModification_IMSI"
       When click on button "Search"
       When click on link "USE_EMBREModification_IMSI"
       When click on link "Operations"
       When click on button "Send SMS"
       Then enter "* Sender's Number" "USE_EMBREModification_Shortcode"
       Then select dropdown "* Type" "USE_EMBREModification_Smstype"
       Then enter textarea "Message" "USE_EMBREModification_Messagebody"
       When click on button "Send"

#    Verification

#     Web part

       When click on menu "Devices"
       When click on submenu "All devices"
       Then enter textarea "IMSI" "USE_EMBREModification_IMSI"
       When click on button "Search"
       When click on link "USE_EMBREModification_IMSI"
       Then verify text "Inactive"

#    Immediate email verification requirement shared with Saurabh

       Then logout

  @R11.0_MR_GUI_Combined_Usage_Event_014
    Scenario:Test to verify the Combined Usage metric gets triggered upon breaching the event metric with SMS MO for Customer Service Profile

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
       Then select dropdown "* Entity type" "USE_EMBREModification_Entitytype3"
       Then select dropdown "* Service profile" "USE_EMBREModification_Serviceprofile"
       Then select radiobutton "Yes" on position 2
       Then verify text "Configuration"
       Then select dropdown "* Required state" "USE_EMBREModification_Requiredstate"
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod2"
       Then select radiobutton "Maximum Usage"
       Then enter "* Threshold value" "USE_EMBREModification_Throesholdvalue"
       Then select radiobutton "Enabled"
       Then select check box "Warning"
       Then select check box "Immediate email"
       Then select check box "Daily report"
       Then select dropdown "* Device action" "USE_EMBREModification_Deviceaction2"
       Then select dropdown "state" "Inactive"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created!"

#    Mobile part - SMS MO

       Given test case starts
       Given select mobile "mobile2"
       Given browser is open
       When launch mobile app "message"
       Then send sms "USE_EMBREModification_Message" from "USE_EMBREModification_IOTdeviceID" to "USE_EMBREModification_device"

#    Verification
#     Web Part

       When click on menu "Devices"
       When click on submenu "All devices"
       Then enter textarea "IMSI" "USE_EMBREModification_IMSI"
       When click on button "Search"
       When click on link "USE_EMBREModification_IMSI"
       Then verify text "Inactive"

#    Immediate email verification requirement shared with Saurabh

       Then logout

  @R11.0_MR_GUI_Combined_Usage_Event_017
    Scenario:Test to verify the Combined Usage metric gets triggered upon breaching the event metric with Packet Data and voice MT for Service Profile

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
       Then select dropdown "* Entity type" "USE_EMBREModification_Entitytype3"
       Then select dropdown "* Service profile" "USE_EMBREModification_Serviceprofile"
       Then select radiobutton "Yes" on position 2
       Then verify text "Configuration"
       Then select dropdown "* Required state" "USE_EMBREModification_Requiredstate"
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod1"
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

#    Mobile part - Voice MT

#    Mobile part 1

       Given select mobile "mobile3"
       When launch mobile app "PhoneDialer"
       Then from "USE_EMBREModification_CSdeviceID2" call No "USE_EMBREModification_CSdeviceMSISDN1"


#    Mobile part 2
       Given select mobile "mobile2"
       When launch mobile app "PhoneDialer"
       Then answer call from "USE_EMBREModification_CSdeviceID1"
       Then wait for 10 seconds
       Then end call from "USE_EMBREModification_CSdeviceID1"

#    Verification

#    Immediate email verification requirement shared with Saurabh

       Then logout

  @R11.0_MR_GUI_Combined_Usage_Event_022
    Scenario:Test to verify Combined Usage metric gets triggered upon breaching the event with Packet Data and Voice MO for customer and SIM moves to another CSP

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
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod1"
       Then select radiobutton "Maximum Usage"
       Then enter "* Threshold value" "USE_EMBREModification_Throesholdvalue"
       Then select radiobutton "Enabled"
       Then select check box "Warning"
       Then select check box "Immediate email"
       Then select check box "Daily report"
       Then select dropdown "* Device action" "USE_EMBREModification_Deviceaction3"
       Then select dropdown "Service profile" "USE_EMBREModification_NewServiceprofile"
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

#    Immediate email verification requirement shared with Saurabh

#     Web verification
       When click on menu "Devices"
       When click on submenu "All devices"
       Then enter textarea "IMSI" "USE_EMBREModification_IMSI"
       When click on button "Search"
       When click on link "USE_EMBREModification_IMSI"
       Then verify text "USE_EMBREModification_NewServiceprofile"

#    Reporting
       When click on menu "Reporting"
       When click on submenu "Reports"
       Then verify text "Reports"
       Then select dropdown "Report family" "All"
       Then select dropdown "* Report" "USE_EMBREModification_Reporttype"
       Then select dropdown "* Period" "Today"
       Then select dropdown "* Customer" "USE_EMBREModification_Custname"
       Then select dropdown "* Format" "PDF"
       When click on button "Generate"
##    Content of file need to verify here
       Then verify filetext "Eventname" in downloaded file "pdf"

       Then logout


  @R11.0_MR_GUI_Combined_Usage_Event_027
    Scenario:Test to verify Combined Usage metric gets triggered upon breaching the event with Packet Data and SMS MT for Customer

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
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod2"
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

#    Mobile part 1 - SMS MT

       When click on menu "Devices"
       When click on menu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_EMBREModification_IMSI"
       When click on button "Search"
       When click on link "USE_EMBREModification_IMSI"
       When click on link "Operations"
       When click on button "Send SMS"
       Then enter "* Sender's Number" "USE_EMBREModification_Shortcode"
       Then select dropdown "* Type" "USE_EMBREModification_Smstype"
       Then enter textarea "Message" "USE_EMBREModification_Messagebody"
       When click on button "Send"

#    Verification

#    Immediate email verification requirement shared with Saurabh

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



  @R11.0_MR_GUI_Combined_Usage_Event_028
    Scenario:Test to verify Combined Usage metric gets triggered upon breaching the event with Voice MT and SMS MT for SIM Group and the SIM state gets changed

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
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod2"
       Then select radiobutton "Maximum Usage"
       Then enter "* Threshold value" "USE_EMBREModification_Throesholdvalue"
       Then select radiobutton "Enabled"
       Then select check box "Warning"
       Then select check box "Immediate email"
       Then select check box "Daily report"
       Then select dropdown "* Device action" "USE_EMBREModification_Deviceaction2"
       Then select dropdown "state" "Inactive"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created!"

#    Mobile part - Voice MT

#    Mobile part 1

       Given select mobile "mobile3"
       When launch mobile app "PhoneDialer"
       Then from "USE_EMBREModification_CSdeviceID2" call No "USE_EMBREModification_CSdeviceMSISDN1"


#    Mobile part 2
       Given select mobile "mobile2"
       When launch mobile app "PhoneDialer"
       Then answer call from "USE_EMBREModification_CSdeviceID1"
       Then wait for 10 seconds
       Then end call from "USE_EMBREModification_CSdeviceID1"

#    Mobile part - SMS MT

       When click on menu "Devices"
       When click on menu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_EMBREModification_IMSI"
       When click on button "Search"
       When click on link "USE_EMBREModification_IMSI"
       When click on link "Operations"
       When click on button "Send SMS"
       Then enter "* Sender's Number" "USE_EMBREModification_Shortcode"
       Then select dropdown "* Type" "USE_EMBREModification_Smstype"
       Then enter textarea "Message" "USE_EMBREModification_Messagebody"
       When click on button "Send"

#    Verification

#     Web part - Device state

       When click on menu "Devices"
       When click on submenu "All devices"
       Then enter textarea "IMSI" "USE_EMBREModification_IMSI"
       When click on button "Search"
       When click on link "USE_EMBREModification_IMSI"
       Then verify text "Inactive"

#    Immediate email verification requirement shared with Saurabh

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


  @R11.0_MR_GUI_Combined_Usage_Event_030
    Scenario:Test to verify Combined Usage metric gets triggered upon breaching the event with Voice MO and SMS MO for service profile

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
       Then select dropdown "* Entity type" "USE_EMBREModification_Entitytype3"
       Then select dropdown "* Service profile" "USE_EMBREModification_Serviceprofile"
       Then select radiobutton "Yes" on position 2
       Then verify text "Configuration"
       Then select dropdown "* Required state" "USE_EMBREModification_Requiredstate"
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod1"
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

#    Mobile part - SMS MO

       Given test case starts
       Given select mobile "mobile2"
       Given browser is open
       When launch mobile app "message"
       Then send sms "USE_EMBREModification_Message" from "USE_EMBREModification_IOTdeviceID" to "USE_EMBREModification_device"

#    Verification

#    Immediate email verification requirement shared with Saurabh

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

  @R11.0_MR_GUI_Combined_Usage_Event_033
    Scenario:Test to verify Combined Usage metric gets triggered upon breaching the event with Data, Voice and SMS events for service profile

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
       Then select dropdown "* Entity type" "USE_EMBREModification_Entitytype3"
       Then select dropdown "* Service profile" "USE_EMBREModification_Serviceprofile"
       Then select radiobutton "Yes" on position 2
       Then verify text "Configuration"
       Then select dropdown "* Required state" "USE_EMBREModification_Requiredstate"
       Then select dropdown "* Monitoring period" "USE_EMBREModification_Monitoringperiod1"
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

#    Mobile part - SMS MT

       When click on menu "Devices"
       When click on menu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_EMBREModification_IMSI"
       When click on button "Search"
       When click on link "USE_EMBREModification_IMSI"
       When click on link "Operations"
       When click on button "Send SMS"
       Then enter "* Sender's Number" "USE_EMBREModification_Shortcode"
       Then select dropdown "* Type" "USE_EMBREModification_Smstype"
       Then enter textarea "Message" "USE_EMBREModification_Messagebody"
       When click on button "Send"

#    Verification

#    Immediate email verification requirement shared with Saurabh

       Then delete event
       Then logout