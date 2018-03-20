@PlatformOpCoEnablement

  Feature: Platform OpCo Enablement

    @REG_R10.1_GUI_DMB-160_001
    Scenario:Test to verify that a field Organisation Sub Type is saved when a contracting opco is created.

       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       When click on link "USE_ADMIN_Platform"
       When click on menu "Administration"
       When click on submenu "Operators"
       Then verify text "Results"
       When click on link "Create organisation"
       When click on button "Create operator"
       Then verify text "Information"
       Then generate unique name starts with "OpCo" and store in "OpConame"
       Then enter "* Code" "OpConame"
       Then enter "* Description" "Description"
       Then select dropdown "* Type" "USE_PlatformOpCoEnablement_Type"
       When click on input "* Parent Organisation" and enter value "Platform"
       Then select dropdown "* Country" "USE_PlatformOpCoEnablement_Country"
       Then select dropdown "* Primary SIM identifier" "IMSI"
       When click on button "Next"
       Then verify text "Network"
       Then enter "* MCC-MNC" "USE_PlatformOpCoEnablement_MCCMNC"
       Then select radiobutton "Default"
       Then enter "* TADIG code" "USE_PlatformOpCoEnablement_TADIGcode"
       Then verify text "API Configuration"
       Then select dropdown "* API groups" "USE_PlatformOpCoEnablement_APIGroup"
       When click on button "Next"
       Then verify text "Available reports"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created."

#       Verification
       When click on menu "Administration"
       When click on submenu "Operators"
       Then verify text "Results"
       Then enter "Organisation" "OpConame"
       When click on button "Search"
       Then verify text "Results"
       Then verify
        | type  | value              |
        | text  | OpConame           |
        | text  | GDSP enabled operator |
       Then logout


    @REG_R10.1_GUI_DMB-160_002
    Scenario:Test to verify that a field Organisation Sub Type is saved when a virtual opco is created.

       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       When click on link "USE_ADMIN_Platform"
       When click on menu "Administration"
       When click on submenu "Operators"
       Then verify text "Results"
       When click on link "Create organisation"
       When click on button "Create operator"
       Then verify text "Information"
       Then generate unique name starts with "OpCo" and store in "OpConame"
       Then enter "* Code" "OpConame"
       Then enter "* Description" "Description"
       Then select dropdown "* Type" "USE_PlatformOpCoEnablement_VirtualType"
       When click on input "* Parent Organisation" and enter value "Platform"
       Then select dropdown "* Country" "USE_PlatformOpCoEnablement_Country"
       Then select dropdown "* Primary SIM identifier" "IMSI"
       When click on button "Next"
       Then verify text "Network"
       Then enter "* TADIG code" "USE_PlatformOpCoEnablement_TADIGcode"
       Then verify text "API Configuration"
       Then select dropdown "* API groups" "USE_PlatformOpCoEnablement_APIGroup"
       When click on button "Next"
       Then verify text "Available reports"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created."

#       Verification
       When click on menu "Administration"
       When click on submenu "Operators"
       Then verify text "Results"
       Then enter "Organisation" "OpConame"
       When click on button "Search"
       Then verify text "Results"
       Then verify
        | type  | value           |
        | text  | OpConame        |
        | text  | GDSP enabled virtual operator |
       Then logout

    @REG_R10_GUI_Platform_Opco_Enablement_010
    Scenario:Test to verify that Platform User can edit Reseller User Account on the Global M2M Platform and edit voice billing details

       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       When click on link "USE_ADMIN_Platform"
       When click on menu "Administration"
       When click on submenu "Resellers"
       Then verify text "Results"
       Then enter "Organisation" "USE_PlatformOpCoEnablement_ResOpConame"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_PlatformOpCoEnablement_ResOpConame"
       Then verify text "Information"
       When click on button "Edit"
       Then enter "* Code" "USE_PlatformOpCoEnablement_NewResOpConame"
       Then enter "* Description" "USE_PlatformOpCoEnablement_DescriptionUpdated"
       When click on button "Save"
       When click on tab "Details"
       Then verify text "Devices"
       When click on link "Contract"
       Then verify text "Contract Information"
       When click on button "Edit" on Position 1
       Then select dropdown "* Default billing period start day" "5"
       When click on button "Save"
       When click on button "Edit" on Position 2
       Then select radiobutton "Enabled"
       Then select dropdown "* Retention" "15 months"
       When click on button "Save"

#       Verification
       When click on menu "Administration"
       When click on submenu "Resellers"
       Then verify text "Results"
       Then enter "Organisation" "USE_PlatformOpCoEnablement_NewResOpConame"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_PlatformOpCoEnablement_NewResOpConame"
       Then verify text "Information"
       When click on tab "Details"
       Then verify text "Devices"
       When click on link "Contract"
       Then verify text "Contract Information"
       Then verify text "5"
       Then verify text "15 months"
       Then logout

    @REG_R10_GUI_Platform_Opco_enablement_021
    Scenario:Test to verify the DELETE functionality for Mcc-Mnc for a serving OpCo.

       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       When click on link "USE_ADMIN_Platform"
       When click on menu "Administration"
       When click on submenu "Operators"
       Then verify text "Results"
       Then enter "Organisation" "USE_PlatformOpCoEnablement_OpConame"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_PlatformOpCoEnablement_OpConame"
       Then verify text "Information"
       When click on tab "Details"
       Then verify text "Devices"
       When click on link "Network"
       Then verify text "Network"
       When click on button "Edit" on Position 1
