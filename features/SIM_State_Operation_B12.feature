@SIM_State_Operation_B12
Feature: Test Mode Operation
  @REG_R8.0_GUI_TestMode_001
  Scenario: Test to verify that whether Opco user can configure Test Mode for a Customer Service profile
      Given test case starts
      Given browser is open
      Then login
      When click on menu "Administration"
      When click on menu "Service profiles"
      Then verify text "Service profiles"
      Then enter "Service Profile" "AutoCustCSP1"
      When click on button "Search"
      Then verify text "1 matching result(s)"
      When click on link "AutoCustCSP1"
      When click on link "Details"
      When click on button "Edit" on position 1
      Then select drop down "Post test mode state" "Active.Ready"
      When click on button "Save"
      Then verify text "Settings successfully updated"
      When click on button "Edit" on position 2
      Then verify below values and set to unlimited
      |LabelName|
      |Volume limit|
      |Expiration time limit|
      |Usage time limit     |
      |SMS wakeup limit     |
      |SMS payload limit    |
      |SMS MO limit         |
      |Voice usage          |
      When click on infinity button of "Volume limit"
      Then enter "Volume limit" "10"
      Then select dropdown "Volume limit" "Bytes"
      When click on infinity button of "Expiration time limit"
      Then enter "Expiration time limit" "90"
      Then select dropdown "Expiration time limit" "Weeks"
      When click on infinity button of "Usage time limit"
      Then enter "Usage time limit" "7"
      When click on infinity button of "SMS wakeup limit"
      Then enter "SMS wakeup limit" "10"
      When click on infinity button of "SMS payload limit"
      Then enter "SMS payload limit" "10"
      When click on infinity button of "SMS MO limit"
      Then enter "SMS MO limit" "10"
      When click on infinity button of "Voice usage"
      Then enter "Voice usage" "900"
      Then select dropdown "Voice usage" "Seconds"
      When click on button "Save"
      Then verify text "Settings successfully updated"
      Then report "Test Mode configuration is successful"
      Then logout
