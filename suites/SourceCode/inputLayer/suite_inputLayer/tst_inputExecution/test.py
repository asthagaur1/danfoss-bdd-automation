import os
import exceptions
import Constants
import Modals
import xlrd
from Libraries import SourceLocator
from Libraries import ReportXml
import xml.etree.ElementTree as ET
ReportObj=None
from xml.etree.ElementTree import Element, SubElement, Comment, tostring
source(findFile("scripts", "global.py"));
source(findFile("scripts", "Modals.py"));
controllerListInfo = []   
CompletecontrollerListInfo = []  
featureListInfo=[]
productSpecificInfoList = []
ObjectReferenceList = [];
CommonControllerVariant=None;
xml_file=None

def main():
    try:
        global xml_file
      
        xml_file = ReportXml();
    
        xml_file.project_name("KOOLPROG_TESTNG")
        
        MainInputSheet="AutomationInputSheet.xlsx"
        readMainInputSheet(MainInputSheet)
        readCompleteMainInputSheet(MainInputSheet) #to read all code no irrespective of totest="No"
    #     readProductSpecificList(MainInputSheet)
        readFeatureInputSheet(MainInputSheet)
        parseObjectList();
        parseFeatureList()
        
    except:
    
        mydata = ET.tostring(xml_file.top)
        myfile = open("XMLReport.xml", "w+")
        myfile.write(mydata)
        
          
def readMainInputSheet(MainInputSheet):
    global CommonControllerVariant
    controllerListInfoDict={}
    mainSheetFile = xlrd.open_workbook(MainInputSheet) 
    controllerListInfoSheet = mainSheetFile.sheet_by_index(0)
    no_of_rows=controllerListInfoSheet.nrows
    row=controllerListInfoSheet.row_values(0)
    count=0
    i=0
    for i in range(i,len(row)):    
        if "controllerFamily" == row[i]:
            controllerListInfoDict["controllerFamily"]=count
            count=count+1
            
        elif "controllerVariant" == row[i]:
            controllerListInfoDict["controllerVariant"]=count
            count=count+1
            
        elif "controllerCodeNo" == row[i]:
            controllerListInfoDict["controllerCodeNo"]=count
            count=count+1
            
        elif "softwareVersion" == row[i]:
            controllerListInfoDict["softwareVersion"]=count
            count=count+1
            
        elif "controllerPV" == row[i]:
            controllerListInfoDict["controllerPV"]=count
            count=count+1
           
        elif "controllerApplication" == row[i]:
            controllerListInfoDict["controllerApplication"]=count
            count=count+1
           
        elif "database" == row[i]:
            controllerListInfoDict["database"]=count
            count=count+1
            
        elif "toTest" == row[i]:
            controllerListInfoDict["toTest"]=count
            count=count+1
            
        elif "PortNumber" == row[i]:
            controllerListInfoDict["PortNumber"]=count
            count=count+1
            
        elif "Isdefault" == row[i]:
            controllerListInfoDict["Isdefault"]=count
            count=count+1
        
        else:
            count=count+1
    for i in range(1,no_of_rows):
        row=controllerListInfoSheet.row_values(i)
        controllerFamily=row[controllerListInfoDict["controllerFamily"]] 
        controllerVariant=row[controllerListInfoDict["controllerVariant"]]
        controllerCodeNo=row[controllerListInfoDict["controllerCodeNo"]]
        softwareVersion=row[controllerListInfoDict["softwareVersion"]]
        controllerPV=row[controllerListInfoDict["controllerPV"]]
        controllerApplication=row[controllerListInfoDict["controllerApplication"]]
        database=row[controllerListInfoDict["database"]]
        toTest=row[controllerListInfoDict["toTest"]]    
        portNumber=row[controllerListInfoDict["PortNumber"]]
        Isdefault=row[controllerListInfoDict["Isdefault"]]
        if toTest=="YES":
            controller = ControllerInfo(controllerFamily, controllerVariant, controllerCodeNo, softwareVersion,controllerPV,controllerApplication, database,portNumber,Isdefault) 
            controllerListInfo.append(controller)
            CommonControllerVariant=controllerVariant
    return controllerListInfo