#       Then enter "* MCC-MNC" "54321"
       When click on button "MCCMNC Plus"
       Then enter "* MCC-MNC" "54321" on position 2
#       Then select radiobutton "Default"
       When click on button "Save"
       When click on button "Edit" on Position 1
#       Requested Vipin for new requirment

       Then remove item "54321" by clicking close
       When click on button "Save"

#       Verification
       When click on menu "Administration"
       When click on submenu "Operators"
       Then verify text "Results"
       Then enter "Organisation" "USE_PlatformOpCoEnablement_OpConame"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_PlatformOpCoEnablement_OpConame"
       Then verify text "Information"
       When click on tab "Details"
       Then verify text "Devices"
       When click on link "Network"
       Then verify text "Network"
       Then verify no text "54321"
       Then logout


    @REG_R10_GUI_Platform_Opco_enablement_022
    Scenario:Test to verify the DELETE functionality for valid IP adress field.

       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       When click on link "USE_ADMIN_Platform"
       When click on menu "Administration"
       When click on submenu "Operators"
       Then verify text "Results"
       Then enter "Organisation" "USE_PlatformOpCoEnablement_OpConame"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_PlatformOpCoEnablement_OpConame"
       Then verify text "Information"
       When click on tab "Details"
       Then verify text "Devices"
       When click on link "Network"
       Then verify text "Network"
       When click on button "Edit" on Position 2
       Then enter "SGSN IP subnet" "USE_PlatformOpCoEnablement_IPAddress"
       When click on button "Save"
       Then verify text "Network"
       When click on button "Edit" on Position 2
       Then enter "SGSN IP subnet" "USE_PlatformOpCoEnablement_IPAddressDelete"
       When click on button "Save"

#       Verification
       When click on menu "Administration"
       When click on submenu "Resellers"
       Then verify text "Results"
       Then enter "Organisation" "USE_PlatformOpCoEnablement_OpConame"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_PlatformOpCoEnablement_OpConame"
       Then verify text "Information"
       When click on tab "Details"
       Then verify text "Devices"
       When click on link "Network"
       Then verify text "Network"
       Then verify no text "USE_PlatformOpCoEnablement_IPAddress"
       Then logout


    @REG_R10_GUI_Platform_Opco_enablement_023
    Scenario:Test to verify the DELETE functionality for the field GLOBAL TITLE for serving opco.

       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       When click on link "USE_ADMIN_Platform"
       When click on menu "Administration"
       When click on submenu "Operators"
       Then verify text "Results"
       Then enter "Organisation" "USE_PlatformOpCoEnablement_OpConame"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_PlatformOpCoEnablement_OpConame"
       Then verify text "Information"
       When click on button "Edit"
       Then enter "* Code" "USE_PlatformOpCoEnablement_OpConameDelete"
       When click on button "Save"

#       Verification
       When click on menu "Administration"
       When click on submenu "Resellers"
       Then verify text "Results"
       Then enter "Organisation" "USE_PlatformOpCoEnablement_OpConameDelete"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_PlatformOpCoEnablement_OpConameDelete"
       Then verify text "Information"

