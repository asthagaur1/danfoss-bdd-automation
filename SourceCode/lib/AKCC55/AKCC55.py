from controllerFamily_library_Interface import Interface
import test
import common
import io
import databaseConfig
import inputConfig
import csv
import AKCC55_Config
import os
import shutil
from os import path
from CDFParser import CDFContentParser
from MappingCDF import MappingCDFDetails
from JavaScriptParser import JavaScriptRulesParser
import re
import copy
import pandas as pd
import random

class AKCC55(Interface):
    
    CSV_HEADER_ROW_NUM = 0
    
    def __init__(self,variant):
        self._variant = variant
        self.header = None
        self.csv_table_wihtout_filters = None
        self.csv_table = None
        self.language_file = None
        self.lang_file = None
        self.set_condition_parameter_collection = None
        self.master_collection = None
        self.language = None
        self.status_of_setVar = None
        self.quick_setting_collection = None
        
    def __del__(self):
        class_name = self.__class__.__name__     
        print(str(class_name))
        print("Destroyed")  
      
      
    def getHeader(self):
        test.log(str(self._variant))
        return "AK-CC55 Header here!"

    def parseTheInputFile(self,controller_info_Dict,LANGUAGE_FILES_AVAILABLE=True):
        """
        Parses the Database and returns the details.
        :param controller_info_Dict: Details of the controller used for validation.
        :param LANGUAGE_FILES_AVAILABLE: Availability of language files.
        :return: Returns the content of the database parsed.
        Example: Chinese Language Mapped Group And Its Parameters Data.
         {'起动/停止': [{'AccLevelR': 0, 'AccLevelW': 2, 'Bit': 0, 'Cid': 0, 'CopyType': 'N', 'CustomTextIdx': -1, 'DataType': 'Enum', 'Decimals': 0, 'Default': 0, 'DynMaxIdx': -1, 'DynMinIdx': -1, 'EngUnitIdx': 0, 'EnumIdx': 0, 'HelpTextIdx': 1, 'Idx': 0, 'ItemCategory': 'W', 'ItemType': 'S', 'Label': 'r12', 'Max': 1, 'Min': -1, 'Scale10E': 0, 'StorageType': 4, 'Text': '主开关', 'TextIdx': 41, 'UniqueID': 1048586, 'Vid': 117, 'VisibilityIdx': 0,
          'Help': '制冷起/停。可以通过该参数开启，停止和手动控制输出。（需要手动控制时，r12=-\n1。可以强制控制输出。制冷起/停控制也可通过外部开关量信号实现(DI)。\n制冷停止时，控制器将显示“Standby alarm（待机模式）”', 'EnumUniqueID': 12, 'EnumsIdx': 0, 'EnumLabel': ['SEr', 'OFF', 'On'], 'EnumText': ['Manual', 'Stop', 'Start'], 'EnumTextIdx': [397, 398, 399], 'EnumValue': [-1, 0, 1], 'EnumVisibilityIndex': [0, 0, 0], 'UnitFactor': 1, 'UnitIdx': 0, 'UnitOffset': 0, 'UnitText': '',
           'UnitTextIdx': -1, 'UnitUniqueID': 0, 'GroupName': '起动/停止;Digital outputs', 'GroupNameIdx': '2;33', 'SubGroupNameIdx': '1|2;25|30|33', 'GroupIdx': '1;32', 'GroupVisibilityIdx': '0;8', 'GroupLabel': 'M00;M54', 'GroupCustomTextIdx': '-1;-1', 'GroupAccLevelR': '0;0', 'SubGroupName': '主菜单|起动/停止;Invisible|Service|Digital outputs'},
         {'AccLevelR': 1, 'AccLevelW': 2, 'Bit': 0, 'Cid': 0, 'CopyType': 'S', 'CustomTextIdx': -1, 'DataType': 'Integer', 'Decimals': 0, 'Default': 5, 'DynMaxIdx': -1, 'DynMinIdx': -1, 'EngUnitIdx': 25, 'EnumIdx': -1, 'HelpTextIdx': 51, 'Idx': 70, 'ItemCategory': 'S', 'ItemType': 'S', 'Label': 'o01', 'Max': 600, 'Min': 0, 'Scale10E': 0, 'StorageType': 2, 'Text': '上电后输出延时', 'TextIdx': 111, 'UniqueID': 1054510, 'Vid': 2000, 'VisibilityIdx': 0,
          'Help': '启动后的输出信号延时。\n可设置控制器在启动或电源故障后，控制输出的延时，减少对电网的冲击。此处可设置延时时间。', 'EnumText': None, 'EnumTextIdx': None, 'EnumUniqueID': None, 'EnumsIdx': -1, 'EnumLabel': None, 'EnumValue': None, 'EnumVisibilityIndex': None, 'UnitFactor': 1, 'UnitIdx': 25, 'UnitOffset': 0, 'UnitText': 's', 'UnitTextIdx': -1, 'UnitUniqueID': -43, 'GroupName': '起动/停止', 'GroupNameIdx': 2, 'SubGroupNameIdx': '1|2', 'GroupIdx': 1, 
          'GroupVisibilityIdx': 0, 'GroupLabel': 'M00', 'GroupCustomTextIdx': -1, 'GroupAccLevelR': 0, 'SubGroupName': '主菜单|起动/停止'}]}
        
        """
        
        self.locate_and_unzip_the_CDF(controller_info_Dict)
        CDFcontentparser = CDFContentParser()  
        deviceJso = self.getdeviceJsoFilePath()
        deviceJsoObject = CDFcontentparser.parse_jso_with_dataModel(deviceJso,AKCC55_Config.deviceJsoDataModel)
        if LANGUAGE_FILES_AVAILABLE == True:
            if self.language!= None:
                self.set_language_help_file(self.language)
                self.set_language_file(self.language)
            else:
                self.set_language_help_file()
                self.set_language_file()
            helpJso = self.getlanguageHelpFilePath()
            if common.path_exists(helpJso) == True:
                langHelpObject = CDFcontentparser.parse_jso_with_dataModel(helpJso,AKCC55_Config.languageDataModel)
                self.help = True
            else:
                langHelpObject = None
                self.help = False
            langJso = self.getlanguageFilePath()
            if common.path_exists(helpJso) == True:
                langJsoObject = CDFcontentparser.parse_jso_with_dataModel(langJso,AKCC55_Config.languageDataModel)
                self.lang = True
            else:
                langJsoObject = None
                self.lang = False
        else:
            self.language = "NOT_AVAILABLE"
            langHelpObject = "NOT_AVAILABLE"
            langJsoObject = "NOT_AVAILABLE"
            self.lang = "NOT_AVAILABLE"
            self.help = "NOT_AVAILABLE"
        MappingCDFdetails = MappingCDFDetails()
        parameter_collection = MappingCDFdetails.combine_deviceJSO_helpJSO(langHelpObject,deviceJsoObject.Parameters,self.help)
        parameter_collection = MappingCDFdetails.combine_deviceJSO_langJSO(langJsoObject,parameter_collection,self.lang)
        parameter_collection = MappingCDFdetails.mapEnums(deviceJsoObject,parameter_collection)
        parameter_collection = MappingCDFdetails.mapUnits(deviceJsoObject,parameter_collection)
        parameter_collection = MappingCDFdetails.mapDataType(deviceJsoObject,parameter_collection)     
        parameter_collection = MappingCDFdetails.mapLangForEnum(langJsoObject, parameter_collection,self.lang)
        parameter_collection = MappingCDFdetails.mapDotForColonForEnum(parameter_collection)        
        parameter_collection = MappingCDFdetails.mapDataType(deviceJsoObject,parameter_collection)
        if langJsoObject != "NOT_AVAILABLE":
            parameter_collection = MappingCDFdetails.mapLangForEnum(langJsoObject, parameter_collection,self.lang)
        parameter_collection = MappingCDFdetails.mapDefaultWithValue(parameter_collection)
        parameter_collection = MappingCDFdetails.mapDynamicMinMax(deviceJsoObject,parameter_collection)
        parameter_collection = MappingCDFdetails.mapFloatPrecisions(parameter_collection)        
        parameter_collection = MappingCDFdetails.mapGroupdata(deviceJsoObject,parameter_collection)
        if langJsoObject != "NOT_AVAILABLE":
            parameter_collection = MappingCDFdetails.mapLangForGroupData(langJsoObject,parameter_collection,self.lang)
        parameter_collection = MappingCDFdetails.convertIntoDataGridFormat(parameter_collection)
        parameter_collection = MappingCDFdetails.mapGroupOrder(deviceJsoObject,parameter_collection)
        parameter_collection = MappingCDFdetails.mapParameterOrder(deviceJsoObject,parameter_collection)
        test.log(str(parameter_collection))
        self.parameter_collection = parameter_collection
        self.set_master_collection(self.parameter_collection)
        self.parameter_collection = self.applyVisibility(parameter_collection)
        self.parameter_collection = self.removeUnwantedGroups(self.parameter_collection)
        return self.parameter_collection
    
    def get_new_offline_cdf_inputs(self, details):
        """
        Get new offline cdf file
        :param details: connected controller information
        :return : new offline cdf inputs.
        
        """
        codenumberList = AKCC55_Config.non_default_cdfs[details["controllerVariant"]]["non_default_controller_codeNo"]
        software_verisonList = AKCC55_Config.non_default_cdfs[details["controllerVariant"]]["non_default_sw_version"]
        random_index = common.get_random_int_value_for_a_range_of_values(0, len(codenumberList))
        if len(codenumberList) == random_index:
            random_index = random_index - 1
        codeNumber = codenumberList[random_index]
        software_version = software_verisonList[random_index]
        return codeNumber,software_version
    
    def enable_parameter(self,groupName,parameterName,dataGridData,groupVisibility=None):
        """
        Enable the provided "group" if groupVisibility!=None, else enable a parameter according to the input.
        :param groupName: Input groupName
        :param parameterName: Input parameter name.
        :param dataGridData: DataGrid collection.
        :param groupVisibility: Input of whether group visibility id checked.
        :return: Set of values to be set in KoolProg to enable the provided parameter.
        
        """
        if groupVisibility!=None:
            if self.check_if_group_is_present_in_dataGrid(groupName,dataGridData):
                return True,True,True,True
                
        else:
            if self.check_if_parameter_is_present_in_dataGrid(groupName,parameterName,dataGridData):
                return True,True,True,True
        
        if groupVisibility!=None:
            visibilityIndex = self.get_group_info_from_collection(groupName,"GroupVisibilityIdx")
        else:
            visibilityIndex = self.get_parameter_info_from_collection(groupName,parameterName,"VisibilityIdx")
        print(str(visibilityIndex))
        
        rule = self.fetch_the_rule_for_given_ruleID(visibilityIndex)
        if rule == None:
            return False,False,False,False
        else:
            print(str(rule))
        current_collection = self.applydatagridChangesToCollection(dataGridData)
        current_collection = self.updateDataGridValuesToCollection(dataGridData,current_collection)
        master_collection = self.get_master_collection()
        updated_collection = self.updateDataGridValuesToCollection(dataGridData,master_collection)
        index_list,value_list = self.values_to_set_as_per_the_rule(rule,"Enable")
        self.set_condition_parameter_collection = None
        collection = self.SetVar(index_list,value_list,updated_collection)
        self.set_sub_collection(collection)
        parameter_collection = self.applyVisibility(collection)
        parameter_collection = self.updateDataGridValuesToCollection(dataGridData,parameter_collection)
        parameter_collection = self.SetVar(index_list,value_list,parameter_collection) ##### CHECK HERE
        return index_list,value_list,current_collection,parameter_collection
    
    def disable_parameter(self,groupName,parameterName,dataGridData,groupVisibility):
        """
        Disable a parameter according to the input.
        :param groupName: Input groupName
        :param parameterName: Input parameter name.
        :param dataGridData: DataGrid collection.
        :param groupVisibility: Input of whether group visibility is checked.
        :return: Set of values to be set in KoolProg to disable the provided parameter.
        
        
        """
        if groupVisibility!=None:
            if not self.check_if_group_is_present_in_dataGrid(groupName,dataGridData):
                return True,True,True,True
                
        else:
            if not self.check_if_parameter_is_present_in_dataGrid(groupName,parameterName,dataGridData):
                return True,True,True,True
        
        if groupVisibility!=None:
            visibilityIndex = self.get_group_info_from_collection(groupName,"GroupVisibilityIdx")
        else:
            visibilityIndex = self.get_parameter_info_from_collection(groupName,parameterName,"VisibilityIdx")
        print(str(visibilityIndex))
        
        
        rule = self.fetch_the_rule_for_given_ruleID(visibilityIndex)
        if rule == None:
            return False,False,False,False
        else:
            print(str(rule))
        current_collection = self.applydatagridChangesToCollection(dataGridData)
        current_collection = self.updateDataGridValuesToCollection(dataGridData,current_collection)
        master_collection = self.get_master_collection()
        updated_collection = self.updateDataGridValuesToCollection(dataGridData,master_collection)
        index_list,value_list = self.values_to_set_as_per_the_rule(rule,"Disable")
        if len(value_list) == 0 : 
            return False,False,False,False
        self.set_condition_parameter_collection = None
        collection = self.SetVar(index_list,value_list,updated_collection)
        self.set_sub_collection(collection)
        parameter_collection = self.applyVisibility(collection)
        parameter_collection = self.updateDataGridValuesToCollection(dataGridData,parameter_collection)
        parameter_collection = self.SetVar(index_list,value_list,parameter_collection)
        return index_list,value_list,current_collection,parameter_collection
    
    def values_to_set_as_per_the_rule(self,rule,criteria = "Enable"):
        """
        Return Values to set as per the rule in visib.js.
        :param rule: Rule provided.
        :param criteria: Enable or Disble input.
        :return: Values to set as per the rule in visib.js.
        
        """
        regex=re.compile('GetVar\((\d+)\)')
        index_list = re.findall(regex,rule)
        
        string = rule.replace('>', "gt").replace("<","lt").replace("==","eq").replace("!=","neq")
        regex1 = re.compile('(\d+)')
        list2=re.findall(regex1,rule)
        
        reg = re.compile(r"(gt|lt|eq|neq)")
        operation_list = re.findall(reg,string)
        
        value_list = []
        for i,item in enumerate(list2):
            if i%2 != 0:
                value_list.append(item)
                
        index_list,value_list = self.get_values_that_match_criteria_of_rule(index_list,operation_list,value_list,criteria)
        return index_list, value_list
    
    def get_values_that_match_criteria_of_rule(self,index_list,operation_list,value_list,criteria):
        """
        Return Values to set as per the rule in visib.js.
        :param rule: Rule provided.
        :param criteria: Enable or Disble input.
        :return: Values to set as per the rule.
        
        """
        new_index_list = []
        new_value_list = []
        for i in range(0,len(index_list)):
            collection = self.get_master_collection()
            for listItem in (collection):
                parameter_found = False
                for _,parameterList in listItem.items():
                        for parameterDict in parameterList:
                            if parameterDict["Idx"] == int(index_list[i]):
                                parameter_found = True
                                presence_in_new_index_list = False
                                if index_list[i] in new_index_list:
                                    presence_in_new_index_list = True
                                if presence_in_new_index_list == False:
                                    new_index_list.append(index_list[i])
                                
                                if presence_in_new_index_list == False:
                                    if parameterDict["DataType"] == "Enum":
                                        value_provided = int(value_list[i])
                                        list_of_values = []
                                        for enumValue in parameterDict["EnumValue"]:
                                            if operation_list[i] == 'gt' and enumValue > value_provided and criteria == "Enable":
                                                list_of_values.append(enumValue)
                                            if operation_list[i] == 'gt' and enumValue < value_provided and criteria == "Disable":
                                                list_of_values.append(enumValue)
                                            if operation_list[i] == 'lt' and enumValue < value_provided and criteria == "Enable":
                                                list_of_values.append(enumValue)
                                            if operation_list[i] == 'lt' and enumValue > value_provided and criteria == "Disable":
                                                list_of_values.append(enumValue)
                                            if operation_list[i] == 'eq' and enumValue == value_provided and criteria == "Enable":
                                                list_of_values.append(enumValue)
                                            if operation_list[i] == 'eq' and enumValue != value_provided and criteria == "Disable":
                                                list_of_values.append(enumValue)
                                            if operation_list[i] == 'neq' and enumValue != value_provided and criteria == "Enable":
                                                list_of_values.append(enumValue)
                                            if operation_list[i] == 'neq' and enumValue == value_provided and criteria == "Disable":
                                                list_of_values.append(enumValue)
                                        new_value_list.append(list_of_values)
                                        
                                    if parameterDict["DataType"] == "Float":
                                        value_provided = int(float(value_list[i]))
                                        list_of_values = []
                                        for floatValue in range(parameterDict["Min"],parameterDict["Max"]):
                                            floatValue = int(float(floatValue))
                                            if operation_list[i] == 'gt' and floatValue > value_provided and criteria == "Enable":
                                                list_of_values.append(floatValue)
                                            if operation_list[i] == 'gt' and floatValue < value_provided and criteria == "Disable":
                                                list_of_values.append(floatValue)
                                            if operation_list[i] == 'lt' and floatValue < value_provided and criteria == "Enable":
                                                list_of_values.append(floatValue)
                                            if operation_list[i] == 'lt' and floatValue > value_provided and criteria == "Disable":
                                                list_of_values.append(floatValue)
                                            if operation_list[i] == 'eq' and floatValue == value_provided and criteria == "Enable":
                                                list_of_values.append(floatValue)
                                            if operation_list[i] == 'eq' and floatValue != value_provided and criteria == "Disable":
                                                list_of_values.append(floatValue)
                                            if operation_list[i] == 'neq' and floatValue != value_provided and criteria == "Enable":
                                                list_of_values.append(floatValue)
                                            if operation_list[i] == 'neq' and floatValue == value_provided and criteria == "Disable":
                                                list_of_values.append(floatValue)
                                        new_value_list.append(list_of_values) 
                                        
                                    if parameterDict["DataType"] == "Integer":
                                        value_provided = int(value_list[i])
                                        list_of_values = []
                                        for intValue in range(parameterDict["Min"],parameterDict["Max"]):
                                            if operation_list[i] == 'gt' and intValue > value_provided and criteria == "Enable":
                                                list_of_values.append(intValue)
                                            if operation_list[i] == 'gt' and intValue < value_provided and criteria == "Disable":
                                                list_of_values.append(intValue)
                                            if operation_list[i] == 'lt' and intValue < value_provided and criteria == "Enable":
                                                list_of_values.append(intValue)
                                            if operation_list[i] == 'lt' and intValue > value_provided and criteria == "Disable":
                                                list_of_values.append(intValue)
                                            if operation_list[i] == 'eq' and intValue == value_provided and criteria == "Enable":
                                                list_of_values.append(intValue)
                                            if operation_list[i] == 'eq' and intValue != value_provided and criteria == "Disable":
                                                list_of_values.append(intValue)
                                            if operation_list[i] == 'neq' and intValue != value_provided and criteria == "Enable":
                                                list_of_values.append(intValue)
                                            if operation_list[i] == 'neq' and intValue == value_provided and criteria == "Disable":
                                                list_of_values.append(intValue)
                                        new_value_list.append(list_of_values)     
                                else:
                                    if parameterDict["DataType"] == "Enum":
                                        value_provided = int(value_list[i])
                                        new_index = max(idx for idx, val in enumerate(new_index_list) if val == index_list[i]) 
                                        intermediate_value_list = new_value_list[new_index]
                                        list_of_values = []
                                        if len(intermediate_value_list) == 0:
                                            intermediate_value_list = parameterDict["EnumValue"]
                                        for enumValue in intermediate_value_list:
                                            if operation_list[i] == 'gt' and enumValue > value_provided and criteria == "Enable":
                                                list_of_values.append(enumValue)
                                            if operation_list[i] == 'gt' and enumValue < value_provided and criteria == "Disable":
                                                list_of_values.append(enumValue)
                                            if operation_list[i] == 'lt' and enumValue < value_provided and criteria == "Enable":
                                                list_of_values.append(enumValue)
                                            if operation_list[i] == 'lt' and enumValue > value_provided and criteria == "Disable":
                                                list_of_values.append(enumValue)
                                            if operation_list[i] == 'eq' and enumValue == value_provided and criteria == "Enable":
                                                list_of_values.append(enumValue)
                                            if operation_list[i] == 'eq' and enumValue != value_provided and criteria == "Disable":
                                                list_of_values.append(enumValue)
                                            if operation_list[i] == 'eq' and enumValue == value_provided and criteria == "Disable" and len(intermediate_value_list) == 1 and intermediate_value_list[0] == enumValue:
                                                temp_value = parameterDict["EnumValue"]
                                                for atempValue in temp_value:
                                                    if enumValue != atempValue:
                                                        list_of_values.append(atempValue)
                                                        
                                            if operation_list[i] == 'neq' and enumValue != value_provided and criteria == "Enable":
                                                list_of_values.append(enumValue)
                                            if operation_list[i] == 'neq' and enumValue == value_provided and criteria == "Disable":
                                                list_of_values.append(enumValue)
                                        if len(list_of_values) < 1 :
                                            if parameterDict["DataType"] == "Enum" and operation_list[i] == 'eq' and criteria == "Enable":
                                                list_of_values.append(value_provided)
                                            else:
                                                list_of_values = new_value_list[new_index]
                                            
                                        new_value_list.append(list_of_values)
                                        
                                    if parameterDict["DataType"] == "Float":
                                        value_provided = int(float(value_list[i]))
                                        new_index = new_index_list.index(index_list[i])
                                        intermediate_value_list = new_value_list[new_index]
                                        list_of_values = []
                                        for floatValue in intermediate_value_list:
                                            floatValue = int(float(floatValue))
                                            if operation_list[i] == 'gt' and floatValue > value_provided and criteria == "Enable":
                                                list_of_values.append(floatValue)
                                            if operation_list[i] == 'gt' and floatValue < value_provided and criteria == "Disable":
                                                list_of_values.append(floatValue)
                                            if operation_list[i] == 'lt' and floatValue < value_provided and criteria == "Enable":
                                                list_of_values.append(floatValue)
                                            if operation_list[i] == 'lt' and floatValue > value_provided and criteria == "Disable":
                                                list_of_values.append(floatValue)
                                            if operation_list[i] == 'eq' and floatValue == value_provided and criteria == "Enable":
                                                list_of_values.append(floatValue)
                                            if operation_list[i] == 'eq' and floatValue != value_provided and criteria == "Disable":
                                                list_of_values.append(floatValue)
                                            if operation_list[i] == 'neq' and floatValue != value_provided and criteria == "Enable":
                                                list_of_values.append(floatValue)
                                            if operation_list[i] == 'neq' and floatValue == value_provided and criteria == "Disable":
                                                list_of_values.append(floatValue)
                                        if len(list_of_values) < 1 :
                                            list_of_values = new_value_list[new_index]
                                            
                                        new_value_list.append(list_of_values)
                                        
                                    if parameterDict["DataType"] == "Integer":
                                        value_provided = int(value_list[i])
                                        new_index = new_index_list.index(index_list[i])
                                        intermediate_value_list = new_value_list[new_index]
                                        list_of_values = []
                                        for intValue in intermediate_value_list:
                                            if operation_list[i] == 'gt' and intValue > value_provided and criteria == "Enable":
                                                list_of_values.append(intValue)
                                            if operation_list[i] == 'gt' and intValue < value_provided and criteria == "Disable":
                                                list_of_values.append(intValue)
                                            if operation_list[i] == 'lt' and intValue < value_provided and criteria == "Enable":
                                                list_of_values.append(intValue)
                                            if operation_list[i] == 'lt' and intValue > value_provided and criteria == "Disable":
                                                list_of_values.append(intValue)
                                            if operation_list[i] == 'eq' and intValue == value_provided and criteria == "Enable":
                                                list_of_values.append(intValue)
                                            if operation_list[i] == 'eq' and intValue != value_provided and criteria == "Disable":
                                                list_of_values.append(intValue)
                                            if operation_list[i] == 'neq' and intValue != value_provided and criteria == "Enable":
                                                list_of_values.append(intValue)
                                            if operation_list[i] == 'neq' and intValue == value_provided and criteria == "Disable":
                                                list_of_values.append(intValue)
                                        if len(list_of_values) < 1 :
                                            list_of_values = new_value_list[new_index]
                                        new_value_list.append(list_of_values) 
                                    new_index_list.append(index_list[i])
                        if parameter_found == True:
                            break       
                if parameter_found == True:
                    break
        
        selected_value_list = []
        new_value_removal_index = []
        for idx,i in enumerate(new_value_list):
            if i:
                selected_value_list.append(common.select_randomly_from_a_list(i))
            else:
                new_value_removal_index.append(idx)
        selected_index_list =[]
        for idx, i in enumerate(new_index_list):
            if idx in new_value_removal_index:
                continue
            else:
                selected_index_list.append(i)
                        
        return selected_index_list,selected_value_list           
       
                
        
        
     
    def fetch_the_rule_for_given_ruleID(self,visibilityIndex):  
        """
        Returns the rule for the provided Rule ID.
        :param visibilityIndex: Input rule ID.
        :return: Rule of the provided Rule ID.
        
        """
        JavaScriptRulesParserObject = JavaScriptRulesParser()
        Rules = JavaScriptRulesParserObject.parse_js_rules(self.getvisibJSFilePath())
        for aDictItem in Rules:
            for k,v in aDictItem.items():
                if k == str(visibilityIndex):
                    return v
        return None  
        
        
         
    def get_parameter_info_from_collection(self,groupName,parameterName,propertyName):
        """
        Returns parameter information for the parameter propertyName.
        :param groupName: Input group Name.
        :param parameterName: Input parameter Name.
        :param propertyName: Property name of the parameter.
        :return: parameter information for the parameter propertyName.
        
        """
        collection = self.get_master_collection()
        for listItem in (collection):
            for collection_groupName,parameterList in listItem.items():
                if collection_groupName == groupName:
                    for parameterDict in parameterList:
                        if parameterDict["Text"] == parameterName:
                            return parameterDict[propertyName]
                   
        return None
    
    def get_group_info_from_collection(self,groupName,propertyName):
        """
        Gets group information of the provided group.
        :param groupName: Input group name.
        :param propertyName: Input property name.
        :return: Group information for the provided input.
        
        """
        collection = self.get_master_collection()
        for listItem in (collection):
            for collection_groupName,parameterList in listItem.items():
                if collection_groupName == groupName or collection_groupName in groupName:
                    for parameterDict in parameterList:
                        groupNamesList = parameterDict["GroupName"].split(";")
                        input_index = groupNamesList.index(collection_groupName)
                        parameterDict[propertyName] = str(parameterDict[propertyName])
                        input_property_list = parameterDict[propertyName].split(";")
                        return input_property_list[input_index]
                   
        return None
    
     
        
    def check_if_parameter_is_present_in_dataGrid(self,groupName,parameterName,dataGridData):
        """
        Returns True if the provided parameter is present in the provided collection.
        :param groupName: Input group name.
        :param parameterName: Input parameter name.
        :param dataGridData: Input dataGrid data.
        :return: True if parameter is present, False otherwise.
        
        """
        for aListItem in dataGridData:
            for dataGrid_groupName, parametersList in aListItem.items():
                if groupName == dataGrid_groupName:
                    for aParameterName in parametersList:
                        if aParameterName["ParameterName"] == parameterName:
                            return True
        return False
    
    def check_if_group_is_present_in_dataGrid(self,groupName,dataGridData):
        """
        Returns True if the provided groupname is present in the provided collection.
        :param groupName: Input group name.
        :param dataGridData: Input dataGrid data.
        :return: True if group is present, False otherwise.
        
        """
        for aListItem in dataGridData:
            for dataGrid_groupName, _ in aListItem.items():
                if groupName == dataGrid_groupName:
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
        for aListItem in dataGridData:
            for dataGrid_groupName, parametersList in aListItem.items():
                if groupName == dataGrid_groupName:
                    for aParameterName in parametersList:
                        if aParameterName["ParameterName"] == parameterName:
                            return aParameterName[property]
        return False
    
    def get_propertyValue_of_parameter_in_cdf(self,property,groupName,parameterName,collection):
        """
        Returns Value of the property for the parameter provided.
        :param property: Property Name
        :param groupName: Input group name.
        :param parameterName: Input parameter name.
        :param collection: Input collection data.
        :return: Value of the property for the parameter provided.
        
        """
        for aListItem in collection:
            for dataGrid_groupName, parametersList in aListItem.items():
                if groupName == dataGrid_groupName:
                    for aParameterName in parametersList:
                        if aParameterName["Text"] == parameterName:
                            return aParameterName[property]
        return False
    
    def check_if_group_is_present_in_dataGrid(self,groupName,dataGridData):
        """
        Returns True if the provided group is present in the provided collection.
        :param groupName: Input group name.
        :param dataGridData: Input dataGrid data.
        :return: True if group is present, False otherwise.
        
        """
        for aListItem in dataGridData:
            for dataGrid_groupName, parametersList in aListItem.items():
                if groupName == dataGrid_groupName:
                    return True
        return False
    
    
    def quickSettingForDebugging(self):
        """
        Use this while debugging while using "parse_quicksetting_parameters"
        
        """
        filePath = self.getQuickSettingFilePath()
        JavaScriptRulesParserObject = JavaScriptRulesParser()
        quickSettingsRules = JavaScriptRulesParserObject.parse_quickSetting_js(filePath)
        test.log(str(quickSettingsRules))
        
        
    
    def parse_quicksetting_parameters(self,dataGrid_data = None,quick_setting_data = None):
        """
        Parses quick setting rules and returns the dataGrid collection and quick setting collection.
        :param dataGrid_data: DataGrid data
        :param quick_setting_data: Quick setting parameter data.
        :return: DataGrid collection and Quick Setting collection.
        
        """
