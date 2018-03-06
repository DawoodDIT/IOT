import subprocess

import appium
from appium import webdriver
import appium.webdriver.connectiontype
from appium.webdriver.common.touch_action import TouchAction
import Class.UserDefinedException
import Module.Utility
import Module.getMobileObject
import Module.logger
import Module.CleanUp
from time import sleep
import Module.Report
import subprocess
import MobileCommands.clickOnMobileLink
import MobileCommands.clickOnImageButton
import MobileCommands.clickOnMobileOption
import MobileCommands.tapMobileRadioOption
import MobileCommands.enterTextOnMobile
import MobileCommands.clickOnMobileButton
import MobileCommands.getIMEI4
import MobileCommands.getIMEI6
import getpass
import selenium.webdriver.remote.mobile
Excep = Class.UserDefinedException.UserDefinedException()


class MobileNative:

    def __init__(self):
        self.mobiledriver=webdriver.Remote

    def __call__(self):
        return self.mobiledriver

    def selectDevice(self,device):
        try:
            self.device=device
            self.platformName = Module.Utility.ReadDataFromMobileConfig(self.device, "platformName")
            self.platformVersion = Module.Utility.ReadDataFromMobileConfig(self.device, "platformVersion")
            self.deviceName = Module.Utility.ReadDataFromMobileConfig(self.device, "deviceName")

            self.desired_caps = {}
            self.desired_caps['platformName'] = self.platformName
            self.desired_caps['platformVersion'] = self.platformVersion
            self.desired_caps['deviceName'] = self.deviceName
        except:
            Module.logger.ERROR("Mobile device not found")
            Module.Report.Failure(self.mobiledriver, "Mobile device not found")
            Excep.raiseException("Mobile device not found")




    def launchApp(self,appName):
        try:
            self.appName = appName
            self.appPackage= Module.Utility.ReadDataFromMobileConfig(self.appName, "appPackage")
            self.appActivity = Module.Utility.ReadDataFromMobileConfig(self.appName, "appActivity")
            self.desired_caps['appPackage'] = self.appPackage
            self.desired_caps['appActivity'] = self.appActivity
            self.desired_caps['autoAcceptAlerts'] = True
            self.desired_caps['autoGrantPermissions'] =True
            self.mobiledriver = webdriver.Remote('http://localhost:4723/wd/hub', self.desired_caps)
        except:
            Module.logger.ERROR("Application is not launched successfully")
            #Module.Report.Failure(self.mobiledriver, "Application is not launched successfully")
            Excep.raiseException("Application is not launched successfully")

    def tapEnterKey(self):
        try:
            self.mobiledriver.press_keycode(66, metastate=None)
            sleep(5)
        except:
            Module.logger.ERROR("Cannot tap enter key on mobile")
            Module.Report.Failure(self.mobiledriver, "Cannot tap enter key on mobile")
            Excep.raiseException("Cannot tap enter key on mobile")

    def clickOnHomeButton(self):
        try:
            self.mobiledriver.press_keycode(3, metastate=None)
            sleep(5)
        except:
            Module.logger.ERROR("Cannot click home on mobile")
            Module.Report.Failure(self.mobiledriver, "Cannot click home on mobile")
            Excep.raiseException("Cannot click home on mobile")

    def trial1(self):
        # return self.mobiledriver.find_element_by_xpath("//android.widget.TextView[@content-desc='Search']")
        # return self.mobiledriver.find_element_by_xpath("//android.widget.TextView[@text='Java Programming']")
        # list = find_mobile_auto_list_elements(self,locator,locatorvalue)
        list = self.mobiledriver.find_elements_by_xpath(".//android.widget.ListView//android.widget.LinearLayout")
        if list != None:
                for each in list:
                   cell = each.find_element_by_xpath("//android.widget.RelativeLayout//android.widget.TextView")
                   if cell.text == "O2 PREPAY":
                        try:
                            obj=each.find_element_by_xpath("//android.widget.RadioButton")
                            obj.click()
                            found = "true"
                            break
                        except:
                            Module.logger.ERROR("Radiobutton is not clickable")

                        if found == "true" :
                         Module.logger.ERROR("Clicked on Radiobutton")
                        else:
                          Module.logger.ERROR("No Radio button is available with the given text")


    def tapHardRightKey(self):
        try:
            self.mobiledriver.press_keycode(82, metastate=None)
            sleep(5)
        except:
            Module.logger.ERROR("Cannot tap hard right key on mobile")
            Module.Report.Failure(self.mobiledriver, "Cannot tap hard right key on mobile")
            Excep.raiseException("Cannot tap hard right key on mobile")

    def swipeUp(self):
        try:
            size = self.mobiledriver.get_window_size()
            starty = (int)(size["height"] * 0.80)
            endy = (int)(size["height"]  * 0.20)
            startx = size["width"]  / 2
            self.mobiledriver.swipe(startx, starty, startx, endy)
        except:
            Module.logger.ERROR("Cannot swipe up on mobile")
            Module.Report.Failure(self.mobiledriver, "Cannot swipe up on mobile")
            Excep.raiseException("Cannot swipe up on mobile")

    def switchONMobileData(self, deviceId):
        try:
            switchONcmd = "adb -s " + deviceId + " shell svc data enable"
            subprocess.call(switchONcmd, shell=True)
            self.mobiledriver.set_network_connection(4)

        except:
            Module.logger.ERROR("Cannot switch ON mobile data")
            Module.Report.Failure(self.mobiledriver, "Cannot switch ON mobile data")
            Excep.raiseException("Cannot switch ON mobile data")

    def switchOFFMobileData(self, deviceId):
        try:
            switchOFFcmd = "adb -s " + deviceId + " shell svc data disable"
            subprocess.call(switchOFFcmd, shell=True)
            self.mobiledriver.set_network_connection(0)
        except:
            Module.logger.ERROR("Cannot switch OFF mobile data")
            Module.Report.Failure(self.mobiledriver, "Cannot switch OFF mobile data")
            Excep.raiseException("Cannot switch OFF mobile data")

    def switchONAirplaneMode(self):
        try:
            self.mobiledriver.set_network_connection(1)
        except:
            Module.logger.ERROR("Cannot switch ON airplane mode")
            Module.Report.Failure(self.mobiledriver, "Cannot switch ON airplane mode")
            Excep.raiseException("Cannot switch ON airplane mode")

    def switchOFFAirplaneMode(self):
        try:
            self.mobiledriver.set_network_connection(0)
        except:
            Module.logger.ERROR("Cannot switch OFF airplane mode")
            Module.Report.Failure(self.mobiledriver, "Cannot switch OFF airplane mode")
            Excep.raiseException("Cannot switch OFF airplane mode")

    def tapBack(self):
        try:
            self.mobiledriver.press_keycode(4, metastate=None)
            sleep(5)
        except:
            Module.logger.ERROR("Cannot tap back on mobile")
            Module.Report.Failure(self.mobiledriver, "Cannot tap back on mobile")
            Excep.raiseException("Cannot tap back on mobile")

    def scrollTo(self, scrollText):
        try:
            self.mobiledriver.find_element_by_android_uiautomator(
                "new UiScrollable(new UiSelector().scrollable(true).instance(0)).scrollIntoView(new UiSelector().text(\""
                + scrollText + "\").instance(0))")
        except:
            Module.logger.ERROR("Unable to scroll to text " + scrollText)
            Module.Report.Failure(self.mobiledriver, "Unable to scroll to text " + scrollText)
            Excep.raiseException("Unable to scroll to text " + scrollText)

    def launchAPNApp(self):
        try:
            if self.platformVersion[0] == "4":
                Module.logger.INFO("Finding the APN settings activity for Android 4")
                self.launchApp("APNsettings")
            elif self.platformVersion[0] == "6":
                Module.logger.INFO("Finding the APN settings activity for Android 6")
                self.launchApp("MobileNetworkSettings")
                MobileCommands.clickOnMobileOption.clickOnMobileOption(self, "Access Point Names")
            else:
                Module.logger.ERROR("APN settings activity for Android " + self.platformVersion[
                    0] + "is not provided in the config file")
                Module.Report.Failure(self.mobiledriver, "APN settings activity for Android " + self.platformVersion[
                    0] + "is not provided in the config file")
                Excep.raiseException("APN settings activity for Android " + self.platformVersion[
                    0] + "is not provided in the config file")


        except:
            Module.logger.ERROR("APN settings is not launched successfully")
            Module.Report.Failure(self.mobiledriver, "APN settings page is not launched successfully")
            Excep.raiseException("APN settings is not launched successfully")

    def createNewAPN(self):
        try:
            if self.platformVersion[0] == "4":
                Module.logger.INFO("Opening the New APN screen for Android 4")
                self.tapHardRightKey()
                MobileCommands.clickOnMobileOption.clickOnMobileOption(self, "New APN")
            elif self.platformVersion[0] == "6":
                Module.logger.INFO("Opening the New APN screen for Android 6")
                MobileCommands.clickOnImageButton.clickOnImageButton(self, "New APN")
            else:
                Module.logger.ERROR("Include the steps to create a new APN for Android " + self.platformVersion[0])
                Module.Report.Failure(self.mobiledriver,
                                      "Include the steps to create a new APN for Android " + self.platformVersion[0])
                Excep.raiseException("Include the steps to create a new APN for Android " + self.platformVersion[0])

        except:
            Module.logger.ERROR("New APN screen is not opened")
            Module.Report.Failure(self.mobiledriver, "New APN screen is not opened")
            Excep.raiseException("New APN screen is not opened")

    def enterAPNValues(self, fieldname, fieldvalue):
        self.fieldname = fieldname
        self.fieldvalue = fieldvalue
        if fieldname != None:
            Module.Report.Info(self.mobiledriver, "Finding the field: " + fieldname)
            try:
                self.scrollTo(fieldname)
            except:
                Module.logger.ERROR("Cannot find the field" + fieldname)
                Module.Report.Failure(self.mobiledriver, "Cannot find the field" + fieldname)
                Excep.raiseException("Cannot find the field" + fieldname)
        if fieldvalue != None:
            Module.Report.Info(self.mobiledriver, "Entering value " + fieldvalue + "for the field" + fieldname)
            try:
                MobileCommands.clickOnMobileLink.clickOnMobileLink(self, fieldname)
                try:
                    MobileCommands.enterTextOnMobile.enterTextOnMobile(self, fieldvalue)
                    MobileCommands.clickOnMobileButton.clickOnMobileButton(self, "OK")
                except:
                    MobileCommands.tapMobileRadioOption.tapMobileRadioOption(self, fieldvalue)

            except:
                Module.logger.ERROR("Cannot enter the value" + fieldvalue + " to field " + fieldname)
                Module.Report.Failure(self.mobiledriver,
                                      "Cannot enter the value" + fieldvalue + " to field " + fieldname)
                Excep.raiseException("Cannot enter the value" + fieldvalue + " to field " + fieldname)

    def saveAPNDetails(self):
        try:
            if self.platformVersion[0] == "4":
                Module.logger.INFO("Saving APN details for Android 4")
                self.tapHardRightKey()
                MobileCommands.clickOnMobileOption.clickOnMobileOption(self, "Save")
            elif self.platformVersion[0] == "6":
                Module.logger.INFO("Saving APN details for Android 6")
                MobileCommands.clickOnImageButton.clickOnImageButton(self, "More options")
                MobileCommands.clickOnMobileOption.clickOnMobileOption(self, "Save")
            else:
                Module.logger.ERROR("Include the steps to save APN details for Android " + self.platformVersion[0])
                Module.Report.Failure(self.mobiledriver,
                                      "Include the steps to save APN details for Android " + self.platformVersion[0])
                Excep.raiseException("Include the steps to save APN details for Android " + self.platformVersion[0])

        except:
            Module.logger.ERROR("APN details are not saved")
            Module.Report.Failure(self.mobiledriver, "APN details are not saved")
            Excep.raiseException("APN details are not saved")

    def getIMEI(self, deviceId):
        Module.logger.INFO("Getting the IMEI no of device: " + deviceId)
        imei=''
        self.deviceId = deviceId
        deviceId = Module.Utility.readTestData(deviceId)

        if self.platformVersion[0] == "4":
            Module.logger.INFO("Getting IMEIfor Android 4")
            imei = MobileCommands.getIMEI4.getIMEI4(self, deviceId)
        elif self.platformVersion[0] == "6":
            Module.logger.INFO("Saving APN details for Android 6")
            imei = MobileCommands.getIMEI6.getIMEI6(self, deviceId)
        if imei != None:
            Module.logger.INFO("IMEI no for device: " + deviceId + " is successfully retrieved: " + imei)
            return imei
        else:
            Module.Report.Failure(self.mobiledriver, "IMEI for device: " + deviceId + " is None.")
            Module.logger.ERROR("IMEI for device: " + deviceId + " is None.")
            Excep.raiseException("IMEI for device: " + deviceId + " is None.")
            return None


    def compareIMEIValues(self, value1, value2, operation):
        imeiPortal = value1[0:13]
        imeiMobile = value2[0:13]
        if operation.lower() == "equal":
            if imeiPortal == imeiMobile:
               Module.logger.INFO("Both Values Match!!. Values :"+imeiPortal+" and :"+imeiMobile+" are equal")
               Module.Report.Info(self.mobiledriver,"Both Values Match!!. Values :"+imeiPortal+" and :"+imeiMobile+" are equal")

            else:
                Module.Report.Failure(self.mobiledriver,"Values Dont Match!!. Values :"+imeiPortal+" and :"+imeiMobile+" are not equal")
                Module.logger.ERROR("Values Dont Match!!. Values :"+imeiPortal+" and :"+imeiMobile+" are not equal")
                Class.UserDefinedException.UserDefinedException().raiseException("Values Dont Match!!. Values :"+imeiPortal+" and :"+imeiMobile+" are not equal")







