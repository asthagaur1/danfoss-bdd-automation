import AKCC55_Config
class MappingCDFDetails():
    
    def mapGroupOrder(self,deviceJsoObject,parameter_collection):
        """
        Maps the group order in the parameter collection.
        :param parameter_collection: Parameter collection.
        :return: Updated parameter collection with groups in order.
        
        """
        order_of_index = []
        group_list = deviceJsoObject.Groups
        for i,j in enumerate(group_list):
            items_list = group_list[i]["Items"]
            for anItem in items_list:
                
                if anItem["ItemType"] == "P":
                    if j["Idx"] not in order_of_index:
                        order_of_index.append(j["Idx"])
                    break
                if anItem["ItemType"] == "G":
                    subGroup=deviceJsoObject.Groups[anItem["Index"]]
                    items2_list = subGroup["Items"]
                    for anItem2 in items2_list:
                        if anItem2["ItemType"] == "P":
                            if subGroup["Idx"] not in order_of_index:
                                order_of_index.append(subGroup["Idx"])
                                break
                        if anItem2["ItemType"] == "G":
                            subGroup2=deviceJsoObject.Groups[anItem2["Index"]]
                            items3_list = subGroup2["Items"]
                            for anItem3 in items3_list:
                                if anItem3["ItemType"] == "P":
                                    if subGroup2["Idx"] not in order_of_index:
                                        order_of_index.append(subGroup2["Idx"])
                                        break
                                if anItem3["ItemType"] == "G":
                                    subGroup3=deviceJsoObject.Groups[anItem3["Index"]]
                                    items4_list = subGroup3["Items"]
                                    for anItem4 in items4_list:
                                        if anItem4["ItemType"] == "P":
                                            if subGroup3["Idx"] not in order_of_index:
                                                order_of_index.append(subGroup3["Idx"])
                                                
                                    
                    
                    
        print(str(order_of_index))
       
        new_collection = []
        for index_ordering in order_of_index:
            found = False
            for listItem in (parameter_collection):
                for groupName,parameterList in listItem.items():
                    for parameterDict in parameterList:
                        groupNameList = parameterDict["GroupName"].split(";")
                        index_of_groupname = groupNameList.index(groupName)
                        
                        groupIndexList = str(parameterDict["GroupIdx"]).split(";")
                        index_of_group = groupIndexList[index_of_groupname]
                        
                        if index_ordering == int(index_of_group):
                            new_collection.append(listItem)
                            found = True
                            break
                        else:
                            break
                    if found == True:
                        break
                if found == True:
                        break
                        
                    
        return new_collection
    
    
    
    def mapParameterOrder(self,deviceJsoObject,collection):
        """
        Maps the parameter order in the parameter collection.
        :param deviceJsoObject: Device Jso Object.
        :param collection: Parameter collection.
        :return: Updated parameter collection with parameters in order.
        
        """
        new_collection = []
        for listItem in (collection):
            for groupName,parameterList in listItem.items():
                param_list = []
                for parameterDict in parameterList:
                    
                    groupNameList = parameterDict["GroupName"].split(";")
                    index_of_groupname = groupNameList.index(groupName)  
                    groupIndexList = str(parameterDict["GroupIdx"]).split(";")
                    index_of_group = groupIndexList[index_of_groupname]
                    index_of_group = int(index_of_group)
                    groupItems = deviceJsoObject.Groups[index_of_group]
                    param_list = []
                    for anItem in groupItems["Items"]:
                        index_of_parameter = anItem["Index"]
                        for parameterDict in parameterList:
                            if parameterDict["Idx"] == index_of_parameter:
                                param_list.append(parameterDict)
                    if len(param_list) >0:
                        aDict = {groupName:param_list}
                        new_collection.append(aDict)
                    break   
                        
                
                    
        return new_collection
    
    def combine_deviceJSO_helpJSO(self,langHelpObject,parameters_List,helpFileAvailability):
        """
        Combines the two different dataModel Object into a list of dictionaries.
        :param deviceJsoObject: Input Json dataModel Object.
        :param langHelpObject: Input Json dataModel Object.
        :param helpFileAvailability: Availability of Help File.
        :return: List of Dictionaries with combined data of the provided dataModel Object.
        
        """
        if helpFileAvailability!="NOT_AVAILABLE":
            lang_help_List = langHelpObject.Phrases
        
        for i, aParameter in enumerate(parameters_List):
            help_index = aParameter["HelpTextIdx"]
            if helpFileAvailability == "False" or help_index == -1 or helpFileAvailability == "NOT_AVAILABLE":
                parameters_List[i]["Help"] = ""
                continue
            
            help = lang_help_List[help_index]
            parameters_List[i]["Help"] = help
            
        return parameters_List

    def mapDynamicMinMax(self,deviceJsoObject,parameter_collection):
        """
        Maps Dynamic Min and Max Value in parameter collection.
        :param deviceJsoObject: Device Jso Object.
        :param parameter_collection: Parameter details.
        :return: Updated parameter collection with dynamic min and max values.
        
        """
       
        for index , aParameter in enumerate(parameter_collection):
            dynamic_min = str(aParameter["DynMinIdx"])
            dynamic_max = str(aParameter["DynMaxIdx"])
            if dynamic_min != "-1":
                dynamic_min = int(float(dynamic_min))
                parameter_collection[index]["Min"] = deviceJsoObject.Parameters[dynamic_min]["Default"]
            if dynamic_max != "-1":
                dynamic_max = int(float(dynamic_max))
                parameter_collection[index]["Max"] = deviceJsoObject.Parameters[dynamic_max]["Default"]
        
        return parameter_collection
         
    def mapFloatPrecisions(self,parameter_collection):
        """
        Maps Float precisions with respect to decimal values in parameter collection.
        :param parameter_collection: Parameter details.
        :return: Updated parameter collection with mapped float precision values.
        
        """
        
        for index , aParameter in enumerate(parameter_collection):
            if aParameter["DataType"] == AKCC55_Config.mapping_float_datatype:
                aParameter["Max"] = float(aParameter["Max"])
                aParameter["Min"] = float(aParameter["Min"])
                parameter_collection[index]["Max"] = round(aParameter["Max"],aParameter["Decimals"])
                parameter_collection[index]["Min"] = round(aParameter["Min"],aParameter["Decimals"])
        
        return parameter_collection
    
    def mapDefaultWithValue(self,parameter_collection):
        """
        Maps default value with value in parameter collection.
        :param parameter_collection: Parameter details.
        :return: Mapped Value in parameter collection.
        
        """
        for i,aParameterDict in enumerate(parameter_collection):
            parameter_collection[i]["Value"] = aParameterDict["Default"]
        
        return parameter_collection
    
    def combine_deviceJSO_langJSO(self,langObject, parameter_collection,langFileAvailability):
        """
        Combines the two different dataModel Object into a list of dictionaries.
        :param langObject: Input Json dataModel Object.
        :param parameter_collection: Parameter details.
        :param langFileAvailability: Availability of Language File.
        :return: List of Dictionaries with combined data of the provided dataModel Object.
        
        """
        
            
        if langFileAvailability == "NOT_AVAILABLE":
            return parameter_collection
        lang_list = langObject.Phrases
        for i, aParameter in enumerate(parameter_collection):
            txt_index = aParameter["TextIdx"]
            if txt_index == -1 or langFileAvailability == False:
                continue
            text = lang_list[txt_index]
            parameter_collection[i]["Text"] = text
            
        return parameter_collection
      
    def mapEnums(self,deviceJsoObject,parameter_collection):
        """
        Map the enums with the parameter collection.
        :param deviceJsoObject: Input Json dataModel Object.
        :param parameter_collection: Parameter details.
        :return: Parameter details with mapped enum data.
        
        """

        
        for i, aParameter in enumerate(parameter_collection):
            enum_index = aParameter["EnumIdx"]
            if enum_index == -1:
                parameter_collection[i]["EnumText"] = None
                parameter_collection[i]["EnumTextIdx"] = None
                parameter_collection[i]["EnumUniqueID"] = None
                parameter_collection[i]["EnumsIdx"] = -1
                parameter_collection[i]["EnumLabel"] = None
                parameter_collection[i]["EnumValue"] = None
                parameter_collection[i]["EnumVisibilityIndex"] = None
                continue
            parameter_collection[i]["EnumUniqueID"] = deviceJsoObject.Enumerations[enum_index]['UniqueID']
            parameter_collection[i]["EnumsIdx"] = deviceJsoObject.Enumerations[enum_index]['Idx']
            values = deviceJsoObject.Enumerations[enum_index]['Values']
            label = []
            text = []
            txtIndx = []
            value = []
            visibilityIndex =[]
            for aValue in values:
                label.append(aValue["Label"])
                text.append(aValue["Text"])
                txtIndx.append(aValue["TextIdx"])
                value.append(aValue["Value"])
                visibilityIndex.append(aValue["VisibilityIdx"])
                
            parameter_collection[i]["EnumLabel"] = label
            parameter_collection[i]["EnumText"] = text
            parameter_collection[i]["EnumTextIdx"] = txtIndx
            parameter_collection[i]["EnumValue"] = value
            parameter_collection[i]["EnumVisibilityIndex"] = visibilityIndex
        
        return parameter_collection
            
    def mapLangForEnum(self,langObject, parameter_collection,langFileAvailability):
        """
        Maps Language data with enum.
        :param langObject: Input Json dataModel Object.
        :param parameter_collection: Parameter details.
        :param langFileAvailability: Availability of Language File.
        :return: Updated collection with mapped Language data of enum.
        
        """
        if langObject !=None:
            lang_list = langObject.Phrases
        
        for i, aParameter in enumerate(parameter_collection):
            if aParameter["DataType"] == "Enum":
                enumTextIndexList = aParameter["EnumTextIdx"]
                for inp_index,anEnumTextIndex in enumerate(enumTextIndexList):
                    if anEnumTextIndex != -1:
                        text = lang_list[anEnumTextIndex]
                        parameter_collection[i]["EnumText"][inp_index] = text
            
        return parameter_collection   
        
    def mapDotForColonForEnum(self,parameter_collection):
        """
        Replaces Dot For all Colon present in Enum Values.
        :param parameter_collection: Parameter details.
        :return: Updated collection with mapped dots instead of colon in all Enum Values. 
        
        """
        for index, aParameter in enumerate(parameter_collection):
            if aParameter["DataType"] == "Enum":
                enumTextList = aParameter["EnumText"]
                for inp_index,anEnumText in enumerate(enumTextList):
                    if ":" in anEnumText:
                        parameter_collection[index]["EnumText"][inp_index] = anEnumText.replace(":",".")
                    
        return parameter_collection       
        
    def mapUnits(self,deviceJsoObject,parameter_collection):
        """
        Map the unit details with the parameter collection.
        :param deviceJsoObject: Input Json dataModel Object.
        :param parameter_collection: Parameter details.
        :return: Parameter details with mapped unit data.
        
        """
    
        for i, aParameter in enumerate(parameter_collection):
            unit_index = aParameter["EngUnitIdx"]
            parameter_collection[i]["UnitFactor"] = deviceJsoObject.EngUnitTypes[unit_index]['Factor']
            parameter_collection[i]["UnitIdx"] = deviceJsoObject.EngUnitTypes[unit_index]['Idx']
            parameter_collection[i]["UnitOffset"] = deviceJsoObject.EngUnitTypes[unit_index]['Offset']
            parameter_collection[i]["UnitText"] = deviceJsoObject.EngUnitTypes[unit_index]['Text']
            parameter_collection[i]["UnitTextIdx"] = deviceJsoObject.EngUnitTypes[unit_index]['TextIdx']
            parameter_collection[i]["UnitUniqueID"] = deviceJsoObject.EngUnitTypes[unit_index]['UniqueID']
        return parameter_collection


    def mapDataType(self,deviceJsoObject,parameter_collection):
        """
        Map the datatype details with the parameter collection.
        :param deviceJsoObject: Input Json dataModel Object.
        :param parameter_collection: Parameter details.
        :return: Parameter details with mapped datatype details.
        
        """
    
        for i, aParameter in enumerate(parameter_collection):
            if aParameter["EnumIdx"] < 0:
                storage_type = aParameter["StorageType"]
                storage_dataType = AKCC55_Config.storageType_mapping[storage_type]
                parameter_collection[i]["DataType"] = storage_dataType
            else:
                parameter_collection[i]["DataType"] = "Enum"
            
        return parameter_collection
    
    
    def mapGroupdata(self,deviceJsoObject,parameter_collection):
        """
        Map the Group details with the parameter collection.
        :param deviceJsoObject: Input Json dataModel Object.
        :param parameter_collection: Parameter details.
        :return: Parameter details with mapped Group details.
        
        """
        parameter_index_covered = []
        group_list = deviceJsoObject.Groups
        for i, _ in enumerate(group_list):
            items_list = deviceJsoObject.Groups[i]["Items"]
            for index, _ in enumerate(items_list):
                if items_list[index]["ItemType"] == "P":
