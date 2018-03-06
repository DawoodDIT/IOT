import sys
import Class.SeleniumBrowser
import Module.MobileAlgorithms
import Module.Utility
import Module.logger
import Module.getMobileObject
import Module.CleanUp
import Class.UserDefinedException
import Module.Report


def clickOnImageButton(driverObject,imageButtonName):
    Excep = Class.UserDefinedException.UserDefinedException()
    success = 0
    if imageButtonName == None:
        Module.logger.ERROR("Image Button name not provided")
        Module.Report.Failure(driverObject,"Image Button name not provided")
        Excep.raiseException("Image Button name not provided")
    obj = Module.getMobileObject.getMobileObjByRepo(driverObject,"imageButton",imageButtonName)
    if obj != None:
        try:
            obj.click()
            Module.logger.INFO("Image Button" + imageButtonName + " is clicked")
            success = 1
        except:
            Module.logger.ERROR("Image Button "+imageButtonName+ "is not clickable")
            Module.Report.Failure(driverObject,"Image Button "+imageButtonName+ "is not clickable")
            Excep.raiseException("Image Button "+imageButtonName+ "is not clickable")
    else:
        Module.logger.INFO("Object " +imageButtonName+" is not found in Repository")

    if success == 0:
        obj = Module.getMobileObject.getMobileObjByAlgo(driverObject,"imageButton",imageButtonName)
        if obj != None:
            try:
                obj.click()
                Module.logger.INFO("Image Button" + imageButtonName + " is clicked")
            except:
                # Clean up before raising exception
                Module.CleanUp.killAllProcess()
                Module.logger.ERROR("Image Button " + imageButtonName + "is not clickable")
                Module.Report.Failure(driverObject, "Image Button " + imageButtonName + "is not clickable")
                Excep.raiseException("Image Button "+imageButtonName+" is not clickable")
        else:
            Module.logger.ERROR("No Object found for Image button "+imageButtonName)
            Module.Report.Failure(driverObject,"No Object found for Image button "+imageButtonName)
            Excep.raiseException("No Object found for Image button "+imageButtonName)