# def readProductSpecificList(MainInputSheet):
#     
#     productSpecificInfoDict={}
#     mainSheetFile = xlrd.open_workbook(MainInputSheet) 
#     productSpecificInfoSheet = mainSheetFile.sheet_by_index(5)
#     no_of_rows=productSpecificInfoSheet.nrows
#     row=productSpecificInfoSheet.row_values(0)
#     count=0
#     i=0
#     for i in range(i,len(row)):    
#         if "moduleName" == row[i]:
#             productSpecificInfoDict["moduleName"]=count
#             count=count+1
#             
#         elif "controllerName" == row[i]:
#             productSpecificInfoDict["controllerName"]=count
#             count=count+1
#             
#         elif "operations" == row[i]:
#             productSpecificInfoDict["operations"]=count
#             count=count+1
#             
#         elif "symbolicName" == row[i]:
#             productSpecificInfoDict["symbolicName"]=count
#             count=count+1
#             
#         else:
#             count=count+1
#     for i in range(1,no_of_rows):
#         row= productSpecificInfoSheet.row_values(i)
#         moduleName= row[productSpecificInfoDict["moduleName"]]
#         controllerFamily= row[productSpecificInfoDict["controllerName"]]
#         operationInfo= row[productSpecificInfoDict["operations"]]
#         operationList = operationInfo.split('\n')
#         symbolicNameInfo = row[productSpecificInfoDict["symbolicName"]]
#         symbolicNameList = symbolicNameInfo.split('\n')
#         productSpecificInfo = Modals.ProductSpecificInfo(moduleName= moduleName,controllerFamily= controllerFamily,operationList= operationList, symbolicNameList= symbolicNameList);
#         productSpecificInfoList.append(productSpecificInfo);
#     return productSpecificInfoList;
#       

  
# def readFeatureInputSeet():
# 
#     featureRecords = testData.dataset(Constants.FeatureInputSheetPath)
#     for rec in featureRecords:
#         featureToTest = testData.field(rec, 4)
#         if (featureToTest == "YES"):     
#             mainFeatures = testData.field(rec, 0)
#             subFeatures = testData.field(rec, 1)
#             scope = testData.field(rec, 2)
#             controllerFamilyInfo = testData.field(rec, 3)
#             controllerFamily = controllerFamilyInfo.split(',')
#             moduleNameInfo = testData.field(rec, 5)   
#             moduleName = moduleNameInfo.split(',')         
#             featureInfo = Modals.FeaturesInfo(mainFeatures,subFeatures,scope,controllerFamily,moduleName)
#             featureListInfo.append(featureInfo)  
#     return featureListInfo       

def readFeatureInputSheet(featureInputSheet):
    FeatureInputSheetDict={}
    moduleScreenList = {}
    mainSheetFile = xlrd.open_workbook(featureInputSheet) 
    featureListInfoSheet = mainSheetFile.sheet_by_index(1)
    no_of_rows=featureListInfoSheet.nrows
    row=featureListInfoSheet.row_values(0)
    count=0
    i=0
    #test.log(str(len(row)))
    for i in range(i,len(row)):    
        if "mainFeatures" == row[i]:
            FeatureInputSheetDict["mainFeatures"]=count
            count=count+1
        elif "subFeatures" == row[i]:
            FeatureInputSheetDict["subFeatures"]=count
            count=count+1
           
        elif "scope" == row[i]:
            FeatureInputSheetDict["scope"]=count
            count=count+1
          
        elif "controllerFamily" == row[i]:
            FeatureInputSheetDict["controllerFamily"]=count
            count=count+1
          
        elif "toTestFeature" == row[i]:
            FeatureInputSheetDict["toTestFeature"]=count
            count=count+1
           
        elif "moduleName" == row[i]:
            FeatureInputSheetDict["moduleName"]=count
            count=count+1
               
        elif "moduleScreen" == row[i]:
            FeatureInputSheetDict["moduleScreen"]=count
            count=count+1
        else:
            count=count+1
            
    for i in range(1,no_of_rows):        
        row=featureListInfoSheet.row_values(i)
        mainFeatures=row[FeatureInputSheetDict["mainFeatures"]] 
        subFeatures=row[FeatureInputSheetDict["subFeatures"]]
        scope=row[FeatureInputSheetDict["scope"]]
        controllerFamily=row[FeatureInputSheetDict["controllerFamily"]]
        toTestFeature=row[FeatureInputSheetDict["toTestFeature"]]
        moduleNameInfo=row[FeatureInputSheetDict["moduleName"]]
        moduleName=moduleNameInfo.split('\n')        
        moduleScreen=row[FeatureInputSheetDict["moduleScreen"]]
        moduleScreen=moduleScreen.split('\n') 
        if toTestFeature == "Yes":
