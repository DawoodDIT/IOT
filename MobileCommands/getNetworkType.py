import Module.Algorithms
import Module.Utility
import Module.logger
import Module.getMobileObject
import Module.CleanUp
import Module.Report
import Class.UserDefinedException
import subprocess
Excep = Class.UserDefinedException.UserDefinedException()

def getNetworkType(driverObject,deviceId):
        actualyNetType=None
        try:
                getNetworkTypecmd = "adb -s "+deviceId+" shell getprop gsm.network.type"
                process = subprocess.Popen(getNetworkTypecmd, stdout=subprocess.PIPE, stderr=None, shell=True)
                output = process.communicate()
                actualyNetType=str(output)[3:-14]


        except OSError as e:
                Module.Report.Failure(driverObject,"Retrieving mobile data signal type for "+deviceId+" is not successful.")
                Module.logger.ERROR("Retrieving mobile data signal type for "+deviceId+" is not successful.")
                Excep.raiseException("Retrieving mobile data signal type for "+deviceId+" is not successful.OS Error :"+str(e))
        return actualyNetType