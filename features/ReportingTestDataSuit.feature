@ReportsTestData
Feature: This feature file creates Test Data for M2M Reports

@Itemised_PacketData_SMS_CS_Usage
Scenario: Test to verify that a PS session is successfully established
Given test case starts
Given browser is open
Then login
#    Mobile Part
#    Enabling Data Connection on Mobile
Given select mobile "mobile2"
When launch mobile app "APNsettings"
Then scroll to text "USE_CustomerDATA_DataAPN"
Then select mobile radiobutton "USE_CustomerDATA_DataAPN"
When launch mobile app "MobileNetworkSettings"
Then switch off mobile data for "USE_CustomerDATA_Mobile2deviceId"
Then wait for 20 seconds
Then switch on mobile data for "USE_CustomerDATA_Mobile2deviceId"
When launch mobile app "MobileNetworkSettings"
Then verify if data signal available for "USE_CustomerDATA_Mobile2deviceId"
#    Opening Youtube
When launch mobile app "youtube"
Then verify no text "No connection" on mobile
Then click on mobile icon "Search"
Then tap on enter key on mobile
Then enter "Search YouTube" "java" on mobile
When click on mobile link "Java Programming"
Then wait for 120 seconds
#    Sending SMS
#    SMS 1
When launch mobile app "message"
Then send sms "Hello M2M" from "USE_Diagnostics_mobile1deviceId" to "USE_Diagnostics_mobile1RecMobNo"
Then wait for 20 seconds
#    SMS 2
When launch mobile app "message"
Then send sms "Hello M2M" from "USE_Diagnostics_mobile1deviceId" to "USE_Diagnostics_mobile1RecMobNo"
Then wait for 20 seconds
#    SMS 3
When launch mobile app "message"
Then send sms "Hello M2M" from "USE_Diagnostics_mobile1deviceId" to "USE_Diagnostics_mobile1RecMobNo"
Then wait for 60 seconds
#    Making Calls
#    Call 1
Then from "USE_Diagnostics_mobile1deviceId" call No "USE_Diagnostics_mobile1RecMobNo"
Then wait for 60 seconds
Then end call from "USE_Diagnostics_mobile1deviceId"
Then wait for 20 seconds
#    Call 2
Then from "USE_Diagnostics_mobile1deviceId" call No "USE_Diagnostics_mobile1RecMobNo"
Then wait for 60 seconds
Then end call from "USE_Diagnostics_mobile1deviceId"
Then wait for 20 seconds
#    Call 3
Then from "USE_Diagnostics_mobile1deviceId" call No "USE_Diagnostics_mobile1RecMobNo"
Then wait for 60 seconds
Then end call from "USE_Diagnostics_mobile1deviceId"
Then wait for 20 seconds
#    Sending SMS
#    SMS 1
Then send sms "Hello M2M" from "USE_Diagnostics_mobile1deviceId" to "USE_Diagnostics_mobile1RecMobNo"
Then wait for 20 seconds
#    SMS 2
When launch mobile app "message"
Then send sms "Hello M2M" from "USE_Diagnostics_mobile1deviceId" to "USE_Diagnostics_mobile1RecMobNo"
Then wait for 20 seconds
#    SMS 3
When launch mobile app "message"
Then send sms "Hello M2M" from "USE_Diagnostics_mobile1deviceId" to "USE_Diagnostics_mobile1RecMobNo"
Then logout
