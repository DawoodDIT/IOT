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

def clickOnButton(driverObject,buttonName,position=1):
    #Report = Class.Report.Report()
    t1 = time.perf_counter()
    Excep = Class.UserDefinedException.UserDefinedException()
    success = 0
    if buttonName == None:
        Module.logger.ERROR("Button name not provided")
    obj = Module.getObject.getObjByRepo(driverObject,"button",buttonName)
    if obj != None:
        try:
            obj.click()
            Module.logger.INFO("Button" + buttonName + " is clicked")
            success = 1
        except:
            Module.logger.ERROR("Button "+buttonName+ "is not clickable")
    else:
        Module.logger.INFO("Object " +buttonName+" is not found in Repository")

    if success == 0 and Module.cfg.learnFileSuccess == 1:
        try:
          success = Module.learningAlgo.getLearnedElements(driverObject, "button", buttonName, "",position)
        except:
          Module.logger.WARNING("No Object found for button " + buttonName)


    if success == 0:
        if position == 1:
            obj = Module.getObject.getObjByAlgo(driverObject,"button",buttonName)
        else:
            obj = Module.getObject.getObjByAlgoOnPosition(driverObject,"button",buttonName,position)
            #print(obj)

        if obj != None:
            try:
                obj.click()
                Module.learningAlgo.add_obj_using_id(driverObject,"button", buttonName, obj,position)
                Module.logger.INFO("Button" + buttonName + " is clicked")
            except:
                    # Clean up before raising exception
                Module.Report.Failure(driverObject, "Button with name "+buttonName+" is not clickable")
                Module.CleanUp.killAllProcess()
                Excep.raiseException("Button with name "+buttonName+" is not clickable")
        else:
            Module.Report.Failure(driverObject, "No Object found for button "+buttonName)
            Excep.raiseException("No Object found for button "+buttonName)

    Module.RecordTime.calculateTime("clickOnButton", time.perf_counter() - t1)
    Module.RecordTime.calculateTime("AutomationTime", time.perf_counter() - t1)













