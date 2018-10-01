from behave import *
from behave.model import Scenario
from behave.model import ScenarioOutline

import Class.Automation
import Module.Report
import Module.Utility
import Module.logger
import Module.CleanUp
import Class.UserDefinedException
import re
import time
from datetime import datetime
from dateutil.relativedelta import relativedelta

# context.driver = Class.Automation.Automation()
Excep = Class.UserDefinedException.UserDefinedException()


@Given('test case starts')
def starttestcase(context):
    testCaseName = "All"
    reportType = Module.Utility.ReadDataFromJsonFile("tool", "reportlevel")
    test_name = context.scenario.tags[0]
    feature_name = context.feature.tags[0]
    # Module.Report.initiateJVM()
    if reportType == "test":
        # Module.Report.createTestReport(context.scenario.tags[0],context.scenario.tags[0],True)
        ## Test name change in report
        Module.Report.createTestReport(context.scenario.tags[0], context.scenario.name, context.scenario.tags[0], True)
    elif reportType == "feature":
        # Module.Report.createTestReport(context.feature.tags[0],context.scenario.tags[0],False)
        ## Test name change in report
        Module.Report.createTestReport(context.feature.name, context.scenario.name, context.scenario.tags[0], False)
    else:
        Module.Report.createTestReport("Report", context.feature.name, context.scenario.tags[0], False)

    # context.driver.launchAppium()


@Given('browser is open')
def openbrowser(context):
    context.driver.openURL()


@Then('login')
def login(context):
    context.driver.login()


@Then('login as "{user}"')
def loginAs(context, user):
    context.driver.loginAs(user)


@Then('login and verify reset password for "{user}"')
def loginAndVerifyReset(context, user):
    context.driver.loginandVerifyResetPassword(user)


@Then('login and verify user blocked message for "{user}"')
def loginAndVerifyBlocked(context, user):
    context.driver.loginAndVerifyBlocked(user)


@When('click on menu "{menuname}"')
def clickonmenu(context, menuname):
    context.driver.clickOnMenu(menuname)


@When('click on submenu "{submenuname}"')
def clickOnSubmeu(context, submenuname):
    context.driver.clickOnSubmeu(submenuname)


@When('click on input "{inputname}" and enter value "{inputValue}"')
def clickOnInput(context, inputname, inputValue):
    context.driver.clickOnInput(inputname, inputValue)


@Then('select from list "{optionname}"')
def clickonmenu(context, optionname):
    context.driver.selectFromList(optionname)


@Then('click on list "{optionname}"')
def clickOnList(context, optionname):
    context.driver.clickOnList(optionname)


@Then('verify text "{textname}"')
def verifytext(context, textname):
    context.driver.verifyTextOnScreen(textname)


@When('click on link "{linkname}"')
def clickonlink(context, linkname):
    context.driver.clickOnLink(linkname)


@When('click on button "{btnname}"')
def clickonButton(context, btnname):
    context.driver.clickOnButton(btnname)


@When('click on button "{btnname}" on position {position}')
def clickonButton(context, btnname, position):
    context.driver.clickOnButton(btnname, int(position))


@When('click on infinity button of "{lblName}"')
def clickOnInifinityButton(context, lblName):
    context.driver.clickOnInfinityButton(lblName, 0)


@Then('set the value of "{lblName}" infinity')
def clickOnInifinityButton(context, lblName):
    context.driver.clickOnInfinityButton(lblName, 1)


@When('click on tab "{tabname}"')
def clickonTab(context, tabname):
    context.driver.clickOnTab(tabname)


@Then('enter "{FieldName}" "{FieldValue}"')
def enterText(context, FieldName, FieldValue):
    context.driver.enterText(FieldName, FieldValue)


@Then('enter textarea "{FieldName}" "{FieldValue}"')
def enterTextArea(context, FieldName, FieldValue):
    context.driver.enterTextArea(FieldName, FieldValue)


@Then('select dropdown "{dropdownname}" "{optionname}"')
def selectDropDownOption(context, dropdownname, optionname):
    context.driver.selectDropDownOption(dropdownname, optionname)


@Then('validate table headers "{tableHeaders}" for table "{tableName}"')
def verifyTableColumnHeaders(context, tableName, tableHeaders):
    context.driver.verifyTableColumnHeaders(tableName, tableHeaders)


