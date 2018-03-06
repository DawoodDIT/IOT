import Module.logger
import Module.Report
import time
import errno
from pathlib import Path
import os
import Class.UserDefinedException


cwd = os.getcwd()
pcwd = "\\".join(cwd.split('\\')[:-1])
mobdir = cwd + "\\logs"
try:
    dirExists = os.path.exists(mobdir)
    if not dirExists:
        mobdir = pcwd + "\\logs"
except OSError as exception:
        if exception.errno != errno.EEXIST:
            raise

strtsxtPath = mobdir+"\\tsxt.txt"
Excep = Class.UserDefinedException.UserDefinedException()

def verifyEmptySMS(driverObject,deviceName):
    #Copy the SMS from device to test file
    strSleepCmd = "adb -s " + deviceName + " shell sleep 10"
    os.system(strSleepCmd)
    strCopySMSCmd = "adb -s " + deviceName + " pull /sdcard/tsxt.txt " + mobdir + "/DeviceName_" + deviceName + ".txt"
    os.system(strCopySMSCmd)

    #SMS Verification
    time.sleep(5)
    strTempPath = mobdir + "//DeviceName_" + deviceName + ".txt"
    createNewSDCardFile = "adb -s " + deviceName + " push " + strtsxtPath + " /sdcard/"
    filecontents = Path(strTempPath).read_text()
    if filecontents.strip() == "":
        Module.logger.INFO("SUCCESS : Empty SMS Verification is successfull. Received empty  SMS")
        os.system(createNewSDCardFile)
        Module.logger.INFO("Sd card contents cleared")
    else:
        Module.Report.Failure(driverObject, "Empty SMS Verification is Not Successfull.Actual SMS received is:"+filecontents)
        Excep.raiseException("Empty SMS Verification is Not Successfull.Actual SMS received is:"+filecontents)
        os.system(createNewSDCardFile)
        Module.logger.INFO("Sd card contents cleared.Actual SMS received is:"+filecontents)