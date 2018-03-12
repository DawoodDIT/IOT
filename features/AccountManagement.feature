@AccountManagement
Feature:AccountManagement

   @TC_AccountManagement_022_006_CreateContact
   Scenario:Test to verify that Customer User can add a contact to their contact list

      Given test case starts
      Given browser is open
      Then login
      When click on menu "Administration"
      Then verify text "My organisation"
      When click on submenu "My organisation"
      Then wait for 5 seconds
      Then verify text "Overview"
      When click on link "Details"
      Then verify text "Devices"
      When click on link "Contacts and notifications"
      Then verify text "Notifications"
      When click on button "AddContact"
      Then enter "Secondary contact number" "+441234567890"
      Then enter textarea "Address" "SampleAddress"
      When click on link "Save"
      Then verify text "This is a mandatory field"
      Then generate unique name starts with "Auto_" and store in "RanName"
      Then enter "* Name" "RanName"
      Then enter "* Primary contact number" "+440987654321"
      Then enter "* Email" "abc@gmail.com"
      Then wait for 10 seconds
      Then select check box "* Email"
      When click on link "Save"
      Then wait for 10 seconds
      Then verify text "RanName"
      Then logout


   @TC_AccountManagement_024_UserFilter
   Scenario:Verify that Customer user can view details for all the users associated with their account and is able to use the different filter options


      Given test case starts
      Given browser is open
      Then login
      When click on menu "Administration"
     Then verify text "Users"
      When click on submenu "Users"


      Then enter "Username" "USE_AccountManagement_admin"
      When click on button "searchUser"
      Then verify text "1 matching result(s)."
      #When click on button "clearFilters"
      When click on button "Clear fields"

      Then enter "Role" "Operator Support"
      Then wait for 5 seconds
      When click on search result "Operator Support"
      Then wait for 5 seconds
      When click on button "searchUser"
      Then verify text "matching result(s)."
      When click on button "clearFilters"
      When click on link "Remove All"
      Then select check box "Only directly related"
      Then select check box "Only directly related"

      Then enter "Name" "USE_AccountManagement_name"
      When click on button "searchUser"
      Then verify text "1 matching result(s)."
      When click on button "clearFilters"

      When click on button "clearFilters"
      Then select dropdown "Status" "Blocked"
      When click on button "searchUser"
      Then verify text "matching result(s)."
      When click on button "clearFilters"


      Then logout

   @TC_AccountManagement_002_UpdateUser_Admin
   Scenario:Test to verify that Customer User can maintain their own details


      Given test case starts
      Given browser is open
      Then login
      When click on menu "Administration"
     Then verify text "Users"
      When click on submenu "Users"


      Then enter "Username" "USE_AccountManagement_admin"
      When click on button "searchUser"
      When click on link "USE_AccountManagement_admin"
      When click on button "Edit"
      Then generate "12" random numbers and store in "RandomNum"
      Then join below strings and store in "randomPhoneNo"
          |strings|
          |+|
          |RandomNum|
      Then generate "5" random alphabets and store in "randomJob"
      Then enter "Mobile" "randomPhoneNo"
      Then enter "Job Title" "randomJob"
      When click on button "Save"
      Then wait for 60 seconds
      Then get value of "Mobile" and store in "newPhoneNo"
      Then verify if "newPhoneNo" "equal" "randomPhoneNo"
      Then get value of "Job Title" and store in "newJob"
      Then verify if "newJob" "equal" "randomJob"

      When click on menu "Administration"
      When click on submenu "My organisation"
      Then verify text "Overview"
      When click on link "Details"
      Then verify text "Devices"
      When click on link "Contacts and notifications"
      Then verify text "Notifications"


      When click on link "USE_AccountManagement_admin"
      When click on button "editContact"
      Then generate "12" random numbers and store in "RandomNum1"
      Then join below strings and store in "randomPhoneNo1"
          |strings|
          |+|
          |RandomNum1|
      Then generate "10" random alphabets and store in "randomAddress"
      Then enter "Secondary contact number" "randomPhoneNo1"
      Then enter textarea "Address" "randomAddress"
      When click on button "saveContact"
      Then wait for 60 seconds
      Then get value of "Secondary contact number" and store in "newPhoneNo1"
      Then verify if "newPhoneNo1" "equal" "randomPhoneNo1"
      Then get value of "Address" and store in "newAddress1"
      Then verify if "newAddress1" "equal" "randomAddress"



      Then logout

    @TC_AccountManagement_003_UpdateUser_NotAdmin
   Scenario:Test to verify that Customer User can maintain their own details when customer user has no admin rights

      Given test case starts
      Given browser is open
      Then login
      When click on menu "Administration"
      Then verify text "Users"
      When click on submenu "Users"


      Then enter "Username" "USE_AccountManagement_notAdmin"
      When click on button "searchUser"
      When click on link "USE_AccountManagement_notAdmin"
      When click on button "Edit"
      Then generate "12" random numbers and store in "RandomNum"
      Then join below strings and store in "randomPhoneNo"
          |strings|
          |+|
          |RandomNum|
      Then generate "5" random alphabets and store in "randomJob"
      Then enter "Mobile" "randomPhoneNo"
      Then enter "Job Title" "randomJob"
      When click on button "Save"
      Then wait for 60 seconds
      Then get value of "Mobile" and store in "newPhoneNo"
      Then verify if "newPhoneNo" "equal" "randomPhoneNo"
      Then get value of "Job Title" and store in "newJob"
      Then verify if "newJob" "equal" "randomJob"

      When click on menu "Administration"
      When click on submenu "My organisation"
      Then verify text "Overview"
      When click on link "Details"
      Then verify text "Devices"
      When click on link "Contacts and notifications"
      Then verify text "Notifications"


      When click on link "USE_AccountManagement_admin"
      When click on button "editContact"
      Then generate "12" random numbers and store in "RandomNum1"
      Then join below strings and store in "randomPhoneNo1"
          |strings|
          |+|
          |RandomNum1|
      Then generate "10" random alphabets and store in "randomAddress"
      Then enter "Secondary contact number" "randomPhoneNo1"
      Then enter textarea "Address" "randomAddress"
      When click on button "saveContact"
      Then wait for 60 seconds
      Then get value of "Secondary contact number" and store in "newPhoneNo1"
      Then verify if "newPhoneNo1" "equal" "randomPhoneNo1"
      Then get value of "Address" and store in "newAddress1"
      Then verify if "newAddress1" "equal" "randomAddress"



      Then logout

   @TC_AccountManagement_023_ValidateEmail
   Scenario:Test to verify the validity of email address when creating a contact.

      Given test case starts
      Given browser is open
      Then login
      When click on menu "Administration"
      Then verify text "My organisation"
      When click on submenu "My organisation"
      Then verify text "Overview"
      When click on link "Details"
      Then verify text "Devices"
      When click on link "Contacts and notifications"
      Then wait for 5 seconds
      Then verify text "Notifications"
      When click on button "AddContact"




      Then generate unique name starts with "Auto_" and store in "RanName"
      Then enter "* Name" "RanName"
      Then enter "* Primary contact number" "+440987654321"
      Then enter "Secondary contact number" "+441234567890"
      Then enter "* Email" "abc#gmail.com"
      Then enter textarea "Address" "SampleAddress"


     Then wait for 5 seconds

      When click on link "Save"
      Then verify text "Please enter a valid e-mail"
      Then enter "* Email" "abc@gmail.com"
      Then wait for 5 seconds
      Then select check box "* Email"
      When click on link "Save"
      Then wait for 10 seconds
      Then get value of "Name" and store in "newName"
      Then verify if "newName" "equal" "RanName"
      Then logout

   @TC_AccountManagement_044_CreateAPIGroup
   Scenario:Verify that Platform user can create a new SIM Profile


        Given test case starts
        Given browser is open
        Then login
        When click on link "PPVGE as Operator Administrator"
        Then verify text "Platform as Platform Administrator"
        When click on link "Platform as Platform Administrator"
        When click on menu "Administration"
        Then verify text "API groups"
        When click on submenu "API groups"
        Then verify text "Please use the search options on the left to search for API groups"
        When click on button "Create API group"
        Then verify text "API groups detail"
        Then generate unique name starts with "Auto_" and store in "RanName"
        Then enter "API group name" "RanName"
        Then enter "Description" "SampleDescription"
        Then select dropdown "Access level" "Platform"
        Then select dropdown "APIs" "createUser"
        When click on button "Next"

        Then verify text "Please confirm the following data."
        When click on button "Create"
        Then verify text "was successfully created!"
        When click on button "Go to API groups"
        Then verify text "API groups"
        Then enter "API group" "RanName"
        When click on button "Search"
        Then verify text "1 matching result(s)."

        When click on link "RanName"
        Then verify text "Information"
        When click on button "Edit"
        Then enter "Description" "Different"
        When click on button "Save"
        Then wait for 60 seconds
        Then get value of "Description" and store in "newDescription"
        Then verify if "newDescription" "equal" "Different"
        Then logout



   @TC_AccountManagement_014_ConfigureSearchResult
   Scenario:Verify that User can configure the fields that are presented when SIM Search functionality is used

        Given test case starts
        Given browser is open
        Then login
        When click on menu "Devices"
        Then verify text "All devices"
        When click on submenu "All devices"
        Then verify text "Results"
        Then wait for 5 seconds
        When click on button "hamBurgerBefore"
        When click on button "ICCID"
        When click on button "CSD MSISDN"
        When click on button "IMEI (assigned)"
        When click on button "Linked Device"
        When click on button "Custom attribute 1"
        When click on button "Custom attribute 2"
        When click on button "Custom attribute 3"
        When click on button "Custom attribute 4"
        When click on button "Custom attribute 5"
        When click on button "Data session status"
        When click on button "Tariff"
        When click on button "VPN group"
        When click on button "Created on"
        When click on button "First used on"
        When click on button "Active.test started on"
        When click on button "Has been Active.live"
        When click on button "Has been Active.test"
        Then wait for 5 seconds
        When click on button "hamBurgerAfter"
        When click on button "Search"

        Then wait for 10 seconds
        Then verify
        |type|value|
        |tableHeader|IMSI|
        |tableHeader|State|
        |tableHeader|Organisation|
        |tableHeader|Parent Organisation|
        |tableHeader|ICCID|
        Then verify hidden header "CSD MSISDN"
        Then verify hidden header "IMEI (assigned)"
        Then verify hidden header "Linked Device"
        Then verify hidden header "Custom attribute 1"
        Then verify hidden header "Custom attribute 2"
        Then verify hidden header "Custom attribute 3"
        Then verify hidden header "Custom attribute 4"
        Then verify hidden header "Custom attribute 5"
        Then verify hidden header "Data session status"
        Then verify hidden header "Tariff"
        Then verify hidden header "VPN group"
        Then verify hidden header "Created on"
        Then verify hidden header "First used on"
        Then verify hidden header "Active.test started on"
        Then verify hidden header "Has been Active.live"
        Then verify hidden header "Has been Active.test"
        Then logout

   @TC_AccountManagement_015_SearchResultReadOnly
   Scenario:Verify that the configuration screen for the search results fields does not allow Customer User to remove the following fields from the SIM search results table:
            IMSI- Status- State

        Given test case starts
        Given browser is open
        Then login
        When click on menu "Devices"
        Then verify text "All devices"
        When click on submenu "All devices"
        Then verify text "Results"
        Then wait for 5 seconds
        When click on button "hamBurgerBefore"
        Then verify not
        |type|value|
        |hamburgerMenu|IMSI|
        |hamburgerMenu|State|
       # The verification for IMSI menu will result in failure because the code is picking up the wrong element due to ultiple validations.Once code is fixed this test case passes.
        When click on button "hamBurgerAfter"
        Then logout

   @TC_AccountManagement_008_DeleteUser
   Scenario:Verify that Customer user can delete user from their account

        Given test case starts
        Given browser is open
        Then login as "CustomerWithOwnUsers"
        When click on menu "Administration"
        Then verify text "Users"
        When click on submenu "Users"
        Then verify text "Results"
        When click on button "Create user"
        Then verify text "User details"
        Then generate "3" random alphabets and store in "RanName"
        Then join below strings and store in "RanEmail"
        |strings|
        |RanName|
        |@gmail.com|
        Then enter "Username" "RanEmail"
        Then enter "First Name" "Name1"
        Then enter "Last Name" "Name2"
        Then enter "Mobile" "+449876543210"
        Then select dropdown "Role" "Customer Operations"
        When click on button "Next"

        Then verify text "Please confirm the following data."
        When click on button "Create"
        Then verify text "was successfully created!"
        When click on button "Go to users"
        Then verify text "Results"
        Then enter "Username" "RanEmail"
        When click on button "Search"
        Then verify text "1 matching result(s)."

        When click on link "RanName"
        Then verify text "Personal"
        When click on button "Delete User"
        Then verify text "You are about to delete the user"
        When click on button "Confirm"
        Then verify text "was successfully deleted!"
        When click on button "Go to users"
        Then verify text "Results"
        Then enter "Username" "RanEmail"
        Then wait for 5 seconds
        When click on button "Search"
        Then verify text "No results were found"
        Then logout

   @TC_AccountManagement_046_ForcePasswordChangeFlag_Part1
   Scenario:Verify that system sets Force Password Change flag to 'Yes' when Customer user can change password for another user

        Given test case starts
        Given browser is open
        Then login as "CustomerWithOwnUsers"
        When click on menu "Administration"
        Then verify text "Users"
        When click on submenu "Users"
        Then verify text "Results"
        Then enter "Username" "USE_AccountManagement_userForReset"
        When click on button "Search"
        Then verify text "1 matching result(s)."
        When click on link "USE_AccountManagement_userForReset"
        Then verify text "Personal"
        When click on button "Edit" on position 2
        Then verify
         |type|value|
         |button|Reset security details|
        When click on button "Reset security details"
        Then verify text "You're about to reset the password and security question of the user"
        When click on button "Reset"
        Then verify text "An email has been sent to"
        Then logout


   @TC_AccountManagement_046_ForcePasswordChangeFlag_Part2
   Scenario:This is a continuation of test case 008_Part1.
   Hence should be executed immediately after 008_Part1.Set up QC such that Part 2 runs only if Part 1 is passed

        Given test case starts
        Given browser is open
        Then login and verify reset password for "CustomerForReset"

   @TC_AccountManagement_029_RestrictCSP
   Scenario:Verify Restrict Customer Service Profiles functionality for CSPs.


        Given test case starts
        Given browser is open
        Then login as "CustomerWithRestrictCSP"
        When click on menu "Administration"
        Then verify text "Service profiles"
        When click on submenu "Service profiles"
        Then verify text "Results"
        Then verify
        |type|value|
        |menu|Auto2CSP|
        Then verify not
        |type|value|
        |menu|AutoCSP1|

   @TC_AccountManagement_031_ReadOnlyaccess_Part1
   Scenario:Verify Restrict Customer Service Profiles functionality for CSPs.


        Given test case starts
        Given browser is open
        Then login
        When click on menu "Administration"
        Then verify text "Users"
        When click on submenu "Users"
        Then verify text "Results"
        Then enter "Username" "USE_AccountManagement_userForAccessRight"
        When click on button "Search"
        Then verify text "1 matching result(s)."
        When click on link "USE_AccountManagement_userForAccessRight"
        Then verify text "Personal"
        When click on button "Edit" on position 3
        Then verify text "add new role"
        Then select dropdown "Role" "Customer Operations Limited"
        When click on button "Save"
        Then wait for 60 seconds
        Then verify not
        |type|value|
        |button|Save|

        Then logout

   @TC_AccountManagement_031_ReadOnlyaccess_Part2
   Scenario:Part 2 of test case_031


        Given test case starts
        Given browser is open
        Then login as "CustomerWithAccessRight"
        When click on menu "Administration"
        Then verify text "Users"
        When click on submenu "Users"
        Then verify text "Results"
        Then verify not
         |type|value|
         |button|Create user|
        When click on menu "Administration"
        When click on submenu "Service profiles"
        Then verify text "Results"
        Then verify not
         |type|value|
         |button|Create service profile|
        When click on link "Auto2CSP"
        Then verify text "Information"
        Then verify not
         |type|value|
         |button|Edit|
        Then logout

   @TC_AccountManagement_031_ReadOnlyaccess_Part3
   Scenario:Part 3 of test case_031


        Given test case starts
        Given browser is open
        Then login
        When click on menu "Administration"
        Then verify text "Users"
        When click on submenu "Users"
        Then verify text "Results"
        Then enter "Username" "USE_AccountManagement_userForAccessRight"
        When click on button "Search"
        Then verify text "1 matching result(s)."
        When click on link "USE_AccountManagement_userForAccessRight"
        Then verify text "Personal"
        When click on button "Edit" on position 3
        Then verify text "add new role"
        Then select dropdown "Role" "Customer Administrator"
        When click on button "Save"
        Then wait for 60 seconds
        Then verify not
        |type|value|
        |button|Save|
        Then wait for 180 seconds
        Then logout

   @TC_AccountManagement_031_ReadOnlyaccess_Part4
   Scenario:Part 4 of test case_031


        Given test case starts
        Given browser is open
        Then login as "CustomerWithAccessRight"
        When click on menu "Administration"
        Then verify text "Users"
        When click on submenu "Users"
        Then verify text "Results"
        Then verify
         |type|value|
         |button|Create user|
        When click on menu "Administration"
        When click on submenu "Service profiles"
        Then verify text "Results"
        Then verify
         |type|value|
         |button|Create service profile|
        When click on link "Auto2CSP"
        Then verify text "Information"
        Then verify
         |type|value|
         |button|Edit|
        Then logout

   @TC_AccountManagement_032_BlockedStatus_Part1
   Scenario:Verify that the users get blocked if User Access Status is chosen as Blocked



        Given test case starts
        Given browser is open
        Then login
        When click on menu "Administration"
        Then verify text "Users"
        When click on submenu "Users"
        Then verify text "Results"
        Then enter "Username" "USE_AccountManagement_userForAccessRight"
        When click on button "Search"
        Then verify text "1 matching result(s)."
        When click on link "USE_AccountManagement_userForAccessRight"
        Then verify text "Personal"
        When click on button "Edit" on position 3
        Then verify text "add new role"
        Then select dropdown "Status" "Blocked"
        When click on button "Save"
        Then wait for 60 seconds
        Then verify not
        |type|value|
        |button|Save|

        Then logout

   @TC_AccountManagement_032_BlockedStatus_Part2
   Scenario:Part 2 of test case_032


        Given test case starts
        Given browser is open
        Then login and verify user blocked message for "CustomerWithAccessRight"

   @TC_AccountManagement_032_BlockedStatus_Part3
   Scenario:Part 3 of test case_032


        Given test case starts
        Given browser is open
        Then login
        When click on menu "Administration"
        Then verify text "Users"
        When click on submenu "Users"
        Then verify text "Results"
        Then enter "Username" "USE_AccountManagement_userForAccessRight"
        When click on button "Search"
        Then verify text "1 matching result(s)."
        When click on link "USE_AccountManagement_userForAccessRight"
        Then verify text "Personal"
        When click on button "Edit" on position 3
        Then verify text "add new role"
        Then select dropdown "Status" "Active"
        When click on button "Save"
        Then wait for 60 seconds
        Then verify not
        |type|value|
        |button|Save|
        Then logout

   @TC_AccountManagement_032_BlockedStatus_Part4
   Scenario:Part 4 of test case_032


        Given test case starts
        Given browser is open
        Then login
        Then logout