import Module.Algorithms
import Module.Utility
import Module.logger
import Module.getObject
import Module.CleanUp
import Module.Report
import Class.UserDefinedException


def removeItem(driverObject,itemName):
    Excep = Class.UserDefinedException.UserDefinedException()
    success =0
    if itemName == None:
        Module.logger.ERROR("Item name is not provided")
    #Get Object From Repository
    obj = Module.getObject.getObjByRepo(driverObject,"link",itemName)
    if obj!= None:
     try:
         obj.find_element_by_class_name("search-choice-close").click()
         Module.logger.INFO("Item " + itemName + " is removed")
         success = 1
     except:
         Module.logger.ERROR("Item" + itemName + "cannot be removed")
    else:
        Module.logger.INFO("Object " + itemName + " is not found in Repository")

    if success == 0:
       #Get Object By Dynamic Algorithm
       obj = Module.getObject.getObjByAlgo(driverObject,"link",itemName)
       if obj != None:
           try:
               obj.find_element_by_xpath("//a[@class='search-choice-close']").click()
               success = 1
               Module.logger.INFO("Item " + itemName + " is removed")

           except:
               Module.Report.Failure(driverObject,"Item " + itemName + "cannot be removed")
               Module.CleanUp.killAllProcess()
               Excep.raiseException("Item " + itemName + "cannot be removed")

    if success == 0:
           # Get Object By Dynamic Algorithm
        obj = Module.getObject.getObjByAlgo(driverObject, "table", itemName)
        if obj != None:
            try:
                obj.find_element_by_xpath("//a[@class='removeThrottles']").click()
                success = 1
                Module.logger.INFO("Item " + itemName + " is removed")

            except:
                Module.Report.Failure(driverObject, "Item " + itemName + "cannot be removed")
                Module.CleanUp.killAllProcess()
                Excep.raiseException("Item " + itemName + "cannot be removed")



        else:
           Module.Report.Failure(driverObject,"No Object found for link " + itemName)
           Excep.raiseException("No Object found for link " + itemName)