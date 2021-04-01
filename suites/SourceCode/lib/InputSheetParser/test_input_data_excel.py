import xlrd
import inputConfig


class InputExcelData(object):
    """
    Import automation input excel sheet which contains test input data.
    """
    EXCEL_WORK_FIRST_SHEET = 0
    FIRST_ROW_IN_SHEET = 0

    def __init__(self, excelsheet_path=None,sheet_name=None):
        """
        Gets input excel sheet from user and parse.
        :param
        :param excelsheet_path: Excelsheet contains test data information.
        """
        if not excelsheet_path:
            test.fail("Input excel sheet is missing ....")
        else:
            self.req_header = inputConfig.required_fields_from_input_sheet
            self.controller_list = dict()
            workbook = xlrd.open_workbook(excelsheet_path)
            if not sheet_name:
                sheet = workbook.sheet_by_index(self.EXCEL_WORK_FIRST_SHEET)
            else:
                sheet = workbook.sheet_by_name(sheet_name)
            headings = sheet.row_values(self.FIRST_ROW_IN_SHEET)
            for h in self.req_header:
                col = sheet.col_values(headings.index(h))
                col.remove(h)
                self.controller_list[h] = col

            workbook.release_resources()
            del workbook

    def get_info_from_sheet(self):
        """

        :return:
        """
        return self.controller_list




if __name__ == '__main__':
    module = InputExcelData("C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\KoolProg_Phase_3.5\\KoolProg\\Automation\\SourceCode\\inputLayer\\suite_inputLayer\\tst_inputExecution\\AutomationInputSheet.xlsx","Controller List")
    s = module.get_info_from_sheet()
    i = module.find_values_and_return_index(s["toTest"],"YES")
    for k, v in s.items():
        print("key ={} value ={}".format(k,v[i[0]]))
    print(i)