#         if quick_setting_data !=None:
#             dataGrid_data = self.update_quickSettingData_to_dataGrid(dataGrid_data,quick_setting_data)
        data_quickSetting = None
        if dataGrid_data !=None:
            self.applydatagridChangesToCollection(dataGrid_data)
            collection = self.get_sub_collection()
        
        elif quick_setting_data !=None:
            data_quickSetting = copy.deepcopy(quick_setting_data)
            collection = self.update_collection_value_in_master_collection(quick_setting_data)
        
        else:
            collection = None
        
        quick_setting_group = self.get_quick_setting_group()

        ###########Comment this while debugging ###################
        
        filePath = self.getQuickSettingFilePath()
        JavaScriptRulesParserObject = JavaScriptRulesParser()
        quickSettingsRules = JavaScriptRulesParserObject.parse_quickSetting_js(filePath)
        
        ###########Comment this while debugging ###################
        
                    ###Use for debugging#####
        
        
        #quickSettingsRules = AKCC55_Config.dv


                    ###Use for debugging#####
                    
        test.log(str(quickSettingsRules))
        parameter_collection = self.applyQuickSettingRules(quick_setting_group,quickSettingsRules,collection)
        if dataGrid_data !=None:
            parameter_collection = self.updateDataGridValuesToCollection(dataGrid_data,parameter_collection)
        if data_quickSetting !=None:
            updated_parameter_collection = self.update_the_value_in_collection(data_quickSetting,parameter_collection)
            self.set_sub_collection(updated_parameter_collection)
            vis_parameter_collection = self.applyVisibility(collection)
            parameter_collection = self.transfer_values_to_the_collection(updated_parameter_collection,vis_parameter_collection)
        quick_setting_group_collection = self.get_quick_setting_group(parameter_collection)
        dataGrid_collection = self.removeUnwantedGroups(parameter_collection)
        return quick_setting_group_collection,dataGrid_collection
    
    def update_the_value_in_collection(self,data_quickSetting,parameter_collection):
        """
        Update quick setting values to collection.
        :param data_quickSetting: Quick setting data.
        :param parameter_collection: Parameter collection.
        :return: Updated parameter collection.
        
        """
        for aListItem in data_quickSetting:
            for aGroupName, parametersList in aListItem.items():
                for index,anItem in enumerate(parameter_collection):
                    for aKeyGroupName , keyParametersList in anItem.items():
                        if aGroupName == aKeyGroupName:
                            for aParameterInfo in parametersList:
                                for indx,aKeyParameterInfo in enumerate(keyParametersList):
                                    if aKeyParameterInfo["Text"] == aParameterInfo["Text"]:
                                        parameter_collection[index][aKeyGroupName][indx]["Value"] = aParameterInfo["Value"]
                                        break
                                    
        return parameter_collection
                                        
            
    
