import sys
import Class.MobileNative
import Module.MobileAlgorithms
import Module.Utility
import Module.logger
import Module.getMobileObject
import Module.CleanUp
import Class.UserDefinedException
import Module.Report


def clickOnTextField(driverObject,textFieldName):
    Excep = Class.UserDefinedException.UserDefinedException()
    success = 0
    if textFieldName == None:
        Module.logger.ERROR("Text field name not provided")
        Module.Report.Failure(driverObject,"Text field name not provided")
        Excep.raiseException("Text field name not provided")
    obj = Module.getMobileObject.getMobileObjByRepo(driverObject,"textField",textFieldName)
    if obj != None:
        try:
            obj.click()
            Module.logger.INFO("TextField" + textFieldName + " is clicked")
            success = 1
        except:
            Module.Report.Failure(driverObject, "TextField with name " + textFieldName + " is not clickable")
            Module.logger.ERROR("TextField with name " + textFieldName + " is not clickable")
            Excep.raiseException("TextField with name " + textFieldName + " is not clickable")
    else:
        Module.logger.INFO("Object " +textFieldName+" is not found in Repository")

    if success == 0:
        obj = Module.getMobileObject.getMobileObjByAlgo(driverObject,"textField",textFieldName)
        if obj != None:
            try:
                obj.click()
                Module.logger.INFO("Icon" + textFieldName + " is clicked")
            except:
                # Clean up before raising exception
                Module.CleanUp.killAllProcess()
                Module.Report.Failure(driverObject,"TextField with name "+textFieldName+" is not clickable")
                Module.logger.ERROR("TextField with name "+textFieldName+" is not clickable")
                Excep.raiseException("Icon with name "+textFieldName+" is not clickable")
        else:
            Module.Report.Failure(driverObject,"No Object found for TextField"+textFieldName)
            Module.logger.ERROR("No Object found for TextField "+textFieldName)
            Excep.raiseException("No Object found for TextField "+textFieldName)