#       Restore
       When click on menu "Administration"
       When click on submenu "Operators"
       Then verify text "Results"
       Then enter "Organisation" "USE_PlatformOpCoEnablement_OpConameDelete"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_PlatformOpCoEnablement_OpConameDelete"
       Then verify text "Information"
       When click on button "Edit"
       Then enter "* Code" "USE_PlatformOpCoEnablement_OpConame"
       When click on button "Save"
       Then logout

    @REG_R5_GUI_Platform_Opco_Enablement_001
    Scenario:Test to verify that Platform User can create Serving Opco User Account on the Global M2M Platform

       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       When click on link "USE_ADMIN_Platform"
       When click on menu "Administration"
       When click on submenu "Operators"
       Then verify text "Results"
       When click on link "Create organisation"
       When click on button "Create operator"
       Then verify text "Information"
       Then generate unique name starts with "OpCo" and store in "OpConame"
       Then enter "* Code" "OpConame"
       Then enter "* Description" "Description"
       Then select dropdown "* Type" "USE_PlatformOpCoEnablement_Type"
       When click on input "* Parent Organisation" and enter value "Platform"
       Then select dropdown "* Country" "USE_PlatformOpCoEnablement_Country"
       Then select dropdown "* Primary SIM identifier" "IMSI"
       When click on button "Next"
       Then verify text "Network"
       Then enter "* MCC-MNC" "USE_PlatformOpCoEnablement_MCCMNC"
       Then select radiobutton "Default"
       Then enter "* TADIG code" "USE_PlatformOpCoEnablement_TADIGcode"
       Then verify text "API Configuration"
       Then select dropdown "* API groups" "USE_PlatformOpCoEnablement_APIGroup"
       When click on button "Next"
       Then verify text "Available reports"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created."
       Then logout


    @REG_R5_GUI_Platform_Opco_Enablement_002
    Scenario:Test to verify that Platform User can create Contracting Opco User Account on the Global M2M Platform

       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       When click on link "USE_ADMIN_Platform"
       When click on menu "Administration"
       When click on submenu "Operators"
       Then verify text "Results"
       When click on link "Create organisation"
       When click on button "Create operator"
       Then verify text "Information"
       Then generate unique name starts with "OpCo" and store in "OpConame"
       Then enter "* Code" "OpConame"
       Then enter "* Description" "Description"
       Then select dropdown "* Type" "USE_PlatformOpCoEnablement_Type"
       When click on input "* Parent Organisation" and enter value "Platform"
       Then select dropdown "* Country" "USE_PlatformOpCoEnablement_Country"
       Then select dropdown "* Primary SIM identifier" "IMSI"
       When click on button "Next"
       Then verify text "Network"
       Then enter "* MCC-MNC" "USE_PlatformOpCoEnablement_MCCMNC"
       Then select radiobutton "Default"
       Then enter "* TADIG code" "USE_PlatformOpCoEnablement_TADIGcode"
       Then verify text "API Configuration"
       Then select dropdown "* API groups" "USE_PlatformOpCoEnablement_APIGroup"
       When click on button "Next"
       Then verify text "Available reports"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created."
       Then logout


    @REG_R5_GUI_Platform_Opco_Enablement_003
    Scenario:Test to verify that Platform User can create Reseller User Account on the Global M2M Platform

       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       When click on link "USE_ADMIN_Platform"
       When click on menu "Administration"
       When click on submenu "Resellers"
       Then verify text "Results"
       When click on link "Create organisation"
       When click on button "Create reseller"
       Then verify text "Information"
       Then generate unique name starts with "Res" and store in "Resname"
       Then enter "* Code" "Resname"
       Then enter "* Description" "Description"
       When click on input "* Parent Organisation" and enter value "E2Eopco"
       Then select dropdown "* Country" "USE_PlatformOpCoEnablement_Country"
       Then select dropdown "* Primary SIM identifier" "IMSI"
       When click on button "Next"
       Then verify text "Network"
       Then enter "* TADIG code" "USE_PlatformOpCoEnablement_TADIGcode"
       Then verify text "API Configuration"
       Then select dropdown "* API groups" "USE_PlatformOpCoEnablement_ResAPIGroup"
       When click on button "Next"
       Then verify text "Available reports"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created."
       Then logout



    @REG_R5_GUI_Platform_Opco_Enablement_004
    Scenario:Test to verify that Platform User can maintain Contracting Opco User Account on the Global M2M Platform when web service throttling is enabled

       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       When click on link "USE_ADMIN_Platform"
       When click on menu "Administration"
       When click on submenu "Operators"
       Then verify text "Results"
       When click on link "Create organisation"
       When click on button "Create operator"
       Then verify text "Information"
       Then generate unique name starts with "OpCo" and store in "OpConame"
       Then enter "* Code" "OpConame"
       Then enter "* Description" "Description"
       Then select dropdown "* Type" "USE_PlatformOpCoEnablement_Type"
       When click on input "* Parent Organisation" and enter value "Platform"
       Then select dropdown "* Country" "USE_PlatformOpCoEnablement_Country"
       Then select dropdown "* Primary SIM identifier" "IMSI"
       When click on button "Next"
       Then verify text "Network"
       Then verify text "API Configuration"
       Then select dropdown "* API groups" "USE_PlatformOpCoEnablement_APIGroup"
       Then verify text "Network"
       Then enter "* MCC-MNC" "USE_PlatformOpCoEnablement_MCCMNC"
       Then select radiobutton "Default"
       Then enter "* TADIG code" "USE_PlatformOpCoEnablement_TADIGcode"
       Then verify text "API throttling"
       When click on link "Add new"
       Then enter values
         |rowname|colname|value|
         |API throttling |Web service |Select_Dropdown_getCustomerServiceProfileDetailsv4|
         |API throttling |Call limit  |Enter_Value_10|
         |API throttling |Period      |Select_Dropdown_hour|
       When click on button "Next"
       Then verify text "Available reports"
       When click on button "Next"
       Then verify text "Please confirm the following data."
       When click on button "Create"
       Then verify text "successfully created."
       Then logout



    @REG_R5_GUI_Platform_Opco_Enablement_011
    Scenario:Test to verify that Platform User can View Opco User Account on the Global M2M Platform

       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       When click on link "USE_ADMIN_Platform"
       When click on menu "Administration"
       When click on submenu "Operators"
       Then verify text "Results"
       Then enter "Organisation" "USE_PlatformOpCoEnablement_SimpleOpConame"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_PlatformOpCoEnablement_SimpleOpConame"
       Then verify text "Information"
       Then verify text "USE_PlatformOpCoEnablement_SimpleOpConame"
       Then logout

