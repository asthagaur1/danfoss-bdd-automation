from DataModel.AKCC_CDF_Parser import CDFFileParser,Language
database_folder_path = "C:/gitworkspace/KoolProg-SourceCode/KoolProg-Maintenance/DevopsAutomation/test_input_config/AKCC55"
deviceJsoPath = "{}/device.jso"
quickSettingJSPath = "{}/quicksettings.js"
visibJsPath = "{}/visib.js"
language_files = {"English (United Kingdom)":"{}/help-en-GB.jso","English (United States)":"{}/help-en-US.jso","Chinese (Simplified) Legacy":"{}/help-zh-CN.jso","Danish (Denmark)":"{}/help-da-DK.jso"}
default_language = "English (United Kingdom)"
lang_files = {"English (United Kingdom)":"{}/lang-en-GB.jso","English (United States)":"{}/lang-en-US.jso","Chinese (Simplified) Legacy":"{}/lang-zh-CN.jso","Danish (Denmark)":"{}//lang-da-DK.jso"}
deviceJsoDataModel = CDFFileParser
languageDataModel = Language
mapping_bool_datatype = "Boolean"
mapping_int_datatype = "Integer"
mapping_string_datatype = "String"
mapping_float_datatype = "Float"
mapping_enum_datatype = "Enum"
storageType_mapping = {
                       1:mapping_int_datatype,2:mapping_int_datatype,
                       3:mapping_int_datatype,4:mapping_int_datatype,
                       5:mapping_int_datatype,6:mapping_int_datatype,
                       7:mapping_float_datatype,8:mapping_float_datatype,
                       9:mapping_string_datatype,10:mapping_string_datatype,
                       11:mapping_string_datatype,12:mapping_int_datatype,
                       13:mapping_bool_datatype
                        }
