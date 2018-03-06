import sys
import Module.Algorithms
import Module.Utility
import Module.logger
import Module.getObject
import Module.CleanUp
import Class.UserDefinedException
import Module.learningAlgo
import Module.Report
import time
import Module.RecordTime
import Module.cfg

def clickOnMenu(driverObject,menuName):
    t1 = time.perf_counter()
    success = 0
    Excep = Class.UserDefinedException.UserDefinedException()
    if menuName == None:
        Module.logger.ERROR("Menu name not provided")
    obj = Module.getObject.getObjByRepo(driverObject,"menu",menuName)
    if obj != None:
        try:
            obj.click()
            Module.Report.Success(driverObject, "Menu" + menuName + " is clicked")
            Module.logger.INFO("Menu" + menuName + " is clicked")
            success = 1
        except:
            Module.logger.ERROR("Menu "+menuName+ "is not clickable")
    else:
        Module.logger.INFO("Object " + menuName + " is not found in Repository")


    if success == 0 and Module.cfg.learnFileSuccess == 1:
        try:
          success = Module.learningAlgo.getLearnedElements(driverObject, "menu", menuName, "", position=1)
        except:
          Module.logger.WARNING("No Object found for Menu " + menuName)


    if success == 0:
        obj = Module.getObject.getObjByAlgo(driverObject,"menu",menuName)
        if obj != None:
            try:
                obj.click()
                Module.Report.Success(driverObject, "Menu" + menuName + " is clicked")
                Module.learningAlgo.add_obj_using_id(driverObject,"menu", menuName, obj,position=1)
                Module.logger.INFO("Menu" + menuName + " is clicked")
            except:
                # Clean up before raising exception
                Module.Report.Failure(driverObject,"Menu " + menuName + "is not clickable")
                Module.CleanUp.killAllProcess()
                Excep.raiseException("Menu " + menuName + "is not clickable")
        else:
            Module.Report.Failure(driverObject,"No Object found for menu "+menuName)
            Excep.raiseException("No Object found for menu "+menuName)

    Module.RecordTime.calculateTime("ClickOnMenu", time.perf_counter() - t1)
    Module.RecordTime.calculateTime("AutomationTime", time.perf_counter() - t1)