from controllerFamily_library_Interface import Interface
import test
import common
import io
import databaseConfig
import inputConfig
import csv
import pandas as pd

class ERC21x(Interface):
    
    CSV_HEADER_ROW_NUM = 0
    
    def __init__(self,variant):
        self._variant = variant
        self.header = None
        self.csv_table_wihtout_filters = None
        self.csv_table = None

    def getHeader(self):
        return "ERC21x Header here!"



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
           
        if "ERC21" in variant_name:
            if not app:
                test.fail("ERC21X family requires application number as a filter ...", "please provide like ...'app0'")
            else:
                menucode_value_list = list()
                if variant_name == "ERC211":
                    # ERC21X family
                    # "ERC211"
                    # where (App0ModelCodeVALUE& 1) >=1
                    # ERC213
                    # where(App3ModelCodeVALUE& 2) >=1
                    # ERC214
                    # where (App6ModelCodeVALUE& 4) >=1
                    column_name = databaseConfig.ERC21X_family_ModelCodeValue[app]
                    # where(App0ModelCodeVALUE & 1) >= 1
                    for i, value in enumerate(self.csv_table_wihtout_filters[column_name]):
                        try:
                            if not (int(value) & 1 >= 1):
                                menucode_value_list.append(i)
                        except ValueError:
                            menucode_value_list.append(i)
                    readonly_value_list = list()

                    for i, value in enumerate(self.csv_table["ReadOnly"]):
                        if not (value == "0"):
                            readonly_value_list.append(i)
                    filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list,
                                                                                    readonly_value_list)
                    

                elif variant_name == "ERC213":
                    column_name = databaseConfig.ERC21X_family_ModelCodeValue[app]
                    # where(App3ModelCodeVALUE& 2) >=1
                    for i, value in enumerate(self.csv_table_wihtout_filters[column_name]):
                        try:
                            if not (int(value) & 2 >= 1):
                                menucode_value_list.append(i)
                        except ValueError:
                            menucode_value_list.append(i)

                    readonly_value_list = list()
                    for i, value in enumerate(self.csv_table["ReadOnly"]):
                        if not (value == "0"):
                            readonly_value_list.append(i)
                    filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list,
                                                                                    readonly_value_list)
                    

                elif variant_name == "ERC214":
                    column_name = databaseConfig.ERC21X_family_ModelCodeValue[app]

                    # where (App6ModelCodeVALUE& 4) >=1
                    for i, value in enumerate(self.csv_table_wihtout_filters[column_name]):
                        try:
                            if not (int(value) & 4 >= 1):
                                menucode_value_list.append(i)
                        except ValueError:
                            menucode_value_list.append(i)

                    readonly_value_list = list()
                    for i, value in enumerate(self.csv_table["ReadOnly"]):
                        if not (value == "0"):
                            readonly_value_list.append(i)
                    filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list,
                                                                                    readonly_value_list)
                    
                                                                             
                else:
                    test.fail("unknown ERC21X controller to add filter ...")
                
                
                if app == "App0" or app == "App1" or app == "App2" or app == "App3" or app == "App4" or app == "App5":
                    not_modelCodeValue_seven = list()
                    for i, value in enumerate(self.csv_table["ModelCodeValue"]):
                        if not (value == "7"):
                            not_modelCodeValue_seven.append(i)
                    filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                                    not_modelCodeValue_seven)
                if app == "App6":
                    not_modelCodeValue_six = list()
                    for i, value in enumerate(self.csv_table["ModelCodeValue"]):
                        if not (value == "6"):
                            not_modelCodeValue_six.append(i)
                    filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                                    not_modelCodeValue_six)
                    



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
        
        