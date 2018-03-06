import PyPDF2

file_name = 'C:\\Users\\vipin\\Desktop\\NotificationEvents_AutomationCust1_14-Feb-2018_14-Feb-2018.pdf'
with open(file_name, 'rb') as pdfFileObj:
    pdfReader = PyPDF2.PdfFileReader(pdfFileObj)
    print(pdfReader.numPages)
    count=0
    for count in range(pdfReader.numPages):
        pageObj = pdfReader.getPage(count)
        text = pageObj.extractText()
        print(text)
        if "Voice Connections(Number)" in text:
            print("Success")