#     def update_quickSettingData_to_dataGrid(self,dataGrid_data,quick_setting_data):
#         """
#         
#         """
#         for aQuickSettingDict in quick_setting_data:
#             for quickSettingParamName, _ in aQuickSettingDict.items():
#                 for grp_index,dataGridListItem in enumerate(dataGrid_data):
#                     for groupname,parameterList in dataGridListItem.items():
#                         for index,dataGridParamDict in enumerate(parameterList):
#                             if dataGridParamDict["ParameterName"] == quickSettingParamName:
#                                     dataGrid_data[grp_index][groupname][index]["Value"] = aQuickSettingDict[quickSettingParamName]["Value"]
#                                 
#         return dataGrid_data
                    
                    

    
    def updateDataGridValuesToCollection(self,dataGrid_data,collection):
        """
        Updates the values of dataGrid in the collection specified.
        :param dataGrid_data: DataGrid collection
        :param collection: Cdf collection details.
        :return: Updated cdf collection data.
        
        """
        for indexTrack,listItem in enumerate(collection):
            for k,v in listItem.items():
                group_found = False
                for dataGridListItem in (dataGrid_data):
                    for groupname,parameterList in dataGridListItem.items():
                        if k == groupname:
                            group_found = True
                            
                            for paramIndexTrack,aParameterDict in enumerate(v):
                                parameterName = aParameterDict["Text"]
                                for dataGridParamDict in parameterList:
                                    if parameterName == dataGridParamDict["ParameterName"]:
                                        value = dataGridParamDict["Value"]
                                        if aParameterDict["DataType"] == "Enum":
                                            try:
                                                value = int(aParameterDict["EnumValue"][aParameterDict["EnumText"].index(value)])
                                            except:
                                                print(str(value))
                                        if aParameterDict["DataType"] == "Float":
                                            value = int(float(dataGridParamDict["Value"]))
                                        collection[indexTrack][k][paramIndexTrack]["Value"] = value
                                            
                            
