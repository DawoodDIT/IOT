@SIM_State_Operation_B9
Feature: SIM State Change
  ### Pre-requisite: 1. 2 New SIM required.
  ###                2. SIM should never been to Active.Ready or Active.Test or Active.Live
  @REG_R10_GUI_SIM_State_R_002
  Scenario: Test to verify the sim state change transformation from READY to INACTIVE.STOPPED.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_ReadyIMSI1" from "Active.Ready" to "Inactive.Stopped"
      Then logout

  @REG_R10_GUI_SIM_State_R_005
  Scenario: Test to verify the sim state change transformation from READY to ACTIVE STANDBY.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_ReadyIMSI2" from "Active.Ready" to "Active.Standby"
      Then logout