@SIM_State_Operation_B6
Feature: SIM State Change
  ### Pre-requisite: 1. New SIM required.
  ###                2. SIM should never been to Active.Ready or Active.Test or Active.Live

  @REG_R10_GUI_SIM_State_S_007
  Scenario: Test to verify the sim state change transformation from SUSPEND to ACTIVE TEST.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_SuspendIMSI" from "Active.Suspend" to "Active.Test"
      Then logout

  @REG_R10_GUI_SIM_State_T_004
  Scenario: Test to verify the sim state change transformation from TEST to ACTIVE LIVE.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_SuspendIMSI" from "Active.Test" to "Active.Live"
      Then logout