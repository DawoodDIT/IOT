@SIMGroups
  Feature: SIM Group
  This feature covers SIM Group functionality.


     @REG_R7_GUI_SIM_Group_001
#       Success
     Scenario: Test to verify whether Customer User can Create New SIM Group
       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       When click on link "s_OperatorAdministratorRole"
       Then verify text "USE_SIMGroups_CustomerAdministratorRole"
       When click on link "USE_SIMGroups_CustomerAdministratorRole"
       When click menu "Administration" and submenu "My organisation"
       Then verify text "Overview"
       When click on tab "Details"
       Then verify text "Profiles and groups"
       When click on link "Profiles and groups"
       Then verify
       | type  | value  |
       | button  | Edit   |
       When click on button "Edit"
       Then verify text "+ Add group"
       When click on link "+ Add group"
       Then verify text "* Name"
       Then enter "* Name" "USE_SIMGroups_GroupName"
       Then enter "Description" "USE_SIMGroups_Description"
       When click on button "Save"
       Then verify text "Groups"
       Then verify text "USE_SIMGroups_GroupName"
       When click on link "USE_SIMGroups_CustomerAdministratorRole"
       When click on link "USE_SIMGroups_OperatorAdministratorRole"
       Then wait for 5 seconds
       Then logout


     @REG_R6_GUI_SIM_Group_006
#       Success
     Scenario: Test to verify whether Opco user can add a device to a SIM Group
       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       When click menu "Devices" and submenu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_SIMGroups_IMSI"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_SIMGroups_IMSI"
       Then verify text "Overview"
       When click on tab "Operations"
       Then verify text "Configure"
       When click on link "Configure"
       Then verify text "Set groups"
       When click on link "Set groups"
       Then select dropdown "Groups" "USE_SIMGroups_GroupName"
       When click on button "Set"
       Then verify text "were successfully set"
       Then logout


     @REG_R5_GUI_SIM_Group_005
#       Fail
     Scenario: Test to verify whether Customer User can remove a device from a SIM Group
       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       When click on link "USE_SIMGroups_OperatorAdministratorRole"
       Then verify text "USE_SIMGroups_CustomerAdministratorRole"
       When click on link "USE_SIMGroups_CustomerAdministratorRole"
       When click menu "Devices" and submenu "All devices"
       Then enter textarea "IMSI" "USE_SIMGroups_IMSI"
       When click on button "Search"
       Then verify text "Results"
       Then verify text "USE_SIMGroups_IMSI"
       When click on link "USE_SIMGroups_IMSI"
       When click on tab "Operations"
       Then verify text "Configure"
       When click on link "Configure"
       Then verify text "Set groups"
       When click on link "Set groups"
       #Removal of SIM Group is not working
       Then remove options "USE_SIMGroups_GroupName" from dropdown "Groups"
       When click on button "Set"
       Then Verify text "were successfully set"
       When click on link "USE_SIMGroups_CustomerAdministratorRole"
       When click on link "USE_SIMGroups_OperatorAdministratorRole"
       Then wait for 5 seconds
       Then logout


