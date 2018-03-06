import Module.Algorithms
import Module.Utility
import Module.logger
import Module.getObject
import Module.CleanUp
import Module.Report
import Class.UserDefinedException
import time
import Module.learningAlgo
import Module.RecordTime
import Module.cfg

def selectRadioButton(driverObject,radbtnName,position=1):
    t1 = time.perf_counter()
    Excep = Class.UserDefinedException.UserDefinedException()
    success =0

    if radbtnName == None:
        Module.logger.ERROR("Radio Button name is not provided")
    #Get Object From Repository
    obj = Module.getObject.getObjByRepo(driverObject,"radiobutton",radbtnName)
    if obj!= None:
     try:
         obj.click()
         Module.logger.INFO("Radio Button " + radbtnName + " is selected")
         success = 1
     except:
         Module.logger.ERROR("Radio Button " + radbtnName + "is not clickable")
    else:
        Module.logger.INFO("Object " + radbtnName + " is not found in Repository")


    if success == 0 and Module.cfg.learnFileSuccess == 1:
        try:
          success = Module.learningAlgo.getLearnedElements(driverObject, "radiobutton", radbtnName, "", position=1)
        except:
          Module.logger.WARNING("No Object found for radio button " + radbtnName)


    if success == 0:
        if position == 1:
       #Get Object By Dynamic Algorithm
            obj = Module.getObject.getObjByAlgo(driverObject,"radiobutton",radbtnName)
            if obj != None:
                try:
                    obj.click()
                    Module.learningAlgo.add_obj_using_id(driverObject,"radiobutton", radbtnName, obj, position)
                    Module.logger.INFO("Radio Button " + radbtnName + " is selected")
                except:

                    Module.CleanUp.killAllProcess()
                    Excep.raiseException("Radio Button " + radbtnName + "is not clickable")
            elif obj == None:
                try:
                    objAlt = driverObject.driver.find_element_by_xpath("//input[@type ='radio' and contains(@id,'" + radbtnName + "')]")
                    objAlt.click()
                    Module.learningAlgo.add_obj_using_id(driverObject,"radiobutton", radbtnName, objAlt, position)
                    Module.logger.INFO("Radio Button " + radbtnName + " is selected")
					
                except:
                    Module.CleanUp.killAllProcess()
                    Excep.raiseException("Radio Button " + radbtnName + "is not clickable")
            else:
                Module.logger.ERROR("No Object found for radio button " + radbtnName)
        else:
            Module.logger.DEBUG("Getting locator and locator value for radio button")
            locator, locatorvalue = Module.Utility.getDataForDynamicAlgo("radiobutton")
            if locator != None and locatorvalue != None:
                Module.logger.INFO("LOCATOR: " + locator + ", locatorvalue: " + locatorvalue + ", value: " + radbtnName)
                obj = Module.Algorithms.find_auto_element_on_position(driverObject, locator, locatorvalue, radbtnName, position)
                if obj != None:
                    try:
                        obj.click()
                        Module.learningAlgo.add_obj_using_id(driverObject,"radiobutton", radbtnName, obj, position)
                        Module.logger.INFO("Radio Button " + radbtnName + " is selected in position "+radbtnName )
                    except:
                    #Module.CleanUp.killAllProcess()
                        Module.Report.Failure(driverObject,"Radio Button " + radbtnName + "is not clickable")
                        Excep.raiseException("Radio Button " + radbtnName + "is not clickable")
                else:
                    Module.Report.Failure(driverObject,"No Object found by generic algorithm for radio button "+radbtnName)
                    Excep.raiseException("No Object found by generic algorithm for radio button "+radbtnName)
            else:
                Module.Report.Failure(driverObject,"locator and locator value not provided in config file")
                Excep.raiseException("locator and locator value not provided in config file")
                #return None

    Module.RecordTime.calculateTime("selectRadioButton", time.perf_counter() - t1)
    Module.RecordTime.calculateTime("AutomationTime", time.perf_counter() - t1)

