import Module.Algorithms
import Module.Utility
import Module.logger
import Module.getObject
import Module.CleanUp
import Module.Report
import time
import Class.UserDefinedException

def verifyDownloadedFile(self,text, filetype):
    Excep = Class.UserDefinedException.UserDefinedException()
    if text == None:
        Module.logger.ERROR("Text to search not provided")

    count = 0
    found = "false"
    timeout = Module.Utility.ReadDataFromJsonFile("tool", "timeout")

    while found == "false" and count < 3:
        try:
            success = Module.Utility.verifyTextInFile(text, filetype)
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
        Module.logger.ERROR("Text "+text+" not found in downloaded file")
        Module.Report.Failure(self,"Text "+text+" not found in downloaded file")
        Excep.raiseException("Text "+text+"not found in downloaded file")
    else:
        Module.logger.INFO("Text " + text + " found in downloaded file")
        Module.Report.Success(self, "Text " + text + " found in downloaded file")