#                     if items_list[index]["Index"] == 69 or items_list[index]["Index"]=="69":
#                         print("say helo")
                    if items_list[index]["Index"] not in parameter_index_covered:
                        parameter_collection[items_list[index]["Index"]]["GroupName"] = deviceJsoObject.Groups[i]["Text"]
                        #parameter_collection[items_list[index]["Index"]]["GroupTextIdx"] = deviceJsoObject.Groups[i]["TextIdx"]
                        parameter_collection[items_list[index]["Index"]]["GroupVisibilityIdx"] = deviceJsoObject.Groups[i]["VisibilityIdx"]
                        parameter_collection[items_list[index]["Index"]]["GroupLabel"] = deviceJsoObject.Groups[i]["Label"]
                        parameter_collection[items_list[index]["Index"]]["GroupIdx"] = deviceJsoObject.Groups[i]["Idx"]
                        parameter_collection[items_list[index]["Index"]]["GroupNameIdx"] = deviceJsoObject.Groups[i]["TextIdx"]
                        parameter_collection[items_list[index]["Index"]]["SubGroupNameIdx"] = deviceJsoObject.Groups[i]["TextIdx"]
                        parameter_collection[items_list[index]["Index"]]["GroupCustomTextIdx"] = deviceJsoObject.Groups[i]["CustomTextIdx"]
                        parameter_collection[items_list[index]["Index"]]["GroupAccLevelR"] = deviceJsoObject.Groups[i]["AccLevelR"]
                        parameter_collection[items_list[index]["Index"]]["SubGroupName"] = deviceJsoObject.Groups[i]["Text"]
                        parameter_collection[items_list[index]["Index"]]["SubGroupVisibilityIdx"] = str(deviceJsoObject.Groups[i]["VisibilityIdx"])
                        parameter_index_covered.append(items_list[index]["Index"])
                    
                    else:
