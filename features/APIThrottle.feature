@QualitySystemManagement_APIThrottle

  Feature: APIThrottle

    @REG_R10_MR_GUI_API_Throttle_007
    Scenario:Test to verify that Platform User can configure API Throttling for a specific Opco

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
       When click on button "Edit" on Position 1
       Then verify text "Add new"
       When click on link "Add new"
       Then enter values
         |rowname|colname|value|
         |API throttling |Web service |Select_Dropdown_getCustomerServiceProfileDetailsv4|
         |API throttling |Call limit  |Enter_Value_10|
         |API throttling |Period      |Select_Dropdown_hour|
       When click on button "Save"


#       Verification
#       When click on link "Devices"
#       Then verify text "Devices"
#       When click on link "Web services"
       Then verify text "API configuration"
       Then verify text "USE_APIThrottle_Webservice"

#      Restore
#       When click on button "Edit" on Position 1
#       Then remove item "getCustomerServiceProfileDetailsv4" by clicking close
#       When click on button "Save"
#       Then verify text "None"
       Then logout

    @REG_R10_MR_GUI_API_Throttle_010
    Scenario:Test to verify that Opco User can configure API Throttling for a specific Customer

       Given test case starts
       Given browser is open
       Then login
       When click on menu "Administration"
       When click on submenu "Customers"
       Then verify text "Results"
       Then enter "Organisation" "USE_APIThrottle_Custname"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_APIThrottle_Custname"
       Then verify text "Information"
       When click on tab "Details"
       Then verify text "Devices"
       When click on link "Web services"
       Then verify text "SOAP API configuration"
       When click on button "Edit" on Position 1
       Then select dropdown "* API groups" "USE_APIThrottle_CustAPIGroup"
       #When click on link "API throttling"
       Then verify text "Add new"
       When click on link "Add new"
       Then enter values
         |rowname|colname|value|
         |API throttling |Web service |Select_Dropdown_getDeviceHistory|
         |API throttling |Call limit  |Enter_Value_10|
         |API throttling |Period      |Select_Dropdown_hour|
       When click on button "Save"

#    Verification
#       When click on link "Devices"
#       Then verify text "Devices"
#       When click on link "Web services"
       Then verify text "SOAP API configuration"
       Then verify text "USE_APIThrottle_CustWebservice"

#      Restore
#       When click on button "Edit" on Position 1
#       Then remove item "MyAPI" by clicking close
#       Then remove item "getDeviceHistory" by clicking close
#       When click on button "Save"
#       Then verify text "None"
       Then logout

    @REG_R5_MR_GUI_API_Throttle_002
    Scenario:Test to verify that Platform User can Create new API Throttle rules to apply to selected System APIs at a per Customer, OpCo or System wide level.

       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       When click on link "USE_ADMIN_Platform"
       When click on menu "Administration"
       When click on submenu "API throttling"
       Then verify text "Results"
       When click on button "Create API throttling"
       Then verify text "Information"
       Then select dropdown "* Web service" "USE_APIThrottle_CreateWebservice"
       Then select dropdown "* Entity type" "USE_APIThrottle_Entitytype"
       Then enter "* Call limit" "10"
       Then select dropdown "* Period" "USE_APIThrottle_Period"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created!"
       Then logout

    @REG_R5_MR_GUI_API_Throttle_001
    Scenario:Test to verify that Platform User can Deactivate an existing API Throttle Rule

       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       When click on link "USE_ADMIN_Platform"
       When click on menu "Administration"
       When click on submenu "API throttling"
       Then verify text "Results"
       Then select dropdown "Web service" "USE_APIThrottle_CreateWebservice"
       When click on button "Search"
       Then verify text "Results"
       Then click on results based on below criteria
         |values|
         |setSimDetails|
         |10|

       Then verify text "Information"
       When click on button "Delete API throttling"
       Then verify text "delete API throttling"
       When click on button "Delete"
       Then verify text "successfully deleted!"
       Then logout


    @REG_R6_MR_GUI_API_Throttle_004
    Scenario:Test to verify that Platform User can View an existing API Throttle Rule

       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       When click on link "USE_ADMIN_Platform"
       When click on menu "Administration"
       When click on submenu "API throttling"
       Then verify text "Results"
       Then select dropdown "Web service" "USE_APIThrottle_WebserviceCreateuser"
       When click on button "Search"
       Then verify text "Results"
       Then click on results based on below criteria
         |values|
         |createUser|
         |12|

       Then verify text "Information"
       Then verify text "Web service"
       Then verify text "Entity type"
       Then verify text "Call limit"
       Then verify text "Period"
       Then logout


    @REG_R9.1_MR_GUI_API_Throttle_005
    Scenario:Test to verify that system identifies error when Platform User tries creating new API Throttle rules providing invalid details

       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       When click on link "USE_ADMIN_Platform"
       When click on menu "Administration"
       When click on submenu "API throttling"
       Then verify text "Results"
       When click on button "Create API throttling"
       Then verify text "Information"
       Then select dropdown "* Web service" "USE_APIThrottle_CreateWebservice"
       Then select dropdown "* Entity type" "USE_APIThrottle_Entitytype"
       Then enter "* Call limit" "USE_APIThrottle_WrongcallLimit"
       Then select dropdown "* Period" "USE_APIThrottle_Period"
       When click on button "Next"
       Then verify text "Please enter a valid number"
       Then enter "* Call limit" "USE_APIThrottle_callLimit"
       When click on button "Next"
       Then verify no text "Please enter a valid number"
       Then logout
