@QualitySystemManagement
Feature:QualitySystemManagement

    @TC_ManageSystem_001_Create_RoamingGroup
      Scenario:001_Verify that Platform User can create a new Roaming Group



        Given test case starts
        Given browser is open
        Then login
        When click on link "E2Eopco as Operator Administrator"
        Then verify text "Platform as Platform Administrator"
        When click on link "Platform as Platform Administrator"
        When click on menu "Administration"
        Then verify text "Roaming groups"
        When click on submenu "Roaming groups"
        Then wait for 5 seconds
        Then verify text "Roaming groups"
        When click on button "Create roaming group"
        Then verify text "Roaming group details"
        Then generate unique name starts with "Auto_" and store in "RanName"
        Then enter "Roaming group name" "RanName"
        Then enter "Description" "SampleDescription"
        Then select dropdown "GHLR group" "LocalSims_GROUP"
        When click on button "Next"
        Then verify text "Please confirm the following data."
        When click on button "Create"
        Then verify text "was successfully created."
        When click on button "Go to roaming groups"
        Then verify text "Roaming groups"
        Then enter "Roaming group" "RanName"
        When click on button "Search"
        Then verify text "matching result(s)."
        Then logout

    @TC_ManageSystem_003_Search_RoamingGroup
      Scenario:003_Verify that Platform user can view a Specific Roaming Area


        Given test case starts
        Given browser is open
        Then login
        When click on link "E2Eopco as Operator Administrator"
        Then verify text "Platform as Platform Administrator"
        When click on link "Platform as Platform Administrator"
        When click on menu "Administration"
        Then verify text "Roaming groups"
        When click on submenu "Roaming groups"
        Then wait for 5 seconds
        Then verify text "Roaming groups"
        When click on button "Create roaming group"
        Then verify text "Roaming group details"
        Then generate unique name starts with "Auto_" and store in "RanName"
        Then enter "Roaming group name" "RanName"
        Then enter "Description" "SampleDescription"
        Then select dropdown "GHLR group" "LocalSims_GROUP"
        When click on button "Next"
        Then verify text "Please confirm the following data."
        When click on button "Create"
        Then verify text "was successfully created."
        When click on button "Go to roaming groups"
        Then verify text "Roaming groups"
        Then enter "Roaming group" "RanName"
        When click on button "Search"
        Then verify text "matching result(s)."
        Then enter "Description" "SampleDescription"
        When click on button "Search"
        Then verify text "matching result(s)."
        Then verify text "SampleDescription"
        Then verify text "LocalSims_GROUP"
#        |type|value|
#        |link|RanName|
#        |statictext|SampleDescription|
#        |statictext|LocalSims_GROUP|
        Then logout




    @TC_ManageSystem_006_Create_AAAClient
      Scenario:006_Verify that Platform User can Create a new AAA client Global M2M Platform.

        Given test case starts
        Given browser is open
        Then login
        When click on link "E2Eopco as Operator Administrator"
        Then verify text "Platform as Platform Administrator"
        When click on link "Platform as Platform Administrator"
        When click on menu "Administration"
        Then verify text "AAA clients"
        When click on submenu "AAA clients"
        Then verify text "AAA clients"
        When click on button "Create AAA client"
        Then verify text "AAA client name"
        Then generate unique name starts with "Auto_" and store in "RanName"
        Then enter "AAA client name" "RanName"
        Then enter "Description" "SampleDescription"
        Then select dropdown "Country" "Germany"
        Then select radiobutton "GGSN"

        Then generate "2" random numbers and store in "D_No2"
        Then generate "2" random numbers and store in "D_No3"
        Then generate "2" random numbers and store in "D_No4"
        Then join below strings and store in "RandomDiameter"
          |strings|
          |10|
          |.|
          |D_No2|
          |.|
          |D_No3|
          |.|
          |D_No4|
        Then enter "Diameter IP address" "RandomDiameter"

        Then generate "2" random numbers and store in "R_No2"
        Then generate "2" random numbers and store in "R_No3"
        Then generate "2" random numbers and store in "R_No4"
        Then join below strings and store in "RandomRadius"
          |strings|
          |10|
          |.|
          |R_No2|
          |.|
          |R_No3|
          |.|
          |R_No4|

        Then enter "RADIUS IP address" "RandomRadius"


        Then enter "RADIUS IP password" "testing"
        When click on button "Next"
        Then verify text "Please confirm the following data."
        When click on button "Create"
        Then verify text "was successfully created!"
        When click on button "Go to AAA clients"
        Then verify text "AAA clients"
        Then enter "AAA client" "RanName"
        When click on button "Search"
        Then verify text "matching result(s)."
        Then logout

    @TC_ManageSystem_008_View_AAAClient
      Scenario:008_Verify that Platform user can View AAA client Global M2M Platform.



        Given test case starts
        Given browser is open
        Then login
        When click on link "E2Eopco as Operator Administrator"
        Then verify text "Platform as Platform Administrator"
        When click on link "Platform as Platform Administrator"
        When click on menu "Administration"
        Then verify text "AAA clients"
        When click on submenu "AAA clients"
        Then verify text "AAA clients"
        Then enter "AAA client" "AAATester"
        When click on button "Search"
        Then verify text "matching result(s)."
        Then verify text "AAA client"
        Then verify text "Description"
        Then verify text "Country"
        Then verify text "Client type"

