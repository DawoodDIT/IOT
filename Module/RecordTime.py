import Module.cfg

"""
This function store the accumulated time elapsed in functions during multiple calls into dictionary.
"""

def calculateTime(key,value):
    if key in Module.cfg.recordDict:
      Module.cfg.recordDict[key] = Module.cfg.recordDict[key] + value
    else:
      Module.cfg.recordDict[key] = value