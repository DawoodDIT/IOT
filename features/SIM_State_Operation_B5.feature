@SIM_State_Operation_B5
Feature: SIM State Change
  ### Pre-requisite: 1. New SIM required.
  ###                2. SIM should never been to Active.Ready or Active.Test or Active.Live

  @REG_R10_GUI_SIM_State_S_004
  Scenario: Test to verify the sim state change transformation from SUSPEND to ACTIVE READY.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_SuspendIMSI" from "Active.Suspend" to "Active.Ready"
      Then logout

  @REG_R10_GUI_SIM_State_R_004
  Scenario: Test to verify the sim state change transformation from READY to ACTIVE SUSPEND.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_SuspendIMSI" from "Active.Ready" to "Active.Suspend"
      Then logout