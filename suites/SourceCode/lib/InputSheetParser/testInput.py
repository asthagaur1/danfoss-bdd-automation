import csv
import io
import xml.etree.ElementTree as ET
from createObject import CreateObject
import xlrd
import KoolProg_verify
import common
import databaseConfig
import inputConfig
import koolprogconfig
import random

class InputExcelData(object):
    """
    Import automation input excel sheet which contains test input data.
    """
    EXCEL_WORK_FIRST_SHEET = 0
    FIRST_ROW_IN_SHEET = 0

    def __init__(self, excelsheet_path=None, sheet_name=None):
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
            self.convert_softwareVersion_to_string_with_two_decimal_digits()

            workbook.release_resources()
            del workbook

    def convert_softwareVersion_to_string_with_two_decimal_digits(self):
        """
        while parsing excel sheet inter or float values are results to skip zero after decimal point.
        we required vaue with two decimal digits (1.30).
        so manualy here formated.
        :return:
        """
        sw_verison_list = list()
        for sw in self.controller_list["softwareVersion"]:
            try:
                sw_verison_list.append("{:.2f}".format(float(sw)))
            except ValueError:
                sw_verison_list.append(sw)
        self.controller_list["softwareVersion"] = sw_verison_list

    def get_info_from_sheet(self):
        """

        :return:
        """
        return self.controller_list

    def get_controllerFamily_from_controllerVariant(self, variant):
        """
        """
        _id = self.controller_list["controllerVariant"].index(variant)
        return self.controller_list["controllerFamily"][_id]

    def get_product_image_path(self, variant, app=None, online=False):
        """
        """
        if online:
            return inputConfig.online_product_image_path.format(variant)
        else:
            return inputConfig.product_image_path.format(variant)

    def get_wire_image_path(self, variant, app=None):
        """
        """
        if "ERC21" in variant and app:
            return inputConfig.wire_image_path.format(variant + '_' + app)
        else:
            return inputConfig.wire_image_path.format(variant)

    def get_product_details_path(self, variant, app=None):
        """
        """
        if ("ERC21" in variant or "ETC1H" in variant) and app:
            return inputConfig.product_details.format(variant + '_' + app)
        else:
            return inputConfig.product_details.format(variant)

    def get_indices_of_given_controller_variant(self, variant):
        """
        """
        indices_list = list()
        controller_list = self.controller_list["controllerVariant"]
        for i, c in enumerate(controller_list):
            if variant == c:
                indices_list.append(i)
        return indices_list
    
    def get_indices_of_portNumber(self):
        """
        Indices of portNumber provided.
        :return: Indices of portNumber provided.
        
        """
        index_list = list()
        for _index, v in enumerate(self.controller_list["PortNumber"]):
            if v != ''  or v != "":         
                index_list.append(_index)
        return index_list
    
    def get_controller_details_from_index(self, index):
        """

        :param index:
        :return:
        """
        details = dict()
        for key in self.controller_list.keys():
            details[key] = self.controller_list[key][index]
        return details

    def get_indices_of_Totest(self, value):
        """

        :param value:
        :return:
        """
        index_list = list()
        for _index, v in enumerate(self.controller_list["toTest"]):
            if v.lower() == value.lower():         
                index_list.append(_index)
        return index_list
    
    def get_indices_of_Isdefault(self, value):
        """

        :param value:
        :return:
        """
        index_list = list()
        for _index, v in enumerate(self.controller_list["Isdefault"]):
            if v.lower() == value.lower():         
                index_list.append(_index)
        return index_list

    def get_controller_family_variant_dict(self):
        """

        :return:
        """
        family_variant_dict = dict.fromkeys(self.controller_list["controllerFamily"])
        for k in family_variant_dict.keys():
            temp_list = list()
            for i, value in enumerate(self.controller_list["controllerVariant"]):
                if k in self.controller_list["controllerFamily"][i]:
                    temp_list.append(value)
            temp_list = list(dict.fromkeys(temp_list))
            family_variant_dict[k] = temp_list
        return family_variant_dict

    def get_controller_family_list(self):
        """
        Returns the list of unique controller family names.
        :return: List of controller family names
        """
        return list(dict.fromkeys(self.controller_list["controllerFamily"]).keys())

    def get_app_details_from_var(self, variant, isdefault=True):
        """
        Get application list , code number list ... for given controller variant.
        :param variant: controller variant string.
        :return: dictionary of variant application details.
        {'controllerCodeNo': ['', '', '', '', '', '', ''], 'softwareVersion': ['', '', '', '', '', '', ''],
        'controllerPV': ['', '', '', '', '', '', ''], 'controllerApplication': ['STANDARD', 'DUALDEFROST', 'COND101',
        'MEDICINECOOLER', 'GDM101', 'FG_GDM', 'DFNOFROST100'], 'database': ['Danfoss.ETC1H.STANDARD.db3',
        'Danfoss.ETC1H.DualDefrost.db3', 'Danfoss.ETC1H.Condenser Protection.db3', 'Danfoss.ETC1H.MEDICINECOOLER.db3',
         'Danfoss.ETC1H.GDM101.db3', 'Danfoss.ETC1H.GDM101.db3', 'Danfoss.ETC1H.DFNOFROST.db3']}
        """
        indices = self.get_indices_of_given_controller_variant(variant)
        var_dict = dict()
        for key in inputConfig.controller_var_key_list:
            temp_list = list()
            for i in indices:
                details = self.get_controller_details_from_index(i)
                if isdefault:
                    _default = details[inputConfig.app_code_enable_disable_key].lower()
                    if inputConfig.app_code_enable_disable_value == _default:
                        temp_list.append(details[key])
                else:
                    temp_list.append(details[key])
            var_dict[key] = temp_list
        return var_dict

    def get_family_variant_app_details(self):
        """
        Get dictionary of  family -> variant -> application details

        :return:
        dictionary of 'family': 'var' [app details]
        """
        family_variant_app = dict()
        for fam, var_list in self.get_controller_family_variant_dict().items():
            controller_var_combinations = dict()
            for var in var_list:
                controller_var_combinations[var] = self.get_app_details_from_var(var)
            family_variant_app[fam] = controller_var_combinations
        return family_variant_app

    def get_application_respective_code_number_for_variant(self, variant):
        """
        get application related code numbers for given controller variant.
        :param variant: controller variant string.
        :return: dictionary for app as key value of code number.
        """
        app_details = self.get_app_details_from_var(variant)
        return self.get_dict_using_given_key_as_arg1_and_values_as_arg2(app_details,
                                                                        "controllerApplication",
                                                                        "controllerCodeNo")

    def get_dict_using_given_key_as_arg1_and_values_as_arg2(self, app_details_dict, arg_key, arg_val):
        """
        Get dictionary from application details dictionary using keys as arg_key, arg_val.
        :param app_details_dict: controller variant string.
        :param arg_key:
        :param arg_val:
        :return: dictionary {arg_key:[}.
        """
        app_dict_code_num = dict.fromkeys((app_details_dict[arg_key]))
        for key in app_dict_code_num.keys():
            app_dict_code_num[key] = list()

        for index, key in enumerate(app_details_dict[arg_key]):
            app_dict_code_num[key].append(app_details_dict[arg_val][index])

        for key in app_dict_code_num.keys():
            app_dict_code_num[key] = list(dict.fromkeys(app_dict_code_num[key]))

        return app_dict_code_num

    def get_code_number_respective_software_number_for_variant(self, variant):
        """
        get application related code numbers for given controller variant.
        :param variant: controller variant string.
        :return: dictionary for app as key value of code number.
        """
        app_details = self.get_app_details_from_var(variant)
        code_num_software_version = self.get_dict_using_given_key_as_arg1_and_values_as_arg2(app_details,
                                                                                             "controllerCodeNo",
                                                                                             "softwareVersion")
        for key, value in code_num_software_version.items():
            code_num_software_version[key] = [str(item) for item in code_num_software_version[key]]

        return code_num_software_version

    def get_code_number_respective_product_version_for_variant(self, variant):
        """
        get application related code numbers for given controller variant.
        :param variant: controller variant string.
        :return: dictionary for app as key value of code number.
        """
        app_details = self.get_app_details_from_var(variant)
        code_num_software_version = self.get_dict_using_given_key_as_arg1_and_values_as_arg2(app_details,
                                                                                             "controllerCodeNo",
                                                                                             "controllerPV")
        for key, value in code_num_software_version.items():
            code_num_software_version[key] = [str(item) for item in code_num_software_version[key]]

        return code_num_software_version

    def get_indices_of_given_controller_family(self, family):
        """
        Get indices of controller family
        :param family: string name of controller family
        :return:
        """
        list_index = list()
        for i, fam in enumerate(self.controller_list["controllerFamily"]):
            if fam == family:
                list_index.append(i)
        return list_index


    
    def get_indices_totest_yes_and_isdefault_yes(self,value):
        """
        return list which are marked as toTest=Yes and Isdefault=Yes
        """
        TotestList=self.get_indices_of_Totest(value)
        IsdefaultList=self.get_indices_of_Isdefault(value)
        return common.get_list_of_same_elements_from_lists(TotestList,IsdefaultList)
        

