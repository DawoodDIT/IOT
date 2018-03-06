import Module.Algorithms
import Module.Utility
import Module.logger
import Module.getObject
import Module.CleanUp
import Module.Report
import time
import Class.UserDefinedException

def verify_email(self, content):
    Excep = Class.UserDefinedException.UserDefinedException()
    if content == None:
        Module.logger.ERROR("Text to search not provided")

    count = 0
    found = "false"
    timeout = Module.Utility.ReadDataFromJsonFile("tool", "timeout")

    while found == "false" and count < 3:
        try:
            success = Module.Utility.verify_email(content)
            if success == 1:
               found = "true"
            else:
                found = "false"
                count = count + 2
        except:
            found = "false"
            count = count + 2
            time.sleep(2)


    if found == "false":
        Module.logger.ERROR("Content "+content+" not found in email")
        Module.Report.Failure(self,"Content "+content+" not found in email")
        Excep.raiseException("Content "+content+"not found in email")

    else:
        Module.logger.INFO("Content " + content + " found in email")
        Module.Report.Success(self, "Content " + content + " found in email")
