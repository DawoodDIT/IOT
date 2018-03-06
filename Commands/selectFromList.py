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

def selectFromList(driverObject,optionName):
    t1 = time.perf_counter()
    Excep = Class.UserDefinedException.UserDefinedException()
    success = 0
    if optionName == None:
        Module.logger.ERROR("Option name not provided")

    obj = Module.getObject.getObjByRepo(driverObject,"list",optionName)
    if obj != None:
        try:
            obj.click()
            success = 1
        except:
            Module.logger.ERROR("Option "+optionName+ "is not clickable")

    if success == 0 and Module.cfg.learnFileSuccess == 1:
        try:
          success = Module.learningAlgo.getLearnedElements(driverObject, "list", optionName, "", position=1)
        except:
          Module.logger.WARNING("No Object found for list " + optionName)


    if success == 0:
        obj = Module.getObject.getObjByAlgo(driverObject,"list",optionName)
        if obj != None:
            try:
                obj.click()
                Module.learningAlgo.add_obj_using_id(driverObject,"list", optionName, obj, position=1)
            except:
                Module.Report.Failure(driverObject,"option " + optionName + "is not clickable")
                Excep.raiseException("option " + optionName + "is not clickable")
        else:
            Module.Report.Failure(driverObject,"No Object found for option "+optionName)
            Excep.raiseException("No Object found for option "+optionName)

    Module.RecordTime.calculateTime("selectFromList", time.perf_counter() - t1)
    Module.RecordTime.calculateTime("AutomationTime", time.perf_counter() - t1)











