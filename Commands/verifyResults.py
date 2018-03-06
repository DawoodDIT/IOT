import Module.getObject
import Module.logger
import Module.Algorithms
import Module.Utility
import Class.Automation
import Module.CleanUp
import Module.Report
import Class.UserDefinedException
import Class.SeleniumBrowser
import re
import time
from datetime import datetime
from dateutil.relativedelta import relativedelta

def verifyResults(self,values):
    success=0
    type="history"
    Module.logger.INFO("Values are "+str(values))
    Excep = Class.UserDefinedException.UserDefinedException()
    ## Get object of results table. its not in table format so getting based on class
    all_rows = self.driver.find_elements_by_class_name("section_history")
    if len(all_rows) == 0:
        type = "batch"
        all_rows = self.driver.find_elements_by_xpath("//tr[@class='odd' or @class='even']")

    ## Getting 1st row of the result page
    for rows in all_rows:
        ## Verify if row contains data
        Module.logger.INFO("Verifying for the row" +rows.text)
        for val in values:
            newvalue = self.getValueFromDic(val)
            if newvalue == None:
                newvalue = Module.Utility.readTestData(val)
            newvalue = str(newvalue)
            Module.logger.INFO("Value to verify is " + newvalue)

            if newvalue.__contains__(":"):
                try:
                    match = re.search(r'\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}', rows.text)
                    date_on_result = match.group()
                    Module.logger.INFO("GOT DATE is" +date_on_result)
                    if date_on_result >= newvalue:
                        Module.logger.INFO("Date matched ========")
                        success = 1
                    else:
                        Module.logger.ERROR("Date not matched ========"+"ExpectedDate:"+newvalue+"ActualDate:"+date_on_result)
                        success = 0
                        break
                except:
                    Module.logger.ERROR("Exception : Date not matched ========")
                    success = 0
                    break
            else:
                if newvalue in rows.text:
                    Module.logger.INFO("Matched ======== "+newvalue)
                    success = 1
                else:
                    Module.logger.ERROR("Not Matched ======== " + newvalue)
                    success = 0
                    break


        if (success == 1):
            targetObj = rows
            break

    if (success == 1):
        try:
            Module.logger.INFO("Results found , clicking")
            Module.logger.INFO("Results found , clicking on row "+targetObj.text)
            if type == "history":
                targetObj.click()

            elif type =="batch":
                try:
                    targetObj.find_element_by_xpath(".//div[@title='TXT']").click()
                except:
                    try:
                        targetObj.find_element_by_xpath(".//div[@title='XML']").click()
                    except:
                        try:
                            targetObj.find_element_by_xpath(".//div[@title='PDF']").click()
                        except:
                            try:
                                targetObj.find_element_by_xpath(".//div[@title='CSV']").click()
                            except:
                                targetObj.find_element_by_tag_name("a").click()
                time.sleep(5)
            Module.logger.INFO("Results found , clicked")
            Module.Report.Success(self,"Results found , clicked")
        except:
            Module.logger.ERROR("ERROR in clicking")
            Module.Report.Failure(self,"ERROR in clicking on results")
            Excep.raiseException("ERROR in clicking on results")
    else:
        Module.logger.ERROR("Results not found based on given criteria")
        Module.Report.Failure(self,"Results not found based on given criteria")
        Excep.raiseException("Results not found based on given criteria")

