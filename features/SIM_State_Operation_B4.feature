@SIM_State_Operation_B4
Feature: SIM State Change
  ### Pre-requisite: 1. New SIM required.
  ###                2. SIM should never been to Active.Ready or Active.Test or Active.Live

  @REG_R10_GUI_SIM_State_X_003
  Scenario: Test to verify the sim state change transformation from INACTIVE to ACTIVE READY.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Inactive" to "Active.Ready"
      Then logout

  @REG_R10_GUI_SIM_State_R_001
  Scenario: Test to verify the sim state change transformation from ACTIVE READY to INACTIVE.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Active.Ready" to "Inactive"
      Then logout
