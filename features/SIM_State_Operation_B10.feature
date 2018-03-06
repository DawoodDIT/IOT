@SIM_State_Operation_B10
Feature: SIM State Change
  ###SIM Transformation Dependency
  ####Pre-Requisites: SIM should be in Inactive.Transformed State.

  @REG_R10_GUI_SIM_State_V_001
  Scenario: Test to verify the sim state change transformation from INACTIVE TRANSFORMED to INACTIVE STOPPED.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_Customer1_MSISDN" from "Inactive.Transformed" to "Inactive.Stopped"
      Then logout

  @REG_R10_GUI_SIM_State_V_002
  Scenario: Test to verify the sim state change transformation from INACTIVE TRANSFORMED to ACTIVE LIVE.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_Customer1_MSISDN" from "Inactive.Transformed" to "Active.Live"
      Then logout

  @REG_R10_GUI_SIM_State_V_004
  Scenario: Test to verify the sim state change transformation from INACTIVE TRANSFORMED to ACTIVE STANDBY.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_Customer1_MSISDN" from "Inactive.Transformed" to "Active.Standby"
      Then logout