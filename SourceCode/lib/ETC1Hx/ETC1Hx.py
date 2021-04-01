from controllerFamily_library_Interface import Interface
import test
import common
import io
import databaseConfig
import inputConfig
import csv
import pandas as pd

class ETC1Hx(Interface):
    
    CSV_HEADER_ROW_NUM = 0
    
    def __init__(self,variant):
        self._variant = variant
        self.header = None
        self.csv_table_wihtout_filters = None
        self.csv_table = None

    def getHeader(self):
        test.log(str(self._variant))
        return "ETC1Hx Header Here!"


    def parseTheInputFile(self):
        return "Values"
    
    def parse_database_csv(self, file_name, variant, user_level, app=None, offline=True, required_headers=None):
        
        if not file_name:
            test.fail("csv_path is missing ....")
        else:
            csv_table = dict()
            headers = list()
            # with open(file_name, newline='', encoding='utf-8') as f:
            with io.open(file_name, 'r', encoding='utf8') as f:
                for line, row in enumerate(csv.reader(f)):
                    if line == self.CSV_HEADER_ROW_NUM:
                        headers = row
                        csv_table = dict.fromkeys(row)
                        csv_table = {key: list() for key in csv_table.keys()}
                    else:
                        for i, h in enumerate(headers):
                            csv_table[h].append(row[i])
            self.header = headers
            self.csv_table_wihtout_filters = csv_table
            self.csv_table = csv_table

 

            csv_table = dict()
            if required_headers:
                for header in headers:
                    res = False
                    for common_header, duplicate_name_list in required_headers.items():
                        if header in duplicate_name_list:
                            res = common_header
                            break
                    if res:
                        csv_table[res] = self.csv_table[header]
            self.csv_table = csv_table
            for key in csv_table.keys():
                headers.append(key) 
            self.header = headers
        
        return self.header,self.csv_table_wihtout_filters,self.csv_table
        
        
    def add_filters(self, variant_name, user_level, app=None, offline=True):
        """

        :return:
        """
        filter = list()
        reorder_list = lambda _list: [l - 1 for l in _list]
           
        if variant_name == "ETC1H1":

            # ETC1H1
            # query=select * from tblParameters where (ModelCodeValue & 1) = 1

            menucode_value_list = list()
            for i, value in enumerate(self.csv_table["ModelCodeValue"]):
                try:
                    if not (int(value) & 1 >= 1):
                        menucode_value_list.append(i)
                except ValueError:
                    menucode_value_list.append(i)

            readonly_value_list = list()
            for i, value in enumerate(self.csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list, readonly_value_list)
            
            not_specific_group_parameters = list()
            for i, value in enumerate(self.csv_table["GroupName"]):
                if not (value == "ETP R1 Remote Display" or value == "Freezer ETP R1 Remote Display" or value == "Ref ETP R1 Remote Display" or value == "ETP R1 Settings"):
                    not_specific_group_parameters.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_specific_group_parameters)
            
            not_specific_parameter = list()
            for i, value in enumerate(self.csv_table["ParameterName"]):
                if not (("Remote" in value) and ("Time" in value) and ("Sample" in value)):
                    not_specific_parameter.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_specific_parameter)

        elif variant_name == "ETC1H2":

            # ETC1H2
            # query=select * from tblParameters where (ModelCodeValue & 2) >= 1

            menucode_value_list = list()
            for i, value in enumerate(self.csv_table["ModelCodeValue"]):
                try:
                    if not (int(value) & 2 >= 1):
                        menucode_value_list.append(i)
                except ValueError:
                    menucode_value_list.append(i)

            readonly_value_list = list()
            for i, value in enumerate(self.csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list, readonly_value_list)
            
            not_specific_group_parameters = list()
            for i, value in enumerate(self.csv_table["GroupName"]):
                if not (value == "ETP R1 Remote Display" or value == "Freezer ETP R1 Remote Display" or value == "Ref ETP R1 Remote Display" or value == "ETP R1 Settings"):
                    not_specific_group_parameters.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_specific_group_parameters)
            
            not_specific_parameter = list()
            for i, value in enumerate(self.csv_table["ParameterName"]):
                if not (("Remote" in value) and ("Time" in value) and ("Sample" in value)):
                    not_specific_parameter.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_specific_parameter)

        elif variant_name == "ETC1H3":

            # ETC1H3
            # select * from tblParameters where (ModelCodeValue & 4) >= 1

            menucode_value_list = list()
            for i, value in enumerate(self.csv_table["ModelCodeValue"]):
                try:
                    if not (int(value) & 4 >= 1):
                        menucode_value_list.append(i)
                except ValueError:
                    menucode_value_list.append(i)
            readonly_value_list = list()
            for i, value in enumerate(self.csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list, readonly_value_list)
            
            not_specific_group_parameters = list()
            for i, value in enumerate(self.csv_table["GroupName"]):
                if not (value == "ETP R1 Remote Display" or value == "Freezer ETP R1 Remote Display" or value == "Ref ETP R1 Remote Display" or value == "ETP R1 Settings"):
                    not_specific_group_parameters.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_specific_group_parameters)
            
            not_specific_parameter = list()
            for i, value in enumerate(self.csv_table["ParameterName"]):
                if not (("Remote" in value) and ("Time" in value) and ("Sample" in value)):
                    not_specific_parameter.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_specific_parameter)


        user_level_remove_list = list()
        if user_level == databaseConfig.DATABASE_USER_ADMIN:
            for i, user_code in enumerate(self.csv_table["UserLevel"]):
                if databaseConfig.DATABASE_USER_ADMIN not in user_code:
                    user_level_remove_list.append(i)

        filter = common.get_list_of_unique_both_elements_from_int_lists(filter, user_level_remove_list)

        if filter:
            for _ in range(len(filter)):
                row_no = filter.pop(0)
                filter = reorder_list(filter)
                for k in self.csv_table.keys():
                    del self.csv_table[k][row_no]
        
        return self.csv_table

    def database_details(self,databasefile):
        """
        return the selected controller variant database details.
        :param databasefile: Database file path
        :return:database collection with all the details
        """
        df=pd.DataFrame(databasefile)
        df['value'] = df['Enum'].mask(pd.isnull, df['DefaultValue'])
        max_values=df['MaxValue'].values.tolist()
        grpname_dict={}
        database_details=[]
        for i in df['GroupName'].unique():
            grpname_parm={}
            grpname_dict[i] = [{df['ParameterName'][j]:[{"Menu code":df['MenuCode'][j]},{"MinValue":df['MinValue'][j]},{"DefaultValue":df['DefaultValue'][j]},{"Max":max_values[j]},
                               {"Data_type":df['Datatype'][j]},{"Help":df['Help'][j]},{"Unit":df['Unit'][j]},{"Scale":df['Scale'][j]}]}for j in df[df['GroupName']==i].index]
            grpname_parm[i] = grpname_dict[i]
            database_details.append(grpname_parm)
        return database_details
