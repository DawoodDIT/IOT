@EventManagement_OutboundWebserviceConfiguration

  Feature: EventManagement Outbound Webservice Configuration

    @REG_R7_Outbound_WebService_004
    Scenario:Test to verify that OpCo user can create Outbound web service

       Given test case starts
       Given browser is open
       Then login
       When click on menu "Administration"
       When click on submenu "Customers"
       Then verify text "Results"
       Then enter "Organisation" "USE_EMOutboundWebConfig_Custname"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_EMOutboundWebConfig_Custname"
       Then verify text "Information"
       When click on tab "Details"
       Then verify text "Devices"
       When click on link "Web services"
       Then verify text "SOAP API configuration"
       Then verify text "Outbound web service"
       When click on button "Webservice Plus"
       Then verify text "Outbound web service"
       Then generate unique name starts with "End" and store in "Endpointname"
       Then enter "* Endpoint" "Endpointname"
       Then enter "* Description" "USE_EMOutboundWebConfig_Description"
       Then enter "* URL" "USE_EMOutboundWebConfig_URL"
       Then enter "* Username" "USE_EMOutboundWebConfig_Username"
       Then enter "* Password" "USE_EMOutboundWebConfig_Password"
       Then select dropdown "* Web service supported" "USE_EMOutboundWebConfig_Supported"
       When click on button "Save"

#      Verification

       Then verify text "Endpointname"

#      Restore

       When click on button "Delete outbound webservice"
       When click on button "Yes"
       Then verify text "No Outbound web services created"
       Then verify no text "Endpointname"
       Then logout


    @REG_R7_Outbound_WebService_002
    Scenario:Test to verify that OpCo User can Edit an existing Outbound Web Service

       Given test case starts
       Given browser is open
       Then login
       When click on menu "Administration"
       When click on submenu "Customers"
       Then verify text "Results"
       Then enter "Organisation" "USE_EMOutboundWebConfig_Custname"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_EMOutboundWebConfig_Custname"
       Then verify text "Information"
       When click on tab "Details"
       Then verify text "Devices"
       When click on link "Web services"
       Then verify text "SOAP API configuration"
       Then verify text "Outbound web service"
       When click on button "Webservice Plus"
       Then verify text "Outbound web service"
       Then generate unique name starts with "End" and store in "Endpointname"
       Then enter "* Endpoint" "Endpointname"
       Then enter "* Description" "USE_EMOutboundWebConfig_Description"
       Then enter "* URL" "USE_EMOutboundWebConfig_URL"
       Then enter "* Username" "USE_EMOutboundWebConfig_Username"
       Then enter "* Password" "USE_EMOutboundWebConfig_Password"
       Then select dropdown "* Web service supported" "USE_EMOutboundWebConfig_Supported"
       When click on button "Save"
       Then verify text "Endpointname"

       When click on button "Edit" on position 3
       Then enter "* Username" "USE_EMOutboundWebConfig_NewUsername"
       Then enter "* Password" "USE_EMOutboundWebConfig_NewPassword"
       When click on button "Save"

#      Verification

       Then verify text "USE_EMOutboundWebConfig_NewUsername"

#      Restore

       When click on button "Delete outbound webservice"
       When click on button "Yes"
       Then verify text "No Outbound web services created"
       Then verify no text "Endpointname"
       Then logout



    @REG_R7_Outbound_WebService_001
    Scenario:Test to verify that OpCo User can delete an existing Outbound Web Service

       Given test case starts
       Given browser is open
       Then login
       When click on menu "Administration"
       When click on submenu "Customers"
       Then verify text "Results"
       Then enter "Organisation" "USE_EMOutboundWebConfig_Custname"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_EMOutboundWebConfig_Custname"
       Then verify text "Information"
       When click on tab "Details"
       Then verify text "Devices"
       When click on link "Web services"
       Then verify text "SOAP API configuration"
       Then verify text "Outbound web service"
       When click on button "Webservice Plus"
       Then verify text "Outbound web service"
       Then generate unique name starts with "End" and store in "Endpointname"
       Then enter "* Endpoint" "Endpointname"
       Then enter "* Description" "USE_EMOutboundWebConfig_Description"
       Then enter "* URL" "USE_EMOutboundWebConfig_URL"
       Then enter "* Username" "USE_EMOutboundWebConfig_Username"
       Then enter "* Password" "USE_EMOutboundWebConfig_Password"
       Then select dropdown "* Web service supported" "USE_EMOutboundWebConfig_Supported"
       When click on button "Save"
       Then verify text "Endpointname"

#      Verification

       When click on button "Delete outbound webservice"
       When click on button "Yes"
       Then verify text "No Outbound web services created"
       Then verify no text "Endpointname"
       Then logout
