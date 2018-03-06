"""
Dictionary for learning algorithm. This dictionary will be loaded on application
start with learned objects stored in json file.
Dictionary will be modified  with newly learned objects during running application, and
persisted in json file.
"""
learnDict = dict()

"""
This variable will remain 0 if there is no learned json file and incremented to 1
if learned json exists. Application  will load the 'learnDict' only if this variable is 1.
"""
learnFileSuccess = 0

"""
Dictionary for keeping the elapsed time during multiple functional calls.
"""
recordDict = dict()

"""
This variable keeps the before scenario time
"""
starttime = 0

"""
This variable keeps the downloaded file name
"""
file_name = ""