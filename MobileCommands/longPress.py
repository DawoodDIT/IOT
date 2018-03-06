import sys

from appium.webdriver.common.touch_action import TouchAction

import Class.MobileNative
import Module.MobileAlgorithms
import Module.Utility
import Module.logger
import Module.getMobileObject
import Module.CleanUp
import Class.UserDefinedException
import Module.Report

Excep = Class.UserDefinedException.UserDefinedException()

def longPress(driverObject,element):
    try:
        action = TouchAction(driverObject.mobiledriver)
        action.long_press(element).perform()
    except:
        Module.Report.Failure(driverObject, "Unable to long press on the element")
        Module.logger.ERROR("Unable to long press on the element")
        Excep.raiseException("Unable to long press on the element")