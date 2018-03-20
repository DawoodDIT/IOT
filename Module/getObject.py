import inspect

import Module.Utility
import Module.Algorithms
import Module.logger
import time

def getObjByRepo(driverObject,type,name):

    idtype, idvalue = Module.Utility.CheckIfDefinedElementExistInRepo(type, name)
    i=0
    j=0
    if idtype != None and idvalue != None:
        all_idtypes = idtype.split(sep=',')
        all_idvalues = idvalue.split(sep=',')
        for eachid in all_idtypes:
            eachidvalue = all_idvalues[i]
            i = i + 1
            Module.logger.INFO("ID Type for " +eachid+ " " +name+ " is " + eachidvalue)
            Module.logger.INFO("Value for " + eachid + " " + name + " is " + eachidvalue)
            obj=Module.Algorithms.find_obj_using_config(driverObject,eachid, eachidvalue)
            if obj is not None:
                break
        return obj
    else:
        return None

def getObjByAlgo(driverObject,type,name):
    curframe = inspect.currentframe()
    calframe = inspect.getouterframes(curframe, 4)
    calframeName = str(calframe[3][3])
    flag = True
    if calframeName == "verifyNot":
        flag = False

    Module.logger.DEBUG("Getting locator and locator value for "+type)
    locator, locatorvalue = Module.Utility.getDataForDynamicAlgo(type)
    i = 0
    j = 0
    if locator != None and locatorvalue != None:
        all_locators = locator.split(sep=',')
        all_locatorvalues = locatorvalue.split(sep=',')
        for loc in all_locators:
            locvalue = all_locatorvalues[i]
            i = i+1
            Module.logger.INFO("LOCATOR: "+loc+ ", locatorvalue: " +locvalue+ ", value: "+name)
            obj = Module.Algorithms.find_auto_element(driverObject,loc, locvalue, name, "eq")
            if obj is not None:
                break
        if obj is None and flag == True:
            obj = Module.Algorithms.find_auto_element_for_input_tag(driverObject, name, "eq")
        if obj is None and flag == True:
            for loc in all_locators:
                locvalue = all_locatorvalues[j]
                j = j + 1
                Module.logger.INFO("LOCATOR: " + loc + ", locatorvalue: " + locvalue + ", value: " + name)
                obj = Module.Algorithms.find_auto_element(driverObject, loc, locvalue, name, "in")
                if obj is not None:
                    break
        if obj is None and flag == True:
            obj = Module.Algorithms.find_auto_element_for_input_tag(driverObject, name, "in")

        return obj
    else:
        Module.logger.ERROR("locator and locator value not provided in config file")
        return None


def getObjByAlgoOnPosition(driverObject,type,name,position):
    Module.logger.DEBUG("Getting locator and locator value for "+type)
    locator, locatorvalue = Module.Utility.getDataForDynamicAlgo(type)
    i = 0
    if locator != None and locatorvalue != None:
        all_locators = locator.split(sep=',')
        all_locatorvalues = locatorvalue.split(sep=',')
        for loc in all_locators:
            locvalue = all_locatorvalues[i]
            i = i+1
            Module.logger.INFO("LOCATOR: "+loc+ ", locatorvalue: " +locvalue+ ", value: "+name)
            obj = Module.Algorithms.find_auto_element_on_position(driverObject,loc, locvalue, name,position)
            if obj != None:
                break
        return obj
    else:
        Module.logger.ERROR("locator and locator value not provided in config file")
        return None

def getObjByLocatorNameAndValue(driverObject,type,name):
    Module.logger.DEBUG("Getting locator and locator value for "+type)
    locator, locatorvalue = Module.Utility.getDataForDynamicAlgo(type)
    i = 0
    if locator != None and locatorvalue != None:
        all_locators = locator.split(sep=',')
        all_locatorvalues = locatorvalue.split(sep=',')
        for loc in all_locators:
            locvalue = all_locatorvalues[i]
            i = i+1
            Module.logger.INFO("LOCATOR: "+loc+ ", locatorvalue: " +locvalue+ ", value: "+name)
            obj = Module.Algorithms.find_element_by_locator(driverObject,loc, locvalue)
            if obj != None:
                break
        return obj
    else:
        Module.logger.ERROR("locator and locator value not provided in config file")
        return None
