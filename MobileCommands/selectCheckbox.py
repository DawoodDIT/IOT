import Module.Algorithms
import Module.Utility
import Module.logger
import Module.getMobileObject
import Module.CleanUp
import Module.Report
import Class.UserDefinedException

def selectCheckbox(driverObject,checkboxName,position=1):
    Excep = Class.UserDefinedException.UserDefinedException()
    success =0
    if checkboxName == None:
        Module.logger.ERROR("Checkboxname is not provided")
    #Get Object From Repository
    tempobj = Module.getMobileObject.getMobileObjByRepo(driverObject,"textoption",checkboxName)
    if tempobj!= None:
     try:
         obj=tempobj.find_element_by_xpath("/following::android.widget.CheckBox")
         obj.Click()
         Module.logger.INFO("Checkbox  " + checkboxName + " is selected")
         success = 1
     except:
         Module.logger.ERROR("Checkbox " + checkboxName + "is not clickable")
    else:
        Module.logger.INFO("Object " + checkboxName + " is not found in Repository")

    if success == 0:
            tempobj = Module.getMobileObject.getMobileObjByAlgo(driverObject,"textoption",checkboxName)
            if tempobj != None:
                try:
                    obj = tempobj.find_element_by_xpath("//..//following::android.widget.CheckBox")
                    obj.Click()
                    Module.logger.INFO("Checkbox " + checkboxName + " is selected")
                except:
                    Module.CleanUp.killAllProcess()
                    Excep.raiseException("Checkbox " + checkboxName + "is not clickable")
            else:
                Module.logger.ERROR("No Object found for checkbox " + checkboxName)
    else:
        Module.Report.Failure(driverObject,"locator and locator value not provided in config file")
        Excep.raiseException("locator and locator value not provided in config file")
        #return None