import sys
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

def clickOnTab(driverObject,tabName):
    t1 = time.perf_counter()
    Excep = Class.UserDefinedException.UserDefinedException()
    success = 0
    if tabName == None:
        Module.logger.ERROR("Tab name not provided")
    obj = Module.getObject.getObjByRepo(driverObject,"tab",tabName)
    if obj != None:
        try:
            obj.click()
            Module.logger.INFO("Tab" + tabName + " is clicked")
            success = 1
        except:
            Module.logger.ERROR("Tab "+tabName+ "is not clickable")
    else:
        Module.logger.INFO("Object " + tabName + " is not found in Repository")

    if success == 0 and Module.cfg.learnFileSuccess == 1:
        try:
          success = Module.learningAlgo.getLearnedElements(driverObject, "tab", tabName, "",position=1)
        except:
          Module.logger.WARNING("No Object found for tab " + tabName)

    if success == 0:
        obj = Module.getObject.getObjByAlgo(driverObject,"tab",tabName)
        if obj != None:
            try:
                obj.click()
                Module.learningAlgo.add_obj_using_id(driverObject,"tab", tabName, obj, position=1)
                Module.logger.INFO("tab" + tabName + " is clicked")
            except:
                Module.Report.Failure(driverObject,"Tab " + tabName + "is not clickable")
                # Clean up before raising exception
                Module.CleanUp.killAllProcess()
                Excep.raiseException("Tab " + tabName + "is not clickable")
        else:
            Module.Report.Failure(driverObject,"Tab "+tabName+ " not found")
            Excep.raiseException("No Object found for tab "+tabName)

    Module.RecordTime.calculateTime("clickOnTab", time.perf_counter() - t1)
    Module.RecordTime.calculateTime("AutomationTime", time.perf_counter() - t1)