#                             for paramIndexTrack,aParameterDict in enumerate(parameterList):
#                                 parameterName = aParameterDict["ParameterName"]
#                                 if parameterName == "Defrost stop method" or parameterName =="Main switch" or parameterName == "DO2 Configuration":
#                                     print("Hi")
#                                 for cdfParameterDict in v:
#                                     if cdfParameterDict["Text"] == parameterName:
#                                         parameter_collection[indexTrack][k][paramIndexTrack]["Value"] = aParameterDict["Value"]
#                                         if cdfParameterDict["DataType"] == "Enum":
#                                             parameter_collection[indexTrack][k][paramIndexTrack]["Value"] = int(cdfParameterDict["EnumValue"][cdfParameterDict["EnumText"].index(parameter_collection[indexTrack][k][paramIndexTrack]["Value"])])
#                                        
                        
                        if group_found == True:
                            break      
                    if group_found == True:
                        break
                if group_found == True:
                        break
        
        return collection
        
    def applyQuickSettingRules(self,quick_setting_group,quickSettingsRules,collection=None):
        """
        
        Applies quick settting rules alongwith visibility and returns the updated collection.
        :param quick_setting_group: Quick setting group data
        :param quickSettingsRules: Rules available in quickSettings javascript file.
        :return: Updated collection after applying quick setting and visibility rules.
        
        """
        if collection == None:
            collection = self.get_master_collection()
        test.log(str(quickSettingsRules))
        parameter_with_value = []
        self.set_sub_collection(collection)
        for aListItem in quickSettingsRules:
            for key_index,_ in aListItem.items():
                value = self.GetVar(int(key_index),collection)
                aDict = {int(key_index):value}
                parameter_with_value.append(aDict)
        test.log(str(parameter_with_value))
        updated_collection = self.set_the_quickSettings_setVar_values(parameter_with_value,quickSettingsRules,collection)
        self.set_sub_collection(updated_collection)
        parameter_collection = self.applyVisibility(collection)
        self.transfer_values_to_the_collection(collection,parameter_collection)
        return parameter_collection  
    
    def transfer_values_to_the_collection(self,source_collection,target_collection):
        """
        Transfers values from one collection to the other.
        :param source_collection: Source collection.
        :param target_collection: Target collection.
        :return: Updated target collection.       
        """
        values_dict = {}
        for aListItem in source_collection:
            for aGroupName, parametersList in aListItem.items():
                parameterInfo = {}
                for aParameterInfo in parametersList:
                    aDict = {aParameterInfo["Text"] : aParameterInfo["Value"]}
                    parameterInfo.update(aDict)
                values_dict.update({aGroupName:parameterInfo})
        
        for index,aListItem in enumerate(target_collection):
            for aGroupName, parametersList in aListItem.items():
                for paramIndx,aParameterInfo in enumerate(parametersList):
                    target_collection[index][aGroupName][paramIndx]["Value"] = values_dict[aGroupName][aParameterInfo["Text"]]
                
                    
        return target_collection

    def set_the_quickSettings_setVar_values(self,parameter_with_value,quickSettingsRules,collection):
        """
        Sets the value in collection as per the rules in quick settings file.
        :param parameter_with_value: Parameter data with its value.
        :param quickSettingsRules: quickSetting javascript file details.
        :param collection: parameter collection.
        :return: updated collection after setting the values.
        
        """
        self.set_quick_setting_collection(collection)
        self.set_setVar_status("SAME_COLLECTION")
        for aListItem in parameter_with_value:
            found = False
            for key_index, key_value in aListItem.items():
                for rulesListItem in quickSettingsRules:
                    for key, valuesList in rulesListItem.items():
                        if str(key) == str(key_index):
                            for valuesListItemDict in valuesList:
                                for dictKey,dictValueList in valuesListItemDict.items():
                                    if str(dictKey) == str(key_value):
                                        test.log(str(key_index))
                                        test.log(str(dictValueList))
                                        for aListItemToSet in dictValueList:
                                            result=aListItemToSet.replace('&&', 'and').replace('||', ' or ').replace('!=', 'is not ').replace('SetVar','self.SetVar')
                                            eval(result)
                                        found = True
                                        break
                                if found == True:
                                    break
                            if found == True:
                                break       
                    if found == True:
                        break
                if found == True:
                    break
        self.set_setVar_status(None)
        updated_value_collection = self.get_quick_setting_collection()
        return updated_value_collection
        
    def set_setVar_status(self,status):
        """
        Sets the setVar status.
        :param status: Status of setVar.
        
        """
        self.status_of_setVar = status
        
    def get_setVar_status(self):
        """
        Gets the setVar status.
        :return: SetVar status
        
        """
        return self.status_of_setVar   
        
    def set_quick_setting_collection(self,collection):
        """
        Sets the quick setting collection.
        :param collection: QuickSetting data.
        
        """
        self.quick_setting_collection =  collection
        
    def get_quick_setting_collection(self):
        """
        Gets the quick setting collection.
        :return: QuickSetting data.
        
        """
        return self.quick_setting_collection   
        
    def get_quick_setting_group(self,collection = None):
        """
        Returns quick setting group data from the collection provided.
        :param collection: Input parameter collection.
        :return: Quick setting group data from the collection
        
        """
        if collection == None:
            collection = self.get_master_collection()
        quick_setting_group = AKCC55_Config.quick_setting_group[self.language]
        new_collection = []
        group_found = False
        for listItem in (collection):
            for groupName,parameterList in listItem.items():
                if groupName == quick_setting_group:
                    aDict = {groupName:parameterList}
                    new_collection.append(aDict)
                    group_found = True
                    break
            if group_found == True:
                break
                    
        return new_collection
    
    
    def SetVar(self,index_list,value_list,parameter_collection=None):
        """
        Sets the value of the provided index in the collection specified.
        :param index_list: parameter index list.
        :param value_list: parameter value list.
        :return: Boolean if succeeds incase of "SAME COLLECTION" or updated collection incase of one time usage.
        
        """

            

        if parameter_collection == None:
            if self.quick_setting_collection != None:
                collection = self.get_quick_setting_collection()
            else:
                collection = self.get_master_collection()
        else:
            collection = parameter_collection
    
        new_collection = []
        for listItem in (collection):
            for groupName,parameterList in listItem.items():
                param_list = []
                for parameterDict in parameterList:
                    if isinstance(index_list, list):
                        if str(parameterDict["Idx"]) in index_list:
                            index_of_value = index_list.index(str(parameterDict["Idx"]))
                            parameterDict["Value"] = value_list[index_of_value]
                            param_list.append(parameterDict)
                            continue
                    else:
                        if str(parameterDict["Idx"]) == str(index_list):
                            parameterDict["Value"] = value_list
                            param_list.append(parameterDict)
                            continue
                        
                    param_list.append(parameterDict)
                if len(param_list) >0:
                    aDict = {groupName:param_list}
                    new_collection.append(aDict)
        
        if self.get_setVar_status() !=None:
            self.set_quick_setting_collection(new_collection)
            return True
                     
        return new_collection
    
    def set_master_collection(self,parameter_collection):
        """
        Sets master collection.
        :param parameter_collection: Parameter collection.
        
        """
        self.master_collection = copy.deepcopy(parameter_collection)
        
        
    def get_master_collection(self):
        """
        Gets the master collection.
        :return: Master collection.
        
        """
        collection = copy.deepcopy(self.master_collection)
        return collection
    
    def applydatagridChangesToCollection(self,dataGrid_data):
        """
        Updates the values of dataGrid data into cdf collection.
        :param dataGrid_data: Data of dataGrid.
        :return: Updated collection
        
        """
        collection = self.get_master_collection()
        for indexTrack,listItem in enumerate(collection):
            for k,v in listItem.items():
                group_found = False
                for dataGridListItem in (dataGrid_data):
                    for groupname,parameterList in dataGridListItem.items():
                        if k == groupname:
                            group_found = True
                            
                            for paramIndexTrack,aParameterDict in enumerate(v):
                                parameterName = aParameterDict["Text"]
                                for dataGridParamDict in parameterList:
                                    if parameterName == dataGridParamDict["ParameterName"]:
                                        value = dataGridParamDict["Value"]
                                        if aParameterDict["DataType"] == "Enum":
                                            value = int(aParameterDict["EnumValue"][aParameterDict["EnumText"].index(value)])
                                        if aParameterDict["DataType"] == "Float":
                                            value = int(float(dataGridParamDict["Value"]))
                                        collection[indexTrack][k][paramIndexTrack]["Value"] = value
                                            
                            