#             for testModule in moduleName:
#                 moduleName.remove(testModule)
#                 testModule=testModule.encode('utf-8')
#                 moduleName.append(testModule)
#             moduleName=moduleName[::-1]
#             test.log(str(moduleName))
            featureInfo=FeaturesInfo(mainFeatures,subFeatures,scope,controllerFamily,moduleName, moduleScreen )
            featureListInfo.append(featureInfo)   
            
    return featureListInfo     

def parseObjectList():
 
    objects = testData.dataset("Objects.xls")
    for obj in objects:   
        objName = testData.field(obj, 0)
        symbName = testData.field(obj, 1)       
        ObjectReferenceList.append(objName+'#'+symbName)
        
        
def readCompleteMainInputSheet(MainInputSheet):
    controllerListInfoDict={}
    mainSheetFile = xlrd.open_workbook(MainInputSheet) 
    controllerListInfoSheet = mainSheetFile.sheet_by_index(0)
    no_of_rows=controllerListInfoSheet.nrows
    row=controllerListInfoSheet.row_values(0)
    count=0
    i=0
    for i in range(i,len(row)):    
        if "controllerFamily" == row[i]:
            controllerListInfoDict["controllerFamily"]=count
            count=count+1
            
        elif "controllerVariant" == row[i]:
            controllerListInfoDict["controllerVariant"]=count
            count=count+1
            
        elif "controllerCodeNo" == row[i]:
            controllerListInfoDict["controllerCodeNo"]=count
            count=count+1
            
        elif "softwareVersion" == row[i]:
            controllerListInfoDict["softwareVersion"]=count
            count=count+1
            
        elif "controllerPV" == row[i]:
            controllerListInfoDict["controllerPV"]=count
            count=count+1
           
        elif "controllerApplication" == row[i]:
            controllerListInfoDict["controllerApplication"]=count
            count=count+1
           
        elif "database" == row[i]:
            controllerListInfoDict["database"]=count
            count=count+1
            
        elif "toTest" == row[i]:
            controllerListInfoDict["toTest"]=count
            count=count+1
            
        elif "PortNumber" == row[i]:
            controllerListInfoDict["PortNumber"]=count
            count=count+1
            
        elif "Isdefault" == row[i]:
            controllerListInfoDict["Isdefault"]=count
            count=count+1
        
        else:
            count=count+1
    for i in range(1,no_of_rows):
        row=controllerListInfoSheet.row_values(i)
        controllerFamily=row[controllerListInfoDict["controllerFamily"]] 
        controllerVariant=row[controllerListInfoDict["controllerVariant"]]
        controllerCodeNo=row[controllerListInfoDict["controllerCodeNo"]]
        softwareVersion=row[controllerListInfoDict["softwareVersion"]]
        controllerPV=row[controllerListInfoDict["controllerPV"]]
        controllerApplication=row[controllerListInfoDict["controllerApplication"]]
        database=row[controllerListInfoDict["database"]]
        toTest=row[controllerListInfoDict["toTest"]]    
        portNumber=row[controllerListInfoDict["PortNumber"]]
        Isdefault=row[controllerListInfoDict["Isdefault"]]
        controller = ControllerInfo(controllerFamily, controllerVariant, controllerCodeNo, softwareVersion,controllerPV,controllerApplication, database,portNumber,Isdefault) 
        CompletecontrollerListInfo.append(controller)
    return CompletecontrollerListInfo

def parseFeatureList():
    modules = [];
    for feature in featureListInfo:
        moduleScreen = feature.moduleScreen
        modules = feature.moduleName
        subFeature=feature.subFeatures
        test.log(str(moduleScreen))
        test.log(str(modules))
        test.log(str(subFeature))
        test.log( "path ={}".format(os.getcwd()))
        object=SourceLocator()
        path=object.find_TestSuiteLocation(subFeature,"test.py")
        source(path)
        try:
            eval("execute()") # Executes the source'd test case's main() function
        except exceptions.Exception, e:
            test.log("Error occurred in test case: %s" % (e))
                    
        os.popen(r"Taskkill /IM KoolProg.exe /F")
        snooze(4)

#         else: 
#             test.log("Folder not found")
