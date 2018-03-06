import sys
import Class.SeleniumBrowser
import Module.Algorithms
import Module.Utility
import Module.logger
import Module.getObject
import Module.CleanUp
import Module.Report
import Class.UserDefinedException


def clickOnSearchResult(driverObject,buttonName,position=1):
    #Report = Class.Report.Report()
    Excep = Class.UserDefinedException.UserDefinedException()
    success = 0
    if buttonName == None:
        Module.logger.ERROR("Search result not provided")
    obj = Module.getObject.getObjByRepo(driverObject,"searchResult",buttonName)
    if obj != None:
        try:
            obj.click()
            Module.logger.INFO("Search result" + buttonName + " is clicked")
            success = 1
        except:
            Module.logger.ERROR("Search result "+buttonName+ "is not clickable")
    else:
        Module.logger.INFO("Object " +buttonName+" is not found in Repository")

    if success == 0:
        if position == 1:
            obj = Module.getObject.getObjByAlgo(driverObject,"searchResult",buttonName)
        else:
            obj = Module.getObject.getObjByAlgoOnPosition(driverObject,"searchResult",buttonName,position)

        if obj != None:
            try:
                obj.click()
                Module.logger.INFO("Search result" + buttonName + " is clicked")
            except:
                    # Clean up before raising exception
                Module.Report.Failure(driverObject, "Search result  "+buttonName+" is not clickable")
                Module.CleanUp.killAllProcess()
                Excep.raiseException("Search result"+buttonName+" is not clickable")
        else:
            Module.Report.Failure(driverObject, "No Object found for Search result "+buttonName)
            Excep.raiseException("No Object found for Search result "+buttonName)