#                         if items_list[index]["Index"] == 69 or items_list[index]["Index"]=="69":
#                             print("say helo")
                        if deviceJsoObject.Groups[i]["Text"] not in parameter_collection[items_list[index]["Index"]]["GroupName"]:
                            parameter_collection[items_list[index]["Index"]]["GroupName"] = parameter_collection[items_list[index]["Index"]]["GroupName"] + ";" +deviceJsoObject.Groups[i]["Text"]
                            #parameter_collection[items_list[index]["Index"]]["GroupTextIdx"] = str(parameter_collection[items_list[index]["Index"]]["GroupTextIdx"]) + ";"+ str(deviceJsoObject.Groups[i]["TextIdx"])
                            parameter_collection[items_list[index]["Index"]]["GroupVisibilityIdx"] = str(parameter_collection[items_list[index]["Index"]]["GroupVisibilityIdx"]) + ";"+str(deviceJsoObject.Groups[i]["VisibilityIdx"])
                            parameter_collection[items_list[index]["Index"]]["GroupLabel"] = parameter_collection[items_list[index]["Index"]]["GroupLabel"] + ";"+deviceJsoObject.Groups[i]["Label"]
                            parameter_collection[items_list[index]["Index"]]["GroupIdx"] = str(parameter_collection[items_list[index]["Index"]]["GroupIdx"]) + ";"+str(deviceJsoObject.Groups[i]["Idx"])
                            parameter_collection[items_list[index]["Index"]]["GroupNameIdx"] = str(parameter_collection[items_list[index]["Index"]]["GroupNameIdx"]) + ";"+ str(deviceJsoObject.Groups[i]["TextIdx"])
                            parameter_collection[items_list[index]["Index"]]["SubGroupNameIdx"] = str(parameter_collection[items_list[index]["Index"]]["SubGroupNameIdx"]) + ";"+ str(deviceJsoObject.Groups[i]["TextIdx"])
                            parameter_collection[items_list[index]["Index"]]["GroupCustomTextIdx"] = str(parameter_collection[items_list[index]["Index"]]["GroupCustomTextIdx"]) + ";"+str(deviceJsoObject.Groups[i]["CustomTextIdx"])
                            parameter_collection[items_list[index]["Index"]]["GroupAccLevelR"] =str(parameter_collection[items_list[index]["Index"]]["GroupAccLevelR"]) + ";" +str(deviceJsoObject.Groups[i]["AccLevelR"])
                            parameter_collection[items_list[index]["Index"]]["SubGroupName"] = parameter_collection[items_list[index]["Index"]]["SubGroupName"] + ";"+deviceJsoObject.Groups[i]["Text"]
                            parameter_collection[items_list[index]["Index"]]["SubGroupVisibilityIdx"] = parameter_collection[items_list[index]["Index"]]["SubGroupVisibilityIdx"] + ";"+str(deviceJsoObject.Groups[i]["VisibilityIdx"])
                            parameter_index_covered.append(items_list[index]["Index"])
                    
                        
                if items_list[index]["ItemType"] == "G":
                    sublevel_one_items_list = deviceJsoObject.Groups[items_list[index]["Index"]]["Items"]
                    for sublevel_one_index, _ in enumerate(sublevel_one_items_list):
                        if sublevel_one_items_list[sublevel_one_index]["ItemType"] == "P":