#                             for paramIndexTrack,aParameterDict in enumerate(parameterList):
#                                 parameterName = aParameterDict["ParameterName"]
#                                 if parameterName == "Defrost stop method" or parameterName =="Main switch" or parameterName == "DO2 Configuration":
#                                     print("Hi")
#                                 for cdfParameterDict in v:
#                                     if cdfParameterDict["Text"] == parameterName:
#                                         parameter_collection[indexTrack][k][paramIndexTrack]["Value"] = aParameterDict["Value"]
#                                         if cdfParameterDict["DataType"] == "Enum":
#                                             parameter_collection[indexTrack][k][paramIndexTrack]["Value"] = int(cdfParameterDict["EnumValue"][cdfParameterDict["EnumText"].index(parameter_collection[indexTrack][k][paramIndexTrack]["Value"])])
#                                        
                        
                        if group_found == True:
                            break      
                    if group_found == True:
                        break
                if group_found == True:
                        break
        self.set_sub_collection(collection)
        parameter_collection = self.applyVisibility(collection)
        return parameter_collection  
    
    
#         new_collection = []
#         for listItem in (collection):
#             for groupName,parameterList in listItem.items():
#                 param_list = []
#                 for parameterDict in parameterList:
#                     if parameterDict[propertyName] == propertyValue:
#                         param_list.append(parameterDict)
#                 if len(param_list) >0:
#                     aDict = {groupName:param_list}
#                     new_collection.append(aDict)
#                     
#         return new_collection  
    
    def set_sub_collection(self,parameter_collection):
        """
        Sets the collection value for further processing.
        :param parameter_collection: Parameter collection.
        
        """
        self.set_condition_parameter_collection = parameter_collection   
        
    def get_sub_collection(self):
        """
        Sets the collection value for further processing.
        :param parameter_collection: Parameter collection.
        
        """
        return self.set_condition_parameter_collection
      
      
    def mapEnumValueForText(self,collection):
        """
        Updates the Enum Value with respect to the Enum text in the collection.
        :param collection: Parameter collection.
        :return: Updated parameter collection.
        
        """
        new_collection = []
        for listItem in (collection):
            for groupName,parameterList in listItem.items():
                param_list = []
                for parameterDict in parameterList:
                    try:
                        if parameterDict["Text"] == "Night condition":
                            print("Hii")
                        if parameterDict["DataType"] == "Enum":
                            parameterDict["Value"] = parameterDict["EnumValue"][parameterDict["EnumText"].index(parameterDict["Value"])]
                    except:
                        print("PROBLEM!!!")
                    param_list.append(parameterDict)
                if len(param_list) >0:
                    aDict = {groupName:param_list}
                    new_collection.append(aDict)
                    
        return new_collection  
        
        
     
    def get_parameter_collection_after_removing_the_input(self,propertyName,propertyValue,collection):
        """
        Filter the parameter collection based on the input.
        :param propertyName: Property name to be filtered.
        :param propertyValue: Property value to be filtered.
        :param collection: Parameter collection.
        :return: Filtered collection based on the input.
        
        """
        new_collection = []
        for listItem in (collection):
            for groupName,parameterList in listItem.items():
                param_list = []
                for parameterDict in parameterList:
                    if parameterDict[propertyName] != propertyValue:
                        param_list.append(parameterDict)
                if len(param_list) >0:
                    aDict = {groupName:param_list}
                    new_collection.append(aDict)
                    
        return new_collection   
      
    def removeUnwantedGroups(self,parameter_collection,remove_groups=None):
        """
        Removes unwanted groups from parameter collection.
        :param parameter_collection: Parameter details.
        :param remove_groups: List of group names to be removed.
        :return: Parameter collection after removing unwanted groups.
        
        """
        new_collection = []
        if remove_groups == None:
            remove_groups = AKCC55_Config.unwanted_groups
        for listItem in (parameter_collection):
            for groupName,parameterList in listItem.items():
                if groupName in remove_groups:
                    break
                aDict = {groupName:parameterList}
                new_collection.append(aDict)
                    
        return new_collection  
          
    def applyVisibility(self,parameter_collection):
        """
        Apply Visibility rules to the parameter collection.
        :param parameter_collection: Parameter details.
        :return: Parameter collection after applying visibility.
        
        """
        JavaScriptRulesParserObject = JavaScriptRulesParser()
        Rules = JavaScriptRulesParserObject.parse_js_rules(self.getvisibJSFilePath())
