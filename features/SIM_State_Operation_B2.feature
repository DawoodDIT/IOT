@SIM_State_Operation_B2
Feature: SIM State Change
  ####Pre-requisite: 1. SIM should be in Active.Sleep State
  #####              2. Three SIMs are required in Active.Sleep

  @REG_R10_GUI_SIM_State_C_001
  Scenario: Test to verify the sim state change transformation from ACTIVE SLEEP to INACTIVE STOPPED.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_SleepIMSI1" from "Active.Sleep" to "Inactive.Stopped"
      Then logout

@REG_R10_GUI_SIM_State_C_002
  Scenario: Test to verify the sim state change transformation from ACTIVE SLEEP to ACTIVE LIVE.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_SleepIMSI2" from "Active.Sleep" to "Active.Live"
      Then logout

  @REG_R10_GUI_SIM_State_C_004
  Scenario: Test to verify the sim state change transformation from ACTIVE SLEEP to ACTIVE STANDBY.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_SleepIMSI3" from "Active.Sleep" to "Active.Standby"
      Then logout