import Module.getObject
import Module.logger
import Module.Algorithms
import Module.Utility
import Class.Automation
import Module.CleanUp
import Module.Report
import Class.UserDefinedException
import Module.learningAlgo
import time
import Module.RecordTime

def selectFromTable(self,col_to_click,colnames,rowvalues):
    t1 = time.perf_counter()
    Excep = Class.UserDefinedException.UserDefinedException()
    ## Get table names, 1st table is to get table headers and 2nd table is to get rest of the row
    matching_row = None
    for mr in rowvalues:
        Module.logger.INFO("Converting table rows into row")
        mr = Module.Utility.readTestData(str(mr))
        matching_row = mr

    table_count = 0
    all_table = self.driver.find_elements_by_tag_name("table")
    for tab in all_table:
        table_class_name = tab.get_attribute("class")
        if table_class_name != "":
            if table_count == 0:
                table_obj = tab
            if table_count == 1:
                col_table_obj = tab
                break
            table_count = table_count + 1
    ## read all headers and store in dictionary to map with keys (column number)
    if table_obj != None:
        all_cols = table_obj.find_elements_by_tag_name("th")
        col_index = 0
        col_dic = {}
        for col in all_cols:
            key = col_index
            value = col.text
            col_dic.update({key: value})
            col_index = col_index + 1
    else:
        Module.Report.Failure(self.driver,"Table Not Found in page")
        Excep.raiseException("Table Not Found in page")

    ### Find index of column to click and index of matching criteria columns
    cols_index = []
    col_to_click_index = 0
    for key,value in col_dic.items():
        if value == col_to_click:
            col_to_click_index = key
        for col in colnames:
            if col == value:
                cols_index.append(key)

    Module.logger.INFO(cols_index)
    Module.logger.INFO(col_to_click_index)

    desired_row = None
    desired_row_found = 0
    ## Getting all rows of a table
    all_rows = col_table_obj.find_elements_by_tag_name("tr")

    ## Checking in all rows
    for row in all_rows:
        ## 1st row is empty so avoiding search on 1st row
        if row.get_attribute("class") != "":
            ## Getting all columns of a row
            all_cols = row.find_elements_by_tag_name("td")
            ## Checking given value exist in current row. Only checking the values of required columns which got earlier
            for rc in cols_index:
                if all_cols[rc].text in matching_row:
                    Module.logger.INFO("Column with value "+all_cols[rc].text+ " found")
                    desired_row_found = 1
                    break
                else:
                    desired_row_found = 0
            if desired_row_found == 1:
                desired_row = row
                break
    ## Once row found with given criteria. Perform action.
    if desired_row != None:
        Module.logger.INFO("Desired row found. Clicking on column "+str(col_to_click))
        try:
            all_c = row.find_elements_by_tag_name("td")
            if col_to_click == "checkbox":
                all_c[0].click()
            else:
                all_c[col_to_click_index].click()
        except:
            Module.Report.Failure(self.driver,"Not able to click on column "+str(col_to_click))
            Excep.raiseException("Not able to click")
    else:
        Module.Report.Failure(self.driver,"Desired row not found")
        Excep.raiseException("Desired row not found")

    Module.RecordTime.calculateTime("selectFromTable", time.perf_counter() - t1)
    Module.RecordTime.calculateTime("AutomationTime", time.perf_counter() - t1)