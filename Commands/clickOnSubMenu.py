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

def clickOnSubmenu(driverObject,subMenuName):
    t1 = time.perf_counter()
    Excep = Class.UserDefinedException.UserDefinedException()
    success = 0
    if subMenuName == None:
        Module.logger.ERROR("Sub Menu name not provided")

    obj = Module.getObject.getObjByRepo(driverObject,"submenu",subMenuName)
    if obj != None:
        try:
            obj.click()
            Module.logger.INFO("Sub-menu" + subMenuName + " is clicked")
            success = 1
        except:
            Module.logger.ERROR("Sub Menu "+subMenuName+ "is not clickable")


    if success == 0 and Module.cfg.learnFileSuccess == 1:
        try:
          success = Module.learningAlgo.getLearnedElements(driverObject, "submenu", subMenuName, "",position=1)
        except:
          Module.logger.WARNING("No Object found for submenu " + subMenuName)


    if success == 0:
        obj = Module.getObject.getObjByAlgo(driverObject,"submenu",subMenuName)
        if obj != None:
            try:
                obj.click()
                Module.learningAlgo.add_obj_using_id(driverObject,"submenu", subMenuName, obj,position=1)
                Module.logger.INFO("Sub-menu" + subMenuName + " is clicked")
            except:
                # Clean up before raising exception
                Module.Report.Failure(driverObject, "SubMenu " + subMenuName + "is not clickable")
                Module.CleanUp.killAllProcess()
                Excep.raiseException("SubMenu " + subMenuName + "is not clickable")
        else:
            Module.Report.Failure(driverObject,"SubMenu " + subMenuName + " not found")
            Excep.raiseException("No Object found for sub menu "+subMenuName)

    Module.RecordTime.calculateTime("clickOnSubmenu", time.perf_counter() - t1)
    Module.RecordTime.calculateTime("AutomationTime", time.perf_counter() - t1)