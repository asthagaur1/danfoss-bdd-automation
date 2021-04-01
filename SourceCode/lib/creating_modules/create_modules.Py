
import create_module_config
import common
import xlrd

class CreateModules(object):
    """
    Creates python modules or files from input excel sheet contains action to be done.
    """
    EXCEL_WORK_FIRST_SHEET = 0
    FIRST_ROW_IN_SHEET =0
    def __init__(self,work_book_path,sheet_name=None):
        """
        Input excel workbook which need to convert into python modules
        :param work_book_path: file path of excel work book.
        :param sheet_name: sheet name in workbook if not then
        default first sheet will be taken for proccessing.
        """
        self.expected_name = create_module_config.name
        self.expected_method_call = create_module_config.callee_method
        self.expected_args = create_module_config.arg_list
        self.module_dict = dict()
        self.method_list = list()
        self.arg_list = list()
        workbook = xlrd.open_workbook(work_book_path)
        if not sheet_name:
            sheet = workbook.sheet_by_index(self.EXCEL_WORK_FIRST_SHEET)
        else:
            sheet = workbook.sheet_by_name(sheet_name)
        print(sheet.nrows)
        for i in range(sheet.nrows):
            row = sheet.row_values(i)
            if i == self.FIRST_ROW_IN_SHEET:
                self.headings = row
                # print("self.headings={} type ={} ".format(self.headings,type(self.headings[0])))
            else:
                function_name = str()
                for name in self.expected_name:
                    function_name = function_name + row[self.headings.index(name)]
                argmnts = list()
                for arg in self.expected_args:
                    argmnts.append(common.make_small_letters_rem_space(str(row[self.headings.index(arg)])))
                function_name = common.make_small_letters_rem_space(function_name)

                self.method_list.append(function_name)
                self.arg_list.append(argmnts)
                self.module_dict[function_name] = argmnts

        print(self.module_dict)
        workbook.release_resources()
        del workbook

        text_content = self.create_file_string(work_book_path,self.method_list,self.arg_list)



    def get_class_name(self,file_path):
        """

        :param file_path:
        :return:
        """
        name = parse_file_name(file_path)
        if not name:
            raise ValueError('Valid name should present some string ...')
        name = common.remove_special_space_chars(name)
        return common.captilaise_string(name)


    def parse_file_name(self,file_path):
        """

        :param name:
        :return:
        """
        p =list()
        path = file_path.split('\\')
        if path:
            return path[-1]
        return None

    def create_file_string(self,file_path,method_list,arg_list):
        """

        :param method_dict:
        :return:
        """
        cls_str = self.get_class_name(file_path)



    def create_class_name(self,class_name):
        """
        Creates string in a class with given name.
        :param class_name: name of class to be create.
        :return:
        """
        class_name =\
        '''
        class {}(object):
            """
            This class contains 
            """
        '''.format(class_name)
        return class_name



    def create_method_name(self,method_name,arg_list):
        """

        :param method_name:
        :param arg_list:
        :return:
        """
        method_str =\
        '''
            def {}(self,{}):
                """
                """
                {}
        '''
        arg_str = str()
        for arg in arg_list:
            arg_str = arg_str + arg

        # method_str






if __name__ == '__main__':
    path = "C:\\Users\\U377188\\Desktop\\temp\\creating_modules\\input_sheets\\nav_home_to_newProject.xls"
    obj = CreateModules(path)



#
# for i, row in enumerate(rows):
#     if i == self.FIRSR_ROW_IN_SHEET:
#         self.headings = row
#     else:
#         print("self.expected_name={} , ".format(self.expected_name))
#         print("self.headings={} nsm {}".format(self.headings,type(self.headings[0])))

# function_name = str()
# for name in self.expected_name:
#     function_name = function_name + row[self.headings.index(name)]
# argmnts = list()
# print("self.headings={}".format(self.headings))
# print("self.expected_args={}".format(self.expected_args))
# for arg in self.expected_args:
#     argmnts.append(make_small_letters_rem_space(row[self.headings.index(arg)]))
# function_name = common.make_small_letters_rem_space(function_name)
# self.module_dict[function_name] = argmnts




