from controllerFamily_library_Interface import Interface
import test
import common
import io
import databaseConfig
import inputConfig
import csv
import pandas as pd
class EET(Interface):
    
    CSV_HEADER_ROW_NUM = 0
    
    def __init__(self,variant):
        self._variant = variant
        self.header = None
        self.csv_table_wihtout_filters = None
        self.csv_table = None

    def getHeader(self):
        return "EET Header here!"
    
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
           
        if variant_name == "EETc 11":

            # EETc 11
            # query:ModelCodeValue in (1, 11 , 15)and  ReadOnly = '0'and Datatype != 'MUX'

            menucode_value_list = list()
            for i, value in enumerate(self.csv_table["ModelCodeValue"]):
                if not (value == "1" or value == "11" or value == "15"):
                    menucode_value_list.append(i)
            readonly_value_list = list()
            for i, value in enumerate(self.csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
            datatype_value_list = list()
            for i, value in enumerate(self.csv_table["Datatype"]):
                if not (value != 'MUX'):
                    datatype_value_list.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list, readonly_value_list)
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter, datatype_value_list)
            
            visibility_groups = list()
            for i, value in enumerate(self.csv_table["Visibility"]):
                if not value == '':
                    visibility_groups.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter, visibility_groups)
            
            not_alarm_group_parameters = list()
            for i, value in enumerate(self.csv_table["GroupName"]):
                if not value == "Alarm":
                    not_alarm_group_parameters.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_alarm_group_parameters)

        elif variant_name == "EETc 12":

            # EETc 12
            # query:ModelCodeValue in (2 , 11 , 15)and  ReadOnly = '0'and Datatype != 'MUX'

            menucode_value_list = list()
            for i, value in enumerate(self.csv_table["ModelCodeValue"]):
                if not (value == "2" or value == "11" or value == "15"):
                    menucode_value_list.append(i)
            readonly_value_list = list()
            for i, value in enumerate(self.csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
            datatype_value_list = list()
            for i, value in enumerate(self.csv_table["Datatype"]):
                if not (value != 'MUX'):
                    datatype_value_list.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list, readonly_value_list)
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter, datatype_value_list)
            
            visibility_groups = list()
            for i, value in enumerate(self.csv_table["Visibility"]):
                if not value == '':
                    visibility_groups.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter, visibility_groups)
            
            not_alarm_group_parameters = list()
            for i, value in enumerate(self.csv_table["GroupName"]):
                if not value == "Alarm":
                    not_alarm_group_parameters.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_alarm_group_parameters)

        elif variant_name == "EETc 21":

            # EETc21:
            # query:ModelCodeValue in (1, 12 , 14 , 15)and  ReadOnly = '0'and Datatype != 'MUX'

            menucode_value_list = list()
            for i, value in enumerate(self.csv_table["ModelCodeValue"]):
                if not (value == "1" or value == "12" or value == "14" or value == "15"):
                    menucode_value_list.append(i)
            readonly_value_list = list()
            for i, value in enumerate(self.csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
            datatype_value_list = list()
            for i, value in enumerate(self.csv_table["Datatype"]):
                if not (value != 'MUX'):
                    datatype_value_list.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list, readonly_value_list)
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter, datatype_value_list)
            
            visibility_groups = list()
            for i, value in enumerate(self.csv_table["Visibility"]):
                if not value == '':
                    visibility_groups.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter, visibility_groups)
            
            not_alarm_group_parameters = list()
            for i, value in enumerate(self.csv_table["GroupName"]):
                if not value == "Alarm":
                    not_alarm_group_parameters.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_alarm_group_parameters)

        elif variant_name == "EETc 22":

            # EETc 22
            # query:ModelCodeValue in (2 , 12 , 14 , 15)and  ReadOnly = '0'and Datatype != 'MUX'

            menucode_value_list = list()
            for i, value in enumerate(self.csv_table["ModelCodeValue"]):
                if not (value == "2" or value == "12" or value == "14" or value == "15"):
                    menucode_value_list.append(i)
            readonly_value_list = list()
            for i, value in enumerate(self.csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
            datatype_value_list = list()
            for i, value in enumerate(self.csv_table["Datatype"]):
                if not (value != 'MUX'):
                    datatype_value_list.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list, readonly_value_list)
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter, datatype_value_list)
            
            visibility_groups = list()
            for i, value in enumerate(self.csv_table["Visibility"]):
                if not value == '':
                    visibility_groups.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter, visibility_groups)
            
            not_alarm_group_parameters = list()
            for i, value in enumerate(self.csv_table["GroupName"]):
                if not value == "Alarm":
                    not_alarm_group_parameters.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_alarm_group_parameters)


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
    