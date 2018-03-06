import bytestring as bytestring

import Module.logger
import Module.Report
import os
import Class.UserDefinedException
import time
import subprocess
import codecs
Excep = Class.UserDefinedException.UserDefinedException()


def getIMEI4(driverObject, deviceId):
    imei = ''
    try:
        f = open('info.txt', "w+")
        f.close()
        getimeicmd = "adb -s "+deviceId+" shell dumpsys iphonesubinfo>>info.txt"
        retCode = subprocess.call(getimeicmd, shell=True)
        if (retCode != 0):
            Module.Report.Failure(driverObject,"Device Id " + deviceId + " is incorrect.")
            Module.logger.ERROR("Device Id " + deviceId + " is incorrect.")
            Excep.raiseException("Device Id " + deviceId + " is incorrect.")
        time.sleep(3)
        f = open('info.txt','r')
        output=f.readlines()
        imei=output[4]
        actialimei=imei[14:29]
        f.close()

    except OSError as e:
        Module.Report.Failure(driverObject, "Retrieving IMEI for " + deviceId + " is not successful.")
        Module.logger.ERROR("Retrieving IMEI for " + deviceId + " is not successful.")
        Excep.raiseException("Retrieving IMEI for  " + deviceId + " is not successful.OS Error :" + str(e))
    return actialimei