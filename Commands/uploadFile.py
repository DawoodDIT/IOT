import Class.SeleniumBrowser
import Module.Algorithms
import Module.Utility
import Module.logger
import Module.getObject
import Module.CleanUp
import Module.Report
import Class.UserDefinedException

def uploadFile(driverObject,uploadButtonName,filename,position=1):
    Excep = Class.UserDefinedException.UserDefinedException()
    filePath = Module.Utility.getFileTransferPath(filename)
    success = 0
    if uploadButtonName == None:
        Module.logger.ERROR("Button name not provided")
    obj = Module.getObject.getObjByRepo(driverObject,"uploadbutton",uploadButtonName)
    if obj != None:
        try:
            obj.send_keys(filePath)
            Module.logger.INFO("File with name" + filePath + " is uploaded")
            success = 1
        except:
                Module.logger.ERROR("File with name" + filePath + " is not uploaded")
    else:
            Module.logger.INFO("Object " +uploadButtonName+" is not found in Repository")

    if success == 0:
        if position == 1:
            obj = Module.getObject.getObjByAlgo(driverObject,"button",uploadButtonName)
        else:
            obj = Module.getObject.getObjByAlgoOnPosition(driverObject,"button",uploadButtonName,position)

        if obj != None:
            try:
                inputObj = obj.find_element_by_tag_name("input")
                inputObj.send_keys(filePath)
                Module.logger.INFO("File with name" + filePath + " is uploaded")
            except:
                    # Clean up before raising exception
                Module.Report.Failure(driverObject, "File" + filePath + " is not uploaded")
                Module.CleanUp.killAllProcess()
                Excep.raiseException("File with name:" + filePath + " is not uploaded")
        else:
            Module.Report.Failure(driverObject, "No Object found for upload button "+uploadButtonName)
            Excep.raiseException("No Object found for upload button "+uploadButtonName)