class Database:
    """
    Class for parsing data base csv files.
    """
    CSV_HEADER_ROW_NUM = 0
    controllerObject = None

    def __init__(self):
        """

        """
        self.header = None
        self.__csv_table_wihtout_filters = None
        self.__csv_table = None
        self.controllerObject = None
        
    def get_random_parameter_info(self, parameter_collection, parameter_chosen_list):
        """
        Get random parameter details from the cdf collection.
        :param parameter_collection: cdf details
        :param parameter_chosen_list: Already Chosen Parameters that has to be ignored while selecting random parameter info.
        :return: Dict containing groupName as key and parameter info as value.
        """
        error_selecting_random_parameter = False
        group_track = []
        group_found = None
        while(group_found==None):
            count = len(parameter_collection)
            random_group_index=random.randint(0,count)
            if random_group_index not in group_track:
                group_track.append(random_group_index)
            else:
                if len(group_track) == count:
                    error_selecting_random_parameter = True
                    break
                continue
            print(random_group_index)
            if random_group_index > 0:
                group_info = parameter_collection[random_group_index-1]
            else:
                group_info = parameter_collection[random_group_index]
            for k,v in group_info.items():
                group_name = k
                parameters_list = v
                break
            par_found = False
            parameter_track = []
            parameter_info = None
            while par_found == False:
                random_parameter_index=random.randint(0,len(parameters_list))
                print(random_parameter_index)
                if random_parameter_index in parameter_track:
                    continue
                else:
                    parameter_track.append(random_parameter_index)
                if random_parameter_index > 0:
                    parameter_info = parameters_list[random_parameter_index - 1]
                else:
                    parameter_info = parameters_list[random_parameter_index]
                if parameter_info["Text"] in parameter_chosen_list:
                    continue
                groupnameSelected = group_name
                   
                par_found = True
                group_found = True
            if par_found == True:
                break
        if error_selecting_random_parameter == True:
            return None
        return {groupnameSelected:[parameter_info]}
    
    def get_group_name_from_multi_level_group(self,groupName):
        """
        Returns group Name of dataGrid format.
        :param groupName: Multi level group name. Example: "Main menu|Miscellaneous|Factory reset"
        :return: GroupName of dataGrid format. Example: "Miscellaneous-Factory reset".
        
        """
        groupName = groupName.split('|') 
        grpName = ''
        count = 0
        for i in groupName:
            if count == 0:
                count = count + 1
                continue
            if count == 1:
                grpName = i
                count = count + 1
                continue
            grpName = grpName + "-" + i
        
        return grpName

    def parse_database_csv(self, file_name, variant, user_level, controller_info_dict,app=None, offline=True, required_headers=None):
        """
        Gets database detail from csv.
        :param file_name: csv file path.
        :param required_headers: header as dictionary for parsing duplicate names.
        """
        
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],variant)
        self.header,self.__csv_table_wihtout_filters,self.__csv_table = self.controllerObject.parse_database_csv(file_name, variant, user_level, app, offline, required_headers)
        self.__csv_table = self.controllerObject.add_filters(variant, user_level, app, offline)
        database_details = self.controllerObject.database_details(self.__csv_table) 
        return database_details
    
    def locate_and_unzip_the_CDF(self,controller_info_dict):
        """
        Locates the CDF and unzips it and returns the path of the unzipped folder.
        :param controller_info_Dict: Details of the controller used for validation.
        :return: The path of unzipped Folder.
        
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        return self.controllerObject.locate_and_unzip_the_CDF(controller_info_dict)
    
    def parseDatabase(self,controller_info_dict,LANGUAGE_FILES_AVAILABLE=True):
        
        """
        Parses the Database and returns the details.
        :param controller_info_Dict: Details of the controller used for validation.
        :param LANGUAGE_FILES_AVAILABLE: Availability of language files.
        :return: Returns the content of the database parsed.
        
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        self.parameter_collection =  self.controllerObject.parseTheInputFile(controller_info_dict,LANGUAGE_FILES_AVAILABLE)
        return self.parameter_collection
    
    def get_new_offline_cdf_inputs(self, details):
        """
        Get new offline cdf file
        :param details: connected controller information
        :return : new offline cdf inputs.
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(details["controllerFamily"],details["controllerVariant"])
        return  self.controllerObject.get_new_offline_cdf_inputs(details)
    
    def check_if_parameter_is_present_in_dataGrid(self,groupName,parameterName,dataGridData):
        """
        Returns True if the provided parameter is present in the provided collection.
        :param groupName: Input group name.
        :param parameterName: Input parameter name.
        :param dataGridData: Input dataGrid data.
        :return: True if parameter is present, False otherwise.
        
        """
        return self.controllerObject.check_if_parameter_is_present_in_dataGrid(groupName,parameterName,dataGridData)
    
    def check_if_group_is_present_in_dataGrid(self,groupName,dataGridData):
        """
        Returns True if the provided groupname is present in the provided collection.
        :param groupName: Input group name.
        :param dataGridData: Input dataGrid data.
        :return: True if group is present, False otherwise.
        
        """
        return self.controllerObject.check_if_group_is_present_in_dataGrid(groupName,dataGridData)


    def check_if_parameter_is_present_in_dataGrid_quick_setting_collection(self,parameterName,quickSettingCollection):
        """
        Checks if parameter is present in dataGrid quick setting collection.
        :param parameterName: Parameter Name.
        :param quickSettingCollection: Quick setting collection in dataGrid.
        :return: True if parameter exists in the collection provided, False otherwise.
        
        """
        for aListItem in quickSettingCollection:
            for key, _ in aListItem.items():
                if key == parameterName:
                    return True
        return False
            
        
        
    def get_propertyValue_of_parameter_in_dataGrid(self,property,groupName,parameterName,dataGridData):
        """
        Returns Value of the property for the parameter provided.
        :param property: Property Name
        :param groupName: Input group name.
        :param parameterName: Input parameter name.
        :param dataGridData: Input dataGrid data.
        :return: Value of the property for the parameter provided.
        
        """
        return self.controllerObject.get_propertyValue_of_parameter_in_dataGrid(property,groupName,parameterName,dataGridData)
        
    def get_propertyValue_of_parameter_in_cdf(self,property,groupName,parameterName,collection):
        """
        Returns Value of the property for the parameter provided.
        :param property: Property Name
        :param groupName: Input group name.
        :param parameterName: Input parameter name.
        :param collection: Input collection data.
        :return: Value of the property for the parameter provided.
        
        """
        return self.controllerObject.get_propertyValue_of_parameter_in_cdf(property,groupName,parameterName,collection)
    
    def applychangeIncollectionWithRespectToDataGridChanges(self,dataGrid_data):
        """
        Updates the values of dataGrid data into cdf collection.
        :param dataGrid_data: Data of dataGrid.
        :return: Updated collection
        
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        return self.controllerObject.applydatagridChangesToCollection(dataGrid_data)
    
    def applyVisibility_to_collection(self,parameter_collection):
        """
        Applies visibility rule to the collection and returns the updated collection data.
        :param parameter_collection: Parameter collection.
        :return: Updated collection after applying visibility.
        
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        parameter_collection = self.controllerObject.update_collection_value_in_master_collection(parameter_collection)
        self.controllerObject.set_sub_collection(parameter_collection)
        return self.controllerObject.applyVisibility(parameter_collection)
    
    def getGroupName_and_parameterName_for_provided_index_from_collection(self,input_index):
        """
        Get GroupName and Parametername For provided index from collection.
        :param input_index: Input index provided.
        :return: Group Name List and Parameter Name.
        
        """
        return self.controllerObject.getGroupName_and_parameterName_for_provided_index_from_collection(input_index)
    
    def get_parameter_collection_after_removing_the_input(self,propertyName,propertyValue,collection=None):
        """
        Filter the parameter collection based on the input.
        :param propertyName: Property name to be filtered.
        :param propertyValue: Property value to be filtered.
        :param collection: Parameter collection.
        :return: Filtered collection based on the input.
        
        """
        if collection == None:
            collection = self.parameter_collection
        return self.controllerObject.get_parameter_collection_after_removing_the_input(propertyName,propertyValue,collection)
    
    def parse_quicksetting_parameters(self,dataGrid_data = None,quick_setting_data=None):
        """
        Parses quick setting rules and returns the dataGrid collection and quick setting collection.
        :param dataGrid_data: DataGrid data
        :param quick_setting_data: Quick setting parameter data.
        :return: DataGrid collection and Quick Setting collection.
        
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        return self.controllerObject.parse_quicksetting_parameters(dataGrid_data,quick_setting_data)
    
    def get_alarm_details_from_inputDatabase(self,anAlarm,alarmsCollection):
        """
        Gets alarm details from inputDatase.
        :param anAlarm: Alarm input.
        :param alarmsCollection: Alarms Collection.
        :return: Details of the input alarm if succeeds, False otherwise.
        
        """  
        return self.controllerObject.get_alarm_details_from_inputDatabase(anAlarm,alarmsCollection)
    
    def get_IO_Parameters(self, controller_info_dict):
        """
        Get the Input/OutPut Parameters
        :param controller_info_Dict: Details of the controller used for validation.
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        self.parameter_collection =  self.controllerObject.getIOParamters(controller_info_dict)
    
    
    def get_IO_Manual_Parameters(self, controller_info_dict, parametercollection, paramtervaluedetails):
        """
        Get the IO Manual Parameters
        :param controller_info_Dict: Details of the controller used for validation.
        :param paramtervaluedetails:Parameter and its value from the data grid
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        self.parameter_collection =  self.controllerObject.parseTheInputFile(controller_info_dict)
        parametercollection = self.applychangeIncollectionWithRespectToDataGridChanges(datagrid)
        self.parameter_collection =  self.controllerObject.getIOManualparameters(controller_info_dict, parametercollection,paramtervaluedetails)
   
    
    def get_interLock_testData_from_collection(self,anAlarm,parameterCollection):
        """
        Get InterLock testData from Alarm Collection.
        :param anAlarm: Alarm name.
        :param parameterCollection: Input alarm parameter collection.
        :return: InterLock Test Data List.
        
        """
        return self.controllerObject.get_interLock_testData_from_collection(anAlarm,parameterCollection)
    
    def get_readouts_testData_from_readOutList_and_collection(self,anAlarm,readOutsList,parameterCollection):
        """
        Get readouts testData from readOuts List and Alarm Collection.
        :param anAlarm: Alarm name.
        :param readOutsList: ReadOuts List.
        :param parameterCollection: Input alarm parameter collection.
        :return: Readouts Test Data List.
        
        """
        return self.controllerObject.get_readouts_testData_from_readOutList_and_collection(anAlarm,readOutsList,parameterCollection)
    
    def quickSettingForDebugging(self):
        """
        Use this while debugging while using "parse_quicksetting_parameters"
        
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        return self.controllerObject.quickSettingForDebugging()
    
    def enable_parameter(self,groupName,parameterName,dataGridData,groupVisibility=None):
        """
        Enable "group" if groupVisibility!=None, else enable a parameter according to the input.
        :param groupName: Input groupName
        :param parameterName: Input parameter name.
        :param dataGridData: DataGrid collection.
        :param groupVisibility: Input of whether group visibility id checked.
        :return: Set of values to be set in KoolProg to enable the provided parameter.
        
        
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        return self.controllerObject.enable_parameter(groupName,parameterName,dataGridData,groupVisibility)
    
    
    def disable_parameter(self,groupName,parameterName,dataGridData,groupVisibility=None):
        """
        Disable a parameter according to the input.
        :param groupName: Input groupName
        :param parameterName: Input parameter name.
        :param groupVisibility: Input of whether group visibility id checked.
        :param dataGridData: DataGrid collection.
        :return: Set of values to be set in KoolProg to disable the provided parameter.
        
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        return self.controllerObject.disable_parameter(groupName,parameterName,dataGridData,groupVisibility)
    
    def select_a_group_to_disable(self,parameter_collection,no_of_groups,parsed_dataGrid):
        """
        Selects a group to disable.
        :param parameter_collection: Input parameter collection.
        :param parsed_dataGrid: Parsed datagrid data.
        :param no_of_groups: No of groups to disable.
        
        """
        return self.controllerObject.select_a_group_to_disable(parameter_collection,no_of_groups,parsed_dataGrid)
        
    def get_parameter_collection_for_filter(self,propertyName,propertyValue,collection = None):
        """
        Filter the parameter collection based on the input.
        :param propertyName: Property name to be filtered.
        :param propertyValue: Property value to be filtered.
        :param collection: Parameter collection.
        :return: Filtered collection based on the input.
        
        """
        if collection == None:
            collection = self.parameter_collection
        new_collection = []
        for listItem in (collection):
            for groupName,parameterList in listItem.items():
                param_list = []
                for parameterDict in parameterList:
                    if parameterDict[propertyName] == propertyValue:
                        param_list.append(parameterDict)
                if len(param_list) >0:
                    aDict = {groupName:param_list}
                    new_collection.append(aDict)
                    
        return new_collection
    
    def destroy_object(self):
        """
        Destroy the object present.
        
        """
        if self.controllerObject != None:
            del self.controllerObject

        
    def set_language_help_file(self,controller_info_dict,language):
        """
        With respect to the input language, the corresponding language file name is set.
        :param language: Input language selected.
        :param controller_info_dict: Input controller details.
        :return: True if succeeds.
        
        """
        
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        return self.controllerObject.set_language_help_file(language)
    
    
    def set_language_file(self,controller_info_dict,language):
        """
        With respect to the input language, the corresponding language file name is set.
        :param language: Input language selected.
        :param controller_info_dict: Input controller details.
        :return: True if succeeds.
        
        """
        
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        return self.controllerObject.set_language_file(language)

    def get_database_table(self):
        """
        Get database table.
        :return:
        """
        return self.__csv_table

    def get_database_group_names(self):
        """
        get group name from database
        :return:
        list of group names.
        """
        key = "GroupName"
        return tuple(common.list_remove_duplicates_with_order(self.__csv_table[key]))

    def get_database_column_list_value_indices(self, column_name, item_name):
        """
        Get indices of item present in a column.
        :param column_name: column name
        :param item_name: item name to search.
        :return:
        """
        indices_list = list()
        c_list = self.__csv_table[column_name]
        for i, c in enumerate(c_list):
            if item_name == c:
                indices_list.append(i)
        return indices_list

    def get_database_row(self, index):
        """
        Get database row with key value pairs.
        :param index: index of row get value.
        :return:
        dictionary of column as key and row as values.
        """
        row = dict()
        for key, v in self.__csv_table.items():
            row[key] = v[index]
        return row

    def get_parameter_help(self, param_name):
        """
        Get database help for given parameter name.
        :param param_name: name of the parameter.
        :return: string of the help text.
        """
        indices = self.get_database_column_list_value_indices("ParameterName", param_name)
        row = self.get_database_row(indices.pop())
        return row["Help"]

    def get_group_name_indices(self, group_name):
        """
        Group name to find indices in groupname column

        :return: list of indices.
        """
        return self.get_database_column_list_value_indices("GroupName", group_name)

    def get_database_group_name_with_parameter(self):
        """
        dictionary of group name with parameter.
        :return: dictionary of group name as key and corresponding csv - rows will be values.
        """
        group_name_dict = dict()
        group_name_list = self.get_database_group_names()
        for group_name in group_name_list:
            indices = self.get_database_column_list_value_indices("GroupName", group_name)
            grop_col = list()
            for i in indices:
                grop_col.append(self.get_database_row(i))
            group_name_dict[group_name] = grop_col

        group_name_dict = self.filter_the_parameters_value_to_compare_against_koolProg(group_name_dict)

        return group_name_dict

    def filter_the_parameters_value_to_compare_against_koolProg(self, group_name_dict):
        """
        Layer two Filteration of input sheets to process the comparison with KoolProg.
        :param group_name_dict: Details after level 1 filteration from input database sheet.
        :return: Processed details to compare against KoolProg.
        """

        for names, j in group_name_dict.items():
            for aDict in j:
                if aDict["GroupName"].startswith("Access"):
                    aDict['MinValue'] = ""
                    aDict['MaxValue'] = ""

                if '--' in aDict['Enum'] or 'RO' in aDict['Enum'] or 'WO' in aDict['Enum'] or 'RW' in aDict['Enum']:
                    default_value = aDict['DefaultValue']
                    default_value = float(default_value)
                    default_value = int(default_value)
                    binary_form = '{0:08b}'.format(default_value)
                    last_value_column = binary_form[-6] + binary_form[-5]
                    middle_value_column = binary_form[-4] + binary_form[-3]
                    first_value_column = binary_form[-2] + binary_form[-1]
                    last_value_column = KoolProg_verify.enumValue_for_binary_values_for_value_column_in_dataGrid[
                        last_value_column]
                    middle_value_column = KoolProg_verify.enumValue_for_binary_values_for_value_column_in_dataGrid[
                        middle_value_column]
                    first_value_column = KoolProg_verify.enumValue_for_binary_values_for_value_column_in_dataGrid[
                        first_value_column]
                    default_value = str(first_value_column) + " " + str(middle_value_column) + " " + str(
                        last_value_column)
                    aDict['DefaultValue'] = default_value

                if aDict['Datatype'] == 'enum':
                    aDict['MinValue'] = ""
                    aDict['MaxValue'] = ""
        return group_name_dict

    def get_column_list(self, header_name):
        """
        Get list of column values from table with given header name.
        :param header_name: string header text.
        :return: list of column value.
        """
        if header_name in self.header:
            return self.__csv_table[header_name]  
        else:
            return None
        
    def get_column_indices_of_given_datatype(self, datatype):
        """
        Get column indices of given datatype
        :param datatype: datatype sting to find in datatype column.
        :return:
        list of indices in datatype column.
        """
        datatypecolumn = self.get_column_list("Datatype")
        if not datatypecolumn:
            return None
        index_list = list()
        for i, val in enumerate(datatypecolumn):
            if val.lower() in databaseConfig.Datatypes[datatype]:
                index_list.append(i)
        return index_list

    def get_parameter_dict(self,database_details):
        """
        Get the parameter details
        :database_details :database details
        :return:parameter details list
        """
        parameter_table=[]
        for value in database_details:
            for groupName,parametersDictList in value.items():
                for aParameterDict in parametersDictList:
                    parameter_table.append(aParameterDict)
        return parameter_table
    
    def get_column_indices_of_given_Unit(self, Unit):
        """
        Get column indices of given Unit
        :param Unit: Unit string to find in Unit column.
        :return:
        list of indices in Unit column.
        """
        unitpecolumn = self.get_column_list("Unit")
        if not unitpecolumn:
            return None
        index_list = list()
        for i, val in enumerate(unitpecolumn):
            if val.lower() in databaseConfig.Unittypes[Unit]:
                index_list.append(i)
        return index_list

    def get_database_for_given_indices(self, index_list):
        """
        Get database dictionary for given index column numbers.
        :param index_list:
        :return:
        """
        
        dabase_table = dict()
        for key, value in self.__csv_table.items():
            required_value_list = list()
            for i in index_list:
                required_value_list.append(self.__csv_table[key][i])
            dabase_table[key] = required_value_list
        return dabase_table

    def get_list_of_items_from_given_index_list(self, table_column_name, index_list):
        """
        Get list of items from column for given index list
        :param table_column_name: table column name.
        :param index_list: list of index.
        :return: list of elements from given column.
        """
        result = list()
        for i in index_list:
            result.append(self.__csv_table[table_column_name][i])
        return result
    
    def fetch_userDefined_groupIndex(self, controller_info_dict,UserDefinedGroupName):
        """
        Fetch the group index for the given groupname.
        :param controller_info_dict: Controller information.
        :param UserDefinedGroupName: User defined group name.
        :return: Groupname index.
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        self.parameter_collection =  self.controllerObject.fetch_userDefined_groupIndex(controller_info_dict,UserDefinedGroupName)
        return self.parameter_collection

    def get_Alarm_Parameters(self,controller_info_dict):
        
        """
        Get the alarm parameters details
        :param controller_info_Dict: Details of the controller used for validation.
        :return: Returns alarm parameter details
        
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        self.parameter_collection =  self.controllerObject.getAlarmParamters(controller_info_dict)
        return self.parameter_collection
    
    def get_alarms_list(self,controller_info_dict):
        """
        Returns alarms list of AKCC.
        :param controller_info_Dict: Details of the controller used for validation.
        :return: Alarms List
        
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        return  self.controllerObject.get_alarms_list()
        
    
    def get_alarm_generating_information(self,alarm_name):
        """
        Return alarm generating information for a specified alarm provided as input.
        :param alarm_name: Alarm provided.
        :return: Alarm generating information for a specified alarm provided as input.
        
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        return  self.controllerObject.get_alarm_generating_information(alarm_name)
      
    def get_alarm_degenerating_information(self,alarm_name):
        """
        Return alarm degenerating information for a specified alarm provided as input.
        :param alarm_name: Alarm provided.
        :return: Alarm degenerating information for a specified alarm provided as input.
        
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        return  self.controllerObject.get_alarm_degenerating_information(alarm_name) 
    
    
    def get_readOutsList(self):
        """
        Get readOut List.
        :return: ReadOuts List.
        
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        return self.controllerObject.get_readOutsList()
    
    
    def get_all_grpnames_from_cdf_in_treeView_format(self,controllerinfo_Dict):
        """
        Get all groupnames from CDF in the treeView format.
        :param controllerinfo_Dict: Controller information details.
        :return: CDF groupnames in treeView format.
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controllerinfo_Dict["controllerFamily"],controllerinfo_Dict["controllerVariant"])
        return self.controllerObject.get_all_grpnames_from_cdf_in_treeView_format(controllerinfo_Dict)
    
    def get_grpName_in_treeView_format(self, controllerinfo_Dict,aParameterInfo, groupName):
        """
        Get the groupname in the treeview format.
        :param controllerinfo_Dict: Controller information details.
        :param aParameterInfo: Parameter info
        :param groupName: Group name in CDF.
        :return: String of Group name in CDF format.
        """
        if self.controllerObject == None:
            createObj = CreateObject()
            self.controllerObject = createObj.getControllerObject(controller_info_dict["controllerFamily"],controller_info_dict["controllerVariant"])
        return self.controllerObject.get_grpName_in_treeView_format(aParameterInfo, groupName)
    
    def __add_filters(self, variant_name, user_level, app=None, offline=True):
        """

        :return:
        """
        filter = list()
        reorder_list = lambda _list: [l - 1 for l in _list]
        
        if variant_name == "EKE 1A" or variant_name == "EKE 1B" or variant_name == "EKE 1C" or variant_name == "EKE 1D":
            visibility_groups = list()
            for i, value in enumerate(self.__csv_table["Visibility"]):
                if not value == '':
                    visibility_groups.append(i)
            readonly_value_list = list()
            for i, value in enumerate(self.__csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
        
            filter = common.get_list_of_unique_both_elements_from_int_lists(visibility_groups,
                                                                            readonly_value_list)
            factory_reset_removal_list = []
            for i, value in enumerate(self.__csv_table["VariableName"]):
                if (value == "Par_ID") or (value =="Par_CAN_baudrate") or (value =="Par_Modbus_baud") or (value =="Par_Modbus_mapping") or (value =="Par_Modbus_set")  or (value =="Par_Language") :
                    factory_reset_removal_list.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            factory_reset_removal_list)
            

            
        elif variant_name == "EETa 2W" or variant_name == "EETa 3W":
            visibility_groups = list()
            for i, value in enumerate(self.__csv_table["Visibility"]):
                if not value == '':
                    visibility_groups.append(i)
            readonly_value_list = list()
            for i, value in enumerate(self.__csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
        
            filter = common.get_list_of_unique_both_elements_from_int_lists(visibility_groups,
                                                                            readonly_value_list)
            not_alarm_group_parameters = list()
            for i, value in enumerate(self.__csv_table["GroupName"]):
                if not value == "Alarm":
                    not_alarm_group_parameters.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_alarm_group_parameters)
            
        elif variant_name == "AK-CC55 Compact" or  variant_name == "AK-CC55 Single Coil" or variant_name == "AK-CC55 Multi Coil":
            visibility_groups = list()
            for i, value in enumerate(self.__csv_table["Visibility"]):
                if not value == '':
                    visibility_groups.append(i)
            readonly_value_list = list()
            for i, value in enumerate(self.__csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
        
            filter = common.get_list_of_unique_both_elements_from_int_lists(visibility_groups,
                                                                            readonly_value_list)
            
            invisible_groups = list()
            for i, value in enumerate(self.__csv_table["GroupName"]):
                if ("|Invisible|" in value) or ("|Miscellaneous|" in value) or ("|Advanced|" in value):
                    invisible_groups.append(i)
        
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            invisible_groups)

        elif variant_name == "ERC111A":
            # query: ModelCodeValue = '1' and ReadOnly = '0'
            # User = should have value 2

            menucode_value_list = list()
            for i, value in enumerate(self.__csv_table["ModelCodeValue"]):
                if not value == '1':
                    menucode_value_list.append(i)
            readonly_value_list = list()
            for i, value in enumerate(self.__csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
            
            filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list,
                                                                            readonly_value_list)
            
            not_display_service_group_parameters = list()
            for i, value in enumerate(self.__csv_table["GroupName"]):
                if not ((value == "Display") or (value == "Service")):
                    not_display_service_group_parameters.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_display_service_group_parameters)

        elif variant_name == "ERC112C" or variant_name == "ERC113C" or variant_name == "ERC112D VSC":

            # 112C,113C.112D-VSC:
            # model code query:(ModelCodeValue & 4) >= 1 and ReadOnly = '0' and Datatype != 'MUX '
            # code number:112.db3-param:317

            menucode_value_list = list()
            for i, value in enumerate(self.__csv_table["ModelCodeValue"]):
                try:
                    if not (int(value) & 4 >= 1):
                        menucode_value_list.append(i)
                except ValueError:
                    menucode_value_list.append(i)
            readonly_value_list = list()
            for i, value in enumerate(self.__csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
            datatype_value_list = list()
            for i, value in enumerate(self.__csv_table["Datatype"]):
                if not (value != 'MUX'):
                    datatype_value_list.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list, readonly_value_list)
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter, datatype_value_list)
            
            
            not_display_service_group_parameters = list()
            for i, value in enumerate(self.__csv_table["GroupName"]):
                if not ((value == "Display") or (value == "Service")):
                    not_display_service_group_parameters.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_display_service_group_parameters)

        elif variant_name == "ERC112D" or variant_name == "ERC113D":

            # 112D,113D
            # model code query:(ModelCodeValue & 8) >= 1 and ReadOnly = '0' and Datatype != 'MUX'
            # code number :113.db3-param 345

            menucode_value_list = list()
            for i, value in enumerate(self.__csv_table["ModelCodeValue"]):
                try:
                    if not (int(value) & 8 >= 1):
                        menucode_value_list.append(i)
                except ValueError:
                    menucode_value_list.append(i)
            readonly_value_list = list()
            for i, value in enumerate(self.__csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
            datatype_value_list = list()
            for i, value in enumerate(self.__csv_table["Datatype"]):
                if not (value != 'MUX'):
                    datatype_value_list.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list, readonly_value_list)
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter, datatype_value_list)
            
            
            not_display_service_group_parameters = list()
            for i, value in enumerate(self.__csv_table["GroupName"]):
                if not ((value == "Display") or (value == "Service")):
                    not_display_service_group_parameters.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_display_service_group_parameters)
            
        elif variant_name == "EETc 11":

            # EETc 11
            # query:ModelCodeValue in (1, 11 , 15)and  ReadOnly = '0'and Datatype != 'MUX'

            menucode_value_list = list()
            for i, value in enumerate(self.__csv_table["ModelCodeValue"]):
                if not (value == "1" or value == "11" or value == "15"):
                    menucode_value_list.append(i)
            readonly_value_list = list()
            for i, value in enumerate(self.__csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
            datatype_value_list = list()
            for i, value in enumerate(self.__csv_table["Datatype"]):
                if not (value != 'MUX'):
                    datatype_value_list.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list, readonly_value_list)
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter, datatype_value_list)
            
            visibility_groups = list()
            for i, value in enumerate(self.__csv_table["Visibility"]):
                if not value == '':
                    visibility_groups.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter, visibility_groups)
            
            not_alarm_group_parameters = list()
            for i, value in enumerate(self.__csv_table["GroupName"]):
                if not value == "Alarm":
                    not_alarm_group_parameters.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_alarm_group_parameters)

        elif variant_name == "EETc 12":

            # EETc 12
            # query:ModelCodeValue in (2 , 11 , 15)and  ReadOnly = '0'and Datatype != 'MUX'

            menucode_value_list = list()
            for i, value in enumerate(self.__csv_table["ModelCodeValue"]):
                if not (value == "2" or value == "11" or value == "15"):
                    menucode_value_list.append(i)
            readonly_value_list = list()
            for i, value in enumerate(self.__csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
            datatype_value_list = list()
            for i, value in enumerate(self.__csv_table["Datatype"]):
                if not (value != 'MUX'):
                    datatype_value_list.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list, readonly_value_list)
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter, datatype_value_list)
            
            visibility_groups = list()
            for i, value in enumerate(self.__csv_table["Visibility"]):
                if not value == '':
                    visibility_groups.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter, visibility_groups)
            
            not_alarm_group_parameters = list()
            for i, value in enumerate(self.__csv_table["GroupName"]):
                if not value == "Alarm":
                    not_alarm_group_parameters.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_alarm_group_parameters)

        elif variant_name == "EETc 21":

            # EETc21:
            # query:ModelCodeValue in (1, 12 , 14 , 15)and  ReadOnly = '0'and Datatype != 'MUX'

            menucode_value_list = list()
            for i, value in enumerate(self.__csv_table["ModelCodeValue"]):
                if not (value == "1" or value == "12" or value == "14" or value == "15"):
                    menucode_value_list.append(i)
            readonly_value_list = list()
            for i, value in enumerate(self.__csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
            datatype_value_list = list()
            for i, value in enumerate(self.__csv_table["Datatype"]):
                if not (value != 'MUX'):
                    datatype_value_list.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list, readonly_value_list)
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter, datatype_value_list)
            
            visibility_groups = list()
            for i, value in enumerate(self.__csv_table["Visibility"]):
                if not value == '':
                    visibility_groups.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter, visibility_groups)
            
            not_alarm_group_parameters = list()
            for i, value in enumerate(self.__csv_table["GroupName"]):
                if not value == "Alarm":
                    not_alarm_group_parameters.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_alarm_group_parameters)

        elif variant_name == "EETc 22":

            # EETc 22
            # query:ModelCodeValue in (2 , 12 , 14 , 15)and  ReadOnly = '0'and Datatype != 'MUX'

            menucode_value_list = list()
            for i, value in enumerate(self.__csv_table["ModelCodeValue"]):
                if not (value == "2" or value == "12" or value == "14" or value == "15"):
                    menucode_value_list.append(i)
            readonly_value_list = list()
            for i, value in enumerate(self.__csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
            datatype_value_list = list()
            for i, value in enumerate(self.__csv_table["Datatype"]):
                if not (value != 'MUX'):
                    datatype_value_list.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list, readonly_value_list)
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter, datatype_value_list)
            
            visibility_groups = list()
            for i, value in enumerate(self.__csv_table["Visibility"]):
                if not value == '':
                    visibility_groups.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter, visibility_groups)
            
            not_alarm_group_parameters = list()
            for i, value in enumerate(self.__csv_table["GroupName"]):
                if not value == "Alarm":
                    not_alarm_group_parameters.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_alarm_group_parameters)

        elif variant_name == "ETC1H1":

            # ETC1H1
            # query=select * from tblParameters where (ModelCodeValue & 1) = 1

            menucode_value_list = list()
            for i, value in enumerate(self.__csv_table["ModelCodeValue"]):
                try:
                    if not (int(value) & 1 >= 1):
                        menucode_value_list.append(i)
                except ValueError:
                    menucode_value_list.append(i)

            readonly_value_list = list()
            for i, value in enumerate(self.__csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list, readonly_value_list)
            
            not_specific_group_parameters = list()
            for i, value in enumerate(self.__csv_table["GroupName"]):
                if not (value == "ETP R1 Remote Display" or value == "Freezer ETP R1 Remote Display" or value == "Ref ETP R1 Remote Display" or value == "ETP R1 Settings"):
                    not_specific_group_parameters.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_specific_group_parameters)
            
            not_specific_parameter = list()
            for i, value in enumerate(self.__csv_table["ParameterName"]):
                if not (("Remote" in value) and ("Time" in value) and ("Sample" in value)):
                    not_specific_parameter.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_specific_parameter)

        elif variant_name == "ETC1H2":

            # ETC1H2
            # query=select * from tblParameters where (ModelCodeValue & 2) >= 1

            menucode_value_list = list()
            for i, value in enumerate(self.__csv_table["ModelCodeValue"]):
                try:
                    if not (int(value) & 2 >= 1):
                        menucode_value_list.append(i)
                except ValueError:
                    menucode_value_list.append(i)

            readonly_value_list = list()
            for i, value in enumerate(self.__csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list, readonly_value_list)
            
            not_specific_group_parameters = list()
            for i, value in enumerate(self.__csv_table["GroupName"]):
                if not (value == "ETP R1 Remote Display" or value == "Freezer ETP R1 Remote Display" or value == "Ref ETP R1 Remote Display" or value == "ETP R1 Settings"):
                    not_specific_group_parameters.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_specific_group_parameters)
            
            not_specific_parameter = list()
            for i, value in enumerate(self.__csv_table["ParameterName"]):
                if not (("Remote" in value) and ("Time" in value) and ("Sample" in value)):
                    not_specific_parameter.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_specific_parameter)

        elif variant_name == "ETC1H3":

            # ETC1H3
            # select * from tblParameters where (ModelCodeValue & 4) >= 1

            menucode_value_list = list()
            for i, value in enumerate(self.__csv_table["ModelCodeValue"]):
                try:
                    if not (int(value) & 4 >= 1):
                        menucode_value_list.append(i)
                except ValueError:
                    menucode_value_list.append(i)
            readonly_value_list = list()
            for i, value in enumerate(self.__csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
            filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list, readonly_value_list)
            
            not_specific_group_parameters = list()
            for i, value in enumerate(self.__csv_table["GroupName"]):
                if not (value == "ETP R1 Remote Display" or value == "Freezer ETP R1 Remote Display" or value == "Ref ETP R1 Remote Display" or value == "ETP R1 Settings"):
                    not_specific_group_parameters.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_specific_group_parameters)
            
            not_specific_parameter = list()
            for i, value in enumerate(self.__csv_table["ParameterName"]):
                if not (("Remote" in value) and ("Time" in value) and ("Sample" in value)):
                    not_specific_parameter.append(i)
                    
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            not_specific_parameter)

        elif "ERC21" in variant_name:
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
                    for i, value in enumerate(self.__csv_table_wihtout_filters[column_name]):
                        try:
                            if not (int(value) & 1 >= 1):
                                menucode_value_list.append(i)
                        except ValueError:
                            menucode_value_list.append(i)
                    readonly_value_list = list()

                    for i, value in enumerate(self.__csv_table["ReadOnly"]):
                        if not (value == "0"):
                            readonly_value_list.append(i)
                    filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list,
                                                                                    readonly_value_list)
                    

                elif variant_name == "ERC213":
                    column_name = databaseConfig.ERC21X_family_ModelCodeValue[app]
                    # where(App3ModelCodeVALUE& 2) >=1
                    for i, value in enumerate(self.__csv_table_wihtout_filters[column_name]):
                        try:
                            if not (int(value) & 2 >= 1):
                                menucode_value_list.append(i)
                        except ValueError:
                            menucode_value_list.append(i)

                    readonly_value_list = list()
                    for i, value in enumerate(self.__csv_table["ReadOnly"]):
                        if not (value == "0"):
                            readonly_value_list.append(i)
                    filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list,
                                                                                    readonly_value_list)
                    

                elif variant_name == "ERC214":
                    column_name = databaseConfig.ERC21X_family_ModelCodeValue[app]

                    # where (App6ModelCodeVALUE& 4) >=1
                    for i, value in enumerate(self.__csv_table_wihtout_filters[column_name]):
                        try:
                            if not (int(value) & 4 >= 1):
                                menucode_value_list.append(i)
                        except ValueError:
                            menucode_value_list.append(i)

                    readonly_value_list = list()
                    for i, value in enumerate(self.__csv_table["ReadOnly"]):
                        if not (value == "0"):
                            readonly_value_list.append(i)
                    filter = common.get_list_of_unique_both_elements_from_int_lists(menucode_value_list,
                                                                                    readonly_value_list)
                    
                                                                             
                else:
                    test.fail("unknown ERC21X controller to add filter ...")
                
                
                if app == "App0" or app == "App1" or app == "App2" or app == "App3" or app == "App4" or app == "App5":
                    not_modelCodeValue_seven = list()
                    for i, value in enumerate(self.__csv_table["ModelCodeValue"]):
                        if not (value == "7"):
                            not_modelCodeValue_seven.append(i)
                    filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                                    not_modelCodeValue_seven)
                if app == "App6":
                    not_modelCodeValue_six = list()
                    for i, value in enumerate(self.__csv_table["ModelCodeValue"]):
                        if not (value == "6"):
                            not_modelCodeValue_six.append(i)
                    filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                                    not_modelCodeValue_six)
                    

        user_level_remove_list = list()
        if user_level == databaseConfig.DATABASE_USER_ADMIN:
            for i, user_code in enumerate(self.__csv_table["UserLevel"]):
                if databaseConfig.DATABASE_USER_ADMIN not in user_code:
                    user_level_remove_list.append(i)

        filter = common.get_list_of_unique_both_elements_from_int_lists(filter, user_level_remove_list)

        if filter:
            for _ in range(len(filter)):
                row_no = filter.pop(0)
                filter = reorder_list(filter)
                for k in self.__csv_table.keys():
                    del self.__csv_table[k][row_no]