@Then('logout')
def logout(context):
    context.driver.logout()


@Then('report "{msg}"')
def info(context, msg):
    Module.logger.INFO(msg)


@Then('get value of "{lblName}" and store in "{storeValue}"')
def getValueFromLabelAndStore(context, lblName, storeValue):
    lblText = context.driver.getValueFromLabel(lblName)
    context.driver.addValueToDic(storeValue, lblText)


@Then('verify if "{value1}" "{operation}" "{value2}"')
def compareTwoValues(context, value1, value2, operation):
    context.driver.compareTwoValues(value1, value2, operation)


@Then('select drop down "{dropDownName}" "{optionValue}"')
def selectDropDown(context, dropDownName, optionValue):
    context.driver.selectDropDownOption(dropDownName, optionValue)


@Then('get all cols')
def getallcols(context):
    context.driver.getValueFromTable()


@Then('select check box "{chkboxName}"')
def selectCheckBox(context, chkboxName):
    context.driver.selectCheckBox(chkboxName)


@Then('select check box "{chkboxName}" on position {position}')
def selectCheckBox(context, chkboxName, position):
    context.driver.selectCheckBox(chkboxName, int(position))


@Then('select radiobutton "{radbtnName}"')
def selectRadioButton(context, radbtnName):
    context.driver.selectRadioButton(radbtnName)


@Then('select radiobutton "{radbtnName}" on position {position}')
def selectRadioButton(context, radbtnName, position):
    context.driver.selectRadioButton(radbtnName, int(position))


@Then('verify')
def step_impl(context):
    Module.logger.INFO(context.table.headings)
    for row in context.table:
        found = context.driver.verifyOnScreen(row['type'], row['value'])
        if found == False:
            Module.logger.ERROR("Verification of " + row['type'] + " " + row['value'] + " failed")
            break
    if found == True:
        Module.logger.INFO("All Verified successfully")
        Module.Report.Success(context.driver.driver, "All Verified successfull")
    else:
        Module.Report.Failure(context.driver.driver, "All not verified on screen")
        Excep.raiseException("All not verified on screen")


@Then('verify any')
def step_impl(context):
    Module.logger.INFO(context.table.headings)
    for row in context.table:
        found = context.driver.verifyOnScreen(row['type'], row['value'])
        if found == True:
            Module.logger.INFO("Verification of " + row['type'] + " " + row['value'] + " passed")
            break

    if found == False:
        Excep.raiseException("Any verifcation failed")


@Then('select all from table')
def step_impl(context):
    Module.logger.INFO("Then select all from table")
    context.driver.selectAllFromTable()


@Then('click on header "{headername}"')
def clickOnHeader(context, headername):
    Module.logger.INFO("Then click on header " + headername)
    context.driver.clickOnHeaderOfTable(headername)


@Then('click on "{col_name}" of table based on below criteria')
def step_impl(context, col_name):
    Module.logger.INFO("Then click on " + col_name + " of table based on below criteria")
    context.driver.selectFromTable(col_name, context.table.headings, context.table.rows)


@Then('verify value of "{col_name}" is "{value}" of table based on below criteria')
def step_impl(context, col_name, value):
    Module.logger.INFO("Then verify value of " + col_name + " is" + value + " of table based on below criteria")
    context.driver.verifyValueFromTable(col_name, value, context.table.headings, context.table.rows)


@Then('get value of "{col_name}" of table based on below criteria and store in "{storeValue}"')
def step_impl(context, col_name, storeValue):
    Module.logger.INFO("Then get value of " + col_name + " of table based on below criteria and store in " + storeValue)
    got_value = context.driver.getValueFromTable(col_name, context.table.headings, context.table.rows)
    Module.logger.INFO("Stored value is " + got_value)
    context.driver.addValueToDic(storeValue, got_value)


@Then('print following')
def step_impl(context):
    Module.logger.INFO(context.table.headings)
    Module.logger.INFO("===========")

    # for row in context.table:
    #     cols = row.__len__()
    #     while(cols > 0):
    #
    #     Module.logger.INFO(row.__len__())
    #     Module.logger.INFO("============")


