import Class.Automation
import Class.MobileAutomation
import Module.Report
import Module.logger
import Module.cfg
import time
import Module.learningAlgo
import os
import Module.CleanUp

def before_all(context):
    Module.logger.INFO("Application starts")
    Module.Report.initiateJVM()

def after_all(context):
    try:
        Module.Report.stopJVM()
        Module.logger.INFO("Application ends")
    except:
        pass

def before_scenario(context,scenario):
    Module.cfg.starttime = time.perf_counter()
    Module.CleanUp.remove_dir()
    context.driver = Class.Automation.Automation()
    context.mobiledriver = Class.MobileAutomation.MobileAutomation()

def after_scenario(context,scenario):
    try:
        Module.logger.INFO("After Scenario Start")

        #Module.learningAlgo.persist_learned_ids()
        try:
            Module.logger.INFO("Elapsed time:" +str(Module.cfg.recordDict))
            if ("SeleniumBrowser_login" in Module.cfg.recordDict):
                loginTime = str(Module.cfg.recordDict["SeleniumBrowser_login"])
                Module.Report.Time("Total time in login is:  " + loginTime + " Seconds")
            if ("SeleniumBrowser_ifpageloaded" in Module.cfg.recordDict):
                loadTime = str(Module.cfg.recordDict["SeleniumBrowser_ifpageloaded"])
                Module.Report.Time("Total time in page loading is:  " + loadTime + " Seconds")
            #Module.RecordTime.calculateTime("TotalTime", time.perf_counter() - Module.cfg.starttime)
            # if ("TotalTime" in Module.cfg.recordDict):
            #     totalTime = str(Module.cfg.recordDict["TotalTime"])
            #Module.Report.Time("Total time in test case execution is:  " + totalTime + " Seconds")

            Module.cfg.recordDict = {}
            Module.Report.closeTestReport()
        except:
               pass
        context.driver.logout()

        Module.logger.INFO("After Scenario End")
    except:
        pass