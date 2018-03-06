import sys
import Class.SeleniumBrowser
import Module.Algorithms
import Module.Utility
import Module.logger
import Module.getObject
import Module.CleanUp
import Class.UserDefinedException
import Module.learningAlgo
import time
import Module.RecordTime
import Module.cfg

def clickOnExpandLink(driverObject,lnkName,position=1):
    t1 = time.perf_counter()
    Excep = Class.UserDefinedException.UserDefinedException()
    success = 0
    if lnkName == None:
        Module.logger.ERROR("Expand Link name not provided")
    obj = Module.getObject.getObjByRepo(driverObject,"expandlink",lnkName)
    if obj != None and len(obj)>1:
     for lnkObj in obj:
         if lnkObj.text == lnkName:
            try:
                lnkObj.click()
                Module.logger.INFO("Expand Link " + lnkName + " is selected")
                success = 1
                break
            except:
                Module.logger.ERROR("Expand Link "+lnkName+ "is not clickable")
         else:
             Module.logger.ERROR("No Object found for link " + lnkName)

    elif obj != None and len(obj)== 1:
          try:
                obj[0].click()
                success=1

          except:
                Module.logger.ERROR("Expand Link " + lnkName + "is not clickable")

    else:
        Module.logger.INFO("Object " + lnkName + " is not found in Repository")


    if success == 0 and Module.cfg.learnFileSuccess == 1:
        try:
          success = Module.learningAlgo.getLearnedElements(driverObject, "expandlink", lnkName, "", position=1)
        except:
          Module.logger.WARNING("No Object found for expand link " + lnkName)


    if success == 0:
        if position == 1:
          obj = Module.getObject.getObjByAlgo(driverObject,"expandlink",lnkName)
        else:
            obj = Module.getObject.getObjByAlgoOnPosition(driverObject, "expandlink", lnkName, position)

        if obj != None:
            try:
                obj.click()
                Module.learningAlgo.add_obj_using_id(driverObject,"expandlink", lnkName, obj, position)
                Module.logger.INFO("Expand Link " + lnkName + " is selected")
            except:
                # Clean up before raising exception
                Module.CleanUp.killAllProcess()
                Excep.raiseException("Expand Link " + lnkName + "is not clickable")
        else:
            Excep.raiseException("No Object found for expand link "+lnkName)

    Module.RecordTime.calculateTime("clickOnExpandLink", time.perf_counter() - t1)
    Module.RecordTime.calculateTime("AutomationTime", time.perf_counter() - t1)