@Then('enter values')
def step_impl(context):
    for row in context.table:
        context.driver.enterValues(row['rowname'], row['colname'], row['value'])


@Then('get value of "{lblName}" on position {position} and store in "{storeValue}"')
def getValueFromLabelAndStore(context, lblName, position, storeValue):
    lblText = context.driver.getValueFromLabel(lblName, int(position))
    context.driver.addValueToDic(storeValue, lblText)


@Then('change sim "{imsivalue}" from "{initState}" to "{finalState}"')
def step_impl(context, imsivalue, initState, finalState):
    context.execute_steps("""
        When click menu "Devices" and submenu "All devices"
        Then verify text "Results"
        Then enter textarea "IMSI" "{imsivalue}"
        When click on button "Search"
        Then verify text "Results"
        Then verify value of "State" is "{initState}" of table based on below criteria
        |IMSI|
        |{imsivalue}|
        Then click on "checkbox" of table based on below criteria
        |IMSI|
        |{imsivalue}|
        When click on link "Operations"
        Then verify text "Batch Operations"
        When click on button "Next"
        Then verify text "Batch operation"
        Then select dropdown "* Action" "Change state"
        Then verify text "New State"
        Then select dropdown "New State" "{finalState}"
        #Then select dropdown "State change reason" "End of contract"
        When click on button "Next"
        Then verify text "You are about to apply the following to"
        When click on button "Submit"
        Then verify text "The batch operation was successfully submitted with the following batch ID:"
        When click on button "Go to devices"
        Then verify text "Results"        
        Then enter textarea "IMSI" "{imsivalue}"
        When click on button "Search"
        Then verify value of "State" is "{finalState}" of table based on below criteria
        |IMSI|
        |{imsivalue}|
        Then report "State change is successful"
    """.format(imsivalue=imsivalue, initState=initState, finalState=finalState))


@Then('State change reason is mandatory "{imsivalue}" from "{initState}" to "{finalState}"')
def step_impl(context, imsivalue, initState, finalState):
    context.execute_steps("""
        When click menu "Devices" and submenu "All devices"
         Then verify text "Results"
         Then enter textarea "IMSI" "{imsivalue}"
         When click on button "Search"
         Then verify text "{initState}"
         Then click on "checkbox" of table based on below criteria
         |IMSI|
         |{imsivalue}|
         When click on link "Operations"
         When click on button "Next"
         Then select dropdown "* Action" "Change state"
         Then verify text "Batch operation"
         Then select dropdown "New State" "{finalState}"
         When click on button "Next"
         Then verify text "This is a mandatory field"
         Then report "Verified *State change reason is mandatory"
         Then select dropdown "State change reason" "Other"
         Then enter "StateChangeReason" "Test"
         When click on button "Next"
         When click on button "Submit"
         Then verify text "The batch operation was successfully submitted"
         When click on button "Go to devices"
         Then verify text "Devices"
         Then verify value of "State" is "{finalState}" of table based on below criteria
         |IMSI|
         |{imsivalue}|
         Then report "State change is successful"
     """.format(imsivalue=imsivalue, initState=initState, finalState=finalState))


@Then('verify below values and set to unlimited')
def verifyAndSetToUnlimited(context):
    for row in context.table:
        context.driver.verifyAndSetToUnlimited(row['LabelName'])


@Then('remove options "{optionname}" from dropdown "{dropdownname}"')
def selectDropDownOption(context, dropdownname, optionname):
    context.driver.selectDropDownOption(dropdownname, optionname, "remove")


@Then('enter date for "{fieldname}" "{fieldvalue}"')
def enterDate(context, fieldname, fieldvalue):
    context.driver.enterDate(fieldname, fieldvalue)


@Then('enter date "{dateFieldName}" "{dateFieldValue}"')
def enterDate(context, dateFieldName, dateFieldValue):
    Module.logger.INFO("dateFieldName:" + dateFieldName + "and dateFieldValue:" + dateFieldValue)
    context.driver.enterDateOne(dateFieldName, dateFieldValue)


@Then('get values of following from table and store')
def step_impl(context):
    for row in context.table:
        context.driver.enterValues(row['rowname'], row['colname'], None, row['valueToStore'])


