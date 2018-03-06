from selenium.common.exceptions import NoSuchElementException
import Module.logger
import Module.Report
import Module.Utility
import Class.MobileNative
import MobileCommands.clickOnMobileIcon
import MobileCommands.enterTextToMobileField
import MobileCommands.enterTextOnMobile
import MobileCommands.clickOnMobileLink
import MobileCommands.selectMobRadioButton
import MobileCommands.clickOnMobileButton
import MobileCommands.clickOnMobileOption
import MobileCommands.tapMobileRadioOption
import MobileCommands.clickOnMobileIcon
import MobileCommands.verifyTextOnMobileScreen
import MobileCommands.verifyMobileImageButton
import MobileCommands.verifySMSOnHandset
import MobileCommands.verifyEmptySMS
import MobileCommands.sendSMS
import MobileCommands.callNo
import MobileCommands.answerCall
import MobileCommands.endCall
import Class.UserDefinedException
import MobileCommands.sendSMSAndVerifyDeliveryReport
import MobileCommands.clickOnTextField
import MobileCommands.verifyMobileImageButton
import MobileCommands.clickOnImageButton
import MobileCommands.selectCheckbox
import MobileCommands.getNetworkType
import MobileCommands.verifyEmptySMS
import MobileCommands.isDataSignalAvailable
import MobileCommands.getIMEI4
import MobileCommands.getNetworkType
import Class.UserDefinedException
from appium import webdriver
import sys
import subprocess
from subprocess import Popen,PIPE
import os
import time

