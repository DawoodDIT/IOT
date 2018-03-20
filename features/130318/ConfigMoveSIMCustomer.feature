@CSPOperations_ConfigmoveSIMCustomer
Feature: ConfigMoveSIMCustomer

  @tc_GUI_ConfigCSPMove_001
  Scenario: Test to verify whether Opco User can configure move SIM to Customer

       Given test case starts
       Given browser is open
       Then login
       Then verify text "M2M Dashboard"
       When click on menu "Devices"
       Then verify text "All devices"
       When click on submenu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_CSPOperations_OPCOMovesimIMSI"
       When click on button "Search"
       Then verify text "Results"
       Then click on "checkbox" of table based on below criteria
      | IMSI                   |
      | USE_CSPOperations_OPCOMovesimIMSI |
       When click on link "Operations"
       Then verify text "Batch Operations"
       When click on button "Next"
       Then verify text "* Action"
       Then select dropdown "* Action" "Change service profile"
       When click on input "* Organisation" and enter value "USE_CSPOperations_OPCOMovesimCustname"
       Then select dropdown "New service profile" "USE_CSPOperations_OPCOMovesimCSPname"
       When click on button "Next"
       Then verify text "Action"
       When click on button "Submit"
       Then verify text "successfully submitted"
       When click on menu "Devices"
       When click on submenu "All devices"
       Then enter textarea "IMSI" "USE_CSPOperations_OPCOMovesimIMSI"
       When click on button "Search"
       When click on link "USE_CSPOperations_OPCOMovesimIMSI"
       Then verify text "Overview"
       Then verify text "USE_CSPOperations_OPCOMovesimCustname"
       Then verify text "USE_CSPOperations_OPCOMovesimCSPname"
       Then logout


  @tc_GUI_ConfigCSPMove_002
  Scenario: Test to verify whether Customer user can move SIM to another customer.



       Given test case starts
       Given browser is open
       Then login
       When click on link "USE_ADMIN_Opco"
       Then verify text "USE_ADMIN_Cust3"
       When click on link "USE_ADMIN_Cust3"
       Then verify text "M2M Dashboard"
       When click on menu "Devices"
       Then verify text "All devices"
       When click on submenu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_CSPOperations_CustMovesimIMSI"
       When click on button "Search"
       Then verify text "Results"
       Then click on "checkbox" of table based on below criteria
      | IMSI                   |
      | USE_CSPOperations_CustMovesimIMSI |
       When click on link "Operations"
       When click on button "Next"
       Then verify text "* Action"
       Then select dropdown "* Action" "Change service profile"
#       When click on input "* Organisation" and enter value "USE_CSPOperations_CustMovesimCustname"
       Then select dropdown "New service profile" "USE_CSPOperations_CustMovesimCSPname"
       When click on button "Next"
       Then verify text "Action"
       When click on button "Submit"
       Then verify text "successfully submitted"
       When click on menu "Devices"
       Then verify text "All devices"
       When click on submenu "All devices"
       Then verify text "Results"
       Then enter textarea "IMSI" "USE_CSPOperations_CustMovesimIMSI"
       When click on button "Search"
       Then verify text "Results"
       When click on link "USE_CSPOperations_CustMovesimIMSI
       Then verify text "Overview"
       Then verify text "USE_CSPOperations_CustMovesimCustname"
       Then verify text "USE_CSPOperations_CustMovesimCSPname"
       Then logout