class ProjectxmlPraser:
    """
    Parses the project xml file.
    """

    def __init__(self, project_file=None):
        """
        Parse project xml file
        :param project_file:path of project file from directory.
        """
        self.__project_description = dict()
        self.__tree = None

        if project_file:
            self.project_xmlfile_parse(project_file)

    def project_xmlfile_parse(self, project_file):
        """
        parses xml file to dictionary
        :return:
        """
        self.__tree = ET.parse(project_file)
        self.__project_file = project_file
        root = self.__tree.getroot()
        proj_param = list()
        for ch in root.iter(inputConfig.project_xml_file_parse_keys["param"]):
            param_dict = ch.attrib
            param_dict["value"] = ch.text
            proj_param.append(param_dict)

        self.__project_description["param"] = proj_param
        for k, detail in inputConfig.project_xml_file_parse_keys["prod_details"].items():
            for ch in root.iter(detail):
                self.__project_description[k] = ch.text
                break

    def xmlfile_set_value_for_parameter_name(self, parameter_name, value):
        """
        Write value for given parameter name.
        :param parameter_name: parameter name.
        :param value: string to set.
        :return: True if parameter found and set successfully else False.
        """
        root = self.__tree.getroot()
        for ch in root.iter(inputConfig.project_xml_file_parse_keys["param"]):
            param_dict = ch.attrib
            if param_dict["parameter"] == parameter_name:
                ch.text = value
                break

    def xml_write(self):
        """
        writes its to own file.
        :return:
        """
        self.__tree.write(self.__project_file)

    def read_project_file_descritpion(self):
        """
        Get project xml dictionary.
        :return:dict
        """
        return self.__project_description