#         dependent_parameters = self.getDependentParametersList(self.getvisibJSFilePath())
#         dependent_parameter_values = self.get_parameter_values_for_index(dependent_parameters,parameter_collection)
#         test.log(str(dependent_parameter_values))
        test.log(str(Rules))
        visible_index_list = self.getVisibleIndex(Rules,parameter_collection)
        test.log(str(visible_index_list))
        parameter_collection = self.get_visible_parameter_collection(visible_index_list,parameter_collection)
        return parameter_collection
    
    def getGroupName_and_parameterName_for_provided_index_from_collection(self,input_index):
        """
        Get GroupName and Parametername For provided index from collection.
        :param input_index: Input index provided.
        :return: Group Name List and Parameter Name.
        
        """
        master_collection = self.get_master_collection()
        
        GroupList = []
        
        for amasterList in master_collection:
            for masterGroupName, masterParameterList in amasterList.items():
                for aMasterParameter in masterParameterList:
                    if aMasterParameter["Idx"] == int(input_index):
                        parameterName = aMasterParameter["Text"]
                        groupNamesList = aMasterParameter["GroupName"].split(";")
                        index_of_groupName = groupNamesList.index(masterGroupName)
                        subgroupNamesList = aMasterParameter["SubGroupName"].split(";")
                        GroupName_text = subgroupNamesList[index_of_groupName]
                        GroupList.append(GroupName_text)
        return GroupList,parameterName
    
    def get_visible_parameter_collection(self,visible_index_list,parameter_collection):
        """
        Get visibile parameter collection.
        :param visible_index_list: Visible index List.
        :param parameter_collection: Parameter details.
        :return: Visible parameter collection.
        
        """
        parameter_collection = self.master_collection
        test.log(str(visible_index_list))
        new_collection = []
        for listItem in (parameter_collection):
            for groupName,parameterList in listItem.items():
                param_list = []
                for parameterDict in parameterList:
                    hidden = False
                    grpNameList = str(parameterDict["GroupName"]).split(";")
                    indexOfGrp = grpNameList.index(groupName)
                    GroupVisibilityIdxList = str(parameterDict["GroupVisibilityIdx"]).split(";")
                    GroupVisibilityIdx = GroupVisibilityIdxList[indexOfGrp]
                    if (GroupVisibilityIdx) not in visible_index_list:
                        break
                    SubGroupVisibilityIdxList = str(parameterDict["SubGroupVisibilityIdx"]).split(";")
                    SubGroupVisibilityIdx = SubGroupVisibilityIdxList[indexOfGrp]
                    subGroupsVisibIndexList = SubGroupVisibilityIdx.split("|")
                    for aSubGrpIndex in subGroupsVisibIndexList:
                        if aSubGrpIndex not in visible_index_list:
                            hidden = True
                    if hidden == True:
                        continue
                    if str(parameterDict["VisibilityIdx"]) in visible_index_list:
                        param_list.append(parameterDict)
                if len(param_list) >0:
                    aDict = {groupName:param_list}
                    new_collection.append(aDict)
                    
        #new_collection = self._get_parameter_collection_for_filter("ItemType","R",new_collection)         
        return new_collection
        
    
    def getVisibleIndex(self,Rules,parameter_collection):  
        """
        Gets visible Index List after executing the rules.
        :param Rules: Input rules.
        :param parameter_collection: Parameter details.
        :return: Visible index List after executing the rules.
        
        """
        visible_ruleID = []
        for listItem in Rules:
            for index, aRule in listItem.items():
                if self.check_condition(aRule,parameter_collection):
                    visible_ruleID.append(index)
        
        return visible_ruleID
            
    def check_condition(self,aRule,parameter_collection):
        """
        Check condition of the input rule.
        :param aRule: Input rule.
        :param parameter_collection: Parameter details.
        :return: True if condition passes, false otherwise.
        
        """
#         if aRule == "((GetVar(153) != 4 && GetVar(153) != 9) || ((GetVar(153) == 4 || GetVar(153) == 9) && (GetVar(154) == 1 || GetVar(155) == 1 || GetVar(156) == 1))) && GetVar(62) > 0":
#             print("here")
#         try:           
        result=aRule.replace('&&', 'and').replace('||', ' or ').replace('!=', 'is not ').replace('GetVar','self.GetVar')
        boolean_value = eval(result)
#         except:
#             print("HIII")
        return boolean_value
        
        
         
        
#     def get_parameter_values_for_index(self,index_list, parameter_collection):
#         """
#         Gets parameter values for the index list.
#         :param index_list: List of indexes.
#         :param parameter_collection: Parameter details.
#         :return: Returns parameter values of index provided.
#         
#         """
#          
#         values_list = []
#         for anIndex in index_list:
#             value = self.GetVar(int(anIndex),parameter_collection)
#             aDict = {anIndex:value}
#             values_list.append(aDict)
#         return values_list
    
    def get_parameter_collection(self):
        """
        Gets the parameter collection.
        
        """
        return self.parameter_collection
        
    
    def GetVar(self,index,paramater_collection=None):
        """
        Gets Value for the index provided.
        :param index: Index of a parameter.
        :param parameter_collection: Parameter details.
        :return: Returns the value of the index provided.
        
        """
        if self.set_condition_parameter_collection != None:
            paramater_collection = self.set_condition_parameter_collection
        if paramater_collection == None:
            paramater_collection = self.get_parameter_collection()
        collection = self._get_parameter_collection_for_filter("Idx",index,paramater_collection)
        for listItem in collection:
            for _,v in listItem.items():
                for parameter in v:
                    return int(parameter["Value"])
            
    def _get_parameter_collection_for_filter(self,propertyName,propertyValue,collection):
        """
        Filter the parameter collection based on the input.
        :param propertyName: Property name to be filtered.
        :param propertyValue: Property value to be filtered.
        :param collection: Parameter collection.
        :return: Filtered collection based on the input.
        
        """
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
        