Excep = Class.UserDefinedException.UserDefinedException()
class MobileAutomation:
    def __init__(self):
        self.mobiledriver = Class.MobileNative.MobileNative()
        self.mobiledriver()

    def selectDevice(self,device):
        Module.logger.INFO("Selecting mobile device" + device)
        self.mobiledriver.selectDevice(device)

    def launchApp(self,appName):
        Module.logger.INFO("Launching application "+ appName)
        self.mobiledriver.launchApp(appName)
        Module.Report.Success(self.mobiledriver,"Application "+ appName+" launched successfully")


    def clickOnMobileIcon(self, iconName):
        Module.logger.INFO("Clicking on icon: " + iconName)
        self.iconName = iconName
        MobileCommands.clickOnMobileIcon.clickOnMobileIcon(self.mobiledriver, iconName)
        Module.Report.Success(self.mobiledriver, "Icon " + iconName + " is clicked")

    def enterTextToMobileField(self,textFieldName,textValue):
        Module.logger.INFO("Sending text " + textValue + " for " + textFieldName)
        self.textFieldName = textFieldName
        self.textValue = textValue
        self.mobiledriver.tapEnterKey()
        MobileCommands.enterTextToMobileField.entertTextToMobileField(self.mobiledriver, textFieldName, textValue)
        Module.Report.Success(self.mobiledriver, "Text "+textValue+" entered to the field" + textFieldName)
        self.mobiledriver.tapEnterKey()


    def clickOnMobileLink(self, linkText):
        Module.logger.INFO("Clicking on link: " + linkText)
        self.linkText = linkText
        linkText=Module.Utility.readTestData(linkText)
        MobileCommands.clickOnMobileLink.clickOnMobileLink(self.mobiledriver, linkText)
        Module.Report.Success(self.mobiledriver, "Link " + linkText + " is clicked")

    def selectMobRadioButton(self, radiobuttonName):
        Module.logger.INFO("Selecting APN: " + radiobuttonName)
        self.apnName = radiobuttonName
        radiobuttonName = Module.Utility.readTestData(radiobuttonName)
        MobileCommands.selectMobRadioButton.selectMobRadioButton(self.mobiledriver, radiobuttonName)
        Module.Report.Success(self.mobiledriver, "Radiobutton " + radiobuttonName + " selected")

    def enterTextOnMobile(self,textValue):
        Module.logger.INFO("Sending text " + textValue + " to text field")
        self.textValue = textValue
        MobileCommands.enterTextOnMobile.enterTextOnMobile(self.mobiledriver, textValue)
        Module.Report.Success(self.mobiledriver, "Text " + textValue + "is entered")

    def tapEnterKey(self):
        Module.logger.INFO("Tapping enter key on mobile")
        self.mobiledriver.tapEnterKey()
        Module.Report.Success(self.mobiledriver, "Enter key tapped on mobile keyboard")

    def clickOnMobileButton(self,buttonName):
        Module.logger.INFO("Clicking on button: "+buttonName)
        self.buttonName = buttonName
        MobileCommands.clickOnMobileButton.clickOnMobileButton(self.mobiledriver, buttonName)
        Module.Report.Success(self.mobiledriver, "Button " + buttonName + "is clicked")

    def tapMobileRadioOption(self, optionName):
        Module.logger.INFO("Tapping on option: " + optionName)
        self.optionName = optionName
        MobileCommands.tapMobileRadioOption.tapMobileRadioOption(self.mobiledriver, optionName)
        Module.Report.Success(self.mobiledriver, "Option " + optionName + "is tapped")

    def tapHardRightKey(self):
        Module.logger.INFO("Tapping hard right key on mobile")
        self.mobiledriver.tapHardRightKey()
        Module.Report.Success(self.mobiledriver, "Tapped on hard right key on mobile")

    def swipeUp(self):
        Module.logger.INFO("Swiping up on mobile")
        self.mobiledriver.swipeUp()
        Module.Report.Success(self.mobiledriver, "Swiped up on mobile")

    def switchONMobileData(self, deviceId):
        Module.logger.INFO("Switching on mobile data")
        self.deviceId = deviceId
        deviceId = Module.Utility.readTestData(deviceId)
        self.mobiledriver.switchONMobileData(deviceId)
        Module.Report.Success(self.mobiledriver, "Mobile data Switched ON")

    def switchOFFMobileData(self, deviceId):
        Module.logger.INFO("Switching off mobile data")
        self.deviceId = deviceId
        deviceId = Module.Utility.readTestData(deviceId)
        self.mobiledriver.switchOFFMobileData(deviceId)
        Module.Report.Success(self.mobiledriver, "Mobile data Switched OFF")

    def clickOnMobileOption(self, optionName):
        Module.logger.INFO("Clicking on option: " + optionName)
        self.optionName = optionName
        MobileCommands.clickOnMobileOption.clickOnMobileOption(self.mobiledriver, optionName)
        Module.logger.INFO("Clicked" + optionName)
        Module.Report.Success(self.mobiledriver,"Clicked" +optionName)


    def clickOnHome(self):
        Module.logger.INFO("Clicking on Home button")
        self.mobiledriver.clickOnHomeButton()

    def verifyTextOnMobileScreen(self, textName):
        success = 0
        Module.logger.INFO("Verifying if text: " + textName + " is present on page")
        self.textName = textName
        textName = Module.Utility.readTestData(textName)
        counter = 1
        success = 0
        Module.Report.Info(self.mobiledriver, "Verifying that text: " + textName + " is present on mobile screen")
        while ((success == 0) and (counter < 5)):
            try:
                success = MobileCommands.verifyTextOnMobileScreen.verifyTextOnMobileScreen(self.mobiledriver, textName)

            except:
                time.sleep(5)
                counter = counter + 1

        if (success == 1):
            Module.logger.INFO("Text found : " + textName)
            Module.Report.Success(self.mobiledriver, "Text " + textName + " found on screen ")

        else:
            Module.Report.Failure(self.mobiledriver, "Text Not found : " + textName + " not available ")
            Module.logger.ERROR("Text Not found : " + textName)
            Excep.raiseException("Text Not found : " + textName)

    def verifyTextNotOnMobileScreen(self, textName):
        success = 0
        Module.logger.INFO("Verifying if text: " + textName + " is not present on page")
        self.textName = textName
        textName = Module.Utility.readTestData(textName)
        counter = 1
        Module.Report.Info(self.mobiledriver, "Verifying that text: " + textName + " is not present on mobile screen")
        while ((success == 0) and (counter < 5)):
            try:
                success = MobileCommands.verifyTextOnMobileScreen.verifyTextOnMobileScreen(self.mobiledriver, textName)

            except:
                time.sleep(5)
                counter = counter + 1

        if (success == 0):
            Module.logger.INFO("Text Not found : " + textName)
            Module.Report.Success(self.mobiledriver, "Text " + textName + " not found on screen ")

        else:
            Module.Report.Failure(self.mobiledriver, "Text is found : " + textName)
            Module.logger.ERROR("Text is found : " + textName)
            Excep.raiseException("Text is found : " + textName)

    def verifySMSOnHandset(self,smsTextToVerify,deviceName):
        Module.logger.INFO("Executing Commands to Verify SMS")
        self.deviceName = deviceName
        self.smsTextToVerify = smsTextToVerify
        Module.Report.Info(self.mobiledriver, "Executing Commands to Verify SMS")
        deviceName = Module.Utility.readTestData(deviceName)
        smsTextToVerify = Module.Utility.readTestData(smsTextToVerify)
        MobileCommands.verifySMSOnHandset.verifySMSOnHandset(self.mobiledriver,deviceName,smsTextToVerify)
        Module.Report.Success(self.mobiledriver, "SUCCESS : SMS Verification is successfull. Received SMS for "+smsTextToVerify)

    def sendSMS(self, deviceId,receiverNo, msgBody):
        Module.logger.INFO("Sending SMS to"+receiverNo)
        self.deviceId = deviceId
        deviceId = Module.Utility.readTestData(deviceId)
        receiverNo=Module.Utility.readTestData(receiverNo)
        msgBody=Module.Utility.readTestData(msgBody)
        MobileCommands.sendSMS.sendSMS(self.mobiledriver, deviceId,receiverNo, msgBody)
        Module.Report.Success(self.mobiledriver,"SMS send successfully to" + receiverNo)

    def switchONAirplaneMode(self):
        Module.logger.INFO("Switching on airplane mode")
        self.mobiledriver.switchONAirplaneMode()
        Module.Report.Success(self.mobiledriver, "Airplane mode Switched ON")

    def switchOFFAirplaneMode(self):
        Module.logger.INFO("Switching off airplane mode")
        self.mobiledriver.switchOFFAirplaneMode()
        Module.Report.Success(self.mobiledriver, "Airplane mode Switched OFF")

    def callNo(self, deviceId, receiverNo):
        Module.logger.INFO("Calling the no" + receiverNo)
        self.deviceId = deviceId
        deviceId = Module.Utility.readTestData(deviceId)
        receiverNo = Module.Utility.readTestData(receiverNo)
        MobileCommands.callNo.callNo(self.mobiledriver, deviceId, receiverNo)
        Module.Report.Success(self.mobiledriver, "Called the no" + receiverNo+ "successfully")

    def answerCall(self, deviceId):
        Module.logger.INFO("Answering call from" + deviceId)
        self.deviceId = deviceId
        deviceId = Module.Utility.readTestData(deviceId)
        MobileCommands.answerCall.answerCall(self.mobiledriver, deviceId)
        Module.Report.Success(self.mobiledriver, "Call answered from "+deviceId)

    def endCall(self, deviceId):
        Module.logger.INFO("Ending call from" + deviceId)
        self.deviceId = deviceId
        deviceId = Module.Utility.readTestData(deviceId)
        MobileCommands.endCall.endCall(self.mobiledriver, deviceId)
        Module.Report.Success(self.mobiledriver, "Call ended from "+deviceId)

    def tapBack(self):
        Module.logger.INFO("Tapping back on mobile")
        self.mobiledriver.tapBack()
        Module.Report.Success(self.mobiledriver, "Tapped back on mobile keyboard")

    def sendSMSAndVerifyDeliveryReport(self, msgBody, deviceId, receiverNo):
        Module.logger.INFO("Sending SMS to" + receiverNo)
        self.deviceId = deviceId
        deviceId = Module.Utility.readTestData(deviceId)
        receiverNo = Module.Utility.readTestData(receiverNo)
        msgBody = Module.Utility.readTestData(msgBody)
        MobileCommands.sendSMSAndVerifyDeliveryReport.sendSMSAndVerifyDeliveryReport(self.mobiledriver, deviceId,
                                                                                     receiverNo, msgBody)
        Module.Report.Success(self.mobiledriver, "SMS send and delivery report verified successfully on " + receiverNo)

    def clickOnImageButton(self, imageButtonName):
        Module.logger.INFO("Clicking on image button: " + imageButtonName)
        self.imageButtonName = imageButtonName
        MobileCommands.clickOnImageButton.clickOnImageButton(self.mobiledriver, imageButtonName)
        Module.Report.Success(self.mobiledriver, "Image button " + imageButtonName + " is clicked")

    def tapBack(self):
        Module.logger.INFO("Tapping back on mobile")
        self.mobiledriver.tapBack()
        Module.Report.Success(self.mobiledriver, "Tapped back on mobile keyboard")

    def clickOnTextField(self, prefillText):
        Module.logger.INFO("Clicking on text field with prefill text: " + prefillText)
        self.prefillText = prefillText
        MobileCommands.clickOnTextField.clickOnTextField(self.mobiledriver, prefillText)
        Module.Report.Success(self.mobiledriver, "Text field with prefill text " + prefillText + " is clicked")
		
    def verifyMobileImageButton(self, imageButtonName):
        Module.logger.INFO("Verifying image button: " + imageButtonName+" not on mobile screen")
        self.imageButtonName = imageButtonName
        obj=MobileCommands.verifyMobileImageButton.verifyMobileImageButton(self.mobiledriver, imageButtonName)
        if obj != None:
            Module.Report.Success(self.mobiledriver, "Image button " + imageButtonName + " is displayed on screen as expected")
        else:
            Module.logger.ERROR("Image Button " + imageButtonName + " is not displayed on screen as expected")
            Module.Report.Failure(self.mobiledriver, "Image Button " + imageButtonName + "is not displayed on screen as expected")
            Excep.raiseException("Image Button " + imageButtonName + " is not displayed on screen as expected")

    def verifyNoMobileImageButton(self, imageButtonName):
        Module.logger.INFO("Verifying image button: " + imageButtonName+" not on mobile screen")
        self.imageButtonName = imageButtonName
        obj=MobileCommands.verifyMobileImageButton.verifyMobileImageButton(self.mobiledriver, imageButtonName)
        if obj == None:
            Module.Report.Success(self.mobiledriver, "Image button " + imageButtonName + " is not displayed on screen as expected")
        else:
            Module.logger.ERROR("Image Button " + imageButtonName + " is displayed on screen ")
            Module.Report.Failure(self.mobiledriver, "Image Button " + imageButtonName + "is displayed on screen")
            Excep.raiseException("Image Button " + imageButtonName + " is displayed on screen")
		
    def verifyEmptySMS(self, deviceName):
        Module.logger.INFO("Executing Commands to Verify Empty SMS")
        self.deviceName = deviceName
        Module.Report.Info(self.mobiledriver, "Executing Commands to Verify Empty SMS")
        deviceName = Module.Utility.readTestData(deviceName)
        MobileCommands.verifyEmptySMS.verifyEmptySMS(self.mobiledriver, deviceName)
        Module.Report.Success(self.mobiledriver, "SUCCESS : Empty SMS Verification is successfull. Received Empty SMS in " + deviceName)

    def scrollTo(self, scrollText):
        Module.logger.INFO("Scrolling to text" + scrollText)
        self.srollText = scrollText
        scrollText = Module.Utility.readTestData(scrollText)
        self.mobiledriver.scrollTo(scrollText)
        Module.Report.Success(self.mobiledriver, "Scrolled successfully upto the text " + scrollText)

    def launchAPNApp(self):
        Module.logger.INFO("Launching APN settings.")
        self.mobiledriver.launchAPNApp()
        Module.Report.Success(self.mobiledriver, "Launched APN settings successfully")

    def createNewAPN(self):
        Module.logger.INFO("Creating new APN.")
        self.mobiledriver.createNewAPN()
        Module.logger.INFO("Created new APN successfully")

    def enterAPNValues(self, fieldname, fieldvalue):
        Module.logger.INFO("Filling values for APN")
        self.fieldvalue=fieldvalue
        fieldvalue=Module.Utility.readTestData(fieldvalue)
        self.mobiledriver.enterAPNValues(fieldname, fieldvalue)
        Module.logger.INFO("APN details filled successfully")

    def saveAPNDetails(self):
        Module.logger.INFO("Saving APN details.")
        self.mobiledriver.saveAPNDetails()
        Module.logger.INFO("APN details saved successfully.")
    def selectCheckbox(self,checkboxName):
        Module.logger.INFO("Checking the checkbox" + checkboxName )
        self.srollText = checkboxName
        MobileCommands.selectCheckbox.selectCheckbox(self.mobiledriver, checkboxName)
        Module.Report.Success(self.mobiledriver, "Checkbox" +checkboxName+ " is checked successfully")

    def isDataSignalAvailable(self, deviceId):
        Module.logger.INFO("Verifying if data signal available for device: " + deviceId)
        self.deviceId = deviceId
        deviceId = Module.Utility.readTestData(deviceId)
        connected = MobileCommands.isDataSignalAvailable.isDataSignalAvailable(self.mobiledriver, deviceId)
        if connected == True:
            Module.logger.INFO("Data signal is available for device: " + deviceId)
            Module.Report.Success(self.mobiledriver, "Data signal is available for device: " + deviceId)

        else:
            Module.Report.Failure(self.mobiledriver, "No data signal available for device: " + deviceId)
            Module.logger.ERROR("No data signal available for device: " + deviceId)
            Excep.raiseException("No data signal available for device: " + deviceId)
			
    def isNoDataSignalAvailable(self, deviceId):
        Module.logger.INFO("Verifying if no data signal available for device: " + deviceId)
        self.deviceId = deviceId
        deviceId = Module.Utility.readTestData(deviceId)
        connected = MobileCommands.isDataSignalAvailable.isDataSignalAvailable(self.mobiledriver, deviceId)
        if connected == False:
            Module.logger.INFO("No Data signal is available for device: " + deviceId)
            Module.Report.Success(self.mobiledriver,"No Data signal is available for device: " + deviceId)

        else:
            Module.Report.Failure(self.mobiledriver, "Data signal available for device: "+ deviceId)
            Module.logger.ERROR("Data signal available for device: "+ deviceId)
            Excep.raiseException("Data signal available for device: "+ deviceId)

    def getNetworkType(self, deviceId):
        Module.logger.INFO("Getting the mobile data signal type of device: " + deviceId)
        self.deviceId = deviceId
        deviceId = Module.Utility.readTestData(deviceId)
        netType = MobileCommands.getNetworkType.getNetworkType(self.mobiledriver, deviceId)
        if netType != None:
            Module.logger.INFO("Network type for device: " + deviceId + " is successfully retrieved: " + netType)
            Module.Report.Success(self.mobiledriver,
                                  "Network type for device: " + deviceId + " is successfully retrieved: " + netType)
            return netType
        else:
            Module.Report.Failure(self.mobiledriver, "Mobile data signal type for device: " + deviceId + " is None.")
            Module.logger.ERROR("Mobile data signal type for device: " + deviceId + " is None.")
            Excep.raiseException("Mobile data signal type for device: " + deviceId + " is None.")
            return None


    def verifyMobileImageButton(self, imageButtonName):
        Module.logger.INFO("Verifying image button: " + imageButtonName + " not on mobile screen")
        self.imageButtonName = imageButtonName
        obj = MobileCommands.verifyMobileImageButton.verifyMobileImageButton(self.mobiledriver, imageButtonName)
        if obj != None:
            Module.Report.Success(self.mobiledriver,
                                  "Image button " + imageButtonName + " is displayed on screen as expected")
        else:
            Module.logger.ERROR("Image Button " + imageButtonName + " is not displayed on screen as expected")
            Module.Report.Failure(self.mobiledriver,
                                  "Image Button " + imageButtonName + "is not displayed on screen as expected")
            Excep.raiseException("Image Button " + imageButtonName + " is not displayed on screen as expected")

    def verifyNoMobileImageButton(self, imageButtonName):
        Module.logger.INFO("Verifying image button: " + imageButtonName + " not on mobile screen")
        self.imageButtonName = imageButtonName
        obj = MobileCommands.verifyMobileImageButton.verifyMobileImageButton(self.mobiledriver, imageButtonName)
        if obj == None:
            Module.Report.Success(self.mobiledriver,
                                  "Image button " + imageButtonName + " is not displayed on screen as expected")
        else:
            Module.logger.ERROR("Image Button " + imageButtonName + " is displayed on screen ")
            Module.Report.Failure(self.mobiledriver, "Image Button " + imageButtonName + "is displayed on screen")
            Excep.raiseException("Image Button " + imageButtonName + " is displayed on screen")
			
    def getIMEI(self, deviceId):
        self.deviceId = deviceId
        deviceId = Module.Utility.readTestData(deviceId)
        Module.logger.INFO("Getting IMEI from device :"+deviceId)
        imei=self.mobiledriver.getIMEI(deviceId)
        Module.logger.INFO("Retrieved IMEi from device "+deviceId+" successfully")
        return imei

    def compareIMEIValues(self, value1, value2, operation):
        Module.logger.INFO("Comparing IMEI values from portal and mobile ")
        self.mobiledriver.compareIMEIValues(value1, value2, operation)
        Module.Report.Success(self.mobiledriver, "Comparing IMEI values was successfull" )