unwanted_groups = ["Quick settings"]
quick_setting_group = {"Chinese (Simplified) Legacy":"Quick settings","NOT_AVAILABLE":"Quick settings","Danish (Denmark)":"Quick settings","English (United States)":"Quick settings", "English (United Kingdom)": "Quick settings" }
dv = [{'184': [{'1': ['SetVar(289, 1)', 'SetVar(75, 6)', 'SetVar(76, 9)', 'SetVar(77, 4)', 'SetVar(78, 7)', 'SetVar(79, 2)', 'SetVar(295, 30)', 'SetVar(296, 31)', 'SetVar(297, 32)', 'SetVar(298, 33)', 'SetVar(299, 34)', 'SetVar(300, 35)', 'SetVar(301, 0)']}, {'2': ['SetVar(289, 1)', 'SetVar(75, 5)', 'SetVar(76, 9)', 'SetVar(77, 4)', 'SetVar(78, 7)', 'SetVar(79, 2)', 'SetVar(295, 30)', 'SetVar(296, 31)', 'SetVar(297, 32)', 'SetVar(298, 33)', 'SetVar(299, 34)', 'SetVar(300, 35)', 'SetVar(301, 0)']}, {'3': ['SetVar(289, 1)', 'SetVar(75, 6)', 'SetVar(76, 9)', 'SetVar(77, 4)', 'SetVar(78, 5)', 'SetVar(79, 2)', 'SetVar(295, 30)', 'SetVar(296, 31)', 'SetVar(297, 32)', 'SetVar(298, 33)', 'SetVar(299, 34)', 'SetVar(300, 35)', 'SetVar(301, 0)']}, {'4': ['SetVar(289, 1)', 'SetVar(75, 6)', 'SetVar(76, 5)', 'SetVar(77, 4)', 'SetVar(78, 7)', 'SetVar(79, 2)', 'SetVar(295, 30)', 'SetVar(296, 31)', 'SetVar(297, 32)', 'SetVar(298, 33)', 'SetVar(299, 34)', 'SetVar(300, 35)', 'SetVar(301, 0)', 'SetVar(25, 1)']}, {'5': ['SetVar(289, 1)', 'SetVar(75, 13)', 'SetVar(76, 12)', 'SetVar(77, 14)', 'SetVar(78, 7)', 'SetVar(79, 2)', 'SetVar(295, 30)', 'SetVar(296, 31)', 'SetVar(297, 32)', 'SetVar(298, 33)', 'SetVar(299, 34)', 'SetVar(300, 35)', 'SetVar(25, 2)', 'SetVar(301, 0)']}, {'6': ['SetVar(289, 1)', 'SetVar(75, 6)', 'SetVar(76, 5)', 'SetVar(77, 4)', 'SetVar(78, 7)', 'SetVar(79, 2)', 'SetVar(295, 30)', 'SetVar(296, 31)', 'SetVar(297, 32)', 'SetVar(298, 33)', 'SetVar(299, 34)', 'SetVar(300, 36)', 'SetVar(301, 0)', 'SetVar(25, 1)']}, {'7': ['SetVar(289, 1)', 'SetVar(75, 6)', 'SetVar(76, 15)', 'SetVar(77, 4)', 'SetVar(78, 7)', 'SetVar(79, 2)', 'SetVar(295, 30)', 'SetVar(296, 31)', 'SetVar(297, 32)', 'SetVar(298, 33)', 'SetVar(299, 34)', 'SetVar(300, 36)', 'SetVar(301, 37)', 'SetVar(194, 0)', 'SetVar(25, 1)']}, {'8': ['SetVar(289, 1)', 'SetVar(75, 6)', 'SetVar(76, 16)', 'SetVar(77, 4)', 'SetVar(78, 7)', 'SetVar(79, 2)', 'SetVar(295, 30)', 'SetVar(296, 31)', 'SetVar(297, 32)', 'SetVar(298, 33)', 'SetVar(299, 34)', 'SetVar(300, 35)', 'SetVar(301, 38)', 'SetVar(194, 0)', 'SetVar(25, 1)']}, {'9': ['SetVar(289, 1)', 'SetVar(295, 30)', 'SetVar(296, 31)', 'SetVar(297, 32)', 'SetVar(298, 33)', 'SetVar(299, 34)', 'SetVar(300, 35)', 'SetVar(301, 0)', 'SetVar(25, 1)']}]}, {'200': [{'1': ['SetVar(2, 8)', 'SetVar(4, 10)', 'SetVar(5, 4)', 'SetVar(124, 14)', 'SetVar(125, 0)', 'SetVar(128, 14)', 'SetVar(129, 0)']}, {'2': ['SetVar(2, 0)', 'SetVar(4, 4)', 'SetVar(5, -4)', 'SetVar(124, 8)', 'SetVar(125, -5)', 'SetVar(128, 8)', 'SetVar(129, -5)']}, {'3': ['SetVar(2, -2)', 'SetVar(4, 2)', 'SetVar(5, -6)', 'SetVar(124, 8)', 'SetVar(125, -5)', 'SetVar(128, 8)', 'SetVar(129, -5)']}, {'4': ['SetVar(2, -20)', 'SetVar(4, -16)', 'SetVar(5, -24)', 'SetVar(124, -15)', 'SetVar(125, -30)', 'SetVar(128, -15)', 'SetVar(129, -30)']}, {'5': ['SetVar(2, -24)', 'SetVar(4, -20)', 'SetVar(5, -28)', 'SetVar(124, -15)', 'SetVar(125, -30)', 'SetVar(128, -15)', 'SetVar(129, -30)']}]}, {'185': [{'0': ['SetVar(75, 0)']}, {'1': ['SetVar(75, 2)']}, {'2': ['SetVar(75, 3)']}, {'3': ['SetVar(75, 4)']}, {'4': ['SetVar(75, 5)']}, {'5': ['SetVar(75, 6)']}, {'6': ['SetVar(75, 7)']}, {'7': ['SetVar(75, 8)']}, {'8': ['SetVar(75, 9)']}, {'9': ['SetVar(75, 10)']}, {'10': ['SetVar(75, 11)']}]}, {'186': [{'0': ['SetVar(76, 0)']}, {'1': ['SetVar(76, 2)']}, {'2': ['SetVar(76, 3)']}, {'3': ['SetVar(76, 4)']}, {'4': ['SetVar(76, 5)']}, {'5': ['SetVar(76, 6)']}, {'6': ['SetVar(76, 7)']}, {'7': ['SetVar(76, 8)']}, {'8': ['SetVar(76, 9)']}, {'9': ['SetVar(76, 10)']}, {'10': ['SetVar(76, 11)']}]}, {'188': [{'0': ['SetVar(77, 0)']}, {'1': ['SetVar(77, 2)']}, {'2': ['SetVar(77, 3)']}, {'3': ['SetVar(77, 4)']}, {'4': ['SetVar(77, 5)']}, {'5': ['SetVar(77, 6)']}, {'6': ['SetVar(77, 7)']}, {'7': ['SetVar(77, 8)']}, {'8': ['SetVar(77, 9)']}, {'9': ['SetVar(77, 10)']}, {'10': ['SetVar(77, 11)']}]}, {'187': [{'0': ['SetVar(78, 0)']}, {'1': ['SetVar(78, 2)']}, {'2': ['SetVar(78, 3)']}, {'3': ['SetVar(78, 4)']}, {'4': ['SetVar(78, 5)']}, {'5': ['SetVar(78, 6)']}, {'6': ['SetVar(78, 7)']}, {'7': ['SetVar(78, 8)']}, {'8': ['SetVar(78, 9)']}, {'9': ['SetVar(78, 10)']}, {'10': ['SetVar(78, 11)']}]}, {'193': [{'0': ['SetVar(79, 0)']}, {'1': ['SetVar(79, 2)']}, {'2': ['SetVar(79, 3)']}, {'3': ['SetVar(79, 4)']}, {'4': ['SetVar(79, 5)']}, {'5': ['SetVar(79, 6)']}, {'6': ['SetVar(79, 7)']}, {'7': ['SetVar(79, 8)']}, {'8': ['SetVar(79, 9)']}, {'9': ['SetVar(79, 10)']}, {'10': ['SetVar(79, 11)']}]}, {'213': [{'0': ['SetVar(80, 0)']}, {'1': ['SetVar(80, 90)']}]}, {'194': [{'0': ['SetVar(292, 0)']}, {'1': ['SetVar(292, 60)']}, {'2': ['SetVar(292, 61)']}, {'3': ['SetVar(292, 62)']}, {'4': ['SetVar(292, 63)']}, {'5': ['SetVar(292, 64)']}, {'6': ['SetVar(292, 65)']}, {'7': ['SetVar(292, 66)']}, {'8': ['SetVar(292, 67)']}, {'9': ['SetVar(292, 68)']}, {'10': ['SetVar(292, 69)']}, {'11': ['SetVar(292, 70)']}, {'12': ['SetVar(292, 71)']}, {'13': ['SetVar(292, 0)']}, {'14': ['SetVar(292, 73)']}, {'15': ['SetVar(292, 74)']}, {'16': ['SetVar(292, 75)']}, {'20': ['SetVar(292, 76)']}, {'21': ['SetVar(292, 77)']}]}, {'195': [{'0': ['SetVar(293, 0)']}, {'1': ['SetVar(293, 60)']}, {'2': ['SetVar(293, 61)']}, {'3': ['SetVar(293, 62)']}, {'4': ['SetVar(293, 63)']}, {'5': ['SetVar(293, 64)']}, {'6': ['SetVar(293, 65)']}, {'7': ['SetVar(293, 66)']}, {'8': ['SetVar(293, 67)']}, {'9': ['SetVar(293, 68)']}, {'10': ['SetVar(293, 69)']}, {'11': ['SetVar(293, 70)']}, {'12': ['SetVar(293, 71)']}, {'13': ['SetVar(293, 72)']}, {'14': ['SetVar(293, 73)']}, {'15': ['SetVar(293, 74)']}, {'16': ['SetVar(293, 75)']}, {'20': ['SetVar(293, 76)']}, {'21': ['SetVar(293, 77)']}]}, {'196': [{'0': ['SetVar(294, 0)']}, {'1': ['SetVar(294, 60)']}, {'2': ['SetVar(294, 61)']}, {'3': ['SetVar(294, 62)']}, {'4': ['SetVar(294, 63)']}, {'5': ['SetVar(294, 64)']}, {'6': ['SetVar(294, 65)']}, {'7': ['SetVar(294, 66)']}, {'8': ['SetVar(294, 0)']}, {'9': ['SetVar(294, 0)']}, {'10': ['SetVar(294, 69)']}, {'11': ['SetVar(294, 70)']}, {'12': ['SetVar(294, 71)']}, {'13': ['SetVar(294, 0)']}, {'14': ['SetVar(294, 73)']}, {'15': ['SetVar(294, 74)']}, {'16': ['SetVar(294, 75)']}, {'20': ['SetVar(294, 76)']}, {'21': ['SetVar(294, 77)']}]}]

