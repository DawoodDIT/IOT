import sys
import Module.Algorithms
import Module.Utility
import Module.logger
import Module.getObject
import Module.CleanUp
import Module.Report
import time
import Class.UserDefinedException

def verifyTextNotOnScreen(self,textName):
    Excep = Class.UserDefinedException.UserDefinedException()
    success = 0
    if textName == None:
        Module.logger.ERROR("Text to search not provided")

    count = 0
    found = "false"
    timeout = Module.Utility.ReadDataFromJsonFile("tool", "timeout")

    while found == "false" and count < timeout:
        all_text = self.driver.find_element_by_tag_name("body").text
        try:
            assert textName in all_text ,Module.logger.INFO("Text not found")
            found = "true"
        except:
            found = "false"
            count = count + 2
            time.sleep(2)


    if found == "false":
        Module.logger.INFO("Text " + textName + " not found in web page")
        Module.Report.Success(self, "Text " + textName + " not found in web page")

    else:
        Module.logger.ERROR("Text " + textName + "  found in web page")
        Module.Report.Failure(self, "Text " + textName + "  found in web page")
        Excep.raiseException("Text " + textName + " found in web page")