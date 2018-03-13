from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import _multiprocessing
import psutil
import Module.Report
import Module.RecordTime

from selenium.common.exceptions import TimeoutException
import Module.Utility
import datetime
import time
import Module.logger
import Module.CleanUp
import Module.Report
import os
import getpass
import Class.UserDefinedException
import re
import Module.learningAlgo

class SeleniumBrowser:
    def __init__(self):
        t1 = time.perf_counter()
        self.browserType = Module.Utility.ReadDataFromJsonFile("tool", "browserType")
        self.timeout = Module.Utility.ReadDataFromJsonFile("tool", "timeout")
        downloadDir = Module.Utility.defaultDownloadDirectory()
        Module.learningAlgo.ReadLearningJsonFile()
        options = webdriver.ChromeOptions()
        options.add_argument("user-data-dir=C:/users/"+getpass.getuser()+"/AppData/Local/Google/Chrome/User Data/M2MStaging")
        #options.add_argument("user-data-dir=C:/users/"+getpass.getuser()+"/AppData/Local/Google/Chrome/User Data/Instance1")
        prefs = {'download.default_directory': downloadDir}
        options.add_experimental_option('prefs', prefs)
        self.driver = webdriver.Chrome(chrome_options=options)
        self.get_input_type = Module.Utility.ReadDataFromJsonFile("tool", "configfile")
        self.dic = {}
        self.driver.maximize_window()

        Module.RecordTime.calculateTime("SeleniumBrowser_init", time.perf_counter() - t1)
        Module.RecordTime.calculateTime("AutomationTime", time.perf_counter() - t1)

        # self.driver.save_screenshot("C:/Users/saurabh/Pictures")
    def __call__(self, *args, **kwargs):
        return self.driver

    def openUrl(self):
        t1 = time.perf_counter()

        # CHANGE get the URL from configuration file
        get_input_type = Module.Utility.ReadDataFromJsonFile("tool", "configfile")
        if get_input_type != "xls":
          url = Module.Utility.ReadDataFromLoginFile("sut", "url")
        elif get_input_type == "xls":
          Env = Module.Utility.fnReadDataFromExcel("Login.xlsx", "URL", "ToBeExecuted","Yes","Type")
          url = Module.Utility.fnReadDataFromExcel("Login.xlsx", "URL", "Type",Env,"URL")
        Module.logger.INFO("Opening URL " + url)
        self.driver.get(url)

        Module.logger.DEBUG("COOKIE Listing and deletion start")
        try:
            cookies_list = self.driver.get_cookies()
        except:
            Module.logger.DEBUG("exception in getting cookies")
        try:
            for cookie in cookies_list:
                if (cookie['name']!= "3dg7WXDcUU") and (cookie['name']!= "JSESSIONID"):
                    self.driver.delete_cookie(cookie['name'])
                Module.logger.DEBUG("name is:" + str(cookie['name']) + " and value is:" + cookie['value'])
        except:
            Module.logger.DEBUG("exception in deleting cookies")
        Module.logger.DEBUG("COOKIE Listing and deletion end")

        try:
            cookies_list = self.driver.get_cookies()
            for cookie in cookies_list:
                Module.logger.DEBUG("name is:" + str(cookie['name']) + " and value is:" + cookie['value'])
        except:
            Module.logger.DEBUG("exception in printing list after deleting cookies")

        Module.RecordTime.calculateTime("SeleniumBrowser_openURL", time.perf_counter() - t1)


    def login(self):
        t1 = time.perf_counter()

        get_input_type = Module.Utility.ReadDataFromLoginFile("tool", "configfile")
        if get_input_type != "xls":
          strUserName = Module.Utility.ReadDataFromLoginFile("Login", "Username")
          strPassword = Module.Utility.ReadDataFromLoginFile("Login", "Password")
        elif get_input_type == "xls":
           Env = Module.Utility.fnReadDataFromExcel("Login.xlsx", "URL", "ToBeExecuted", "Yes", "Type")
           strUserName = Module.Utility.fnReadDataFromExcel("Login.xlsx",Env, "TypeOfUser","Admin","UserName")
           strPassword = Module.Utility.fnReadDataFromExcel("Login.xlsx", Env, "TypeOfUser", "Admin","Password")
        self.driver.find_element_by_id("__ns2087359418_username").send_keys(strUserName)
        self.driver.find_element_by_id("__ns2087359418_password").send_keys(strPassword)
        self.driver.find_element_by_id("__ns2087359418_loginBtn").click()
        home = None
        local_timeout = 0
        while (home == None) and local_timeout < self.timeout / 2:
            try:
                home = self.driver.find_element_by_id("__ns1790630358_homeLnk2")
            except:
                Module.logger.WARNING("Login not complete")
                time.sleep(2)
                local_timeout = local_timeout + 1
        if home:
            Module.logger.INFO("Logged in with user: Home screen is visible")
            time.sleep(1)
        else:
            Module.logger.ERROR("Login not completed within " + str(self.timeout) + " seconds")
            Module.Report.Failure(self,"Login not completed within " + str(self.timeout) + " seconds")
            Excep = Class.UserDefinedException.UserDefinedException()
            Excep.raiseException("Login not completed within " + str(self.timeout) + " seconds")

        Module.RecordTime.calculateTime("SeleniumBrowser_login", time.perf_counter() - t1)

    def loginAs(self, user):

        strUserName = Module.Utility.ReadDataFromLoginFile(user, "Username")
        strPassword = Module.Utility.ReadDataFromLoginFile(user, "Password")

        self.driver.find_element_by_id("__ns2087359418_username").send_keys(strUserName)
        self.driver.find_element_by_id("__ns2087359418_password").send_keys(strPassword)
        self.driver.find_element_by_id("__ns2087359418_loginBtn").click()
        home = None
        local_timeout = 0
        while (home == None) and local_timeout < self.timeout / 2:
            try:
                home = self.driver.find_element_by_id("__ns1790630358_homeLnk2")
            except:
                Module.logger.WARNING("Login not complete")
                time.sleep(2)
                local_timeout = local_timeout + 1

        if home:
            Module.logger.INFO("Logged in with user: Home screen is visible")
            time.sleep(1)
        else:
            Module.logger.ERROR("Login not completed within " + str(self.timeout) + " seconds")
            Module.Report.Failure(self, "Login not completed within " + str(self.timeout) + " seconds")
            Excep = Class.UserDefinedException.UserDefinedException()
            Excep.raiseException("Login not completed within " + str(self.timeout) + " seconds")

    def loginandVerifyResetPassword(self, user):

        strUserName = Module.Utility.ReadDataFromLoginFile("CustomerForReset", "Username")
        strPassword = Module.Utility.ReadDataFromLoginFile("CustomerForReset", "Password")

        self.driver.find_element_by_id("__ns2087359418_username").send_keys(strUserName)
        self.driver.find_element_by_id("__ns2087359418_password").send_keys(strPassword)
        self.driver.find_element_by_id("__ns2087359418_loginBtn").click()
        time.sleep(5)
        if self.driver.find_element_by_id(
                "__ns2087359418_invalidLogin").text == "Your password has been reset by your system administrator. Please have in consideration the \"Reset password request\" email to complete the password recovery.":
            resetON = True
        else:
            resetON = False

        if resetON == True:
            Module.logger.INFO("Reset password flag is set ON for user " + user)
            time.sleep(1)
        else:
            Module.logger.ERROR("Reset password flag is set not set ON for user " + user)
            Module.Report.Failure(self, "Reset password flag is not set ON for user " + user)
            Excep = Class.UserDefinedException.UserDefinedException()
            Excep.raiseException("Reset password flag is set not ON for user "+ user)

    def loginAndVerifyBlocked(self,user):

        strUserName = Module.Utility.ReadDataFromLoginFile(user, "Username")
        strPassword = Module.Utility.ReadDataFromLoginFile(user, "Password")

        self.driver.find_element_by_id("__ns2087359418_username").send_keys(strUserName)
        self.driver.find_element_by_id("__ns2087359418_password").send_keys(strPassword)
        self.driver.find_element_by_id("__ns2087359418_loginBtn").click()
        time.sleep(10)
        if self.driver.find_element_by_id("__ns2087359418_invalidLogin").text=="Your account has been blocked by an administrator. Please contact your administrator.":
            resetON=True
        else:
            resetON=False


        if resetON==True:
            Module.logger.INFO("User: "+ user+" has been blocked")
            time.sleep(1)
        else:
            Module.logger.ERROR("User: "+ user+"is not blocked")
            Module.Report.Failure(self,"User: "+ user+"is not blocked")
            Excep = Class.UserDefinedException.UserDefinedException()
            Excep.raiseException("User: "+ user+"is not blocked")


    def gotodefaultframe(self):
        Module.logger.DEBUG("Switching to default content")
        self.driver.switch_to.default_content()

    def gotocorrectframe(self):
        all_iframe = self.driver.find_elements_by_tag_name("IFRAME")
        framefound = "false"
        if all_iframe == None:
            Module.logger.DEBUG("There is no child frame available, so assuming current frame is the correct one")
        else:
            for frame in all_iframe:
                if frame.get_attribute("id") != "" and frame.get_attribute("id") != "home_iframe":
                    Module.logger.DEBUG("Switching to frame : " + frame.get_attribute("id"))
                    self.driver.switch_to.frame(frame.get_attribute("id"))
                    framefound = "true"
                if framefound == "true":
                    break

    def ifpageloaded(self):
        t1 = time.perf_counter()

        loaded = "true"
        ##CHANGE Code to check if page is loaded successfully or not
        count = 0
        self.driver.find_elements_by_class_name("loading")
        while loaded == "true" and count < self.timeout:
            try:
                elem = WebDriverWait(self.driver, 1).until(
                    EC.presence_of_element_located((By.CLASS_NAME, "preloader32"))
                )
            except:
                Module.logger.DEBUG("Exception in page loading")
                elem = None

            if elem != None and elem.is_displayed():
                Module.logger.DEBUG("Page is still loading, so waiting for page to load")
            else:
                Module.logger.DEBUG("Page loading is complete")
                loaded = "false"

            count = count + 1
            time.sleep(2)

        Module.RecordTime.calculateTime("SeleniumBrowser_ifpageloaded",time.perf_counter()-t1)

    def getValueFromLabel(self,lblName,position=1):
        currentposition = 1
        found = "false"
        obj = self.driver.find_elements_by_tag_name("label")
        if obj!= None:
            for lblObj in obj:
                if lblObj.text == lblName:
                    if currentposition == position:
                        span_obj = lblObj.find_elements_by_xpath("following::span")
                        Module.logger.INFO("The Value got from Label Name "+lblName+ " is :"+str(span_obj[0].text))
                        found = "true"
                    else:
                        currentposition = currentposition + 1
                if found == "true":
                    return span_obj[0].text
        else:
            Module.logger.ERROR("No Object Found for the Label "+ lblName)

    def logout(self):
        try:
            Module.logger.INFO("logout start")
            self.driver.find_element_by_id("__ns1790630358_homeLnk2").click()
            time.sleep(5)
            Module.logger.DEBUG("Clicked on m2m home link")
            self.driver.find_element_by_id("__ns1790630358_logoutLnk").click()
            Module.logger.INFO("logout end")
            self.driver.close()
            Module.CleanUp.killAllProcess()
            Module.CleanUp.remove_dir()
        except:
            Module.CleanUp.remove_dir()
            self.driver.close()
        #Module.Report.stopJVM()


    def addValueToDic(self,valuetoStore,valueToAdd):
        self.dic.update({valuetoStore:valueToAdd})

    def getValueFromDic(self,keytoget):
        value = self.dic.get(keytoget)
        if value != None:
            return value
        else:
            return keytoget

    def compareTwoValues(self, value1, value2, operation):
        gotvalue1 = self.dic.get(value1)
        if gotvalue1 == None:
            gotvalue1 = value1
        gotvalue2 = self.dic.get(value2)
        if gotvalue2 == None:
            gotvalue2 = value2

        if operation.lower() == "equal":
            if gotvalue1 == gotvalue2:
                Module.logger.INFO("Both Values Match!!. Values " + gotvalue1 + " and " + gotvalue2 + " are equal")
                Module.Report.Info(self, "Both Values Match!!. Values " + gotvalue1 + " and " + gotvalue2 + " are equal")
            else:
                Module.Report.Failure(self, "Values Dont Match!!. Values " + gotvalue1 + " and " + gotvalue2 + " are not equal")
                Module.logger.ERROR("Values Dont Match!!. Values " + gotvalue1 + " and " + gotvalue2 + " are not equal")
                Class.UserDefinedException.UserDefinedException().raiseException("Values Dont Match!!. Values " + gotvalue1 + " and " + gotvalue2 + " are not equal")

        elif operation.lower() == "not equal":
            if gotvalue1 != gotvalue2:
                Module.logger.INFO("Both Values Dont Match!!. Values " + gotvalue1 + " and " + gotvalue2 + " are not equal")
                Module.Report.Info(self, "Both Values Dont Match!!. Values " + gotvalue1 + " and " + gotvalue2 + " are not equal")
            else:
                Module.Report.Failure(self, "Values Match!!. Values " + gotvalue1 + " and " + gotvalue2 + " are equal")
                Module.logger.ERROR("Values Match!!. Values " + gotvalue1 + " and " + gotvalue2 + " are equal")
                Class.UserDefinedException.UserDefinedException().raiseException("Values Match!!. Values " + gotvalue1 + " and " + gotvalue2 + " are equal")

        elif operation.lower() == "less than":
            if gotvalue1 < gotvalue2:
                Module.logger.INFO("Value " + gotvalue1 + " is less than " + gotvalue2)
                Module.Report.Info(self, "Value " + gotvalue1 + " is less than " + gotvalue2)
            else:
                Module.Report.Failure(self, "Value " + gotvalue1 + " is not less than " + gotvalue2)
                Module.logger.ERROR("Value " + gotvalue1 + " is not less than " + gotvalue2)
                Class.UserDefinedException.UserDefinedException().raiseException(
                    "Value " + gotvalue1 + " is not less than " + gotvalue2)

        elif operation.lower() == "greater than":
            if gotvalue1 > gotvalue2:
                Module.logger.INFO("Value " + gotvalue1 + " is greater than " + gotvalue2)
                Module.Report.Info(self, "Value " + gotvalue1 + " is greater than " + gotvalue2)
            else:
                Module.Report.Failure(self, "Value " + gotvalue1 + " is not greater than " + gotvalue2)
                Module.logger.ERROR("Value " + gotvalue1 + " is not greater than " + gotvalue2)
                Class.UserDefinedException.UserDefinedException().raiseException(
                    "Value " + gotvalue1 + " is not greater than " + gotvalue2)

        elif operation.lower() == "greater than or equal":
            if gotvalue1 > gotvalue2 or gotvalue1 == gotvalue2:
                Module.logger.INFO("Value " + gotvalue1 + " is greater than " + gotvalue2)
                Module.Report.Info(self, "Value " + gotvalue1 + " is greater than " + gotvalue2)
            else:
                Module.Report.Failure(self, "Value " + gotvalue1 + " is not greater than " + gotvalue2)
                Module.logger.ERROR("Value " + gotvalue1 + " is not greater than " + gotvalue2)
                Class.UserDefinedException.UserDefinedException().raiseException(
                    "Value " + gotvalue1 + " is not greater than " + gotvalue2)

        else:
            Module.Report.Failure(self, "Operation type for comparision is not valid")
            Module.logger.ERROR("Operation type for comparision is not valid")
            Class.UserDefinedException.UserDefinedException().raiseException(
                "Operation type for comparisiono is not valid")


    def getGeneratedValueFromMsg(self,start,end,msg):
        found = "false"
        obj = self.driver.find_elements_by_tag_name("p")
        Module.logger.ERROR(obj)
        if obj!= None:
            for lblObj in obj:
                if  msg in lblObj.text:
                    Module.logger.ERROR(lblObj.text)
                    result = re.search(start.strip() + '(.*)' + end.strip(), (lblObj.text).strip())
                    Module.logger.ERROR("The generated value is :"+(result.group(1)).strip())
                    found = "true"
                if found == "true":
                    return (result.group(1)).strip()
        else:
            Module.logger.ERROR("No generated value found ")