##################################### CDF ###################################

AKCC_CDF_Details = {"Main switch" : {"Label" : "r12" , "Main_switch_Enum_Value_Start" : 1, "Main_switch_Enum_Value_Stop":0}}

##################################### CDF ###################################
propertyMapping = {"Value":"Value","Help":"Help","MenuCode":"Label","ParameterName":"Text","Min":"Min","Max":"Max","Value":"Value","Default":"Default","Unit":"UnitText","DataType":"DataType"}


default_sw_versions = ["1.72"]
non_default_cdfs = {"AK-CC55 Multi Coil":
                    
                    {"non_default_sw_version" : ["1.50"],
                     "non_default_controller_codeNo" : ["084B4084-AK-CC55 Multi Coil"]
                        },
                    "AK-CC55 Single Coil":

                    {"non_default_sw_version" : ["1.40"],
                     "non_default_controller_codeNo" : ["084B4082-AK-CC55 Single Coil"]
                        }}

############################################ ALARM GENERATION #########################################################

alarms_available = ["A11","A45"]
alarm_Generating_Information = {
                                
                                "A45" : [{"Unique_ID":"1048586", "Value": "Stop"}],
                                "A11" : [{"Unique_ID":"1048610","Value" : "Not seleted"},{"Unique_ID":"1048586", "Value": "Start"}]
                                
                                }
