@SIM_State_Operation_B3
Feature: SIM State Change
  ### Pre-requisite: 1. New SIM required.
  ###                2. SIM should never been to Active.Ready or Active.Test or Active.Live
  @REG_R10_GUI_SIM_State_T_003
  Scenario: Test to verify the sim state change transformation from ACTIVE TEST to ACTIVE READY.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_TestIMSI2" from "Active.Test" to "Active.Ready"
      Then logout

  @REG_R10_GUI_SIM_State_R_003
  Scenario: Test to verify the sim state change transformation from ACTIVE READY to ACTIVE LIVE.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_TestIMSI2" from "Active.Ready" to "Active.Live"
      Then logout