if __name__ == '__main__':

    import random

    # ETC1Hx
    # ETC1H3
    # WINECOOLER
    # Danfoss.ETC1H.WINE108.db3
    # Yes

    file_name = "Danfoss.ETC1H.WINE108"
    variant = "ETC1H3"

    file_name = inputConfig.database_path.format(file_name)
    print("file_name ={}".format(file_name))
    print("cwd ={}".format(common.get_currentDirectory()))
    csvModule = Database()
    csvModule.parse_database_csv(file_name, variant, databaseConfig.DATABASE_USER_ADMIN, None, True,
                                 databaseConfig.required_databaseHeader)

    print(csvModule.get_database_table())


    exit(1)

    pro_file = "C:\\Users\\U377188\\Desktop\\koolprogSaved\\ETC1H3.xml"
    project_file = ProjectxmlPraser(pro_file)
    print("project_file={}".format(project_file.read_project_file_descritpion()))
    project_file.xmlfile_set_value_for_parameter_name("Cold Cut-out", "12")
    project_file.xml_write()
    exit(1)

    excel_path = "C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\KoolProg_Phase_3.5\\KoolProg\\Automation\\test_input_config\\AutomationInputSheet.xlsx"
    module = InputExcelData(
        excel_path,
        "Controller List")
    s = module.get_info_from_sheet()

    print("controler excel ={}".format(s["softwareVersion"]))

    exit(1)
    list_index = list()
    for i, fam in enumerate(s["controllerFamily"]):
        if fam == "AK-CC55":
            list_index.append(i)
    print("list_index={}".format(random.choice(list_index)))

    exit(1)
    list_index = module.get_indices_of_given_controller_variant("ETC1H1")
    print("list_index ={}".format(list_index))
    c = random.choice(list_index)
    d = module.get_controller_details_from_index(c)
    print("controler details ={}".format(d["controllerFamily"]))

    print("get_controller_family_variant_dict ={}".format(module.get_controller_family_variant_dict()))

    print("get_family_variant_app_details {}".format(module.get_family_variant_app_details()))

    exit(0)

    pro_file = "C:\\Users\\U377188\\Desktop\\koolprogSaved\\ETC1H3.xml"
    project_file = ProjectxmlPraser(pro_file)
    print("project_file={}".format(project_file.read_project_file_descritpion()))

    exit(0)
    result_list = list()
    for param in inputConfig.dataGrid_parameter_values:
        for key, value in param.items():
            result_dict = dict()
            val = value.split(koolprogconfig.PARAM_SEPERATOR)
            if not (len(koolprogconfig.datagrid_coloumn_name) == len(val)):
                # return False
                print("inputConfig.datagrid_coloumn_name ={}".format(koolprogconfig.datagrid_coloumn_name))
                print("val ={}".format(val))
                print("Length is invalid to compare ...")
            parameter_row_dict = dict()
            for i, parm_name in enumerate(koolprogconfig.datagrid_coloumn_name):
                parameter_row_dict[parm_name] = val[i]

            result_dict[key] = parameter_row_dict
            result_list.append(result_dict)

    print("result_list ={}".format(result_list))

    exit(1)
    import random

    # file_name = "Danfoss.ERC112_080G3276_M"
    # file_name = "Danfoss.AKCC_5XX_084B4081_1.90"

    # file_name = "Danfoss.ERC112_M"
    # variant = "ETC1H3"
    # file_name = "Danfoss.ETC1H.DualDefrost"

    # variant = "ERC211"
    # file_name = "Danfoss.ERC214"

    # variant = "EKE 1C"
    file_name = "Danfoss.EKE_1C_2.04.001"
    variant = "ERC111A"
    # file_name = "Danfoss.ERC111"

    file_name = inputConfig.database_path.format(file_name)
    csvModule = Database()
    csvModule.parse_database_csv(file_name, databaseConfig.required_databaseHeader)
    csvModule.add_filters(variant, "App5")
    float_index = csvModule.get_column_indices_of_given_datatype("float")
    # print("float_index={}".format(float_index))
    table = csvModule.get_database_for_given_indices(float_index)

    float_parameter_table = dict()
    float_parameter_table["MenuCode"] = table["MenuCode"]
    float_parameter_table["ParameterName"] = table["ParameterName"]
    float_parameter_table["Datatype"] = table["Datatype"]
    value_list = list()
    for i in range(len(table["MenuCode"])):
        min = table["MinValue"][i]
        max = table["MaxValue"][i]
        val = round(random.uniform(float(min), float(max)), 2)
        value_list.append(val)
        print("param ={} \t\t min={} \t max={} \t\t\t\t val={}".format(table["ParameterName"][i], min, max, val))
    float_parameter_table["Value"] = value_list
    print(float_parameter_table)

    # for ;;

    # for column_name , type

    # print("get_database_for_given_indices={}".format(table))

    exit(1)

    # print("GroupName ={}".format(csvModule.csv_table))

    print("get_database_group_names {}".format(csvModule.get_database_group_names()))

    # print(csvModule.get_paramter_help("Button 1 Long Config"))
    # print(csvModule.get_paramter_help("S2 Config"))
    # S2Config

    # print(csvModule.get_menu_code_help("Pit"))

    # print(csvModule.get_database_group_name_with_parameter())
    # print(csvModule.get_database_row(0))

    # print(csvModule.csv_table)

    # print(csvModule.csv_table["MinValue"])
    # print(csvModule.get_database_column_list_value_indices("GroupName","Pull Down"))

    # for grp_name in databaseConfig.required_databaseHeader["GroupCode"]:
    #     col_value = csvModule.get_column_list(grp_name)
    #     if col_value:
    #         print(col_value)
    #         break

    # print(csvModule.get_column_list())

    # print(csvModule.csv_table)
    # print(csvModule.header)

    exit(0)

    excel_path = "C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\KoolProg_Phase_3.5\\KoolProg\\Automation\\test_input_config\\AutomationInputSheet.xlsx"
    module = InputExcelData(
        excel_path,
        "Controller List")
    s = module.get_info_from_sheet()
    list_index = module.get_indices_of_given_controller_variant("ETC1H1")
    print("list_index ={}".format(list_index))
    c = random.choice(list_index)
    d = module.get_controller_details_from_index(c)
    print("controler details ={}".format(d))

    print("get_controller_family_variant_dict ={}".format(module.get_controller_family_variant_dict()))

    print("get_family_variant_app_details {}".format(module.get_family_variant_app_details()))

    # d = module.get_app_details_from_var("ERC211")
    # d = module.get_application_respective_code_number_for_variant("ERC211")
    # print("d ={}".format(d))

    # d = module.get_code_number_respective_software_number_for_variant("AK-CC55 Single Coil")
    # d = module.get_code_number_respective_software_number_for_variant("AK-CC55 Compact")

    # d = module.get_code_number_respective_product_version_for_variant("EKE 1A")
    d = module.get_code_number_respective_product_version_for_variant("ERC112D")
    print("d ={}".format((d)))

