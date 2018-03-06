import Module.logger
import Module.Report
import os
import Class.UserDefinedException
import time
import subprocess
import re
Excep = Class.UserDefinedException.UserDefinedException()



def getIMEI6(driverObject, deviceId):
        imei = ''
        try:
            getimeicmd = "adb -s " + deviceId + " shell service call iphonesubinfo 1"
            process = subprocess.Popen(getimeicmd, stdout=subprocess.PIPE, stderr=None, shell=True)
            output = process.communicate()
            output = ''.join(str(output[0]).split('\'')[1::2])
            imei = output.replace('.', '').strip()

        except  :
            Module.Report.Failure(driverObject,"Retrieving IMEI for " + deviceId + " is not successful.")
            Module.logger.ERROR("Retrieving IMEI for " + deviceId + " is not successful.")
            Excep.raiseException("Retrieving IMEI for  " + deviceId + " is not successful.OS Error :" )
        return imei