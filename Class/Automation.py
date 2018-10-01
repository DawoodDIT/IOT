import re
import time
import string
import random
from datetime import datetime
import platform
import subprocess
import pyautogui

import selenium
from dateutil.relativedelta import relativedelta

import Class.MobileNative
import Class.SeleniumBrowser
# import Module.Reports
import Commands.ClickOnButton
import Commands.clickOnExpandLink
import Commands.clickOnHeaderOfTable
import Commands.clickOnImage
import Commands.clickOnInifinity
import Commands.clickOnInput
import Commands.clickOnLink
import Commands.clickOnList
import Commands.clickOnMenu
import Commands.clickOnSubMenu
import Commands.clickOnTab
import Commands.enterDate
import Commands.enterText
import Commands.enterTextArea
import Commands.enterValues
import Commands.getValueFromTable
import Commands.selectAllFromTable
import Commands.selectCheckBox
import Commands.selectDropDownOption
import Commands.selectFromList
import Commands.selectFromTable
import Commands.selectRadioButton
import Commands.verifyAndSetToUnlimited
import Commands.verifyOnScreen
import Commands.verifyTableColumnHeaders
import Commands.verifyTextOnScreen
import Commands.verifyTextNotOnScreen
import Commands.verifyValueFromTable
import Commands.verifyResults
import Commands.clickOnPriority
import Commands.clickOnSearchResult
import Module.Report
import Module.Utility
import Module.logger
import Commands.verifyTableRowCount
import selenium.common.exceptions
import Class.UserDefinedException

Excep = Class.UserDefinedException.UserDefinedException()
import Commands.uploadFile
import Commands.verifyDownloadedFile
import Commands.verifyEmail
import Commands.verifyHiddenHeader
import Commands.removeItem


