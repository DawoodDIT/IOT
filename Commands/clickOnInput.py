import sys
import Class.SeleniumBrowser
import Module.Algorithms
import Module.Utility
import Module.logger
import Module.getObject
import Module.CleanUp
import Module.Report
import Class.UserDefinedException
import time
import Module.RecordTime

def clickOnInput(driverObject,inputName,inputValue):
    t1 = time.perf_counter()
    Excep = Class.UserDefinedException.UserDefinedException()
    success = 0
    input_obj=None
    if inputName == None:
        Module.logger.ERROR("Input name not provided")
        obj = Module.getObject.getObjByRepo(driverObject,"input",inputName)
        if obj != None:
            try:
                obj.click()
                try:
                    input_obj = obj.find_element_by_xpath("//input[contains(@id,'TreeOrganisationInput')]")
                    input_obj.clear()
                    input_obj.send_keys(inputValue)
                    time.sleep(10)
                except:
                    Module.logger.ERROR("Cannot enter value in the input field " + inputName)
                try:
                    actualObj = input_obj.find_elements_by_xpath("//li[contains(@class,'search-result')]")
                    actualObj[0].click()
                    Module.logger.INFO("INPUT " + inputName + " is selected")
                    success = 1
                except:
                    Module.logger.ERROR("Cannot select value from the list " + inputName)
            except:
                    Module.logger.ERROR("Cannot click on input field " + inputName)
        else:
            Module.logger.ERROR("No object found for input "+inputName)
    else:
         Module.logger.INFO("Object " +inputValue+" is not found in Repository")

    if success == 0:
        obj = Module.getObject.getObjByAlgo(driverObject,"input",inputName)
        if obj != None:
            try:
                obj.click()
                time.sleep(10)

                try:
                    input_obj = obj.find_element_by_xpath("//input[contains(@id,'TreeOrganisationInput')]")
                    if (input_obj!= None):
                        try:
                            input_obj.clear()
                            input_obj.send_keys(inputValue)
                        except:
                            input_obj = obj.find_elements_by_xpath("//input[contains(@id,'TreeOrganisationInput')]")[1]
                            input_obj.click()
                            input_obj.send_keys(inputValue)


                    else:
                        input_obj = obj.find_element_by_xpath("//input[@type='text']")
                        time.sleep(10)
                        #input_obj.click()
                        #input_obj.clear()
                        obj.send_keys(inputValue)

                    time.sleep(10)
                except:
                    Module.CleanUp.killAllProcess()
                    Excep.raiseException("Exception in entering value in the input field " + inputName)
                try:
                    actualObj = input_obj.find_elements_by_xpath("//li[contains(@class,'result')]")
                    if(len(actualObj) == 1  ):
                        Module.logger.INFO("Only one matching result for the given text :" + inputValue)
                        actualObj[0].click()



                    else:
                        Module.logger.INFO("Multiple search result for the given text :"+inputValue )
                        found = False
                        for each in actualObj:
                            Module.logger.INFO("Finding match: "+each.text)
                            if(each.text == inputValue):
                                found = True
                                each.click()
                                break
                        if found ==True:
                            Module.logger.INFO("From multiple search result exact match is found and clicked.")
                        else:
                             Module.logger.ERROR("Exact search result for input :"+ inputName + "is not found")
                             Module.Report.Failure(driverObject, "Exact search result for input :"+ inputName + "is not found")
                             Excep.raiseException("Exact search result for input :"+ inputName + "is not found")

                    Module.logger.INFO("INPUT " + inputName + " is selected")
                    success = 1
                except:
                    Module.Report.Failure(driverObject,"Exception in  selecting value from the list " + inputName)
                    Module.CleanUp.killAllProcess()
                    Excep.raiseException("Exception in  selecting value from the list " + inputName)
            except:
                # Clean up before raising exception
                Module.Report.Failure(driverObject,"Input field " + inputName+" is not clickable")
                Module.CleanUp.killAllProcess()
                Excep.raiseException("Input field " + inputName+" is not clickable")
        else:
            Module.Report.Failure(driverObject,"No Object found for input "+inputName)
            Excep.raiseException("No Object found for input "+inputName)

    Module.RecordTime.calculateTime("clickOnInput", time.perf_counter() - t1)
    Module.RecordTime.calculateTime("AutomationTime", time.perf_counter() - t1)











