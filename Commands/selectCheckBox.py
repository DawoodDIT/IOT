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

def selectCheckBox(driverObject,chkboxName,position=1):
    t1 = time.perf_counter()
    Excep = Class.UserDefinedException.UserDefinedException()
    success =0
    if chkboxName == None:
        Module.logger.ERROR("Check Box name is not provided")
    #Get Object From Repository
    #Module.logger.ERROR(str(position))
    if position==1:
        obj = Module.getObject.getObjByRepo(driverObject,"checkbox",chkboxName)
    else:
        obj = Module.getObject.getObjByRepo(driverObject, "checkbox"+str(position), chkboxName)
    if obj!= None:
     try:
         obj.click()
         Module.logger.INFO("Check box " + chkboxName + " is selected")
         success = 1
     except:
         Module.logger.ERROR("Check box " + chkboxName + "is not clickable")
    else:
        Module.logger.INFO("Object " + chkboxName + " is not found in Repository")

    if success == 0 and Module.cfg.learnFileSuccess == 1:
        try:
          success = Module.learningAlgo.getLearnedElements(driverObject, "checkbox", chkboxName, "", position=1)
        except:
          Module.logger.WARNING("No Object found for checkbox " + chkboxName)

    if success == 0:
       #Get Object By Dynamic Algorithm
       obj = Module.getObject.getObjByAlgo(driverObject,"checkbox",chkboxName)
       if obj != None:
           try:
               obj.click()
               Module.logger.INFO("Check box " + chkboxName + " is selected")
               Module.learningAlgo.add_obj_using_id(driverObject,"checkbox", chkboxName, obj, position=1)
           except:
               Module.Report.Failure(driverObject, "Check box " + chkboxName + "is not clickable")
               Module.CleanUp.killAllProcess()
               Excep.raiseException("Check box " + chkboxName + "is not clickable")
       elif obj == None:
           try:
               objAlt = driverObject.driver.find_element_by_xpath("//input[@type ='checkbox' and contains(@name,'" + chkboxName + "')]")
               objAlt.click()
               Module.learningAlgo.add_obj_using_id(driverObject,"checkbox", chkboxName, objAlt, position=1)
               Module.logger.INFO("Check box " + chkboxName + " is selected")

           except:
               Module.Report.Failure(driverObject,"Check box " + chkboxName + "is not clickable")
               Module.CleanUp.killAllProcess()
               Excep.raiseException("Check box " + chkboxName + "is not clickable")
       else:
           Module.Report.Failure(driverObject,"No Object found for check box " + chkboxName)
           Excep.raiseException("No Object found for check box " + chkboxName)

    Module.RecordTime.calculateTime("selectCheckBox", time.perf_counter() - t1)
    Module.RecordTime.calculateTime("AutomationTime", time.perf_counter() - t1)

