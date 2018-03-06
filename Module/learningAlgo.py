import Module.logger
import Module.cfg
import json
import os
import errno
import Class.PythonObjectEncoder
import os.path
import time

"""
This function add the learned attributes of a web element to a dictionary.
"""
def add_obj_using_id(self,type,name,webObj,position):
    attributeId = webObj.get_attribute("id")
    Module.logger.INFO("attribute id is"+attributeId)
    elementKey = type + "|" + name + "|" + str(position) + "|" + "id"
    if not attributeId:
        attributeId = webObj.get_attribute("name")
        elementKey = type + "|" + name + "|" + str(position) + "|" + "name"
    # if not attributeId:
    #     attributeId = getAbsoluteXPath(self,webObj)
    #     elementKey = type + "|" + name + "|" + str(position) + "|" + "xpath"
    if attributeId:
        Module.logger.INFO("Updating learningAlgo with elementKey:"+ elementKey+ "and attributeId:"+attributeId)
        try:
          if elementKey:
              if (elementKey in Module.cfg.learnDict):
                  Module.cfg.learnDict[elementKey].add(attributeId)
              else:
                  Module.cfg.learnDict[elementKey] = set()
                  Module.cfg.learnDict[elementKey].add(attributeId)
              Module.logger.DEBUG(Module.cfg.learnDict)
        except:
          Module.logger.INFO("Failed to Update learningAlgo with elementKey:" + elementKey+ "and attributeId:"+attributeId)
        #persist_learned_ids()
    else:
        Module.logger.INFO("No object found for this " + elementKey)

"""
This function persist the dictionary of learned attributes to a json file.
"""
def persist_learned_ids():
    cwd = os.getcwd()
    pcwd = "\\".join(cwd.split('\\')[:-1])
    learnDir = cwd + "\\learning"
    try:
        dirExists = os.path.exists(learnDir)
        if not dirExists:
            learnDir = pcwd + "\\learning"
    except OSError as exception:
        if exception.errno != errno.EEXIST:
            raise
    with open(learnDir+"\\learneddataTwo.json", 'w') as fp:
        json.dump(Module.cfg.learnDict, fp, cls=Class.PythonObjectEncoder.PythonObjectEncoder)


"""
This function fetch the learned attributes from dictionary and further fetch the web object from the attribute.
"""
def getLearnedElements(self, type, name, value,position):
        success = 0
        elementKeyId = type + "|" + name + "|" +str(position)
        elementKeyList = []
        try:
            for key in Module.cfg.learnDict:
                if elementKeyId in key:
                    elementKeyList.append(key)
        except:
            Module.logger.INFO("Exception in creating attribute key list")
        if not elementKeyList:
            Module.logger.INFO("learningAlgo:No learned attribute for:"+ type + "and" +name)
        else:
            for elementKey in elementKeyList:
                try:
                    attributeSet = Module.cfg.learnDict[elementKey]
                except:
                    Module.logger.INFO("No learned attribute set in dictionary found for elementKey " + elementKey)
                    continue
                if attributeSet:
                    try:
                        for attr in attributeSet:
                            try:
                                if "id" in elementKey:
                                 objList = self.driver.find_elements_by_id(attr)
                                elif "name" in elementKey:
                                 objList = self.driver.find_elements_by_name(attr)
                                elif "xpath" in elementKey:
                                 objList = self.driver.find_elements_by_xpath(attr)
                            except:
                                Module.logger.INFO("No learned Object found for attribute " + attr)
                                continue
                            if objList != None:
                                try:
                                    performActionOnLearnedObject(objList, type, value, name)
                                    success = 1
                                    return success
                                except:
                                    Module.logger.INFO("learningAlgo: Link " + name + "is not clickable")
                                    continue
                    except:
                        Module.logger.INFO("learningAlgo:No attribute found for attribute set " + attributeSet)
                else:
                    continue
        return success



"""
This function load the Attributes stored in the json to a dictionary.
"""
def ReadLearningJsonFile():
    cwd = os.getcwd()
    pcwd = "\\".join(cwd.split('\\')[:-1])
    confdir = cwd + "\\learning"
    try:
        dirExists = os.path.exists(confdir)
        if not dirExists:
            confdir = pcwd + "\\learning"
    except OSError as exception:
            if exception.errno != errno.EEXIST:
                raise

    #confdir = pcwd + "\\Config"
    #confdir = pcwd + "\\Config"
    if os.path.isfile(confdir+"\\learneddatatwo.json"):
        if os.stat(confdir+"\\learneddatatwo.json").st_size != 0:
            json_data = open(confdir+"\\learneddatatwo.json")
            data = json.load(json_data)
            if data:
                for elementKey in data:
                    Module.cfg.learnDict[elementKey] = set()
                    for attr in data[elementKey]:
                        Module.cfg.learnDict[elementKey].add(attr)
                if len(Module.cfg.learnDict)==0:
                    Module.logger.WARNING("No data loaded from Learning Json file, file name is: " + confdir + "\\learneddatatwo.json")
                else:
                    Module.cfg.learnFileSuccess = 1
            else:
                Module.logger.WARNING(
                    "No data found in json file, file name is: " + confdir + "\\learneddatatwo.json")
        else:
            Module.logger.WARNING("Learning Json file size is zero, file name is: " + confdir + "\\learneddatatwo.json")
    else:
        Module.logger.WARNING("Learning Json file does not exist, file name is: " + confdir+"\\learneddatatwo.json")


"""
This function perform action on the web objects retrieved from the learned attributed.
"""
def performActionOnLearnedObject(learnedObjList, type, textValue, name):
    if type == "text" or type == "textarea":
        learnedObjList[0].clear()
        learnedObjList[0].send_keys(textValue)
        Module.logger.INFO("Text object Found. Entering Value for text field " + name + " with value " + textValue)
    if type == "statictext":
        Module.logger.INFO("learningAlgo:Static Text Found : " + name)
    else:
        learnedObjList[0].click()
        Module.logger.INFO("learningAlgo: type " + name + " is selected")