class Automation:
    def __init__(self):
        self.driver = Class.SeleniumBrowser.SeleniumBrowser()
        self.driver()

    # def selectDevice(self,device):
    #     self.mobiledriver.selectDevice(device)
    #
    # def launchApp(self,appName):
    #     self.mobiledriver.launchApp(appName)

    def launchAppium(self):
        # Check to see if appium is already running. If not, launch appium.
        osName = str(platform.system())
        # Get platform type (windows, macOS, linux etc)
        if osName == "Windows":
            openPorts = str(subprocess.check_output(["netstat", "-an"]))
            # Get list of all open ports using netstat command in Windows
            # Save results as string
            appiumPort = "TCP    0.0.0.0:4723           0.0.0.0:0              LISTENING"
            # Information shown in netstat if appium is running on default port
            launchCommand = ["start", "cmd", "/k",
                             "C:\\Users\Automation4\AppData\Local\Programs\\appium-desktop\Appium.exe"]
            # Command to launch appium desktop version. Path points to location of Appium.exe
            # "start", "cmd", "/k" : required to launch the application in its own command propmt
            # Appium will continue to run after test case exits

        elif osName == "Darwin":
            openPorts = str(subprocess.check_output(["lsof", "-i4", ]))
            # Get list of all open ports using lsof command in MacOS
            # Save results as string
            appiumPort = "TCP *:4723 (LISTEN)"
            # Information shown in lsof if appium is running on default port
            launchCommand = "open -a appium.app -n"
            # Command to launch appium desktop version

        if appiumPort in openPorts:
            # Check to see if appium details are found in netstat/lsof result
            # If True, then appium is already running on the default port, as required
            print("Appium is already running")

        else:
            Module.logger.INFO("Appium not running; launching Appium")
            # If appium details not found in netstat/lsof, then appium os not running on default port and a new instance of appium server will be launched
            subprocess.Popen(launchCommand, shell=True)
            # Execute command to launch appium server.
            # Command will execute using the required arguments for each platform type
            time.sleep(15)
            # Allow time for appium server to launch before terminating the process
            # Input required host ip address and port number and launch Appium desktop/
            pyautogui.press('esc')
            print("pressed escape")
            time.sleep(10)
            pyautogui.press('enter')
            print("pressed enter")
            time.sleep(2)
            pyautogui.press('tab', presses=4)
            pyautogui.typewrite('0.0.0.0')
            # Run appium using host 0.0.0.0
            pyautogui.press('tab')
            pyautogui.typewrite("4723")
            # Run appium using port 4723
            pyautogui.press('tab')
            pyautogui.press('enter')
            time.sleep(2)
            # Appium desktop launched
            Module.logger.INFO("Appium is running")

    def openURL(self):
        self.driver.openUrl()

    def login(self):
        # Module.Report.Info(self.driver,"Login Page")
        self.driver.ifpageloaded()
        self.driver.login()
        Module.Report.Success(self.driver, "After Login")

    def loginAs(self, user):
        self.driver.ifpageloaded()
        self.driver.loginAs(user)
        Module.Report.Success(self.driver, "After Login")

    def loginandVerifyResetPassword(self, user):
        self.driver.ifpageloaded()
        self.driver.loginandVerifyResetPassword(user)
        Module.Report.Success(self.driver, "Reset password verification is successful")

    def loginAndVerifyBlocked(self, user):
        self.driver.ifpageloaded()
        self.driver.loginAndVerifyBlocked(user)
        Module.Report.Success(self.driver, "Blocked user verification is successful")

    def performPreChecks(self):
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                self.driver.ifpageloaded()
                success = 1
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1
                # self.driver.gotocorrectframe()

    def clickOnButton(self, buttonName, position=1):
        Module.logger.INFO("Clicking on button: " + buttonName)
        Module.Report.Info(self.driver, "Clicking on button: " + buttonName)
        self.buttonName = buttonName
        self.position = position
        self.performPreChecks()
        buttonName = Module.Utility.readTestData(buttonName)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.ClickOnButton.clickOnButton(self.driver, buttonName, position)
                success = 1
                Module.Report.Success(self.driver, "Clicked on button: " + buttonName)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def clickOnInfinityButton(self, lblName, unlimited=0):
        Module.logger.INFO("Clicking on inifinity button of: " + lblName)
        Module.Report.Info(self.driver, "Clicking on inifinity button of: " + lblName)
        self.lblName = lblName
        self.unlimited = unlimited
        self.performPreChecks()
        lblName = Module.Utility.readTestData(lblName)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.clickOnInifinity.clickOnInifinityButton(self.driver, lblName, unlimited)
                success = 1
                Module.Report.Success(self.driver, "Clicked on inifinity button of: " + lblName)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def clickOnMenu(self, menuName):
        Module.logger.INFO("Clicking on menu: " + menuName)
        Module.Report.Info(self.driver, "Clicking on menu: " + menuName)
        # Module.Reports.allure_test()
        self.menuName = menuName
        self.performPreChecks()
        menuName = Module.Utility.readTestData(menuName)
        # self.driver.gotodefaultframe()
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.clickOnMenu.clickOnMenu(self.driver, menuName)
                success = 1
                Module.Report.Success(self.driver, "Clicked on menu: " + menuName)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def clickOnSubmeu(self, subMenuName):
        Module.logger.INFO("Clicking on submenu: " + subMenuName)
        Module.Report.Info(self.driver, "Clicking on submenu: " + subMenuName)
        self.subMenuName = subMenuName
        self.performPreChecks()
        # self.driver.gotodefaultframe()
        subMenuName = Module.Utility.readTestData(subMenuName)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.clickOnSubMenu.clickOnSubmenu(self.driver, subMenuName)
                success = 1
                Module.Report.Success(self.driver, "Clicked on submenu: " + subMenuName)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def clickOnTab(self, tabName):
        Module.logger.INFO("Clicking on tab: " + tabName)
        Module.Report.Info(self.driver, "Clicking on tab: " + tabName)
        # Module.Reports.allure_test()
        self.tabName = tabName
        self.performPreChecks()
        # self.driver.gotodefaultframe()
        tabName = Module.Utility.readTestData(tabName)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.clickOnTab.clickOnTab(self.driver, tabName)
                success = 1
                Module.Report.Success(self.driver, "Clicked on tab: " + tabName)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def enterText(self, textName, textValue):
        Module.logger.INFO("Entering text " + textValue + " for " + textName)

        self.textName = textName
        self.textValue = textValue
        self.performPreChecks()
        textName = Module.Utility.readTestData(textName)
        textValue = Module.Utility.readTestData(textValue)
        textValue = self.driver.getValueFromDic(textValue)
        Module.logger.INFO("text value is:" + textValue)
        Module.Report.Info(self.driver, "Entering text " + textValue + " for " + textName)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.enterText.enterText(self.driver, textName, textValue)
                success = 1
                Module.Report.Info(self.driver, "Entered text " + textValue + " for " + textName)
            except selenium.common.exception:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def selectDropDownOption(self, menuName, optionName, action="select"):
        Module.logger.INFO("Selecting dropdown menu: " + menuName + " and option " + optionName)
        self.menuName = menuName
        self.optionName = optionName
        menuName = Module.Utility.readTestData(menuName)
        optionName = Module.Utility.readTestData(optionName)
        Module.Report.Info(self.driver, "Selecting dropdown menu: " + menuName + " and option " + optionName)
        self.performPreChecks()
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.selectDropDownOption.selectDropDownOption(self.driver, menuName, optionName, action)
                success = 1
                Module.Report.Success(self.driver, "Selecting dropdown menu: " + menuName + " and option " + optionName)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def verifyTextOnScreen(self, textName):
        Module.logger.INFO("Verifying if text: " + textName + " is present on page")
        self.textName = textName
        self.performPreChecks()

        textName = Module.Utility.readTestData(textName)
        textName = self.driver.getValueFromDic(textName)
        counter = 1
        success = 0
        Module.Report.Info(self.driver, "Verifying that text: " + textName + " is present on page")
        while ((success != 1) and (counter < 5)):
            try:
                Commands.verifyTextOnScreen.verifyTextOnScreen(self.driver, textName)
                success = 1
                Module.Report.Success(self.driver, "Verified that text: " + textName + " is present on page")
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def verifyTextNotOnScreen(self, textName):
        Module.logger.INFO("Verifying if text: " + textName + " is not present on page")
        self.textName = textName
        self.performPreChecks()

        textName = Module.Utility.readTestData(textName)
        textName = self.driver.getValueFromDic(textName)
        counter = 1
        success = 0
        Module.Report.Info(self.driver, "Verifying that text: " + textName + " is not present on page")
        while ((success != 1) and (counter < 3)):
            try:
                obj = Commands.verifyTextNotOnScreen.verifyTextNotOnScreen(self.driver, textName)
                if (obj != None):
                    success = 1
                    Module.Report.Failure(self.driver, "Unexpected text : " + textName + " displayed on screen")
                    Excep.raiseException("Unexpected text : " + textName + " displayed on screen")

            except selenium.common.exceptions.StaleElementReferenceException:
                success = 0
            counter = counter + 1
        if (success == 0):
            Module.Report.Success(self.driver, "Verified that text: " + textName + " is not present on page")

    def clickOnLink(self, lnkName):
        Module.logger.INFO("Clicking on link: " + lnkName)
        self.lnkName = lnkName
        self.performPreChecks()
        lnkName = Module.Utility.readTestData(lnkName)
        lnkName = self.driver.getValueFromDic(lnkName)
        Module.Report.Info(self.driver, "Clicking on link: " + lnkName)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.clickOnLink.clickOnLink(self.driver, lnkName)
                success = 1
                Module.Report.Success(self.driver, "Clicked on link: " + lnkName)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def clickOnImage(self, imgName):
        Module.logger.INFO("Clicking on Image: " + imgName)
        self.imgName = imgName
        self.performPreChecks()
        imgName = Module.Utility.readTestData(imgName)
        Module.Report.Info(self.driver, "Clicking on Image: " + imgName)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.clickOnImage.clickOnImage(self.driver, imgName)
                success = 1
                Module.Report.Success(self.driver, "Clicked on Image: " + imgName)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def selectRadioButton(self, radbtnName, position=1):
        Module.logger.INFO("Clicking on Radio Button : " + radbtnName)
        self.radbtnName = radbtnName
        self.position = position
        self.performPreChecks()
        radbtnName = Module.Utility.readTestData(radbtnName)
        Module.Report.Info(self.driver, "Clicking on Radio Button : " + radbtnName)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.selectRadioButton.selectRadioButton(self.driver, radbtnName, position)
                success = 1
                Module.Report.Success(self.driver, "Clicked on Radio Button : " + radbtnName)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def clickOnInput(self, inputName, inputValue):
        Module.logger.INFO("Clicking on Input: " + inputName + " and selecting value " + inputValue)
        # Module.Reports.allure_test()
        self.inputName = inputName
        self.inputValue = inputValue
        self.performPreChecks()
        inputName = Module.Utility.readTestData(inputName)
        inputValue = Module.Utility.readTestData(inputValue)
        Module.Report.Info(self.driver, "Clicking on Input: " + inputName + " and selecting value " + inputValue)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.clickOnInput.clickOnInput(self.driver, inputName, inputValue)
                success = 1
                Module.Report.Success(self.driver,
                                      "Clicked on Input: " + inputName + " and selected value " + inputValue)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def selectFromList(self, optionName):
        Module.logger.INFO("selecting option: " + optionName)
        # Module.Reports.allure_test()
        self.optionName = optionName
        self.performPreChecks()
        optionName = Module.Utility.readTestData(optionName)
        counter = 1
        success = 0
        Module.Report.Info(self.driver, "selecting option: " + optionName)
        while ((success != 1) and (counter < 5)):
            try:
                Commands.selectFromList.selectFromList(self.driver, optionName)
                success = 1
                Module.Report.Success(self.driver, "selected option: " + optionName)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def clickOnList(self, optionName):
        Module.logger.INFO("selecting option: " + optionName)
        # Module.Reports.allure_test()
        self.optionName = optionName
        self.performPreChecks()
        optionName = Module.Utility.readTestData(optionName)
        counter = 1
        success = 0
        Module.Report.Info(self.driver, "selecting option: " + optionName)
        while ((success != 1) and (counter < 5)):
            try:
                Commands.clickOnList.clickOnList(self.driver, optionName)
                success = 1
                Module.Report.Success(self.driver, "selected option: " + optionName)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def logout(self):
        Module.Report.Info(self.driver, "Clicking on Logout")
        self.driver.logout()
        # Module.Report.Success(self.driver, "Clicked on Logout")

    def verifyTableColumnHeaders(self, tableName, ColNamesList):
        Module.logger.INFO("Getting Table Headers")
        self.tableName = tableName
        self.ColNamesList = ColNamesList
        self.performPreChecks()
        counter = 1
        success = 0
        Module.Report.Info(self.driver, "Getting Table Headers")
        while ((success != 1) and (counter < 5)):
            try:
                Commands.verifyTableColumnHeaders.verifyTableColumnHeaders(self.driver, tableName, ColNamesList)
                success = 1
                Module.Report.Success(self.driver, "Table Headers done")
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def selectAllFromTable(self):
        Module.logger.INFO("Selecting All from Table ")
        self.performPreChecks()
        counter = 1
        success = 0
        Module.Report.Info(self.driver, "Selecting All from Table")
        while ((success != 1) and (counter < 5)):
            try:
                Commands.selectAllFromTable.selectAllFromTable(self.driver)
                success = 1
                Module.Report.Info(self.driver, "Selected All from Table")
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def selectFromTable(self, col_to_click, cols, rows):
        Module.logger.INFO("Selecting " + col_to_click + " from Table ")
        # Module.logger.INFO(cols)
        # Module.logger.INFO(rows)
        # Module.logger.INFO(col_to_click)
        self.performPreChecks()
        counter = 1
        success = 0
        Module.Report.Info(self.driver, "Selecting " + col_to_click + " from Table ")
        while ((success != 1) and (counter < 5)):
            try:
                Commands.selectFromTable.selectFromTable(self.driver, col_to_click, cols, rows)
                success = 1
                Module.Report.Success(self.driver, "Selected " + col_to_click + " from Table ")
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def verifyValueFromTable(self, col_to_check, value_to_check, cols, rows):
        Module.logger.INFO("Verfiying value " + col_to_check + " from table")
        self.performPreChecks()
        counter = 1
        success = 0
        Module.Report.Info(self.driver, "Verfiying value " + col_to_check + " from table")
        while ((success != 1) and (counter < 5)):
            try:
                Commands.verifyValueFromTable.verifyValueFromTable(self.driver, col_to_check, value_to_check, cols,
                                                                   rows)
                success = 1
                Module.Report.Success(self.driver,
                                      "Verfied value of " + col_to_check + "is " + value_to_check + "from table")
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def getValueFromTable(self, col_to_check, cols, rows):
        Module.logger.INFO("Get value of " + col_to_check + " from  table")
        self.performPreChecks()
        counter = 1
        success = 0
        Module.Report.Info(self.driver, "Get value of " + col_to_check + " from  table")
        while ((success != 1) and (counter < 5)):
            try:
                got_value = Commands.getValueFromTable.getValueFromTable(self.driver, col_to_check, cols, rows)
                success = 1
                Module.Report.Success(self.driver, "Got value of " + col_to_check + " from  table")
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

        if success == 1:
            return got_value

    def clickOnHeaderOfTable(self, headerName):
        Module.logger.INFO("clicking on header " + headerName)
        self.performPreChecks()
        headerName = Module.Utility.readTestData(headerName)
        counter = 1
        success = 0
        Module.Report.Info(self.driver, "clicking on header " + headerName)
        while ((success != 1) and (counter < 5)):
            try:
                Commands.clickOnHeaderOfTable.clickOnHeaderOfTable(self.driver, headerName)
                success = 1
                Module.Report.Success(self.driver, "clicked on header " + headerName)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def getValueFromLabel(self, lblName, position=1):
        self.lblName = lblName
        self.position = position
        self.performPreChecks()
        Module.Report.Info(self.driver, "Getting value from label " + lblName)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                label_value = self.driver.getValueFromLabel(lblName, position)
                success = 1
                if label_value != None:
                    Module.logger.INFO("LABEL VALUE iS :" + label_value)
                else:
                    Module.logger.INFO("LABEL VALUE iS NONE")
                Module.Report.Success(self.driver,
                                      "Got value from label " + lblName + " and the value is " + label_value)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

        return label_value

    def addValueToDic(self, key, valueToAdd):
        self.driver.addValueToDic(key, valueToAdd)
        Module.Report.Success(self.driver, "Key: " + key + " and Value: " + valueToAdd + "added to dictionary")

    def getValueFromDic(self, keytoGet):
        value = self.driver.getValueFromDic(keytoGet)
        Module.Report.Success(self.driver, "For Key: " + keytoGet + "received value : " + value + "from dictionary")
        return value

    def compareTwoValues(self, value1, value2, operation):
        Module.logger.INFO("Comparing values ")
        self.driver.compareTwoValues(value1, value2, operation)
        Module.Report.Success(self.driver, "Comparing values was successfull")

    def enterDate(self, fieldName, fieldValue):
        self.fieldName = fieldName
        self.fieldValue = fieldValue
        self.fieldValue = self.driver.getValueFromDic(fieldValue)
        self.fieldValue = Module.Utility.readTestData(fieldValue)
        if "today" in fieldValue:
            date = datetime.now().date()
        if "-" in fieldValue:
            tempValue = fieldValue.split("-")[1]
            tempValue = re.findall('\d+', tempValue)
            tempValue = int(tempValue[0])
            date = date + relativedelta(days=-tempValue)
        elif "+" in fieldValue:
            tempValue = fieldValue.split("+")[1]
            tempValue = re.findall('\d+', tempValue)
            tempValue = int(tempValue[0])
            date = date + relativedelta(days=+tempValue)
        self.performPreChecks()
        fieldName = Module.Utility.readTestData(fieldName)

        fieldValue = str(date)
        Module.Report.Info(self.driver, "Enter date " + fieldValue + " for " + fieldName)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.enterDate.enterDate(self.driver, fieldName, fieldValue)
                success = 1
                Module.Report.Success(self.driver, "Enter date " + fieldValue + " for " + fieldName)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def getTodaysDate(self):
        date = datetime.now().date()
        return str(date)

    def enterDateOne(self, fieldName, fieldValue):
        self.fieldName = fieldName
        self.fieldValue = fieldValue
        self.performPreChecks()

        fieldName = Module.Utility.readTestData(fieldName)
        fieldValue = Module.Utility.readTestData(fieldValue)

        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.enterDate.enterDate(self.driver, fieldName, fieldValue)
                success = 1
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def enterTextArea(self, fieldName, fieldValue):
        self.fieldName = fieldName
        self.performPreChecks()
        fieldName = Module.Utility.readTestData(fieldName)
        fieldValue = Module.Utility.readTestData(fieldValue)
        fieldValue = self.driver.getValueFromDic(fieldValue)
        Module.Report.Info(self.driver, "Enter text area " + fieldValue + " for " + fieldName)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.enterTextArea.enterTextArea(self.driver, fieldName, fieldValue)
                success = 1
                Module.Report.Success(self.driver, "Enter text area " + fieldValue + " for " + fieldName)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def verifyTextNotOnScreen(self, textName):
        Module.logger.INFO("Verifying if text: " + textName + " is not present on page")
        self.textName = textName
        self.performPreChecks()

        textName = Module.Utility.readTestData(textName)
        counter = 1
        success = 0
        Module.Report.Info(self.driver, "Verifying that text: " + textName + " is not present on page")
        while ((success != 1) and (counter < 3)):
            try:
                obj = Commands.verifyTextNotOnScreen.verifyTextNotOnScreen(self.driver, textName)
                if (obj != None):
                    success = 1
                    Module.Report.Failure(self.driver, "Unexpected text : " + textName + " displayed on screen")
                    Excep.raiseException("Unexpected text : " + textName + " displayed on screen")

            except selenium.common.exceptions.StaleElementReferenceException:
                success = 0
            counter = counter + 1
        if (success == 0):
            Module.Report.Success(self.driver, "Verified that text: " + textName + " is not present on page")

    def selectCheckBox(self, chkBoxName, position=1):
        Module.logger.INFO("Clicking on Check Box : " + chkBoxName)
        self.chkBoxName = chkBoxName
        self.performPreChecks()
        chkBoxName = Module.Utility.readTestData(chkBoxName)
        Module.Report.Info(self.driver, "Clicking on Check Box : " + chkBoxName)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.selectCheckBox.selectCheckBox(self.driver, chkBoxName, position)
                success = 1
                Module.Report.Success(self.driver, "Clicked on Check Box : " + chkBoxName)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def verifyOnScreen(self, type, value):
        Module.logger.INFO("Verifying on screen : " + type + " " + value)
        self.type = type
        self.value = value
        self.performPreChecks()
        value = Module.Utility.readTestData(value)
        value = self.driver.getValueFromDic(value)
        Module.Report.Info(self.driver, "Verifying on screen : " + type + " " + value)
        counter = 1
        success = 0
        timeout = Module.Utility.ReadDataFromJsonFile("tool", "timeout")
        while ((success != 1) and (counter < 5)):
            try:
                found = Commands.verifyOnScreen.verifyOnScreen(self.driver, type, value)
                success = 1
                Module.Report.Success(self.driver, "Verifying on screen : " + type + " " + value)
                return found
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def enterValues(self, rowName, colName, value=None, valueToStore=None):
        self.rowName = rowName
        self.colName = colName
        self.value = value
        self.performPreChecks()
        if value != None:
            Module.Report.Info(self.driver, "Enter value " + value + " for " + rowName + ", " + colName)
        if valueToStore != None:
            Module.Report.Info(self.driver, "Getting value stored in " + rowName + "and " + colName)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.enterValues.enterValues(self.driver, rowName, colName, value, valueToStore)
                success = 1
                if value != None:
                    Module.Report.Success(self.driver, "Enter value " + value + " for " + rowName + ", " + colName)
                if valueToStore != None:
                    Module.Report.Success(self.driver, "Getting value stored in " + rowName + "and " + colName)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def clickOnExpandLink(self, expandLinkName, position=1):
        Module.logger.INFO("Clicking on expand link: " + expandLinkName)
        self.expandLinkName = expandLinkName
        self.performPreChecks()
        expandLinkName = Module.Utility.readTestData(expandLinkName)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.clickOnExpandLink.clickOnExpandLink(self.driver, expandLinkName, position)
                success = 1
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def verifyAndSetToUnlimited(self, lblName):
        Module.logger.INFO("Verifying if " + lblName + " is unlimited")
        self.lblName = lblName
        self.performPreChecks()
        lblName = Module.Utility.readTestData(lblName)
        Module.Report.Info(self.driver, "Verifying values" + lblName + " and set them to infinity")
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.verifyAndSetToUnlimited.verifyAndSetToUnlimited(self.driver, lblName)
                success = 1
                Module.Report.Success(self.driver, "Verifying values" + lblName + " and set them to infinity")
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def verifyResults(self, values):
        Module.logger.INFO("Verifying results ")
        self.performPreChecks()

        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.verifyResults.verifyResults(self.driver, values)
                success = 1
                Module.Report.Success(self.driver, "Results verified and clicked based on given criteria")
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def clickOnPriority(self, priority):
        Module.logger.INFO("Clicking on Priority" + priority)
        self.performPreChecks()

        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.clickOnPriority.clickOnPriority(self.driver, priority)
                success = 1
                Module.Report.Success(self.driver, "Clicked on Priority" + priority)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def generateUniqueName(self, name):
        Module.logger.INFO("Generating unique name with text: " + name)
        self.name = name
        name = Module.Utility.readTestData(name)
        dateNtime = datetime.now().strftime('%D%M%Y%H%M%S')
        uniqueName = name + dateNtime
        # Module.Report.Success(self.driver, "Unique name created with text" + name)
        return uniqueName

    def uploadFile(self, uploadbuttonname, filename):
        Module.logger.INFO("Upload button is: " + uploadbuttonname + "and file name is:" + filename)
        self.filename = filename
        self.uploadbuttonname = uploadbuttonname
        self.performPreChecks()
        filename = Module.Utility.readTestData(filename)
        uploadbuttonname = Module.Utility.readTestData(uploadbuttonname)
        Module.Report.Info(self.driver, "Upload button is: " + uploadbuttonname + "and file name is:" + filename)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.uploadFile.uploadFile(self.driver, uploadbuttonname, filename)
                success = 1
                Module.Report.Success(self.driver, "File with name" + filename + " is uploaded")
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def verifyDownloadedFile(self, text, filetype):
        Module.logger.INFO("text is: " + text)
        self.text = text
        self.filetype = filetype
        self.performPreChecks()
        text = Module.Utility.readTestData(text)
        filetype = Module.Utility.readTestData(filetype)
        text = self.driver.getValueFromDic(text)
        Module.Report.Info(self.driver, "text to verified: " + text + "in downloaded file")
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.verifyDownloadedFile.verifyDownloadedFile(self.driver, text, filetype)
                success = 1
                Module.Report.Success(self.driver, "text:" + text + " is verified")
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def getGeneratedValueFromMsg(self, start, end, msg):
        self.msg = msg
        self.start = start
        self.end = end
        self.performPreChecks()
        Module.Report.Info(self.driver, "Getting generated value from message " + msg)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                gen_value = self.driver.getGeneratedValueFromMsg(start, end, msg)
                Module.logger.ERROR("print gen value starts")
                Module.logger.ERROR(gen_value)
                Module.logger.ERROR("print gen value starts")
                success = 1
                Module.Report.Success(self.driver, "Got value from message " + msg + " and the value is " + gen_value)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

        return gen_value

    def generateUniqueName(self, name):
        Module.logger.INFO("Generating unique name with text: " + name)
        self.name = name
        name = Module.Utility.readTestData(name)
        dateNtime = datetime.now().strftime('%d%m%y%H%M%S')
        uniqueName = name + dateNtime
        Module.Report.Success(self.driver, "Unique name created with text" + name)
        return uniqueName

    def verifyTableRowCount(self, rowcount):
        Module.logger.INFO("Verifying table row count is: " + rowcount)
        self.rowcount = rowcount
        self.performPreChecks()
        rowcount = Module.Utility.readTestData(rowcount)
        Module.Report.Info(self.driver, "Verifying table row count is: " + rowcount)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.verifyTableRowCount.verifyTableRowCount(self.driver, rowcount)
                success = 1
                Module.Report.Success(self.driver, "Verified the table rowcount is: " + rowcount)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def generateRandomAlphabets(self, x):
        Module.logger.INFO("Generating random alphabets: ")
        x = Module.Utility.readTestData(x)
        randomAlphabets = ''.join(random.choice(string.ascii_letters) for _ in range(int(x)))
        Module.Report.Success(self.driver, "Random alphabets created " + randomAlphabets)
        return randomAlphabets

    def generateRandomNumbers(self, y):
        Module.logger.INFO("Generating random numbers: ")
        y = Module.Utility.readTestData(y)
        randomNumbers = ''.join(random.choice(string.digits) for _ in range(int(y)))
        if int(randomNumbers[0]) == 0:
            randomNumbers = randomNumbers[1:]
        Module.Report.Success(self.driver, "Random numbers created " + randomNumbers)
        return randomNumbers

    def joinStrings(self, string1, string2):
        Module.logger.INFO("Joining strings :")
        string1 = Module.Utility.readTestData(string1)
        string1 = self.driver.getValueFromDic(string1)
        string2 = Module.Utility.readTestData(string2)
        string2 = self.driver.getValueFromDic(string2)
        newString = ''.join((string1, string2))
        Module.Report.Success(self.driver, "Strings joined successfully and created new string" + newString)
        return newString

    def clickOnSearchResult(self, resultname, position=1):
        Module.logger.INFO("Clicking on search result: " + resultname)
        Module.Report.Info(self.driver, "Clicking on search result: " + resultname)
        self.resultname = resultname
        self.position = position
        self.performPreChecks()
        resultname = Module.Utility.readTestData(resultname)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.clickOnSearchResult.clickOnSearchResult(self.driver, resultname, position)
                success = 1
                Module.Report.Success(self.driver, "Clicked on search result: " + resultname)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def verify_email(self, content):
        Module.logger.INFO("content is: " + content)
        self.content = content
        self.performPreChecks()
        content = Module.Utility.readTestData(content)
        content = self.driver.getValueFromDic(content)
        Module.Report.Info(self.driver, "content to verified: " + content + "in email")
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.verifyEmail.verify_email(self.driver, content)
                success = 1
                Module.Report.Success(self.driver, "content:" + content + " is verified in email")
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def getFileName(self, fileType):
        Module.logger.INFO("Getting downloaded file name")
        return Module.Utility.getFileName(fileType)

    def verifyHiddenHeader(self, headerName):
        Module.logger.INFO("Header is: " + headerName)
        self.headerName = headerName
        self.performPreChecks()
        headerName = Module.Utility.readTestData(headerName)
        headerName = self.driver.getValueFromDic(headerName)
        Module.Report.Info(self.driver, "Hidden Header to verify is :" + headerName)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.verifyHiddenHeader.verifyHiddenHeader(self.driver, headerName)
                success = 1
                Module.Report.Success(self.driver, "Hidden Header:" + headerName + " is verified")
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1

    def removeItem(self, itemName):
        Module.logger.INFO("Removing Item : " + itemName)
        self.itemName = itemName
        self.performPreChecks()
        itemName = Module.Utility.readTestData(itemName)
        Module.Report.Info(self.driver, "Removing Item : " + itemName)
        counter = 1
        success = 0
        while ((success != 1) and (counter < 5)):
            try:
                Commands.removeItem.removeItem(self.driver, itemName)
                success = 1
                Module.Report.Success(self.driver, "Removing Item : " + itemName)
            except selenium.common.exceptions.StaleElementReferenceException:
                time.sleep(5)
                success = 0
                counter = counter + 1




