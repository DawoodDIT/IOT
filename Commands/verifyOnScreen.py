import sys
import Class.SeleniumBrowser
import Module.Algorithms
import Module.Utility
import Module.logger
import Module.getObject
import Module.CleanUp
import Class.UserDefinedException
import time
import Module.RecordTime
import Module.RecordTime

def verifyOnScreen(driverObject,type,value):
    t1 = time.perf_counter()
    Excep = Class.UserDefinedException.UserDefinedException()
    success = 0
    if type != None and value != None:
        obj = Module.getObject.getObjByAlgo(driverObject,type,value)
        if obj != None:
            Module.logger.INFO("On screen "+value+ " "+type+ " is visible")
            return True
        else:
            Module.logger.ERROR("On screen "+value+ " "+type+ " is not visible")
            return False
    else:
        Module.logger.ERROR("Type and Value to verify not provided")

    Module.RecordTime.calculateTime("verifyOnScreen", time.perf_counter() - t1)
    Module.RecordTime.calculateTime("AutomationTime", time.perf_counter() - t1)