#                             if sublevel_one_items_list[sublevel_one_index]["Index"] == 69 or sublevel_one_items_list[sublevel_one_index]["Index"]=="69":
#                                 print("say helo")
                            if sublevel_one_items_list[sublevel_one_index]["Index"] not in parameter_index_covered:
                                groupName1 = deviceJsoObject.Groups[i]["Text"]
                                groupName2 = deviceJsoObject.Groups[items_list[index]["Index"]]["Text"]
                                groupName = groupName1 + "|" + groupName2
                                groupIndex1 = deviceJsoObject.Groups[i]["TextIdx"]
                                groupIndex2 = deviceJsoObject.Groups[items_list[index]["Index"]]["TextIdx"]
                                groupIndex = str(groupIndex1) + "|" + str(groupIndex2)
                                group1VisibIndex = deviceJsoObject.Groups[i]["VisibilityIdx"]
                                group2VisibIndex = deviceJsoObject.Groups[items_list[index]["Index"]]["VisibilityIdx"]
                                groupVisibIndex = str(group1VisibIndex) + "|" + str(group2VisibIndex)
                                #if groupName2 not in parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupName"]:
                                parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupName"] = groupName2
                                parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupNameIdx"] = groupIndex2
                                parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["SubGroupNameIdx"] = groupIndex
                                parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupIdx"] = deviceJsoObject.Groups[items_list[index]["Index"]]["Idx"]
                                #parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupTextIdx"] = deviceJsoObject.Groups[i]["TextIdx"]
                                parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupVisibilityIdx"] = deviceJsoObject.Groups[items_list[index]["Index"]]["VisibilityIdx"]
                                parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupLabel"] =  deviceJsoObject.Groups[items_list[index]["Index"]]["Label"]
                                parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupCustomTextIdx"] = deviceJsoObject.Groups[items_list[index]["Index"]]["CustomTextIdx"]
                                parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupAccLevelR"] = deviceJsoObject.Groups[items_list[index]["Index"]]["AccLevelR"]
                                parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["SubGroupName"] = groupName
                                parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["SubGroupVisibilityIdx"] = groupVisibIndex
                                parameter_index_covered.append(sublevel_one_items_list[sublevel_one_index]["Index"])
                                continue
                            
                            else:
                                groupName1 = deviceJsoObject.Groups[i]["Text"]
                                groupName2 = deviceJsoObject.Groups[items_list[index]["Index"]]["Text"]
                                groupName = groupName1 + "|" + groupName2
                                groupIndex1 = deviceJsoObject.Groups[i]["TextIdx"]
                                groupIndex2 = deviceJsoObject.Groups[items_list[index]["Index"]]["TextIdx"]
                                groupIndex = str(groupIndex1) + "|" + str(groupIndex2)
                                group1VisibIndex = deviceJsoObject.Groups[i]["VisibilityIdx"]
                                group2VisibIndex = deviceJsoObject.Groups[items_list[index]["Index"]]["VisibilityIdx"]
                                groupVisibIndex = str(group1VisibIndex) + "|" + str(group2VisibIndex)
                                if groupName2 not  in parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupName"]:
                                    parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupName"] =parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupName"]+";"+ groupName2
                                    parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupNameIdx"] = str(parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupNameIdx"])+ ";"+str(groupIndex2)
                                    parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["SubGroupNameIdx"] = parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["SubGroupNameIdx"]+ ";"+groupIndex
                                    #parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupTextIdx"] =str(parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupTextIdx"])+";"+ str(deviceJsoObject.Groups[i]["TextIdx"])
                                    parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupVisibilityIdx"] = str(parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupVisibilityIdx"])+ ";"+str(deviceJsoObject.Groups[items_list[index]["Index"]]["VisibilityIdx"])  
                                    parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupLabel"] = parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupLabel"]+";"+deviceJsoObject.Groups[items_list[index]["Index"]]["Label"]
                                    parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupIdx"] = str(parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupIdx"])+ ";"+str(deviceJsoObject.Groups[items_list[index]["Index"]]["Idx"])
                                    parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupCustomTextIdx"] =str(parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupCustomTextIdx"])+";"+ str(deviceJsoObject.Groups[items_list[index]["Index"]]["CustomTextIdx"]) 
                                    parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupAccLevelR"] = str(parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["GroupAccLevelR"])+ ";"+ str(deviceJsoObject.Groups[items_list[index]["Index"]]["AccLevelR"]) 
                                    parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["SubGroupName"] = parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["SubGroupName"]+ ";"+groupName
                                    parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["SubGroupVisibilityIdx"] = parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["SubGroupVisibilityIdx"]+ ";"+groupVisibIndex
                                    parameter_index_covered.append(sublevel_one_items_list[sublevel_one_index]["Index"])
                        if sublevel_one_items_list[sublevel_one_index]["ItemType"] == "G":
                            sublevel_two_items_list = deviceJsoObject.Groups[items_list[index]["Index"]]["Items"]
                            for sublevel_two_index, _ in enumerate(sublevel_two_items_list):
                                if sublevel_two_items_list[sublevel_two_index]["ItemType"] == "P":