@When('click on expand link "{expandLinkname}"')
def clickonExpandlink(context, expandLinkname):
    context.driver.clickOnExpandLink(expandLinkname)


@When('click on expand link "{expandLinkname}" on position {position}')
def clickOnExpandLink(context, expandLinkname, position):
    context.driver.clickOnExpandLink(expandLinkname, int(position))


@Then('click on results based on below criteria')
def step_impl(context):
    values = []

    for r in context.table.rows:
        Module.logger.INFO(r[0])
        values.append(r[0])

    context.driver.verifyResults(values)


@Then('store time in "{strtime}"')
def step_impl(context, strtime):
    strtimevalue = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    # strtimevalue = "2017-10-24 17:31:51"
    context.driver.addValueToDic(strtime, strtimevalue)


@Then('click on priority "{priority}"')
def step_impl(context, priority):
    context.driver.clickOnPriority(priority)


@Then('verify no text "{textname}"')
def verifyNotext(context, textname):
    context.driver.verifyTextNotOnScreen(textname)


@Then('wait for {sec} seconds')
def step_impl(context, sec):
    time.sleep(int(sec))


@Then(
    'Set SMS Advance Setting of Validity "{vv}" Period "{vp}" Encoding "{ev}" Priority "{priority}" MessageUDH "{mudh}" Overwrite "{ow}"')
# @Then('Set SMS Advance Setting of Validity "{vv}" Period "{vp}" Encoding "{ev)" Priority "{pv}" MessageUDH "{mudh}" Overwrite "{ow}"')
def step_impl(context, vv, vp, ev, priority, mudh, ow):
    context.execute_steps("""
         When click on link "Advanced settings"
         Then enter "Validity" "{vv}"
         Then select dropdown "Validity" "{vp}"
         Then select dropdown "Encoding" "{ev}"
         Then click on priority "{priority}"
         Then select radiobutton "{mudh}" on position 1
         Then select radiobutton "{ow}" on position 1
         When click on button "Send"
     """.format(vv=vv, vp=vp, ev=ev, priority=priority, mudh=mudh, ow=ow))


@Then('send SMStype "{smstype}""{msgbody}" from IMSI "{imsivalue}" to shortcode "{shortcodevalue}"')
def step_impl(context, smstype, msgbody, imsivalue, shortcodevalue):
    context.execute_steps("""
         When click menu "Devices" and submenu "All devices"
         Then verify text "Results"
         Then verify text "IMSI"
         Then enter textarea "IMSI" "{imsivalue}"
         When click on button "Search"
         Then verify text "{imsivalue}"
         When click on link "{imsivalue}"
         Then verify text "{imsivalue}"
         Then verify text "Operations"
         When click on link "Operations"
         Then verify text "Take action"
         When click on link "Take action"
         Then verify text "Send SMS"
         When click on button "Send SMS"
         Then verify text "Sender's Number"
         Then enter "* Sender's Number" "{shortcodevalue}"
         Then verify text "Type"
         Then select dropdown "* Type" "{smstype}"
         Then verify text "Message"
         Then enter textarea "Message" "{msgbody}"
     """.format(smstype=smstype, msgbody=msgbody, imsivalue=imsivalue, shortcodevalue=shortcodevalue))


@Then('click on Recent Data Usage for Imsi "{imsivalue}"')
def step_impl(context, imsivalue):
    context.execute_steps("""
        When click menu "Devices" and submenu "Devices"
        Then verify text "Results"
        Then enter textarea "IMSI" "{imsivalue}"
        When click on button "Search"
        Then verify text "{imsivalue}"
        When click on link "{imsivalue}"
        Then verify text "Data Session"
        Then verify text "Active for"
        When click on link "Details"
        Then verify text "Recent data usage"
        When click on link "Recent data usage"

    """.format(imsivalue=imsivalue))


