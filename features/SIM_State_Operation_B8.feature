@SIM_State_Operation_B8
Feature: SIM State Change
  ### Pre-requisite: 1. 2 New SIM required.
  ###                2. SIM should never been to Active.Ready or Active.Test or Active.Live

  @REG_R10_GUI_SIM_State_T_005
  Scenario: Test to verify the sim state change transformation from TEST to INACTIVE STOPPED.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_TestIMSI2" from "Active.Test" to "Inactive.Stopped"
      Then logout

#  @REG_R10_GUI_SIM_State_T_002
#  Scenario: Test to verify the sim state change transformation from  ACTIVE TEST to SUSPEND.
#      Given test case starts
#      Given browser is open
#      Then login
#      Then change sim "USE_SIMStateOperation_TestIMSI2" from "Active.Test" to "Active.Suspend"
#      Then logout

