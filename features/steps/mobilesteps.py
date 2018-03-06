from behave import *
import Class.MobileAutomation
import Module.Utility
import Module.logger
import Module.Report
import string

#Module.CleanUp.killAllProcess()
mobiledriver= Class.MobileAutomation.MobileAutomation()

@Given('select mobile "{device}"')
def selectDevice(context,device):
    context.mobiledriver.selectDevice(device)

@When('launch mobile app "{appName}"')
def launchMobileApp(context,appName):
    context.mobiledriver.launchApp(appName)

@Then('click on mobile icon "{iconname}"')
def clickonMobileIcon(context, iconname):
    context.mobiledriver.clickOnMobileIcon(iconname)

@Then('enter "{textFieldName}" "{textValue}" on mobile')
def enterTextToMobileField(context,textFieldName,textValue):
    context.mobiledriver.enterTextToMobileField(textFieldName,textValue)

@When('click on mobile link "{linkName}"')
def clickOnMobileLink(context,linkName):
    context.mobiledriver.clickOnMobileLink(linkName)

@Then ('select mobile radiobutton "{radbtnName}"')
def selectMobRadioButton(context,radbtnName):
    context.mobiledriver.selectMobRadioButton(radbtnName)

@Then('enter "{textValue}" on mobile')
def enterTextOnMobile(context,textValue):
    context.mobiledriver.enterTextOnMobile(textValue)

@Then('tap on enter key on mobile')
def tapEnterKey(context):
    context.mobiledriver.tapEnterKey()

@Then('tap on hard right key on mobile')
def tapHardRightKey(context):
    context.mobiledriver.tapHardRightKey()

@Then('click on text option "{optionname}" on mobile')
def clickonMobileOption(context, optionname):
    context.mobiledriver.clickOnMobileOption(optionname)

@Then('swipe up')
def swipeUp(context):
    context.mobiledriver.swipeUp()

@Then('tap mobile radio option "{optionname}"')
def tapMobileRadioOption(context, optionname):
    context.mobiledriver.tapMobileRadioOption(optionname)

@Then('click on mobile button "{btnname}"')
def clickonMobileButton(context, btnname):
    context.mobiledriver.clickOnMobileButton(btnname)

@Then('switch on mobile data for "{deviceId}"')
def switchOnMobileData(context,deviceId):
    context.mobiledriver.switchONMobileData(deviceId)

@Then('switch off mobile data for "{deviceId}"')
def switchOffMobileData(context,deviceId):
    context.mobiledriver.switchOFFMobileData(deviceId)

@Then('verify text "{textname}" on mobile')
def verifytext(context,textname):
    context.mobiledriver.verifyTextOnMobileScreen(textname)

@Then('verify no text "{textname}" on mobile')
def verifytext(context,textname):
    context.mobiledriver.verifyTextNotOnMobileScreen(textname)

@Then('click on home button')
def clickOnHomeButton(context):
    context.mobiledriver.clickOnHome()

@Then('verify if SMS "{smsTextToVerify}" on "{deviceName}"')
def verifySMSOnHandset(context,smsTextToVerify,deviceName):
    context.mobiledriver.verifySMSOnHandset(smsTextToVerify,deviceName)

@Then('send sms "{msgBody}" from "{deviceId}" to "{receiverNo}"')
def sendSMS(context,deviceId,receiverNo,msgBody):
    context.mobiledriver.sendSMS(deviceId,receiverNo,msgBody)

@Then('switch on airplane mode')
def switchOnAirplaneMode(context):
    context.mobiledriver.switchONAirplaneMode()

@Then('switch off airplane mode')
def switchOffAirplaneMode(context):
    context.mobiledriver.switchOFFAirplaneMode()

@Then('send sms "{msgBody}" from "{deviceId}" to "{receiverNo}" and verify delivery report')
def sendSMSAndVerifyDeliveryReport(context,msgBody,deviceId,receiverNo):
    context.mobiledriver.sendSMSAndVerifyDeliveryReport(msgBody,deviceId,receiverNo)

@Then('click on mobile image button "{imageButtonName}"')
def clickOnImageButton(context, imageButtonName):
    context.mobiledriver.clickOnImageButton(imageButtonName)

@Then('tap on back on mobile')
def tapBack(context):
    context.mobiledriver.tapBack()

@Then('click on text field "{prefillText}"')
def clickOnTextField(context, prefillText):
    context.mobiledriver.clickOnTextField(prefillText)
	
@Then('verify if SMS is empty on "{deviceName}"')
def verifyEmptySMS(context,deviceName):
    context.mobiledriver.verifyEmptySMS(deviceName)

@Then('scroll to text "{scrollText}"')
def scrollTo(context, scrollText):
    context.mobiledriver.scrollTo(scrollText)

@Then('launch APN app')
def launchAPNApp(context):
    context.mobiledriver.launchAPNApp()

@Then('create new APN')
def createNewAPN(context):
    context.mobiledriver.createNewAPN()


@Then ('fill APN fields with below values')
def step_impl(context):
    for row in context.table:
        context.mobiledriver.enterAPNValues(row['fieldname'], row['fieldvalue'])

@Then('save APN details')
def saveAPNDetails(context):
    context.mobiledriver.saveAPNDetails()

@Then('select checkbox "{checkboxName}"')
def selectCheckbox(context, checkboxName):
    context.mobiledriver.selectCheckbox(checkboxName)

@Then('verify if data signal available for "{deviceId}"')
def isDataSignalAvailable(context, deviceId):
   context.mobiledriver.isDataSignalAvailable(deviceId)

@Then('verify if no data signal for "{deviceId}"')
def isNoDataSignalAvailable(context, deviceId):
   context.mobiledriver.isNoDataSignalAvailable(deviceId)


@Then('get network type of device "{deviceId}" and store in "{storeValue}"')
def getNetworkType(context, deviceId,storeValue):
    mobileNetType=context.mobiledriver.getNetworkType(deviceId)
    context.driver.addValueToDic(storeValue, mobileNetType)

@Then('from "{deviceId}" call No "{receiverNo}"')
def callNo(self, deviceId, receiverNo):
    mobiledriver.callNo(deviceId, receiverNo)

@Then('answer call from "{deviceId}"')
def answerCall(context,deviceId):
    context.mobiledriver.answerCall(deviceId)

@Then('end call from "{deviceId}"')
def endCall(context,deviceId):
    context.mobiledriver.endCall(deviceId)


@Then('verify if "{mobileImagebuttonName}" image button on mobile')
def verifyMobileImageButton(self, mobileImagebuttonName):
    mobiledriver.verifyMobileImageButton(mobileImagebuttonName)

@Then('verify if "{mobileImagebuttonName}" image button not on mobile')
def verifyNoMobileImageButton(self, mobileImagebuttonName):
    mobiledriver.verifyNoMobileImageButton(mobileImagebuttonName)
	
@Then('get IMEI of "{deviceId}" and store in "{storeValue}"')
def getIMEI(context, deviceId,storeValue):
    IMEI=context.mobiledriver.getIMEI(deviceId)
    context.driver.addValueToDic(storeValue, IMEI)

@Then('verify IMEI "{imeiPortal}" "{operation}" "{imeiMobile}"')
def compareIMEIValues(context,imeiPortal,imeiMobile,operation):
    imeiPortal = context.driver.getValueFromDic(imeiPortal)
    imeiMobile = context.driver.getValueFromDic(imeiMobile)
    context.mobiledriver.compareIMEIValues(imeiPortal,imeiMobile,operation)