@Then('set APN credentials for "{imsivalue}" apn "{apnname}" username "{username}" Password "{password}"')
def step_impl(context, imsivalue, apnname, username, password):
    context.execute_steps("""
        When click menu "Devices" and submenu "Devices"
        Then verify text "Results"
        Then enter textarea "IMSI" "{imsivalue}"
        When click on button "Search"
        Then verify text "{imsivalue}"
        When click on link "{imsivalue}"
        When click on link "Operations"
        When click on link "Configure"
        When click on link "Set APN username and password"
        Then select dropdown "* APN" "{apnname}"
        Then enter "* Username" "{username}"
        Then enter "* Password" "{password}"
        When click on button "Next"
        When click on button "Confirm"
        Then verify text "APN have been set"
        When click on button "Go to operations"
    """.format(imsivalue=imsivalue, apnname=apnname, username=username, password=password))


@When('select upload button "{uploadbuttonname}" and upload file "{filename}"')
def uploadFile(context, uploadbuttonname, filename):
    context.driver.uploadFile(uploadbuttonname, filename)


@Then('verify filetext "{text}" in downloaded file "{filetype}"')
def verifyTextInDownloadedFile(context, text, filetype):
    context.driver.verifyDownloadedFile(text, filetype)


@Then('get value between "{start}" "{end}" of "{msg}" and store in "{storevalue}"')
def getGeneratedValueFromMsg(context, start, end, msg, storevalue):
    genValue = context.driver.getGeneratedValueFromMsg(start, end, msg)
    context.driver.addValueToDic(storevalue, genValue)


@Then('generate unique name starts with "{name}" and store in "{storeValue}"')
def generateUniqueName(context, name, storeValue):
    uniqueName = context.driver.generateUniqueName(name)
    context.driver.addValueToDic(storeValue, uniqueName)


@Then('validate table row count "{rowcount}"')
def verifyTableRowCount(context, rowcount):
    context.driver.verifyTableRowCount(rowcount)


@Then('generate "{x}" random alphabets and store in "{storeValue}"')
def generateRandomAlphabets(context, x, storeValue):
    randomAlphabets = context.driver.generateRandomAlphabets(x)
    context.driver.addValueToDic(storeValue, randomAlphabets)


@Then('generate "{y}" random numbers and store in "{storeValue}"')
def generateRandomNumbers(context, y, storeValue):
    randomNumbers = context.driver.generateRandomNumbers(y)
    context.driver.addValueToDic(storeValue, randomNumbers)


@Then('join below strings and store in "{storeValue}"')
def step_impl(context, storeValue):
    concatenatedString = ""
    for row in context.table:
        concatenatedString = context.driver.joinStrings(concatenatedString, row['strings'])
    context.driver.addValueToDic(storeValue, concatenatedString)


@When('opco upload batch file for customer "{customer}" Imsi "{imsi}" and Batch "{batchfile}"')
def step_impl(context, customer, imsi, batchfile):
    context.execute_steps("""
        Then verify text "Devices"
        When click on menu "Devices"
        Then wait for 10 seconds
        Then verify text "Devices"
        When click on submenu "Devices"
        Then wait for 5 seconds
        Then verify text "IMSI"
        Then enter textarea "IMSI" "{imsi}"
        When click on button "Search"
        Then verify text "Operations"
        When click on link "Operations"
        Then verify text "You can also perform operations from file"
        When click on link "> You can also perform operations from file"
        Then verify text "Organisation"
        When click on input "Organisation" and enter value "{customer}"
        Then wait for 10 seconds
        Then verify text "Select file"
        When select upload button "Select file" and upload file "{batchfile}"
        When click on button "Next"
        Then verify text "You are about to"
        Then store time in "strtime"
        When click on button "Submit"
        Then verify text "The batch operation was successfully submitted"
        """.format(customer=customer, imsi=imsi, batchfile=batchfile))


@When('customer upload batch file for customer "{customer}" Imsi "{imsi}" and Batch "{batchfile}"')
def step_impl(context, customer, imsi, batchfile):
    context.execute_steps("""
        Then verify text "Devices"
        When click on menu "Devices"
        Then wait for 10 seconds
        Then verify text "Devices"
        When click on submenu "Devices"
        Then wait for 5 seconds
        Then verify text "IMSI"
        Then enter textarea "IMSI" "{imsi}"
        When click on button "Search"
        Then verify text "Operations"
        When click on link "Operations"
        Then verify text "You can also perform operations from file"
        When click on link "> You can also perform operations from file"
        Then verify text "Select file"
        When click on input "Organisation" and enter value "USE_BatchOperationCustomer_Cust"
        When select upload button "Select file" and upload file "{batchfile}"
        When click on button "Next"
        Then verify text "You are about to"
        Then store time in "strtime"
        When click on button "Submit"
        Then verify text "The batch operation was successfully submitted"
        """.format(customer=customer, imsi=imsi, batchfile=batchfile))


