@ConfigThreshhold
Feature:  ConfigThreshhold

  @TC_GUIThresholdConfig_CSP_001_HighUsage
  Scenario:Test to verify whether Opco User can Configure High Usage Threshold for a CSP

    Given test case starts
    Given browser is open
    Then login
    When click on menu "Tools"
    When click on submenu "Event triggers"
    Then verify text "Results"
    When click on button "Manage high/rogue"
    Then verify text "Customer information"
    When click on input "Organisation" and enter value "Automation2"
    Then verify text "Service Profile"
    Then select drop down "Service Profile" "AutoCSP1"

    Then enter values
      | rowname    | colname           | value                           |
      | High Usage | Threshold         | Enter_Value_10                  |
      | High Usage | Threshold         | Select_Dropdown_Bytes           |
      | High Usage | Monitoring period | Select_Dropdown_Monthly         |
      | High Usage | Action            | Select_Dropdown_Immediate email |

    Then enter values
      | rowname           | colname           | value                           |
      | High usage for CS | Threshold         | Enter_Value_11                  |
      | High usage for CS | Monitoring period | Select_Dropdown_Weekly          |
      | High usage for CS | Action            | Select_Dropdown_Immediate email |

    Then enter values
      | rowname               | colname           | value                           |
      | High usage for SMS MO | Threshold         | Enter_Value_12                  |
      | High usage for SMS MO | Monitoring period | Select_Dropdown_Daily           |
      | High usage for SMS MO | Action            | Select_Dropdown_Immediate email |

    When click on button "Save"


    Then get values of following from table and store
      | rowname    | colname           | valueToStore           |
      | High Usage | Threshold         | text_Hthreshold1       |
      | High Usage | Threshold         | drp_Hthreshold1        |
      | High Usage | Monitoring period | drp_Hmonitoringperiod1 |
      | High Usage | Action            | drp_Haction1           |

    Then verify if "text_Hthreshold1" "equal" "10"
    Then verify if "drp_Hthreshold1" "equal" "Bytes"
    Then verify if "drp_Hmonitoringperiod1" "equal" "Monthly"
    Then verify if "drp_Haction1" "equal" "Immediate email"

    Then get values of following from table and store
      | rowname           | colname           | valueToStore           |
      | High usage for CS | Threshold         | text_Hthreshold2       |
      | High usage for CS | Monitoring period | drp_Hmonitoringperiod2 |
      | High usage for CS | Action            | drp_Haction2           |

    Then verify if "text_Hthreshold2" "equal" "11"
    Then verify if "drp_Hmonitoringperiod2" "equal" "Weekly"
    Then verify if "drp_Haction2" "equal" "Immediate email"

    Then get values of following from table and store
      | rowname               | colname           | valueToStore           |
      | High usage for SMS MO | Threshold         | text_Hthreshold3       |
      | High usage for SMS MO | Monitoring period | drp_Hmonitoringperiod3 |
      | High usage for SMS MO | Action            | drp_Haction3           |

    Then verify if "text_Hthreshold3" "equal" "12"
    Then verify if "drp_Hmonitoringperiod3" "equal" "Daily"
    Then verify if "drp_Haction3" "equal" "Immediate email"
    Then logout


  @TC_GUIThresholdConfig_CSP_002_RogueUsage
  Scenario:Test to verify whether Opco User can Configure Rogue Usage Threshold for a CSP


    Given test case starts
    Given browser is open
    Then login
    When click on menu "Tools"
    When click on submenu "Event triggers"
    Then verify text "Results"
    When click on button "Manage high/rogue"
    Then verify text "Customer information"
    When click on input "Organisation" and enter value "Automation2"
    Then verify text "Service Profile"
    Then select drop down "Service Profile" "AutoCSP1"

    Then enter values
      | rowname     | colname           | value                            |
      | Rogue usage | Threshold         | Enter_Value_13                   |
      | Rogue usage | Threshold         | Select_Dropdown_Kb               |
      | Rogue usage | Monitoring period | Select_Dropdown_Six hourly       |
      | Rogue usage | Action            | Select_Dropdown_BRE notification |


    Then enter values
      | rowname            | colname           | value                           |
      | Rogue usage for CS | Threshold         | Enter_Value_14                  |
      | Rogue usage for CS | Monitoring period | Select_Dropdown_Quarterly       |
      | Rogue usage for CS | Action            | Select_Dropdown_Immediate email |

    Then enter values
      | rowname                | colname           | value                           |
      | Rogue usage for SMS MO | Threshold         | Enter_Value_15                  |
      | Rogue usage for SMS MO | Monitoring period | Select_Dropdown_Six-Monthly     |
      | Rogue usage for SMS MO | Action            | Select_Dropdown_Immediate email |


    When click on button "Save"

    Then get values of following from table and store
      | rowname     | colname           | valueToStore           |
      | Rogue usage | Threshold         | text_Rthreshold1       |
      | Rogue usage | Threshold         | drp_Rthreshold1        |
      | Rogue usage | Monitoring period | drp_Rmonitoringperiod1 |
      | Rogue usage | Action            | drp_Raction1           |

    Then verify if "text_Rthreshold1" "equal" "13"
    Then verify if "drp_Rthreshold1" "equal" "Kb"
    Then verify if "drp_Rmonitoringperiod1" "equal" "Six hourly"
    Then verify if "drp_Raction1" "equal" "BRE notification"

    Then get values of following from table and store
      | rowname            | colname           | valueToStore           |
      | Rogue usage for CS | Threshold         | text_Rthreshold2       |
      | Rogue usage for CS | Monitoring period | drp_Rmonitoringperiod2 |
      | Rogue usage for CS | Action            | drp_Raction2           |

    Then verify if "text_Rthreshold2" "equal" "14"
    Then verify if "drp_Rmonitoringperiod2" "equal" "Quarterly"
    Then verify if "drp_Raction2" "equal" "Immediate email"

    Then get values of following from table and store
      | rowname                | colname           | valueToStore           |
      | Rogue usage for SMS MO | Threshold         | text_Rthreshold3       |
      | Rogue usage for SMS MO | Monitoring period | drp_Rmonitoringperiod3 |
      | Rogue usage for SMS MO | Action            | drp_Raction3           |

    Then verify if "text_Rthreshold3" "equal" "15"
    Then verify if "drp_Rmonitoringperiod3" "equal" "Six-Monthly"
    Then verify if "drp_Raction3" "equal" "Immediate email"

    Then logout


  @TC_GUIThresholdConfig_CSP_003_HighAndRogueUsage
  Scenario:Test to verify whether Customer User can Configure both High and Rogue Usage Threshold for a CSP

    Given test case starts
    Given browser is open
    Then login
    When click on menu "Tools"
    When click on submenu "Event triggers"
    Then verify text "Results"
    When click on button "Manage high/rogue"
    Then verify text "Customer information"
    When click on input "Organisation" and enter value "Automation2"
    Then verify text "Service Profile"
    Then select drop down "Service Profile" "AutoCSP1"


    Then enter values
      | rowname    | colname           | value                           |
      | High Usage | Threshold         | Enter_Value_20                  |
      | High Usage | Threshold         | Select_Dropdown_Mb              |
      | High Usage | Monitoring period | Select_Dropdown_Monthly         |
      | High Usage | Action            | Select_Dropdown_Immediate email |


    Then enter values
      | rowname           | colname           | value                           |
      | High usage for CS | Threshold         | Enter_Value_21                  |
      | High usage for CS | Monitoring period | Select_Dropdown_Monthly         |
      | High usage for CS | Action            | Select_Dropdown_Immediate email |

    Then enter values
      | rowname               | colname           | value                           |
      | High usage for SMS MO | Threshold         | Enter_Value_22                  |
      | High usage for SMS MO | Monitoring period | Select_Dropdown_Monthly         |
      | High usage for SMS MO | Action            | Select_Dropdown_Immediate email |

    Then enter values
      | rowname     | colname           | value                           |
      | Rogue usage | Threshold         | Enter_Value_23                  |
      | Rogue usage | Threshold         | Select_Dropdown_Mb              |
      | Rogue usage | Monitoring period | Select_Dropdown_Monthly         |
      | Rogue usage | Action            | Select_Dropdown_Immediate email |


    Then enter values
      | rowname            | colname           | value                           |
      | Rogue usage for CS | Threshold         | Enter_Value_24                  |
      | Rogue usage for CS | Monitoring period | Select_Dropdown_Monthly         |
      | Rogue usage for CS | Action            | Select_Dropdown_Immediate email |

    Then enter values
      | rowname                | colname           | value                           |
      | Rogue usage for SMS MO | Threshold         | Enter_Value_25                  |
      | Rogue usage for SMS MO | Monitoring period | Select_Dropdown_Monthly         |
      | Rogue usage for SMS MO | Action            | Select_Dropdown_Immediate email |


    When click on button "Save"

    Then get values of following from table and store
      | rowname    | colname           | valueToStore             |
      | High Usage | Threshold         | text_HR1threshold1       |
      | High Usage | Threshold         | drp_HR1threshold1        |
      | High Usage | Monitoring period | drp_HR1monitoringperiod1 |
      | High Usage | Action            | drp_HR1action1           |

    Then verify if "text_HR1threshold1" "equal" "20"
    Then verify if "drp_HR1threshold1" "equal" "Mb"
    Then verify if "drp_HR1monitoringperiod1" "equal" "Monthly"
    Then verify if "drp_HR1action1" "equal" "Immediate email"

    Then get values of following from table and store
      | rowname           | colname           | valueToStore             |
      | High usage for CS | Threshold         | text_HR1threshold2       |
      | High usage for CS | Monitoring period | drp_HR1monitoringperiod2 |
      | High usage for CS | Action            | drp_HR1action2           |

    Then verify if "text_HR1threshold2" "equal" "21"
    Then verify if "drp_HR1monitoringperiod2" "equal" "Monthly"
    Then verify if "drp_HR1action2" "equal" "Immediate email"

    Then get values of following from table and store
      | rowname               | colname           | valueToStore             |
      | High usage for SMS MO | Threshold         | text_HR1threshold3       |
      | High usage for SMS MO | Monitoring period | drp_HR1monitoringperiod3 |
      | High usage for SMS MO | Action            | drp_HR1action3           |

    Then verify if "text_HR1threshold3" "equal" "22"
    Then verify if "drp_HR1monitoringperiod3" "equal" "Monthly"
    Then verify if "drp_HR1action3" "equal" "Immediate email"

    Then get values of following from table and store
      | rowname     | colname           | valueToStore             |
      | Rogue usage | Threshold         | text_HR2threshold1       |
      | Rogue usage | Threshold         | drp_HR2threshold1        |
      | Rogue usage | Monitoring period | drp_HR2monitoringperiod1 |
      | Rogue usage | Action            | drp_HR2action1           |

    Then verify if "text_HR2threshold1" "equal" "23"
    Then verify if "drp_HR2threshold1" "equal" "Mb"
    Then verify if "drp_HR2monitoringperiod1" "equal" "Monthly"
    Then verify if "drp_HR2action1" "equal" "Immediate email"

    Then get values of following from table and store
      | rowname            | colname           | valueToStore             |
      | Rogue usage for CS | Threshold         | text_HR2threshold2       |
      | Rogue usage for CS | Monitoring period | drp_HR2monitoringperiod2 |
      | Rogue usage for CS | Action            | drp_HR2action2           |

    Then verify if "text_HR2threshold2" "equal" "24"
    Then verify if "drp_HR2monitoringperiod2" "equal" "Monthly"
    Then verify if "drp_HR2action2" "equal" "Immediate email"

    Then get values of following from table and store
      | rowname                | colname           | valueToStore             |
      | Rogue usage for SMS MO | Threshold         | text_HR2threshold3       |
      | Rogue usage for SMS MO | Monitoring period | drp_HR2monitoringperiod3 |
      | Rogue usage for SMS MO | Action            | drp_HR2action3           |

    Then verify if "text_HR2threshold3" "equal" "25"
    Then verify if "drp_HR2monitoringperiod3" "equal" "Monthly"
    Then verify if "drp_HR2action3" "equal" "Immediate email"

    Then logout