#     def getDependentParametersList(self,fileName_with_path):
#         """
#         Gets the dependent parameter list from visib.js.
#         :param fileName_with_path: Filename including path.
#         :return: Dependent parameters list.
#         
#         """
#         js = open(fileName_with_path, "r").readlines()
#         parameter_dependent_total_list=[]
#         for line in js:
#             regex=re.compile('GetVar\((\d+)\)')
#             list1=re.findall(regex,line)
#             if len(list1) is not 0:
#                 parameter_dependent_total_list.extend(list1)
#         parameter_dependent_list=[]
#         for i in parameter_dependent_total_list:
#             if i not in parameter_dependent_list:
#                 parameter_dependent_list.append(i)
#         return parameter_dependent_list
        
    def getvisibJSFilePath(self):
        """
        Fetches and returns the visib.js jso path.
        :return: visib.js path
        
        """
        return AKCC55_Config.visibJsPath.format(self.cdf_location)
    
    def getlanguageFilePath(self):
        """
        Fetches and returns the language jso path.
        :return: Language jso path
        
        """
        return self.lang_file.format(self.cdf_location)
    
    def getdeviceJsoFilePath(self):
        """
        Fetches and returns the Device.jso path.
        :return: Device.jso path
        
        """
        
        return AKCC55_Config.deviceJsoPath.format(self.cdf_location)
    
    def getQuickSettingFilePath(self):
        """
        Fetches and returns the quick settings js path.
        :return: quick settings js path.
        
        """
        
        return AKCC55_Config.quickSettingJSPath.format(self.cdf_location)
    
    def getlanguageHelpFilePath(self):
        """
        Fetches and returns the Help.jso path.
        :return: Help.jso path
        
        """
        return self.language_file.format(self.cdf_location)
    
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
           
        if variant_name == "AK-CC55 Compact" or  variant_name == "AK-CC55 Single Coil" or variant_name == "AK-CC55 Multi Coil":
            visibility_groups = list()
            for i, value in enumerate(self.csv_table["Visibility"]):
                if not value == '':
                    visibility_groups.append(i)
            readonly_value_list = list()
            for i, value in enumerate(self.csv_table["ReadOnly"]):
                if not (value == "0"):
                    readonly_value_list.append(i)
        
            filter = common.get_list_of_unique_both_elements_from_int_lists(visibility_groups,
                                                                            readonly_value_list)
            
            invisible_groups = list()
            for i, value in enumerate(self.csv_table["GroupName"]):
                if ("|Invisible|" in value) or ("|Miscellaneous|" in value) or ("|Advanced|" in value):
                    invisible_groups.append(i)
        
            filter = common.get_list_of_unique_both_elements_from_int_lists(filter,
                                                                            invisible_groups)


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
    

    
    def locate_and_unzip_the_CDF(self,controller_info_Dict):
        """
        Locates the CDF and unzips it and returns the path of the unzipped folder.
        :param controller_info_Dict: Details of the controller used for validation.
        :return: The path of unzipped Folder.
        
        """
        
        db_path = self.get_database_path()
        db_file_Name = controller_info_Dict["controllerCodeNo"] + "_" + controller_info_Dict["softwareVersion"]
        zipped_directory = db_path+"/"+db_file_Name + "_folder"
        
        if common.path_dir_exists(zipped_directory):
            common.delete_the_directory(zipped_directory)
            test.log("Deleted The Existing Folder")
        
        file_with_path = db_path +"/"+ db_file_Name+".cdf"
        if common.path_exists(file_with_path):
            test.log("File Is Present")
            common.make_dir_if_not_exists(zipped_directory)
            common.copy_file(file_with_path,zipped_directory)
            common.change_the_extension(zipped_directory + "/" + db_file_Name + ".cdf",'.zip')
            common.unzip_the_file(zipped_directory + "/" + db_file_Name + ".zip", zipped_directory + "/" + db_file_Name)
            test.log("Successfully unzipped the file")
            self.cdf_location = zipped_directory + "/" + db_file_Name
            return self.cdf_location
        return False
    
    def get_database_path(self):
        
        """
        Fetches and returns the Database Folder path.
        :return: The Database Folder Path.
        
        """
        
        return AKCC55_Config.database_folder_path
        
    def set_language_help_file(self,language=AKCC55_Config.default_language):
        """
        With respect to the input language, the corresponding language file name is stored.
        :param language: Input language selected.
        :return: True if succeeds.
       
        """
        self.language = language
        if self.language_file == None or self.language_file != AKCC55_Config.language_files[language]:
            self.language_file = AKCC55_Config.language_files[language]
            if self.language_file == "Not Available":
                self.language_file = AKCC55_Config.language_files[AKCC55_Config.default_language]
            return True
        
            
        
    def set_language_file(self,language=AKCC55_Config.default_language):
        """
        With respect to the input language, the corresponding language file name is stored.
        :param language: Input language selected.
        :return: True if succeeds.
       
        """
        self.language = language
        if self.lang_file == None or self.lang_file != AKCC55_Config.lang_files[language]:
            self.lang_file = AKCC55_Config.lang_files[language]
            if self.lang_file == "Not Available":
                self.lang_file = AKCC55_Config.lang_files[AKCC55_Config.default_language]
            return True
      
    def preference_window_select_random_baudrate_except_Auto_and_250K(self, list_canbaudrate_except_Auto_and_250K):
        """
        Select random baudrate from preference window except Auto and 250K.
        :param list_canbaudrate_except_Auto_and_250K: List of baudrates except Auto and 250K.
        :return: String of random CAN baudrate
        """
        random_canbaudrate = random.choice(list_canbaudrate_except_Auto_and_250K)
        return random_canbaudrate
    
    def database_details(self,databasefile):
        """
        return the selected controller variant database details.
        :param databasefile: Database file path
        :return:Database collection with all the details
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
    
    def getAlarmParamters(self,controller_info_Dict):
        """
        Get all the Alarm parameters details
        :param controller_info_Dict: Details of the controller used for validation.
        :return:Alarm collection with all the details
        """
        MappingCDFdetails = MappingCDFDetails()
        self.locate_and_unzip_the_CDF(controller_info_Dict)
        CDFcontentparser = CDFContentParser() 
        deviceJso = self.getdeviceJsoFilePath()
        deviceJsoObject = CDFcontentparser.parse_jso_with_dataModel(deviceJso,AKCC55_Config.deviceJsoDataModel)
        self.set_language_help_file()
        self.set_language_file()
        helpJso = self.getlanguageHelpFilePath()
        if common.path_exists(helpJso) == True:
            langHelpObject = CDFcontentparser.parse_jso_with_dataModel(helpJso,AKCC55_Config.languageDataModel)
            self.help = True
        alarmparameters = MappingCDFdetails.combine_deviceJSO_helpJSO(langHelpObject,deviceJsoObject.Alarms,self.help)
        langJso = self.getlanguageFilePath()
        if common.path_exists(helpJso) == True:
            langJsoObject = CDFcontentparser.parse_jso_with_dataModel(langJso,AKCC55_Config.languageDataModel)
            self.lang = True
        alarmparameters =  MappingCDFdetails.combine_deviceJSO_langJSO(langJsoObject,deviceJsoObject.Alarms,self.lang)
        parameter_collection = self.parseTheInputFile(controller_info_Dict)
        master_collection = self.get_master_collection()
        updatedAlarmparameterdetails = MappingCDFdetails.mapAlarmparameters(master_collection, alarmparameters)
        return updatedAlarmparameterdetails

                   
    def update_collection_value_in_master_collection(self,collection):
        """
        Update the collection value in master collection.
        :param collection: Parameter collection
        :return: Updated collection value
          
        """ 
        new_collection = []
        master_collection = self.get_master_collection()
        
        for amasterList in master_collection:
            for masterGroupName, masterParameterList in amasterList.items():
                aDict = {}
                aDict[masterGroupName] = []
                group_found = False
                for aListItem in collection:
                    for groupName,parameterList in aListItem.items():
                        if groupName == masterGroupName:
                            group_found = True
                            for aMasterParameter in masterParameterList:
                                for aParameter in parameterList:
                                    if aParameter["Text"] == aMasterParameter["Text"]:
                                        aMasterParameter["Value"] = aParameter["Value"]
                                        break
                                aDict[masterGroupName].append(aMasterParameter)
                            
                if group_found == False:
                    aDict[masterGroupName].extend(masterParameterList)
                new_collection.append(aDict)
                
        return new_collection


    def get_all_grpnames_from_cdf_in_treeView_format(self,controllerinfo_Dict):
        """
        Get all groupnames from CDF in the treeView format.
        :param controllerinfo_Dict: Controller information details.
        :return: CDF groupnames in treeView format.
        """
        parameter_collection = controllerinfo_Dict["Parameter_collection"]
        CDF_groupNames_list = []
        for param in parameter_collection:
            for k,v in param.items():
                group_name = k
                parameter_list = v
            groupName_in_treeView_format = self.get_grpName_in_treeView_format(parameter_list[0], group_name)
            CDF_groupNames_list.append(groupName_in_treeView_format)
        return CDF_groupNames_list
    
    def get_grpName_in_treeView_format(self, aParameterInfo, groupName):
        """
        Get the groupname in the treeview format.
        :param aParameterInfo: Parameter info
        :param groupName: Group name in CDF.
        :return: String of Group name in CDF format.
        """
        groupNameList = aParameterInfo["GroupName"].split(";")
        index_group = groupNameList.index(groupName)
        subGroupList = aParameterInfo["SubGroupName"].split(";")
        groupName_text = subGroupList[index_group]
        return groupName_text
    
    def fetch_userDefined_groupIndex(self, controllerDetails,UserDefinedGroupName):
        """
        Fetch the group index for the given groupname.
        :param controllerDetails: Controller information.
        :param UserDefinedGroupName: User defined group name.
        :return: Groupname index.
        """
        grpidx = AKCC55_Config.GroupIndexes[controllerDetails["controllerVariant"]][controllerDetails["softwareVersion"]][UserDefinedGroupName]
        return grpidx

    def get_alarm_generating_information(self,alarm_name):
        """
        Return alarm generating information for a specified alarm provided as input.
        :param alarm_name: Alarm provided.
        :return: Alarm generating information for a specified alarm provided as input.
        
        """
        alarms_generating_information = AKCC55_Config.alarm_Generating_Information
        required_alarm = alarms_generating_information[alarm_name]
        collection = self.get_master_collection()
        generating_info = []
        for anAlarmGeneratingInfo in required_alarm:
            for key, value in anAlarmGeneratingInfo.items():
                if key == "Unique_ID":
                    alarm_generating_info = self._get_parameter_collection_for_filter("UniqueID",int(value),collection)
                    continue
                aDict = {"parameterInfo":alarm_generating_info,"Value": value}
                generating_info.append(aDict)
                
        return generating_info 
    
    def get_alarm_degenerating_information(self,alarm_name):
        """
        Return alarm degenerating information for a specified alarm provided as input.
        :param alarm_name: Alarm provided.
        :return: Alarm degenerating information for a specified alarm provided as input.
        
        """
        alarms_generating_information = AKCC55_Config.alarm_deGenerating_Information
        required_alarm = alarms_generating_information[alarm_name]
        collection = self.get_master_collection()
        degenerating_info = []
        for anAlarmdeGeneratingInfo in required_alarm:
            for key, value in anAlarmdeGeneratingInfo.items():
                if key == "Unique_ID":
                    alarm_degenerating_info = self._get_parameter_collection_for_filter("UniqueID",int(value),collection)
                    continue
                aDict = {"parameterInfo":alarm_degenerating_info,"Value": value}
                degenerating_info.append(aDict)
                
        return degenerating_info
    
    def get_alarms_list(self):
        """
        Returns alarms list of AKCC.
        :return: Alarms List
        
        """
        return AKCC55_Config.alarms_available
    
    def get_readOutsList(self):
        """
        Get readOut List.
        :return: ReadOuts List.
        
        """
        readOuts = []
        readOutsMenuCodeList = AKCC55_Config.readoutList_menuCode_List
        collection = self.get_master_collection()
        for aMenuCode in readOutsMenuCodeList:
            parameterInfo_collection = self._get_parameter_collection_for_filter("Label",aMenuCode,collection)
            for aListItem in parameterInfo_collection:
                for _, parametersList in aListItem.items():
                    for aParameterInfo in parametersList:
                        readOuts.append(aParameterInfo["Text"])
                        break
                    break
                break
        return readOuts
    
    def get_alarm_details_from_inputDatabase(self,anAlarm,alarmsCollection):
        """
        Gets alarm details from inputDatase.
        :param anAlarm: Alarm input.
        :param alarmsCollection: Alarms Collection.
        :return: Details of the input alarm if succeeds, False otherwise.
        
        """  
        for aListItem in alarmsCollection:
            for _, parametersList in aListItem.items():
                for aParameterInfo in parametersList:
                    if aParameterInfo["Label"] == anAlarm:
                        return aParameterInfo
        return False
    
    def get_interLock_testData_from_collection(self,anAlarm,parameterCollection):
        """
        Get InterLock testData from Alarm Collection.
        :param anAlarm: Alarm name.
        :param parameterCollection: Input alarm parameter collection.
        :return: InterLock Test Data List.
        
        """
        found = False
        for aListItem in parameterCollection:
            for _, parametersList in aListItem.items():
                for aParameterInfo in parametersList:
                    if aParameterInfo["Label"] == anAlarm:
                        found = True
                        alarmInterlock_parameters = aParameterInfo["AlarmValuesItemIdx"]
                        break
                if found == True:
                    break
            if found == True:
                break
        interLock_parameterNames = []
        for anItem in alarmInterlock_parameters:
            for key, _ in anItem.items():
                if key == "AlarmParamterdetais" :
                    interLock_parameterNames.append(anItem[key]["Text"])
                    
        return interLock_parameterNames
    
    def _get_group_name_from_multi_level_group(self,groupName):
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
    
    def get_readouts_testData_from_readOutList_and_collection(self,anAlarm,readOutsList,parameterCollection):
        """
        Get readouts testData from readOuts List and Alarm Collection.
        :param anAlarm: Alarm name.
        :param readOutsList: ReadOuts List.
        :param parameterCollection: Input alarm parameter collection.
        :return: Readouts Test Data List.
        
        """
        found = False
        for aListItem in parameterCollection:
            for _, parametersList in aListItem.items():
                for aParameterInfo in parametersList:
                    if aParameterInfo["Label"] == anAlarm:
                        found = True
                        alarmInterlock_parameters = aParameterInfo["AlarmValuesItemIdx"]
                        break
                if found == True:
                    break
            if found == True:
                break
        interLock_parameterNames = []
        for anItem in alarmInterlock_parameters:
            for key, _ in anItem.items():
                if key == "AlarmParamterdetais" :
                    interLock_parameterNames.append(anItem[key]["Text"])
        testData = []
        for aParameter in interLock_parameterNames:
            if aParameter in readOutsList:
                testData.append(aParameter)
                
        return testData
    
    def select_a_group_to_disable(self,parameter_collection,no_of_groups,parsed_dataGrid):
        """
        Selects a group to disable.
        :param parameter_collection: Input parameter collection.
        :param parsed_dataGrid: Parsed datagrid data.
        :param no_of_groups: No of groups to disable.
        
        """
        
        count = 0
        breakLoop = False
        disabling_group_info = []
        for aListItem in parameter_collection:
            for groupName, parameterInfo in aListItem.items():
                for aParameterInfo in parameterInfo:
                    groupNameList = aParameterInfo["GroupName"].split(";")
                    index_group = groupNameList.index(groupName)
                    subGroupList = aParameterInfo["SubGroupName"].split(";")
                    groupName_text = self._get_group_name_from_multi_level_group(subGroupList[index_group])
                    test.log("Group Name In LOOP is:")
                    test.log(str(groupName_text))
                    index_list,value_list,old_collection,collection = self.disable_parameter(groupName_text,None,parsed_dataGrid,"Yes")
                    test.log("Index list:")
                    test.log(str(index_list))
                    test.log("Value list:")
                    test.log(str(value_list))
                    if index_list:
                        count = count + 1
                        aDict = {"DataGrid_groupName": groupName_text,"cdf_groupName": groupName,"Index_list": index_list,"Value_List" : value_list,"Old_collection" : old_collection, "new_collection" : collection}
                        disabling_group_info.append(aDict)
                        if count == int(no_of_groups):
                            breakLoop = True
                    break    
                if breakLoop == True:
                    break
            if breakLoop == True:
                break
        return disabling_group_info

    def IOParametersdetails(self,IOParamters, parameter_collection):
        """
        Get the Input/Output parameters along with group they belongs
        :param IOParamters:IOConfig Parameters
        :param parameter_collection:parameter collection with parameter details.
        :return :IO parameters details
        """
        IOParametersdetial = {}
        parameterdetails = list()
        for i in range(len(IOParamters)):
            for item in IOParamters:
                groupname = self.getgroupnameIOparameter(item["PinName"])
                index = item['IOFunctionVarIdx']
                for label in  AKCC55_Config.IOlables:
                    if label in item["PinName"]:
                        j = i + 1
                        if j < len(IOParamters):
                            item1=IOParamters[j]
                            newgroupname = self.getgroupnameIOparameter(item1["PinName"])
                            parameter_detail = MappingCDFDetails.getindexdetails(self, parameter_collection, index)
                            i = i + 1
                            if  parameter_detail is not False:
                                parameter_detail["IOLabel"] = item["PinName"]
                                parameterdetails.append(parameter_detail)
                            if groupname != newgroupname:
                                IOParametersdetial[groupname] = parameterdetails
                                parameterdetails = list()
                                break
                        else:
                            parameter_detail = MappingCDFDetails.getindexdetails(self, parameter_collection, index)
                            parameter_detail["IOLabel"] = item["PinName"]
                            parameterdetails.append(parameter_detail)
                            IOParametersdetial[groupname] = parameterdetails
                            return IOParametersdetial
            



       
    def getgroupnameIOparameter(self, value):
        """
        Get the group name bases on the IOConfig Parameter label
        :param value:IOConfig parameter label value
        :return :Group name associated with IOConfig label
        """
        for key, val in AKCC55_Config.IOGroupNames.items(): 
            if key in value:
                return val


    def getIOManualparameters(self, controller_info_dict, parameter_collection, paramtervaluedetails):
        """
        Get the Manual Override parameters
        :param controller_info_dict: Details of the controller used for validation.
        :param paramtervaluedetails:Parameter and its value from the data grid
        :param parameter_collection:Parameter collection details
        :return :Manual Parameter details along with IO parameters
        """
        MappingCDFdetails = MappingCDFDetails()
        self.locate_and_unzip_the_CDF(controller_info_dict)
        CDFcontentparser = CDFContentParser() 
        deviceJso = self.getdeviceJsoFilePath()
        deviceJsoObject = CDFcontentparser.parse_jso_with_dataModel(deviceJso,AKCC55_Config.deviceJsoDataModel)
        VirtualIOparameters = deviceJsoObject.VirtualIO
        master_collection = self.get_master_collection()
        IOparameters = self.getIOParamters(controller_info_dict, parameter_collection)
        IOManualparameters = self.getManualparameterdetails(IOparameters,paramtervaluedetails, master_collection, VirtualIOparameters)
        return IOManualparameters

    def getManualparameterdetails(self, IOparameters, paramtervaluedetails, master_collection, VirtualIOparameters):
        """
        Get the IO Parameter value from the data grid
        :param IOparameters:IO parameter details
        :param paramtervaluedetails:Parameter details from the data grid
        :param master_collection:Master collection of parameters
        :param VirtualIOparameters: Virtual parameter collection
        :return :IO-Manual Parameters details
        """
        for key, values in IOparameters.items():
            for value in values:
                parametervalue = self.getIOparametervaluedetails(value, paramtervaluedetails, master_collection)
                if parametervalue is not False:
                    parameterdetails = self.getManualparameter(parametervalue, VirtualIOparameters, master_collection)
                    if parameterdetails is not False:
                        value['IOManualdetails'] = parameterdetails
        return IOparameters
    
    def getIOparametervaluedetails(self, parameter, paramtervaluedetails, master_collection):
        """
        Get the IO Parameter value from data grid details
        :param parameter:IO parameter
        :param paramtervaluedetails:parameter details from the data grid
        :param master_collection:Master collection of parameters
        :return :IO parameter value details
        """
        for parameters in paramtervaluedetails:
            for key ,value in parameters.items():
                if parameter['Text'] == key:
                    parameterdetails = MappingCDFDetails.getparamterdetails(self,master_collection, value)
                    if parameterdetails is not False:
                        return parameterdetails
                    else:
                        return False
        return False
                
    def getManualparameter(self, parameter, VirtualIOparameters, master_collection):
        """
        Get the Manual parameter details 
        :param parameter:IO parameter value details
        :param VirtualIOparameters: Virtual IO parameters details
        :param master_collection:Master collection of parameters
        :return: Manual Parameter detail with respective to IO Parameter
        """
        for item in VirtualIOparameters:
            if item['OverrideVarIdx'] != -1:
                if parameter['Idx'] == item['ParamIdx']:
                    parameterdetails = MappingCDFDetails.getindexdetails(self, master_collection, item['OverrideVarIdx'])
                    return parameterdetails   
        return False
       
    def getIOParamters(self, controller_info_Dict, parameter_collection):
        """
        Get the Input/OutPut Parameters.
        :param controller_info_Dict: Details of the controller used for validation.
        :return : Input/Output parameters along with group they belongs.
        """
        MappingCDFdetails = MappingCDFDetails()
        self.locate_and_unzip_the_CDF(controller_info_Dict)
        CDFcontentparser = CDFContentParser() 
        deviceJso = self.getdeviceJsoFilePath()
        deviceJsoObject = CDFcontentparser.parse_jso_with_dataModel(deviceJso,AKCC55_Config.deviceJsoDataModel)
        IOParamters = deviceJsoObject.IOConfig
        IO_Parameters_Details = self.IOParametersdetails(IOParamters, parameter_collection)
        return IO_Parameters_Details