alarm_deGenerating_Information = {
                                
                                "A45" : [{"Unique_ID":"1048586", "Value": "Start"}],
                                "A11" : [{"Unique_ID":"1048610","Value" : "Not seleted"},{"Unique_ID":"1048586", "Value": "Stop"}]
                                
                                }


############################################ ALARM GENERATION #########################################################

######################################### READOUTS ##########################################################

readoutList_menuCode_List = ["u00",
                            "u17",
                            "u16",
                            "u12",
                            "u26",
                            "u20",
                            "u09",
                            "u23",
                            "u60",
                            "u59",
                            "u58",
                            "u63",
                            "u85"]


######################################### READOUTS ##########################################################




ItemTypes_available = ["C","S","P","F","R"]


IOlables = ["AI","DO","DI","AO"]
IOGroupNames = {"AI":"AI Analog Input","AO":"AO Analog Output","DI":"DI Digital Input",
                "DO":"DO Digital Output"} 

treeView_scrollBar_groupName = "Advanced"



GroupIndexes={
             "AK-CC55 Multi Coil":{
             "1.72":{
             "Advanced":22
             }
             },
             "AK-CC55 Compact":{
             "1.90":{
             "Advanced":19
             }
             },
             "AK-CC55 Single Coil":{
             "1.32":{
             "Advanced":21
             }
             }
             }