#        Then verify
#        |type|value|
#        |statictext|AAA client|
#        |statictext|Description|
#        |statictext|Country|
#        |statictext|Client type|

        #When click on button "Next"
        Then verify text "Diameter IP address"
        Then verify text "RADIUS IP address"
#        |type|value|
#        |statictext|Diameter IP address|
#        |statictext|RADIUS IP address|
        Then logout

    @TC_ManageSystem_009_Search_AAAClient
      Scenario:009_Verify that Platform User can search to View a specific AAA client


        Given test case starts
        Given browser is open
        Then login
        When click on link "E2Eopco as Operator Administrator"
        Then verify text "Platform as Platform Administrator"
        When click on link "Platform as Platform Administrator"
        When click on menu "Administration"
        Then verify text "AAA clients"
        When click on submenu "AAA clients"
        Then verify text "AAA clients"
        When click on button "Create AAA client"
        Then verify text "AAA client name"
        Then generate unique name starts with "Auto_" and store in "RanName"
        Then enter "AAA client name" "RanName"
        Then enter "Description" "SampleDescription"
        Then select dropdown "Country" "Germany"
        Then select radiobutton "GGSN"

        Then generate "2" random numbers and store in "D_No2"
        Then generate "2" random numbers and store in "D_No3"
        Then generate "2" random numbers and store in "D_No4"
        Then join below strings and store in "RandomDiameter"
          |strings|
          |10|
          |.|
          |D_No2|
          |.|
          |D_No3|
          |.|
          |D_No4|
        Then enter "Diameter IP address" "RandomDiameter"

        Then generate "2" random numbers and store in "R_No2"
        Then generate "2" random numbers and store in "R_No3"
        Then generate "2" random numbers and store in "R_No4"
        Then join below strings and store in "RandomRadius"
          |strings|
          |10|
          |.|
          |R_No2|
          |.|
          |R_No3|
          |.|
          |R_No4|

        Then enter "RADIUS IP address" "RandomRadius"


        Then enter "RADIUS IP password" "testing"
        When click on button "Next"
        Then verify text "Please confirm the following data."
        When click on button "Create"
        Then verify text "was successfully created!"
        When click on button "Go to AAA clients"
        Then verify text "AAA clients"
        Then enter "AAA client" "RanName"
        When click on button "Search"
        Then verify text "1 matching result(s)."
        Then verify text "Germany"
        Then verify text "GGSN"
        Then verify text "RandomDiameter"
        Then verify text "RandomRadius"
