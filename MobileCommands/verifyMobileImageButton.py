import sys
import Class.SeleniumBrowser
import Module.MobileAlgorithms
import Module.Utility
import Module.logger
import Module.getMobileObject
import Module.CleanUp
import Class.UserDefinedException
import Module.Report


def verifyMobileImageButton(driverObject,imageButtonName):
    Excep = Class.UserDefinedException.UserDefinedException()
    success = 0
    if imageButtonName == None:
        Module.logger.ERROR("Image Button name not provided")
        Module.Report.Failure(driverObject,"Image Button name not provided")
        Excep.raiseException("Image Button name not provided")
    obj = Module.getMobileObject.getMobileObjByRepo(driverObject,"imageButton",imageButtonName)
    if obj != None:
        Module.logger.INFO("Image Button" + imageButtonName + " is displayed")
        return obj

    else:
        Module.logger.INFO("Object " +imageButtonName+" is not found in Repository")

    if success == 0:
        obj = Module.getMobileObject.getMobileObjByAlgo(driverObject,"imageButton",imageButtonName)
        if obj != None:
            Module.logger.INFO("Image Button" + imageButtonName + " is displayed")
            return obj

        else:
            Module.logger.INFO("Image button "+imageButtonName+" is not displayed on mobile")
            return None
