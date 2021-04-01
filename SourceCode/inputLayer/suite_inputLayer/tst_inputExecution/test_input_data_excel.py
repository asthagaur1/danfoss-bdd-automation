import xlrd
import inputConfig


class InputExcelData(object):
    """
    Import automation input excel sheet which contains test input data.
    """
    EXCEL_WORK_FIRST_SHEET = 0
    FIRST_ROW = 0

    def __init__(self, excelsheet_path=None,sheet_name=None):
        """
        Gets input excel sheet from user and parse.
        :param
        :param excelsheet_path: Excelsheet contains test data information.
        """
        if not excelsheet_path:
            test.fail("Input excel sheet is missing ....")
        else:
            self.headers = inputConfig.required_fields_from_input_sheet
            self.readMainInputSheet(excelsheet_path,sheet_name)

    def get_required_column_no_from_fields(self, fields, from_row):
        """

        :param fields:
        :param from_row:
        :return:
        """
        column_index = list()
        for field in fields:
            column_index.append(from_row.index(field))
        return column_index

    def readMainInputSheet(self, MainInputSheet,sheet_name=None):
        """

        :return:
        """
        controllerListInfoDict = dict()
        workbook = xlrd.open_workbook(MainInputSheet)
        if not sheet_name:
            sheet = workbook.sheet_by_index(self.EXCEL_WORK_FIRST_SHEET)
        else:
            sheet = workbook.sheet_by_name(sheet_name)
        rows = sheet.get_rows()
        print("rows ={}".format(rows))
        for row in rows:

            print("row in loop ={}".format(row))




        controllerListInfoSheet = mainSheetFile.sheet_by_index(self.EXCEL_WORK_FIRST_SHEET)
        no_of_rows = controllerListInfoSheet.nrows
        row = controllerListInfoSheet.row_values(self.FIRST_ROW)

        count = 0
        i = 0
        for i in range(i, len(row)):
            if "controllerFamily" == row[i]:
                controllerListInfoDict["controllerFamily"] = count
                count = count + 1

            elif "controllerVariant" == row[i]:
                controllerListInfoDict["controllerVariant"] = count
                count = count + 1

            elif "controllerCodeNo" == row[i]:
                controllerListInfoDict["controllerCodeNo"] = count
                count = count + 1

            elif "softwareVersion" == row[i]:
                controllerListInfoDict["softwareVersion"] = count
                count = count + 1

            elif "controllerPV" == row[i]:
                controllerListInfoDict["controllerPV"] = count
                count = count + 1

            elif "controllerApplication" == row[i]:
                controllerListInfoDict["controllerApplication"] = count
                count = count + 1

            elif "database" == row[i]:
                controllerListInfoDict["database"] = count
                count = count + 1

            elif "toTest" == row[i]:
                controllerListInfoDict["toTest"] = count
                count = count + 1

            elif "PortNumber" == row[i]:
                controllerListInfoDict["PortNumber"] = count
                count = count + 1

            elif "Isdefault" == row[i]:
                controllerListInfoDict["Isdefault"] = count
                count = count + 1

            else:
                count = count + 1

        for i in range(1, no_of_rows):
            row = controllerListInfoSheet.row_values(i)
            controllerFamily = row[controllerListInfoDict["controllerFamily"]]
            controllerVariant = row[controllerListInfoDict["controllerVariant"]]
            controllerCodeNo = row[controllerListInfoDict["controllerCodeNo"]]
            softwareVersion = row[controllerListInfoDict["softwareVersion"]]
            controllerPV = row[controllerListInfoDict["controllerPV"]]
            controllerApplication = row[controllerListInfoDict["controllerApplication"]]
            database = row[controllerListInfoDict["database"]]
            toTest = row[controllerListInfoDict["toTest"]]
            portNumber = row[controllerListInfoDict["PortNumber"]]
            Isdefault = row[controllerListInfoDict["Isdefault"]]
            if toTest == "YES":
                controller = ControllerInfo(controllerFamily, controllerVariant, controllerCodeNo, softwareVersion,
                                            controllerPV, controllerApplication, database, portNumber, Isdefault)
                controllerListInfo.append(controller)
                CommonControllerVariant = controllerVariant
        return controllerListInfo

    def closeInputSheet(self,workbook):
        """
        Close workbook.
        :param workbook: worksheet need to be close.
        :return: None
        """
        workbook.release_resources()
        del workbook

    def getInput(self, excel_row_header):
        """
        Creates a dictionary with keys from input header.
        :param excel_row_header:
        :return:

        """
        for i in range(i, len(row)):
            if "controllerFamily" == row[i]:
                controllerListInfoDict["controllerFamily"] = count
                count = count + 1

            elif "controllerVariant" == row[i]:
                controllerListInfoDict["controllerVariant"] = count
                count = count + 1

            elif "controllerCodeNo" == row[i]:
                controllerListInfoDict["controllerCodeNo"] = count
                count = count + 1

            elif "softwareVersion" == row[i]:
                controllerListInfoDict["softwareVersion"] = count
                count = count + 1

            elif "controllerPV" == row[i]:
                controllerListInfoDict["controllerPV"] = count
                count = count + 1

            elif "controllerApplication" == row[i]:
                controllerListInfoDict["controllerApplication"] = count
                count = count + 1

            elif "database" == row[i]:
                controllerListInfoDict["database"] = count
                count = count + 1

            elif "toTest" == row[i]:
                controllerListInfoDict["toTest"] = count
                count = count + 1

            elif "PortNumber" == row[i]:
                controllerListInfoDict["PortNumber"] = count
                count = count + 1

            elif "Isdefault" == row[i]:
                controllerListInfoDict["Isdefault"] = count
                count = count + 1
            else:
                count = count + 1


if __name__ == '__main__':
    module = InputExcelData("C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\KoolProg_Phase_3.5\\KoolProg\\Automation\\SourceCode\\inputLayer\\suite_inputLayer\\tst_inputExecution\\AutomationInputSheet.xlsx","Controller List")
