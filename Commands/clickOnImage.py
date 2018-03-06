import sys
import Class.SeleniumBrowser
import Module.Algorithms
import Module.Utility
import Module.logger
import Module.getObject
import Module.learningAlgo
import Module.CleanUp
import Module.Report
import Class.UserDefinedException
import time
import Module.RecordTime
import Module.cfg

def clickOnImage(driverObject,imgName):
    t1 = time.perf_counter()
    Excep = Class.UserDefinedException.UserDefinedException()
    success = 0
    if imgName == None:
        Module.logger.ERROR("Image name not provided")

    obj = Module.getObject.getObjByRepo(driverObject,"image",imgName)
    if obj != None:
     for ImgObj in obj:
         if imgName in ImgObj.get_attribute("src"):
            try:
                imgName.click()
                Module.logger.INFO("Image " + imgName + " is selected")
                success = 1
                break
            except:
                Module.logger.ERROR("Image "+imgName+ "is not clickable")


    if success == 0 and Module.cfg.learnFileSuccess == 1:
        try:
          success = Module.learningAlgo.getLearnedElements(driverObject, "image", imgName, "",position=1)
        except:
          Module.logger.WARNING("No Object found for image " + imgName)

    if success == 0:
        obj = Module.getObject.getObjByAlgo(driverObject,"image",imgName)
        if obj != None:
            try:
                obj.click()
                Module.learningAlgo.add_obj_using_id(driverObject,"image", imgName, obj, position=1)
                Module.logger.INFO("Image " + imgName + " is selected")
            except:
                Module.Report.Failure(driverObject,"Image " + imgName + "is not clickable")
                Excep.raiseException("Image " + imgName + "is not clickable")
        else:
            Module.Report.Failure(driverObject,"No Object found for image "+imgName)
            Excep.raiseException("No Object found for image "+imgName)

    Module.RecordTime.calculateTime("clickOnImage", time.perf_counter() - t1)
    Module.RecordTime.calculateTime("AutomationTime", time.perf_counter() - t1)
