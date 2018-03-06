@SIM_State_Operation_B7
Feature: SIM State Change
  ### Pre-requisite: 1. New SIM required.
  ###                2. SIM should never been to Active.Ready or Active.Test or Active.Live

  @REG_R10_GUI_SIM_State_U_005
  Scenario: Test to verify the sim state change transformation from ACTIVE STANDBY to ACTIVE TEST.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_StandbyIMSI" from "Active.Standby" to "Active.Test"
      Then logout

 @REG_R10_GUI_SIM_State_T_006
  Scenario: Test to verify the sim state change transformation from TEST to INACTIVE.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_StandbyIMSI" from "Active.Test" to "Inactive"
      Then logout