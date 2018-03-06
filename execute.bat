cd "C:\Automation\M2MAutomation"
for %%x in (%*) do "C:\Program Files\Python36\Scripts\behave" --logging-level ERROR -k --tags %%x