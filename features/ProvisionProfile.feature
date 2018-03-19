@ProvisionProfile
Feature: Provisioning Profile Create and Provisioning Profile Edit

  @REG_R5_GUI_Create_PP_001
  Scenario: verify whether OpCo User can create new Provisioning Profile when Tariff Enabled flag is set to YES
    Given test case starts
    Given browser is open
    Then login
    Then verify text "Administration"
    When click on menu "Administration"
    Then verify text "Provisioning profiles"
    When click on menu "Provisioning profiles"
    Then verify text "Results"
    Then generate unique name starts with "Opcoprofile_" and store in "NewProfile1"
    Then enter "Provisioning profile" "NewProfile1"
    When click on button "Search"
    Then verify text "No results were found"
    When click on button "Create provisioning profile"
    Then verify text "Provisioning profile details"
    Then verify text "Information"
    When click on input "* Organisation" and enter value "USE_ProvisionProfile_Org"
    Then verify text "* Provisioning profile name"
    Then enter "* Provisioning profile name" "NewProfile1"
    Then enter "Description" "RandomDescription"
    Then verify text "Configuration"
    Then select dropdown "* GHLR template" "USE_ProvisionProfile_ghlrTemplate1"
    Then verify text "* APN"
    Then select dropdown "* APN" "USE_ProvisionProfile_apn1"
    #verify  Tariff Enabled  is set to"yes"
    Then verify text "* LTE QoS profile"
    Then select dropdown "* LTE QoS profile" "USE_ProvisionProfile_qos1"
    Then verify text "2G+3G QoS identifier"
    Then select dropdown "* 2G+3G QoS identifier" "USE_ProvisionProfile_qosId"
    When click on button "Next"
    Then verify text "Confirmation"
    When click on button "Create"
    Then verify text "was successfully created!"
    When click on button "Go to provisioning profiles"
    Then verify text "Provisioning profile"
    Then enter "Provisioning profile" "NewProfile1"
    When click on button "Search"
    Then verify text "NewProfile1"
    Then logout

  @REG_R5_GUI_Create_PP_002
  Scenario: verify whether OpCo User can create new Provisioning Profile when Tariff Enabled flag is set to No
    Given test case starts
    Given browser is open
    Then login

    Then verify text "USE_ProvisionProfile_defaultOpco"
    When click on link "USE_ProvisionProfile_defaultOpco"
    Then verify text "USE_ProvisionProfile_opcoTariffDisabled"
    When click on link "USE_ProvisionProfile_opcoTariffDisabled"

    Then verify text "Administration"
    When click on menu "Administration"
    Then verify text "Provisioning profiles"
    When click on menu "Provisioning profiles"
    Then verify text "Results"
    Then generate unique name starts with "Tester_" and store in "NewProfile2"
    Then enter "Provisioning profile" "NewProfile2"
    When click on button "Search"
    Then verify text "No results were found"
    When click on button "Create provisioning profile"
    Then verify text "Provisioning profile details"
    Then verify text "Information"

    Then verify text "* Provisioning profile name"
    Then enter "* Provisioning profile name" "NewProfile2"
    Then enter "Description" "RandomDescription"
    Then verify text "Configuration"
    Then verify text "Roaming group"
    Then select dropdown "* Roaming group" "USE_ProvisionProfile_roamGroup1"
    Then select dropdown "* GHLR template" "USE_ProvisionProfile_ghlrTemplate2"
    Then verify text "* APN"
    Then select dropdown "* APN" "USE_ProvisionProfile_apn2"
    When click on button "Next"
    Then verify text "Confirmation"
    When click on button "Create"
    Then verify text "was successfully created!"
    When click on button "Go to provisioning profiles"
    Then verify text "Provisioning profile"
    Then enter "Provisioning profile" "NewProfile2"
    When click on button "Search"
    Then verify text "NewProfile2"
    Then logout

  @REG_R5_GUI_Create_PP_006
  Scenario: verify whether create Provisioning Profile provides option to select RSA when Tariff Enabled is set to No
    Given test case starts
    Given browser is open
    Then login

    Then verify text "USE_ProvisionProfile_defaultOpco"
    When click on link "USE_ProvisionProfile_defaultOpco"
    Then verify text "USE_ProvisionProfile_opcoTariffDisabled"
    When click on link "USE_ProvisionProfile_opcoTariffDisabled"

    Then verify text "Administration"
    When click on menu "Administration"
    Then verify text "Provisioning profiles"
    When click on menu "Provisioning profiles"
    Then verify text "Results"
    Then generate unique name starts with "Tester_" and store in "NewProfile2"
    Then enter "Provisioning profile" "NewProfile2"
    When click on button "Search"
    Then verify text "No results were found"
    When click on button "Create provisioning profile"
    Then verify text "Provisioning profile details"
    Then verify text "Information"

    Then verify text "* Provisioning profile name"
    Then enter "* Provisioning profile name" "NewProfile2"
    Then enter "Description" "RandomDescription"
    Then verify text "Configuration"
    Then verify text "Roaming group"
    Then select dropdown "* Roaming group" "USE_ProvisionProfile_roamGroup1"
    Then select dropdown "* GHLR template" "USE_ProvisionProfile_ghlrTemplate2"
    Then verify text "* APN"
    Then select dropdown "* APN" "USE_ProvisionProfile_apn2"
    #Then verify text "* LTE QoS profile"
    #Then select dropdown "* LTE QoS profile" "USE_ProvisionProfile_qos1"
    When click on button "Next"
    Then verify text "Confirmation"
    When click on button "Create"
    Then verify text "was successfully created!"
    When click on button "Go to provisioning profiles"
    Then verify text "Provisioning profile"
    Then enter "Provisioning profile" "NewProfile2"
    When click on button "Search"
    Then verify text "NewProfile2"
    Then logout

  @REG_R8_GUI_Create_PP_005
  Scenario: verify whether system creates provisioning profile when LTE enabled GHLR Template and Default APN is choosen
    Given test case starts
    Given browser is open
    Then login
    Then verify text "Administration"
    When click on menu "Administration"
    Then verify text "Provisioning profiles"
    When click on menu "Provisioning profiles"
    Then verify text "Results"
    Then generate unique name starts with "Auto_" and store in "Prof1"
    Then enter "Provisioning profile" "Prof1"
    When click on button "Search"
    Then verify text "No results were found"
    When click on button "Create provisioning profile"
    Then verify text "Provisioning profile details"
    Then verify text "Information"
    When click on input "* Organisation" and enter value "USE_ProvisionProfile_Org"
    Then enter "* Provisioning profile name" "Prof1"
    Then enter "Description" "RandomDescription1"
    Then verify text "Configuration"
    Then verify text "Roaming group"
    Then select dropdown "* GHLR template" "USE_ProvisionProfile_ghlrTemplate3"
    Then verify text "Extra services supported"
    Then verify text "APN"
    Then select dropdown "* APN" "USE_ProvisionProfile_apn3"
    When click on button "Next"
    Then verify text "Confirmation"
    When click on button "Create"
    Then verify text "successfully created!"
    When click on button "Go to provisioning profiles"
    Then enter "Provisioning profile" "Prof1"
    When click on button "Search"
    Then verify text "Prof1"
    Then logout

  @REG_R5_GUI_Edit_PP_001
  Scenario: verify that an OpCo Admin can Edit an existing Provisioning Profile on Global M2M platform
    Given test case starts
    Given browser is open
    Then login

    Then verify text "Administration"
    When click on menu "Administration"
    Then verify text "Provisioning profiles"
    When click on menu "Provisioning profiles"
    Then verify text "Results"
    Then enter "Provisioning profile" "USE_ProvisionProfile_ProvisionProfile3"
    When click on button "Search"
    Then verify text "USE_ProvisionProfile_ProvisionProfile3"
    When click on link "USE_ProvisionProfile_ProvisionProfile3"
    Then verify text "Provisioning profile"
    Then verify text "Information"
    When click on button "Edit" on Position 1
    Then verify text "Description"
    Then enter "Description" "NewDescription"
    When click on button "Save"
    Then verify text "Configuration"
    When click on button "Edit" on Position 2
    Then verify text "* GHLR template"
    Then select dropdown "* GHLR template" "USE_ProvisionProfile_ghlrTemplate4"
    Then verify text "* APN"
    Then select dropdown "* APN" "USE_ProvisionProfile_apn4"
    Then verify text "* LTE QoS profile"
    Then select dropdown "* LTE QoS profile" "USE_ProvisionProfile_qos1"
    When click on button "Save"
    Then verify text "Settings successfully updated"
    Then logout

  @REG_R7_GUI_Edit_PP_005
  Scenario: verify when tariff switched off for opco the  provisioning profile Edit Provisioning Profile screen displays option to select RSA
    Given test case starts
    Given browser is open
    Then login

    Then verify text "USE_ProvisionProfile_defaultOpco"
    When click on link "USE_ProvisionProfile_defaultOpco"
    Then verify text "USE_ProvisionProfile_opcoTariffDisabled"
    When click on link "USE_ProvisionProfile_opcoTariffDisabled"


    Then verify text "Administration"
    When click on menu "Administration"
    Then verify text "Provisioning profiles"
    When click on menu "Provisioning profiles"
    Then verify text "Results"
    Then enter "Provisioning profile" "USE_ProvisionProfile_ProvisionProfile4"
    When click on button "Search"
    Then verify text "USE_ProvisionProfile_ProvisionProfile4"
    When click on link "USE_ProvisionProfile_ProvisionProfile4"
    Then verify text "Provisioning profile"
    Then verify text "Information"
    When click on button "Edit" on Position 1
    Then generate unique name starts with "OpcoProvisionProfile_" and store in "USE_ProvisionProfile_ProvisionProfile2"
    Then verify text "Provisioning profile"
    Then enter "Description" "RandomDescription2"
    When click on button "Save"
    Then verify text "Configuration"
    When click on button "Edit" on Position 2
    Then verify text "Roaming group"
    Then select dropdown "* Roaming group" "USE_ProvisionProfile_roamGroup1"
    Then verify text "* GHLR template"
    Then select dropdown "* GHLR template" "USE_ProvisionProfile_ghlrTemplate4"
    Then verify text "* APN"
    Then select dropdown "* APN" "USE_ProvisionProfile_apn4"
    Then verify text "* LTE QoS profile"
    Then select dropdown "* LTE QoS profile" "USE_ProvisionProfile_qos1"
    When click on button "Save"
    Then verify text "Settings successfully updated"
    Then logout

















