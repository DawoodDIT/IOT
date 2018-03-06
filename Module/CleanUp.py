import os
import shutil
import Module.logger
import getpass
#
# def killProcessFromTaskManager(processName):
#     for proc in psutil.process_iter(attrs=['pid', 'name']):
#         # check whether the process name matches
#         print(proc.name())
#         if proc.name() == processName:
#             try:
#                 proc.kill()
#                 break
#             except:
#                 Module.logger.INFO("Process does not exist")

def killAllProcess():
    Module.logger.INFO("TEST")
    #Kill ChromeDriver and Chrome
    # os.system("taskkill /im chrome.exe /F")
    # os.system("taskkill /im chromedriver.exe /F")
    # killProcessFromTaskManager("chromedriver.exe")
    # killProcessFromTaskManager("chrome.exe")

def remove_dir():
    Module.logger.DEBUG("Inside remove_dir")

    # chrome_dir ="C:\\Users\\"+getpass.getuser()+"\\AppData\\Local\\Google\\Chrome\\User Data\\M2MStaging"
    # Module.logger.DEBUG("chrome dir is:"+chrome_dir)
    # if os.path.exists(chrome_dir):
    #     for filename in os.listdir(chrome_dir):
    #         filepath = os.path.join(chrome_dir, filename)
    #         try:
    #             if filename!='Default':
    #              shutil.rmtree(filepath)
    #              Module.logger.DEBUG("deleted dir is:" + filename)
    #         except OSError:
    #             if filename != 'Cookies':
    #               os.remove(filepath)
    #               Module.logger.DEBUG("deleted file is:" + filename)
    # else:
    #     Module.logger.DEBUG("path" + chrome_dir + "does not exist")

    chrome_default_dir = "C:\\Users\\"+getpass.getuser()+"\\AppData\\Local\\Google\\Chrome\\User Data\\M2MStaging\\Default"
    Module.logger.DEBUG("chrome default dir is:" + chrome_default_dir)
    if os.path.exists(chrome_default_dir):
        for filename in os.listdir(chrome_default_dir):
            filepath = os.path.join(chrome_default_dir, filename)
            try:
                if filename != 'Default':
                    shutil.rmtree(filepath)
                    Module.logger.DEBUG("deleted dir is:" + filename)
            except OSError:
                try:
                    if filename != 'Cookies':
                        os.remove(filepath)
                        Module.logger.DEBUG("deleted file is:" + filename)
                except:
                    Module.logger.DEBUG("Exception in deleting filename:" + filename+"path:"+filepath)
    else:
        Module.logger.DEBUG("path"+ chrome_default_dir + "does not exist")
