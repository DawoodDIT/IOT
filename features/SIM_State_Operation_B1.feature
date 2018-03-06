@SIM_State_Operation_B1
Feature: SIM State Change
###Pre-requisite IMSI State is in Inactive State
###Premium States Customer should be enabled

  @REG_R10_GUI_SIM_State_X_002
  Scenario: Test to verify the sim state change transformation from INACTIVE to ACTIVE LIVE.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Inactive" to "Active.Live"
      Then logout

  @REG_R10_GUI_SIM_State_A_001
  Scenario: Test to verify the sim state change transformation from  ACTIVE LIVE to INACTIVE.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Active.Live" to "Inactive"
      Then logout

  @REG_R10_GUI_SIM_State_X_001
  Scenario: Test to verify the sim state change transformation from  INACTIVE to INACTIVE STOPPED.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Inactive" to "Inactive.Stopped"
      Then logout

  @REG_R10_GUI_SIM_State_D_002
  Scenario: Test to verify the sim state change transformation from  INACTIVE STOPPED to ACTIVE LIVE.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Inactive.Stopped" to "Active.Live"
      Then logout

  @REG_R10_GUI_SIM_State_A_002
  Scenario: Test to verify the sim state change transformation from  ACTIVE LIVE to INACTIVE STOPPED.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Active.Live" to "Inactive.Stopped"
      Then logout

  @REG_R10_GUI_SIM_State_D_004
  Scenario: Test to verify the sim state change transformation from  INACTIVE STOPPED to ACTIVE STANDBY.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Inactive.Stopped" to "Active.Standby"
      Then logout

  @REG_R10_GUI_SIM_State_U_003
  Scenario: Test to verify the sim state change transformation from  Active.Standby to ACTIVE.LIVE.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Active.Standby" to "Active.Live"
      Then logout

  @REG_R10_GUI_SIM_State_A_003
  Scenario: Test to verify the sim state change transformation from  ACTIVE.LIVE to ACTIVE.STANDBY.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Active.Live" to "Active.Standby"
      Then logout

  @REG_R10_GUI_SIM_State_U_001
  Scenario: Test to verify the sim state change transformation from  ACTIVE STANDBY to INACTIVE.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Active.Standby" to "Inactive"
      Then logout

  @REG_R10_GUI_SIM_State_X_004
  Scenario: Test to verify the sim state change transformation from  INACTIVE to ACTIVE STANDBY.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Inactive" to "Active.Standby"
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Active.Standby" to "Inactive"
      Then logout

  @REG_R10_GUI_SIM_State_X_005
  Scenario: Test to verify the sim state change transformation from INACTIVE to ACTIVE SUSPEND.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Inactive" to "Active.Suspend"
      Then logout

  @REG_R10_GUI_SIM_State_S_003
  Scenario: Test to verify the sim state change transformation from SUSPEND to ACTIVE LIVE.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Active.Suspend" to "Active.Live"
      Then logout

  @REG_R10_GUI_SIM_State_A_004
  Scenario: Test to verify the sim state change transformation from ACTIVE LIVE to ACTIVE SUSPEND.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Active.Live" to "Active.Suspend"
      Then logout

  @REG_R10_GUI_SIM_State_S_002
  Scenario: Test to verify the sim state change transformation from SUSPEND to INACTIVE STOPPED.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Active.Suspend" to "Inactive.Stopped"
      Then logout

  @REG_R10_GUI_SIM_State_D_005
  Scenario: Test to verify the sim state change transformation from INACTIVE STOPPED to ACTIVE SUSPEND.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Inactive.Stopped" to "Active.Suspend"
      Then logout

  @REG_R10_GUI_SIM_State_S_001
  Scenario: Test to verify the sim state change transformation from  ACTIVE SUSPEND to INACTIVE.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Active.Suspend" to "Inactive"
      Then logout

  @REG_R10_GUI_SIM_State_D_001
  Scenario: Test to verify the sim state change transformation from INACTIVE STOPPED to INACTIVE.
      Given test case starts
      Given browser is open
      Then login
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Inactive" to "Inactive.Stopped"
      Then change sim "USE_SIMStateOperation_InactiveIMSI" from "Inactive.Stopped" to "Inactive"
      Then logout