#                                     if sublevel_two_items_list[sublevel_two_index]["Index"] == 69 or sublevel_two_items_list[sublevel_two_index]["Index"]=="69":
#                                         print("say helo")
                                    if sublevel_two_items_list[sublevel_two_index]["Index"] not in parameter_index_covered:
                                        groupName1 = deviceJsoObject.Groups[i]["Text"]
                                        groupName2 = deviceJsoObject.Groups[items_list[index]["Index"]]["Text"]
                                        groupName = groupName1 + "|" + groupName2
                                        group1VisibIndex = deviceJsoObject.Groups[i]["VisibilityIdx"]
                                        group2VisibIndex = deviceJsoObject.Groups[items_list[index]["Index"]]["VisibilityIdx"]
                                        groupVisibIndex = str(group1VisibIndex) + "|" + str(group2VisibIndex)
                                        # if groupName2 not in parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupName"]:
                                        groupIndex1 = deviceJsoObject.Groups[i]["TextIdx"]
                                        groupIndex2 = deviceJsoObject.Groups[items_list[index]["Index"]]["TextIdx"]
                                        groupIndex = str(groupIndex1) + "|" + str(groupIndex2)
                                        parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupNameIdx"] = groupIndex2
                                        parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["SubGroupNameIdx"] = groupIndex
                                        parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupName"] = groupName2
                                        #parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupTextIdx"] = deviceJsoObject.Groups[i]["TextIdx"]
                                        parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupVisibilityIdx"] = deviceJsoObject.Groups[items_list[index]["Index"]]["VisibilityIdx"]
                                        parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupLabel"] = deviceJsoObject.Groups[items_list[index]["Index"]]["Label"]
                                        parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupIdx"] = deviceJsoObject.Groups[items_list[index]["Index"]]["Idx"]
                                        parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupCustomTextIdx"] = deviceJsoObject.Groups[items_list[index]["Index"]]["CustomTextIdx"]
                                        parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupAccLevelR"] =deviceJsoObject.Groups[items_list[index]["Index"]]["AccLevelR"]
                                        parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["SubGroupName"] = groupName
                                        parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["SubGroupVisibilityIdx"] = groupVisibIndex
                                        parameter_index_covered.append(sublevel_two_items_list[sublevel_two_index]["Index"])
                                        continue
                                    
                                    else: 
                                        groupName1 = deviceJsoObject.Groups[i]["Text"]
                                        groupName2 = deviceJsoObject.Groups[items_list[index]["Index"]]["Text"]
                                        groupName = groupName1 + "|" + groupName2
                                        groupIndex1 = deviceJsoObject.Groups[i]["TextIdx"]
                                        groupIndex2 = deviceJsoObject.Groups[items_list[index]["Index"]]["TextIdx"]
                                        groupIndex = str(groupIndex1) + "|" + str(groupIndex2)
                                        group1VisibIndex = deviceJsoObject.Groups[i]["VisibilityIdx"]
                                        group2VisibIndex = deviceJsoObject.Groups[items_list[index]["Index"]]["VisibilityIdx"]
                                        groupVisibIndex = str(group1VisibIndex) + "|" + str(group2VisibIndex)
                                        if groupName2 not in parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupName"]:
                                            parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupNameIdx"] = str(parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupNameIdx"])+ ";"+ str(groupIndex2)
                                            parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["SubGroupNameIdx"] = str(parameter_collection[sublevel_one_items_list[sublevel_one_index]["Index"]]["SubGroupNameIdx"]) + ";" + str(groupIndex)
                                            parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupName"] = parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupName"]+ ";"+groupName2
                                            #parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupTextIdx"] = str(parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupTextIdx"])+";"+ str(deviceJsoObject.Groups[i]["TextIdx"])
                                            parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupVisibilityIdx"] = str(parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupVisibilityIdx"])+";"+ str(deviceJsoObject.Groups[items_list[index]["Index"]]["VisibilityIdx"])
                                            parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupLabel"] =parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupLabel"]+";"+ deviceJsoObject.Groups[items_list[index]["Index"]]["Label"]
                                            parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupIdx"] = str(parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupIdx"])+ ";"+ str(deviceJsoObject.Groups[items_list[index]["Index"]]["Idx"])
                                            parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupCustomTextIdx"] = str(parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupCustomTextIdx"])+ ";"+ str(deviceJsoObject.Groups[items_list[index]["Index"]]["CustomTextIdx"])
                                            parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupAccLevelR"] = str(parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["GroupAccLevelR"])+ ";"+str(deviceJsoObject.Groups[items_list[index]["Index"]]["AccLevelR"]) 
                                            parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["SubGroupName"] = parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["SubGroupName"]+";"+ groupName
                                            parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["SubGroupVisibilityIdx"] = parameter_collection[sublevel_two_items_list[sublevel_two_index]["Index"]]["SubGroupVisibilityIdx"]+";"+ groupVisibIndex
                                            parameter_index_covered.append(sublevel_two_items_list[sublevel_two_index]["Index"])
                                            continue
                                        
                                if sublevel_two_items_list[sublevel_two_index]["ItemType"] == "G":
                                    sublevel_three_items_list = deviceJsoObject.Groups[sublevel_two_items_list[sublevel_two_index]["Index"]]["Items"]
                                    for sublevel_three_index, _ in enumerate(sublevel_three_items_list):
                                        if sublevel_three_items_list[sublevel_three_index]["ItemType"] == "P":