@Then('verify filetext \'{text}\' in file "{filetype}"')
def verifyTextInDownwloadedFile(context, text, filetype):
    context.driver.verifyDownloadedFile(text, filetype)


@Then('verify not')
def verifyNot(context):
    Module.logger.INFO(context.table.headings)
    for row in context.table:
        found = context.driver.verifyOnScreen(row['type'], row['value'])
        if found == True:
            Module.logger.ERROR("Verification of abscence of " + row['type'] + " " + row['value'] + " failed")
            break
    if found == False:
        Module.logger.ERROR("No unexpected fields displayed on screen")
        Module.Report.Success(context.driver.driver, "No unexpected fields displayed on screen")
    else:
        Module.Report.Failure(context.driver.driver, "Unexpected fields available on screen")
        Excep.raiseException("Unexpected fields availabel on screen")


@When('click on search result "{resultname}"')
def clickOnSearchResult(context, resultname):
    context.driver.clickOnSearchResult(resultname)


@Then(
    'create Event for metric "{metric}" entitytype "{entitytype}" profiletype "{profiletype}" profilename "{profilename}" monitorlevel "{monitorlevel}" monitorperiod "{monitorperiod}" thresholdtype "{thresholdtype}" thresholdvalue "{thresholdvalue}" deviceaction "{deviceaction}"')
def step_impl(context, metric, entitytype, profiletype, profilename, monitorlevel, monitorperiod, thresholdtype,
              thresholdvalue, deviceaction):
    context.execute_steps("""
      When click on menu "Tools"
      When click on submenu "Event triggers"
      Then verify text "Event triggers"
      When click on button "Create event trigger"
      Then verify text "Create event trigger"
      Then generate unique name starts with "EventNotify" and store in "EventName"
      Then enter "* Event trigger name" "EventName"
      When click on input "Organisation" and enter value "USE_EventUsageNotification_Cust1"
      Then select dropdown "* Event metric" "{metric}"
      Then select radiobutton "Yes" on position 2
      """.format(metric=metric))
    if entitytype != "BLANK":
        context.execute_steps("""
          Then select dropdown "* Entity type" "{entitytype}"
          """.format(entitytype=entitytype))
    context.execute_steps("""
          Then wait for 5 seconds""")
    if profiletype != "BLANK" and profilename != "BLANK":
        context.execute_steps("""
          Then select dropdown "{profiletype}" "{profilename}"
          """.format(profiletype=profiletype, profilename=profilename))
    if monitorlevel != "BLANK":
        context.execute_steps("""
          Then select dropdown "* Monitoring level" "{monitorlevel}"
          """.format(monitorlevel=monitorlevel))
    if monitorperiod != "BLANK":
        context.execute_steps("""
          Then select dropdown "* Monitoring period" "{monitorperiod}"
          """.format(monitorperiod=monitorperiod))
    if thresholdtype != "BLANK":
        context.execute_steps("""
          Then select radiobutton "{thresholdtype}"
          """.format(thresholdtype=thresholdtype))
    if ("Radius" not in metric) and ("SMS Delivery" not in metric) and (
            "Packet Data Volume (Bytes In Only)" not in metric):
        context.execute_steps("""
          Then select dropdown "* Required state" "Any"
          """.format(thresholdtype=thresholdtype))
    if thresholdvalue != "BLANK":
        context.execute_steps("""
          Then enter "* Threshold value" "{thresholdvalue}"
          """.format(thresholdvalue=thresholdvalue))
    context.execute_steps("""
      Then select radiobutton "Enabled"
      Then select check box "Immediate email"

      """)
    if (monitorlevel == "Device"):
        context.execute_steps("""
          Then select dropdown "Device action" "None"
          """)
    if (monitorlevel == "Compound") and ("SMS-MO" not in metric):
        context.execute_steps("""
          Then select radiobutton "By %"
          Then enter "* On" "1"
          """)
    elif (monitorlevel == "Compound"):
        context.execute_steps("""
          Then select radiobutton "By number"
          Then enter "* On" "1"
          """)
    if (monitorperiod == "Set hourly range"):
        context.execute_steps("""
          Then select dropdown "* From" "USE_EventUsageNotification_HourFrom"
          Then select dropdown "* To" "USE_EventUsageNotification_HourFrom"
          """)
    if (
            metric == "Time In State" or metric == "Voice Duration" or metric == "Period since First transition into Active-Live state"):
        context.execute_steps("""
          Then select dropdown "* Threshold value" "Seconds"
          """)
    if ("Packet Data Volume" in metric):
        context.execute_steps("""
          Then select dropdown "* Threshold value" "Bytes"
          """)
    if (deviceaction == "Change service profile"):
        context.execute_steps("""
          Then select dropdown "* Device action" "{deviceaction}"
          Then select dropdown "Service profile" "USE_EventUsageNotification_CSP1"
          """.format(deviceaction=deviceaction))
    if (deviceaction == "Change state"):
        context.execute_steps("""
          Then select dropdown "* Device action" "{deviceaction}"
          Then select dropdown "State" "USE_EventUsageNotification_State"
          """.format(deviceaction=deviceaction))

    context.execute_steps("""
      When click on button "Next"
      Then verify text "Please confirm the following data."
      When click on button "Create"
      Then verify text "successfully created"
      """)


