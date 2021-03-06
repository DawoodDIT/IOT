@Status
Feature:  Status

   @TC_REG_R10_STATUS_001_Suspended
   Scenario:Test to verify the GSM and GPRS status on User Registration page when SIM is VLR/SGSN unknown.

      Given test case starts
      Given browser is open
      Then login
      When click on menu "Devices"
      When click on submenu "Devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_Status_Suspended"
      When click on button "Search"
      When click on link "USE_Status_Suspended"
      then wait for 20 seconds
      Then verify text "VLR UNKNOWN"
      When click on link "Details"
      Then verify text "Mobility"
      When click on link "Mobility"
      Then wait for 10 seconds

      Then verify text "Registration information"
      Then get value of "Status" on position 1 and store in "Status1"
      Then verify if "Status1" "equal" "Unknown in mobile network"

      Then verify text "Packet switched information"
      Then get value of "Status" on position 2 and store in "Status2"
      Then verify if "Status2" "equal" "No location update yet"

     Then verify text "Location information"
     Then get value of "Subscriber state" on position 1 and store in "State1"
     Then verify if "State1" "equal" "Device is not registered"

     Then logout


   @TC_REG_R10_STATUS_002_Active
   Scenario:Test to verify the GSM and GPRS status on User Registration page when SIM is in ACTIVE state.


      Given test case starts
      Given browser is open
      Then login
      When click on menu "Devices"
      When click on submenu "Devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_Status_Active"
      When click on button "Search"
      When click on link "USE_Status_Active"
      Then wait for 20 seconds
      Then verify text "VLR UNKNOWN"
      When click on link "Details"
      Then verify text "Mobility"
      When click on link "Mobility"
      Then wait for 10 seconds

     Then verify text "Registration information"
      Then get value of "Status" on position 1 and store in "Status1"
      Then verify if "Status1" "equal" "Unknown in mobile network"

      Then verify text "Packet switched information"
      Then get value of "Status" on position 2 and store in "Status2"
      Then verify if "Status2" "equal" "No location update yet"


       Then logout

   @TC_REG_R10_STATUS_003_Live/Test
   Scenario:Test to verify the GSM and GPRS status on User Registration page when SIM is in Live/Test state.


      Given test case starts
      Given browser is open
      Then login
      When click on menu "Devices"
      When click on submenu "Devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_Status_Live/Test"
      When click on button "Search"
      When click on link "USE_Status_Live/Test"
     Then wait for 10 seconds
      When click on link "Details"
      Then verify text "Mobility"
      When click on link "Mobility"
      Then wait for 10 seconds

      Then verify text "Registration information"
      Then get value of "Status" on position 1 and store in "Status1"
      Then verify if "Status1" "equal" "Unknown in mobile network"

      Then verify text "Packet switched information"
      Then get value of "Status" on position 2 and store in "Status2"
      Then verify if "Status2" "equal" "No location update yet"

     Then logout

   @TC_REG_R10_STATUS_004_Restricted
   Scenario:Test to verify the GSM and GPRS status on User Registration page when SIM is in Restricted state.


      Given test case starts
      Given browser is open
      Then login
      When click on menu "Devices"
      When click on submenu "Devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_Status_Restricted"
      When click on button "Search"
      When click on link "USE_Status_Restricted"
      When click on link "Details"
      When click on link "Mobility"

      Then get value of "Status" on position 1 and store in "CSIStatus4"
      Then verify if "CSIStatus4" "equal" "VLR Restricted"

      Then get value of "Status" on position 2 and store in "PSIStatus4"
      Then verify if "PSIStatus4" "equal" "SGSN Restricted"


   @TC_REG_R10_STATUS_005_Detatched
   Scenario:Test to verify the GSM and GPRS status on User Registration page when SIM is in Detatched state.


      Given test case starts
      Given browser is open
      Then login
      When click on menu "Devices"
      When click on submenu "Devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_Status_Detatched"
      When click on button "Search"
      When click on link "USE_Status_Detatched"
      When click on link "Details"
      When click on link "Mobility"

      Then get value of "Status" on position 1 and store in "CSIStatus5"
      Then verify if "CSIStatus5" "equal" "VLR KNOWN"

      Then get value of "Status" on position 2 and store in "PSIStatus5"
      Then verify if "PSIStatus5" "equal" "SGSN KNOWN"


   @TC_REG_R10_STATUS_006_Barred
   Scenario:Test to verify the GSM and GPRS status on User Registration page when SIM is in Barred state.


      Given test case starts
      Given browser is open
      Then login
      When click on menu "Devices"
      When click on submenu "Devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_Status_Barred"
      When click on button "Search"
      When click on link "USE_Status_Barred"
      When click on link "Details"
      When click on link "Mobility"

      Then get value of "Status" on position 1 and store in "CSIStatus6"
      Then verify if "CSIStatus6" "equal" "VLR BARRED"

      Then get value of "Status" on position 2 and store in "PSIStatus6"
      Then verify if "PSIStatus6" "equal" "SGSN BARRED"

   @TC_REG_R10_STATUS_007_PURGED
   Scenario:Test to verify the GSM and GPRS status on User Registration page when SIM is in PURGED state.


      Given test case starts
      Given browser is open
      Then login
      When click on menu "Devices"
      When click on submenu "Devices"
      Then verify text "Results"
      Then enter textarea "IMSI" "USE_Status_Purged"
      When click on button "Search"
      When click on link "USE_Status_Purged"
      When click on link "Details"
      When click on link "Mobility"

      Then get value of "Status" on position 1 and store in "CSIStatus7"
      Then verify if "CSIStatus7" "equal" "MS PURGED"

      Then get value of "Status" on position 2 and store in "PSIStatus7"
      Then verify if "PSIStatus7" "equal" "MS PURGED"