#                                             if sublevel_three_items_list[sublevel_three_index]["Index"] == 69 or sublevel_three_items_list[sublevel_three_index]["Index"] == "69":
#                                                 print("say helo")
                                            if sublevel_three_items_list[sublevel_three_index]["Index"] not in parameter_index_covered:
                                                groupName1 = deviceJsoObject.Groups[i]["Text"]
                                                groupName2 = deviceJsoObject.Groups[items_list[index]["Index"]]["Text"]
                                                groupName3 = deviceJsoObject.Groups[sublevel_two_items_list[sublevel_two_index]["Index"]]["Text"]
                                                groupName = groupName1 + "|" + groupName2 + "|" + groupName3
                                                groupIndex1 = deviceJsoObject.Groups[i]["TextIdx"]
                                                groupIndex2 = deviceJsoObject.Groups[items_list[index]["Index"]]["TextIdx"]
                                                groupIndex3 = deviceJsoObject.Groups[sublevel_two_items_list[sublevel_two_index]["Index"]]["TextIdx"]
                                                groupIndex = str(groupIndex1) + "|" + str(groupIndex2) + "|" + str(groupIndex3)
                                                group1VisibIndex = deviceJsoObject.Groups[i]["VisibilityIdx"]
                                                group2VisibIndex = deviceJsoObject.Groups[items_list[index]["Index"]]["VisibilityIdx"]
                                                group3VisibIndex = deviceJsoObject.Groups[sublevel_two_items_list[sublevel_two_index]["Index"]]["VisibilityIdx"]
                                                groupVisibIndex = str(group1VisibIndex) + "|" + str(group2VisibIndex) + "|" + str(group3VisibIndex)
                                                #if groupName3 not in parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupName"]:
                                                parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupNameIdx"] = groupIndex3
                                                parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["SubGroupNameIdx"] = groupIndex
                                                parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupName"] = groupName3
                                                #parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupTextIdx"] = deviceJsoObject.Groups[i]["TextIdx"]
                                                parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupVisibilityIdx"] = deviceJsoObject.Groups[sublevel_two_items_list[sublevel_two_index]["Index"]]["VisibilityIdx"]
                                                parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupLabel"] = deviceJsoObject.Groups[sublevel_two_items_list[sublevel_two_index]["Index"]]["Label"]
                                                parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupIdx"] = deviceJsoObject.Groups[sublevel_two_items_list[sublevel_two_index]["Index"]]["Idx"]
                                                parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupCustomTextIdx"] = deviceJsoObject.Groups[sublevel_two_items_list[sublevel_two_index]["Index"]]["CustomTextIdx"]
                                                parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupAccLevelR"] = deviceJsoObject.Groups[sublevel_two_items_list[sublevel_two_index]["Index"]]["AccLevelR"]
                                                parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["SubGroupName"] = groupName
                                                parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["SubGroupVisibilityIdx"] = groupVisibIndex
                                                parameter_index_covered.append(sublevel_three_items_list[sublevel_three_index]["Index"])
                                                continue
                                            
                                            else:
                                                groupName1 = deviceJsoObject.Groups[i]["Text"]
                                                groupName2 = deviceJsoObject.Groups[items_list[index]["Index"]]["Text"]
                                                groupName3 = deviceJsoObject.Groups[sublevel_two_items_list[sublevel_two_index]["Index"]]["Text"]
                                                groupName = groupName1 + "|" + groupName2 + "|" + groupName3
                                                groupIndex1 = deviceJsoObject.Groups[i]["TextIdx"]
                                                groupIndex2 = deviceJsoObject.Groups[items_list[index]["Index"]]["TextIdx"]
                                                groupIndex3 = deviceJsoObject.Groups[sublevel_two_items_list[sublevel_two_index]["Index"]]["TextIdx"]
                                                groupIndex = str(groupIndex1) + "|" + str(groupIndex2) + "|" + str(groupIndex3)
                                                group1VisibIndex = deviceJsoObject.Groups[i]["VisibilityIdx"]
                                                group2VisibIndex = deviceJsoObject.Groups[items_list[index]["Index"]]["VisibilityIdx"]
                                                group3VisibIndex = deviceJsoObject.Groups[sublevel_two_items_list[sublevel_two_index]["Index"]]["VisibilityIdx"]
                                                groupVisibIndex = str(group1VisibIndex) + "|" + str(group2VisibIndex) + "|" + str(group3VisibIndex)
                                                if groupName3 not in parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupName"]:
                                                    parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupNameIdx"] = str(parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupNameIdx"])+";"+ str(groupIndex3)
                                                    parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["SubGroupNameIdx"] = str(parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["SubGroupNameIdx"])+";"+ str(groupIndex)
                                                    parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupName"] = parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupName"]+";"+groupName3
                                                    #parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupTextIdx"] = str(parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupTextIdx"])+";"+str(deviceJsoObject.Groups[i]["TextIdx"])
                                                    parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupVisibilityIdx"] = str(parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupVisibilityIdx"])+";"+str(deviceJsoObject.Groups[sublevel_two_items_list[sublevel_two_index]["Index"]]["VisibilityIdx"])
                                                    parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupLabel"] =parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupLabel"]+";"+  deviceJsoObject.Groups[sublevel_two_items_list[sublevel_two_index]["Index"]]["Label"]
                                                    parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupIdx"] =str(parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupIdx"])+";"+ str(deviceJsoObject.Groups[sublevel_two_items_list[sublevel_two_index]["Index"]]["Idx"])    
                                                    parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupCustomTextIdx"] = str(parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupCustomTextIdx"])+";"+ str(deviceJsoObject.Groups[sublevel_two_items_list[sublevel_two_index]["Index"]]["CustomTextIdx"]) 
                                                    parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupAccLevelR"] = str(parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["GroupAccLevelR"])+";"+str(deviceJsoObject.Groups[sublevel_two_items_list[sublevel_two_index]["Index"]]["AccLevelR"])  
                                                    parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["SubGroupName"] = parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["SubGroupName"]+";"+ groupName
                                                    parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["SubGroupVisibilityIdx"] = parameter_collection[sublevel_three_items_list[sublevel_three_index]["Index"]]["SubGroupVisibilityIdx"]+";"+ groupVisibIndex
                                                    parameter_index_covered.append(sublevel_three_items_list[sublevel_three_index]["Index"])
                                                    continue     
            
        return parameter_collection


    def mapLangForGroupData(self,langObject, parameter_collection,langFileAvailability):
        """
        Maps language for group names in parameter collection.
        :param langObject: Input Json dataModel Object.
        :param parameter_collection: Parameter details.
        :param langFileAvailability: Availability of language file.
        :return: List of Dictionaries with mapping language of groupdata with parameter collection.
        
        """
        if langObject !=None:
            lang_list = langObject.Phrases
        else: 
            return parameter_collection
        
        for i, aParameter in enumerate(parameter_collection):
            defaultGroupName = aParameter["GroupName"]
            defaultGroupNameList = defaultGroupName.split(";")
            groupName = ""
            groupNameIdx = aParameter["GroupNameIdx"]
            groupNameIdx = str(groupNameIdx)
            groupNameIdxList = groupNameIdx.split(";")
            for z,grpindx in enumerate(groupNameIdxList):
                #index_of_groupName = groupNameIdxList.index(grpindx)
                if grpindx == -1 or grpindx == "-1":
                    if groupName == "":
                        groupName = defaultGroupNameList[z]
                        continue
                    else:
                        groupName = groupName + ";"+ defaultGroupNameList[z]
                        continue
                grpindx = int(grpindx)
                text = lang_list[grpindx]
                if groupName == "":
                    groupName = text
                else:
                    groupName = groupName + ";"+ text
            parameter_collection[i]["GroupName"] = groupName
            
            defaultSubGroupName = aParameter["SubGroupName"]
            defaultSubGroupNameList = defaultSubGroupName.split(";")
            subgroupNames = ""
            subgroupNameIdx = aParameter["SubGroupNameIdx"]
            subgroupNameIdx = str(subgroupNameIdx)
            subgroupNameIdxList = subgroupNameIdx.split(";")
            for j,subgrpindx in enumerate(subgroupNameIdxList):
                subgroupName = ""
                subgroupList = subgrpindx.split("|")
                defaultSUBGrp = defaultSubGroupNameList[j].split("|")
                for k,subgrp in enumerate(subgroupList):
                    if subgrp == -1 or subgrp == "-1":
                        if subgroupName == "":
                            subgroupName = defaultSUBGrp[k]
                            continue
                        else:
                            subgroupName = subgroupName + "|"+ defaultSUBGrp[k]
                            continue
                    subgrp = int(subgrp)
                    text = lang_list[subgrp]
                    if subgroupName == "":
                        subgroupName = text
                    else:
                        subgroupName = subgroupName + "|"+ text
                
                if subgroupNames == "":
                    subgroupNames = subgroupName
                
                else:
                    subgroupNames = subgroupNames + ";" + subgroupName
            parameter_collection[i]["SubGroupName"] = subgroupNames
                
            
        
        
            
        return parameter_collection
    
    def convertIntoDataGridFormat(self,parameterCollection):
        """
        Converts the parameter collection of details into dataGrid format.
        :param parameterCollection: Parameter collection details.
        :return: Collection in dataGrid format.
        
        """
        group_mapped = []
        groupcovered = []
        for _,aParameterDict in enumerate(parameterCollection):
            groupNamesList = aParameterDict["GroupName"].split(";")
            for _,groupName in enumerate(groupNamesList):
                if groupName in groupcovered:
                    for index,i in enumerate(group_mapped):
                        for k,_ in i.items():
                            if k == groupName:
                                group_mapped[index][groupName].append(aParameterDict)
                else:
                    aDict = {groupName:[]}
                    aDict[groupName].append(aParameterDict)
                    group_mapped.append(aDict)
                    groupcovered.append(groupName)
                    
        return group_mapped
    
    def mapAlarmparameters(self, parameterCollection, alarmparameters):
        """
        Mapping the alarm parameters with its details
        :param parameterCollection: Parameter collection details.
        :param alarmparameters: List of alarm parameters details
        :return:Alarm collection with all the details
        """
        updatedAlarmparameterdetails = alarmparameters
        for alarm in alarmparameters:
            for parameter, indexlist in alarm.items():
                if type(indexlist) == list:
                    for index in indexlist:
                        indexdetails = self.getindexdetails(parameterCollection,index['Index'])
                        for alaramname in updatedAlarmparameterdetails:
                            for key , values in alaramname.items():
                                if type(values) == list and values != None:
                                    for value in values:
                                        if value['Index'] == indexdetails['Idx']:
                                            value['AlarmParamterdetais'] = indexdetails
                                else:
                                    break
        return updatedAlarmparameterdetails
    
    
    def getindexdetails(self,parameterCollection, index):
        """
        Return the parameter details
        :param index:index of  parameter 
        :param parameterCollection: Parameter collection details.
        :return:Paramerer details for given index
        """
        for i, aParameter in enumerate(parameterCollection):
            for groupname, parameterdetails in aParameter.items():
                for parameter in parameterdetails:
                        if parameter['Idx'] == index:
                            return parameter
        return False
    
    def getparamterdetails(self,parameterCollection, parametername):
        """
        Return the parameter details
        :param parametername:Parameter Name to be searched in parameter collection. 
        :param parameterCollection: Parameter collection details.
        :return:Paramerer details for given parameter
        """
        for i, aParameter in enumerate(parameterCollection):
            for groupname, parameterdetails in aParameter.items():
                for parameter in parameterdetails:
                        if parameter['Text'] == parametername:
                            return parameter  
        return False   
                        
                        