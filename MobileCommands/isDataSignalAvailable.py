import Module.Algorithms
import Module.Utility
import Module.logger
import Module.getMobileObject
import Module.CleanUp
import Module.Report
import Class.UserDefinedException
import subprocess
Excep = Class.UserDefinedException.UserDefinedException()

def isDataSignalAvailable(driverObject,deviceId):
        connected=False
        output=None
        try:
                getNetworkTypecmd = "adb -s "+deviceId+" shell dumpsys telephony.registry"
                process = subprocess.Popen(getNetworkTypecmd, stdout=subprocess.PIPE, stderr=None, shell=True)
                output = process.communicate()

        except OSError as e:
                Module.Report.Failure(driverObject,"Verifying availability of data signal for device :"+deviceId+" is not successful.")
                Module.logger.ERROR("Verifying availability of data signal for device : "+deviceId+" is not successful.")
                Excep.raiseException("Verifying availability of data signal for device : "+deviceId+" is not successful.OS Error :"+str(e))

        if("mDataConnectionState=2" in str(output)):
                connected = True

        return connected