@Then('verify event')
def step_impl(context):
    context.execute_steps("""
      When click on link "See event detail"
      Then verify text "EventName"
      Then verify text "Enabled"
      Then verify text "Yes"
      """)


@When('mobile usage breached')
def step_impl(context):
    context.execute_steps("""
      Given select mobile "mobile2"
      When launch mobile app "youtube"
      Then verify text "Home" on mobile
      Then click on mobile icon "Search"
      Then tap on enter key on mobile
      Then enter "Search YouTube" "java" on mobile
      When click on mobile link "Java Programming"
      """)


@Then('download report "{reportname}" format "{format}"')
def step_impl(context, reportname, format):
    context.execute_steps("""
      When click on menu "Reporting"
      When click on submenu "Reports"
      Then verify text "Generate report"
      Then select dropdown "* Report" "{reportname}"
      Then select dropdown "* Period" "Today"
      Then select dropdown "* Customer" "USE_EventUsageNotification_Cust1"
      Then select dropdown "* Format" "{format}"
      When click on button "Generate"
    """.format(reportname=reportname, format=format))


@Then('verify "{content}" in email')
def verify_email(context, subject, content):
    context.driver.verify_email(content)


@Then('delete event')
def step_impl(context):
    context.execute_steps("""
      When click on menu "Tools"
      When click on submenu "Event triggers" 	
      Then verify text "Event triggers"
      When click on input "Organisation" and enter value "USE_EventUsageNotification_Cust1"
      Then enter "Event trigger" "EventName"
      When click on button "Search"
      When click on link "EventName"
      Then verify text "EventName"
      When click on button "Delete event trigger"
      Then verify text "Please confirm this action."
      When click on button "Delete"
      Then verify text "was successfully deleted!"
    """)


@Then('get todays date and store in "{storeValue}"')
def getTodaysDate(context, storeValue):
    today = context.driver.getTodaysDate()
    context.driver.addValueToDic(storeValue, today)


@Then('get downloaded file name of type "fileType" and store in "{storeValue}"')
def getfileName(context, fileType, storeValue):
    fileName = context.driver.getFileName(fileType)
    context.driver.addValueToDic(storeValue, fileName)


@Then('verify hidden header "{headerName}"')
def verifyHiddenHeader(context, headerName):
    context.driver.verifyHiddenHeader(headerName)


@When('click menu "{menu}" and submenu "{submenu}"')
def step_impl(context, menu, submenu):
    context.execute_steps("""
        Then verify text "{menu}"
        When click on menu "{menu}"
        Then wait for 5 seconds
        Then verify text "{submenu}"
        When click on submenu "{submenu}"
        Then wait for 5 seconds
    """.format(menu=menu, submenu=submenu))


@Then('remove item "{itemName}" by clicking close')
def removeItem(context, itemName):
    context.driver.removeItem(itemName)
