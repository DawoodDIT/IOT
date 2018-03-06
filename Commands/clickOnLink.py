import sys
import Class.SeleniumBrowser
import Module.Algorithms
import Module.Utility
import Module.logger
import Module.getObject
import Module.CleanUp
import Module.Report
import Class.UserDefinedException
import Module.learningAlgo
import time
import Module.RecordTime
import Module.cfg

def clickOnLink(driverObject,lnkName):
    t1 = time.perf_counter()
    success = 0
    Excep = Class.UserDefinedException.UserDefinedException()

    if lnkName == None:
        Module.logger.ERROR("Link name not provided")
    obj = Module.getObject.getObjByRepo(driverObject,"link",lnkName)
    if obj != None:
     for lnkObj in obj:
         if lnkObj.text == lnkName:
            try:
                lnkObj.click()
                Module.logger.INFO("Link " + lnkName + " is selected")
                success = 1
                break
            except:
                Module.logger.ERROR("Link "+lnkName+ "is not clickable")
         else:
             Module.logger.ERROR("No Object found for link " + lnkName)
    else:
        Module.logger.INFO("Object " + lnkName + " is not found in Repository")
    if obj != None  and success==0:
        obj[0].click()
        success=1

    # if success == 0 and Module.cfg.learnFileSuccess == 1:
    #     try:
    #       success = Module.learningAlgo.getLearnedElements(driverObject, "link", lnkName, "", position=1)
    #     except:
    #       Module.logger.WARNING("No Object found for link " + lnkName)

    if success == 0:
        obj = Module.getObject.getObjByAlgo(driverObject,"link",lnkName)
        if obj != None:
            try:
                obj.click()
                Module.learningAlgo.add_obj_using_id(driverObject,"link", lnkName, obj,position=1)
                Module.logger.INFO("Link " + lnkName + " is selected")
            except:
                Module.Report.Failure(driverObject,"Link " + lnkName + " is not clickable")
                # Clean up before raising exception
                Module.CleanUp.killAllProcess()
                Excep.raiseException("Link " + lnkName + "is not clickable")
        else:
            Module.Report.Failure(driverObject,"No link found "+lnkName)
            Excep.raiseException("No Object found for link "+lnkName)

    Module.RecordTime.calculateTime("ClickOnLink", time.perf_counter() - t1)
    Module.RecordTime.calculateTime("AutomationTime", time.perf_counter() - t1)