#        |type|value|
#        |link|RanName|
#        |statictext|United Kingdom|
#        |statictext|GGSN|
#        |statictext|RandomDiameter|
#        |statictext|RandomRadius|
        Then logout

    @TC_ManageSystem_012_Create_GHLRTemplate
      Scenario:012_Verify that Platform User can Create a new Generic GHLR Template


        Given test case starts
        Given browser is open
        Then login
        When click on link "E2Eopco as Operator Administrator"
        Then verify text "Platform as Platform Administrator"
        When click on link "Platform as Platform Administrator"
        When click on menu "Administration"
        Then verify text "GHLR templates"
        When click on submenu "GHLR templates"
        Then verify text "GHLR templates"
        When click on button "Create GHLR template"
        Then verify text "GHLR template details"
        Then generate unique name starts with "Auto_" and store in "RanName"
        Then enter "GHLR template name" "RanName"
        Then enter "Description" "SampleDescription"
        Then select dropdown "Group" "BrazilHLR_GROUP"
        Then select radiobutton "Yes"


        When click on button "Next"
        Then verify text "Please confirm the following data."
        When click on button "Create"
        Then verify text "was successfully created!"
        When click on button "Go to GHLR templates"
        Then verify text "GHLR templates"
        Then enter "GHLR template" "RanName"
        When click on button "Search"
        Then verify text "matching result(s)."
        Then logout


    @TC_ManageSystem_013_Create_CSDB_GHLRTemplate
      Scenario:013_Verify that Platform User can create a new CSDB GHLR Template

        Given test case starts
        Given browser is open
        Then login
        When click on link "E2Eopco as Operator Administrator"
        Then verify text "Platform as Platform Administrator"
        When click on link "Platform as Platform Administrator"
        When click on menu "Administration"
        Then verify text "GHLR templates"
        When click on submenu "GHLR templates"
        Then verify text "GHLR templates"
        When click on button "Create GHLR template"
        Then verify text "GHLR template details"
        Then generate unique name starts with "Auto_" and store in "RanName"
        Then enter "GHLR template name" "RanName"
        Then enter "Description" "SampleDescription"
        Then select dropdown "Group" "CSDB_GROUP"
        Then select radiobutton "Yes"
        Then enter "Subscription" "12345"
        Then enter "CAMEL Services Profile" "54321"


        When click on button "Next"
        Then verify text "Please confirm the following data."
        When click on button "Create"
        Then verify text "was successfully created!"
        When click on button "Go to GHLR templates"
        Then verify text "GHLR templates"
        Then enter "GHLR template" "RanName"
        When click on button "Search"
        Then verify text "matching result(s)."
        Then logout

    @TC_ManageSystem_004_Search_NonExistingRoamingGroup
      Scenario:Verify that No Results are displayed when Platform User try to search a non existing Roaming Group



        Given test case starts
        Given browser is open
        Then login
        When click on link "E2Eopco as Operator Administrator"
        Then verify text "Platform as Platform Administrator"
        When click on link "Platform as Platform Administrator"
        When click on menu "Administration"
        Then verify text "Roaming groups"
        When click on submenu "Roaming groups"
        Then wait for 5 seconds
        Then verify text "Roaming groups"

        Then enter "Roaming group" "DoesNotExist"
        When click on button "Search"
        Then verify text "No results were found"
        Then enter "Roaming group" "Auto_"
        When click on button "Search"
        Then verify text "matching result(s)."
        Then enter "Description" "SampleDescription"
        When click on button "Search"
        Then verify text "matching result(s)."
        Then logout

    @TC_ManageSystem_010_Search_NonExistingAAAClient
      Scenario:Verify that No Results are displayed when Platform User trys to seach a non existing AAA Client


        Given test case starts
        Given browser is open
        Then login
        When click on link "E2Eopco as Operator Administrator"
        Then verify text "Platform as Platform Administrator"
        When click on link "Platform as Platform Administrator"
        When click on menu "Administration"
        Then verify text "AAA clients"
        When click on submenu "AAA clients"
        Then verify text "AAA clients"
        Then enter "AAA client" "DoesNotExist"
        When click on button "Search"
        Then verify text "No results were found"
        Then enter "AAA client" "Auto_"
        When click on button "Search"
        Then verify text "matching result(s)."
        Then verify
        |type|value|
        |statictext|AAA client|
        |statictext|Description|
        |statictext|Country|
        |statictext|Client type|

        When click on button "Next"
        Then verify
        |type|value|
        |statictext|Diameter IP address|
        |statictext|RADIUS IP address|
        Then logout

    @TC_ManageSystem_018_Create_SIMProfile
      Scenario:Verify that Platform user can create a new SIM Profile


        Given test case starts
        Given browser is open
        Then login
        When click on link "E2Eopco as Operator Administrator"
        Then verify text "Platform as Platform Administrator"
        When click on link "Platform as Platform Administrator"
        When click on menu "Administration"
        Then verify text "SIM profiles"
        When click on submenu "SIM profiles"
        Then verify text "SIM profiles"
        When click on button "Create SIM profile"
        Then verify text "SIM profile details"
        Then generate unique name starts with "Auto_" and store in "RanName"
        Then enter "SIM profile name" "RanName"
        Then enter "Description" "SampleDescription"
        Then select radiobutton "Inactive"
        Then select radiobutton "USIM"
        Then select dropdown "Algorithm" "1 - Not in use"
        Then select radiobutton "SIM chip"
        Then enter "Graphic profile" "Sample"
        Then select dropdown "Manufacturer" "Incard"
        Then select dropdown "eCall profile" "eCall capable"
        Then select dropdown "PLMN list" "Default"
        When click on button "Next"

        Then verify text "Please confirm the following data."
        When click on button "Create"
        Then verify text "was successfully created."
        When click on button "Go to SIM profiles"
        Then verify text "SIM profiles"
        Then enter "SIM profile" "RanName"
        When click on button "Search"
        Then verify text "1 matching result(s)."
        Then logout

