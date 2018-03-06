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

def verifyHiddenHeader(driverObject,headerName):
    t1 = time.perf_counter()
    Excep = Class.UserDefinedException.UserDefinedException()
    success = 0
    if headerName != None:
        all_obj = driverObject.driver.find_elements_by_xpath("//tr/th[@role='columnheader']")
        for obj in all_obj:
            Module.logger.ERROR("Checkss...."+obj.get_attribute("textContent"))
            if obj.get_attribute("textContent") == headerName:
                Module.logger.INFO("The text "+headerName+ " is available in hidden area")
                return True
        else:
            Module.logger.ERROR("The text "+headerName+ " is not available in hidden or visible area")
            return False
    else:
        Module.logger.ERROR("Type and Value to verify not provided")

    Module.RecordTime.calculateTime("verifyHiddenElement", time.perf_counter() - t1)
    Module.RecordTime.calculateTime("AutomationTime", time.perf_counter() - t1)


