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

def enterText(driverObject,textName,textValue):
    t1 = time.perf_counter()
    Excep = Class.UserDefinedException.UserDefinedException()
    if textName == None or textValue == None:
        Module.logger.ERROR("Button name not provided")
    success = 0
    obj = Module.getObject.getObjByRepo(driverObject,"text",textName)
    if obj != None:
        try:
            Module.logger.DEBUG("Clicking based on given parameters")
            obj.clear()
            obj.send_keys(textValue)
            Module.logger.INFO("Text object Found. Entering Value for text field " + textName + " with value " + textValue)
            success = 1
        except:
            Module.logger.ERROR("Exception in clicking using given locator and locator value")
    else:
        Module.logger.INFO("Object " +textName+" is not found in Repository")

    if success == 0 and Module.cfg.learnFileSuccess == 1:
        try:
          success = Module.learningAlgo.getLearnedElements(driverObject, "text", textName, textValue, position=1)
        except:
          Module.logger.WARNING("No Object found for text " + textName)

    if success == 0:
        obj = Module.getObject.getObjByAlgo(driverObject,"text",textName)
        if obj != None:
            try:
                next_obj = obj.find_element_by_xpath("following::input")
                try:
                    next_obj.clear()
                    next_obj.send_keys(textValue)
                    Module.learningAlgo.add_obj_using_id(driverObject,"text", textName, next_obj,position=1)
                    Module.logger.INFO("Text object Found. Entering Value for text field " + textName + " with value " + textValue)
                except:
                    #Clean up before raising exception
                    #driverObject.close()
                    Module.Report.Failure(driverObject,"Exception in entering value in the textfield " + textName)
                    Module.CleanUp.killAllProcess()
                    Excep.raiseException("Exception in entering value in the textfield " + textName)
            except:
                Module.Report.Failure(driverObject,"Can't find input box for " + textName)
                Module.CleanUp.killAllProcess()
                Excep.raiseException("Can't find input box for " + textName)
        else:
            Module.Report.Failure(driverObject,"No object found for text "+textValue)
            Excep.raiseException("No object found for text "+textName)

    Module.RecordTime.calculateTime("enterText", time.perf_counter() - t1)
    Module.RecordTime.calculateTime("AutomationTime", time.perf_counter() - t1)



