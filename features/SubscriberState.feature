@SubscriberState
Feature:  SubscriberState

   @TC_REG_R10_SUBSCRIBER_STATUS_001_Restricted
   Scenario:Test to verify the Subscriber State on User Registration page when SIM is Restricted.

      Given test case starts
      Given browser is open
      Then login
      When click on menu "Devices"
      When click on submenu "Devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_SubscriberState_Restricted"
      When click on button "Search"
      When click on link "USE_SubscriberState_Restricted"
      When click on link "Details"
      When click on link "Mobility"

      Then get value of "Subscriber state" on position 1 and store in "CSLIStatus1"
      Then verify if "CSLIStatus1" "equal" "RESTRICTED"


   @TC_REG_R10_SUBSCRIBER_STATUS_002_Purged
   Scenario:Test to verify the Subscriber State on User Registration page when SIM is Purged.

      Given test case starts
      Given browser is open
      Then login
      When click on menu "Devices"
      When click on submenu "Devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_SubscriberState_Purged"
      When click on button "Search"
      When click on link "USE_SubscriberState_Purged"
      When click on link "Details"
      When click on link "Mobility"

      Then get value of "Subscriber state" on position 1 and store in "CSLIStatus2"
      Then verify if "CSLIStatus2" "equal" "MS PURGED"


   @TC_REG_R10_SUBSCRIBER_STATUS_003_Barred_NoUsage
   Scenario:Test to verify the Subscriber State on User Registration page when SIM is in BARRED state and has not done any usage before.

      Given test case starts
      Given browser is open
      Then login
      When click on menu "Devices"
      When click on submenu "Devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_SubscriberState_BarredNoUsage"
      When click on button "Search"
      When click on link "USE_SubscriberState_BarredNoUsage"
      When click on link "Details"
      When click on link "Mobility"

      Then get value of "Subscriber state" on position 1 and store in "CSLIStatus3"
      Then verify if "CSLIStatus3" "equal" "NOT REGISTERED"


   @TC_REG_R10_SUBSCRIBER_STATUS_004_Barred_WithUsage
   Scenario:Test to verify the Subscriber State on User Registration page when SIM is moved to BARRED state.

      Given test case starts
      Given browser is open
      Then login
      When click on menu "Devices"
      When click on submenu "Devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_SubscriberState_BarredWithUsage"
      When click on button "Search"
      When click on link "USE_SubscriberState_BarredWithUsage"
      When click on link "Details"
      When click on link "Mobility"

      Then get value of "Subscriber state" on position 1 and store in "CSLIStatus4"
      Then verify if "CSLIStatus4" "equal" "NOT REGISTERED"


   @TC_REG_R10_SUBSCRIBER_STATUS_005_Active_NoUsage
   Scenario:Test to verify the Subscriber State on User Registration page when SIM is in ACTIVE state and has not done any usage.

      Given test case starts
      Given browser is open
      Then login
      When click on menu "Devices"
      When click on submenu "Devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_SubscriberState_ActiveNoUsage"
      When click on button "Search"
      When click on link "USE_SubscriberState_ActiveNoUsage"
      When click on link "Details"
      When click on link "Mobility"

      Then get value of "Subscriber state" on position 1 and store in "CSLIStatus5"
      Then verify if "CSLIStatus5" "equal" "Device is not registered"


   @TC_REG_R10_SUBSCRIBER_STATUS_006_FailedPSIResponse
   Scenario:Test to verify the Subscriber State on User Registration page when any PSI response fails.


      Given test case starts
      Given browser is open
      Then login
      When click on menu "Devices"
      When click on submenu "Devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_SubscriberState_FailedPSIResponse"
      When click on button "Search"
      When click on link "USE_SubscriberState_FailedPSIResponse"
      When click on link "Details"
      When click on link "Mobility"

      Then get value of "Subscriber state" on position 1 and store in "CSLIStatus6"
      Then verify if "CSLIStatus6" "equal" "NOT FROM VLR"


