import re
source(findFile("scripts", "NavigationFunction.py"))
from xlrd import open_workbook
import csv
import pandas as pd
import inputConfig
           
def getSymbolicName(objectName):   
    objectName = objectName.replace('\r', '')  
    objectName = objectName.rstrip()
    matching = [s for s in ObjectReferenceList if objectName in s]
    objList = []
    count = len(matching)
    if(count != 0):
        for x in matching[0].split('#'):
            objList.append(x)  
        symbolicname = objList[1]
    
    return symbolicname

def getSpecificList(productSpecificInfoList , moduleName):
    productSpecificList = [];
    for productInfo in productSpecificInfoList:
        if(productInfo.moduleName == moduleName):
            productSpecificList.append(productInfo);
    
    return productSpecificList;

def chk_MenuIconState(controllerVariant):
    file="chk_MenuIconState_offline.xlsx"
    keyAction(file,controllerVariant)

def chk_NewProject_ProductInfo(controllerVariant):
    file="chk_NewProject_ProductInfo.xlsx"
    keyAction(file,controllerVariant)
       
def chk_SetParameters_ProductInfo(controllerVariant):
    file="chk_SetParameter_ProductInfo.csv"
    keyAction(file,controllerVariant)
    
def chk_SetParameters_IProductInfo(controllerVariant):
    file="chk_SetParameters_IProductInfo.csv"
    keyAction(file,controllerVariant)
    
def chk_NewProjectWindow(controllerVariant):
    file="chk_NewProjectWindow.xlsx"
    controllerDetails={}
    mainSheetFile = xlrd.open_workbook(file) 
    controllerListInfoSheet = mainSheetFile.sheet_by_index(0)
    no_of_rows=controllerListInfoSheet.nrows
    row=controllerListInfoSheet.row_values(0)
    count=0
    i=0
    for i in range(i,len(row)):    
        if "controllerFamily" == row[i]:
            controllerDetails["controllerFamily"]=count
            count=count+1
            
        elif "controllerVariant" == row[i]:
            controllerDetails["controllerVariant"]=count
            count=count+1
            
        elif "codeNumber_PVVersion" == row[i]:
            controllerDetails["codeNumber_PVVersion"]=count
            count=count+1
            
        elif "application" == row[i]:
            controllerDetails["application"]=count
            count=count+1
            
        elif "subGranularList" == row[i]:
            controllerDetails["subGranularList"]=count
            count=count+1
            
        elif "IsPVVersion" == row[i]:
            controllerDetails["IsPVVersion"]=count
            count=count+1
            

        else:
            count=count+1
    for i in range(1,no_of_rows):
        row=controllerListInfoSheet.row_values(i)
        controllerVariantCheck=row[controllerDetails["controllerVariant"]]
        if controllerVariant in controllerVariantCheck:
            controllerFamily=row[controllerDetails["controllerFamily"]]    
            codeNumber_PVVersion=getCodeNumberPVVersion(controllerVariant)
            application=getApplication(controllerVariant)    
            application_CodeNumber=getApplication_CodeNumber(controllerVariant)
            codeNumberSWVersion=getcodeNumberSWVersion(controllerVariant)
#             codeNumber_PVVersion=row[controllerDetails["codeNumber_PVVersion"]]
#             application=row[controllerDetails["application"]]
            subGranularList=row[controllerDetails["subGranularList"]]
            IsPVVersion=row[controllerDetails["IsPVVersion"]]
            break
#     if codeNumber_PVVersion!= None or codeNumber_PVVersion!="":
#         readHeader=['controllerFamily','controllerVariant','codeNumber_PVVersion','IsPVVersion','application','subGranularList']
#         updateCSVRow("codeNumber_PVVersion", codeNumber_PVVersion, "controllerVariant", controllerVariant, "controllerFamily", controllerFamily, "chk_NewProjectWindow.csv", readHeader)
#     if application!= None or application!="":
#         readHeader=['controllerFamily','controllerVariant','codeNumber_PVVersion','IsPVVersion','application','subGranularList']
#         updateCSVRow("application", application, "controllerVariant", controllerVariant, "controllerFamily", controllerFamily, "chk_NewProjectWindow.csv", readHeader)
    subGranularList=subGranularList.split("\n")      
    for subGranular in subGranularList:
        if "(" in subGranular:
            splittedForm=re.split("\(",subGranular)
            functionName=splittedForm[0]
            splittedForm.remove(functionName)
            splittedForm[0]=(splittedForm[0].replace(")",",controllerVariant"))
            argument="("+splittedForm[0]+")"
            eval(functionName + str(argument))
        else:
            argument="(controllerVariant)"
            eval(subGranular + str (argument))
        
def findControllerFamily(controllerVariant):
    for controller in controllerListInfo:
        if controller.controllerVariant == controllerVariant:
            controllerFamily = controller.controllerFamily
    
    return controllerFamily

def findCSVRowCount(file_to_pass):
    results = pd.read_csv(file_to_pass)
    return results

def updateCSVRow(updateValueField,updateValue,conditionalValueField1,conditionalValue1,conditionalValueField2,conditionalValue2,file,readHeader):
    with open(file) as csvfile:
        rowCount = findCSVRowCount(file)
#         data=csv.DictReader(csvfile)
        readData = [row for row in csv.DictReader(csvfile)]
        for i in range(0, len(rowCount)):
            if (conditionalValueField2== None) and (conditionalValue2==None):
                if readData[i][conditionalValueField1] == conditionalValue1 or readData[i][conditionalValueField1]=="Common":
                    readData[i][updateValueField] = updateValue
            else:
                if (readData[i][conditionalValueField1] == conditionalValue1 or readData[i][conditionalValueField1]=="Common") and (readData[i][conditionalValueField2]== conditionalValue2) :
                    readData[i][updateValueField] = updateValue
                
        
        
    with open(file, "w") as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=readHeader)
        writer.writeheader()
        writer.writerows(readData)

def chk_Application(applicationList,controllerVariant):
    controller_applicationList=applicationList
    file="chk_Application.csv"
    controllerFamily = findControllerFamily(controllerVariant)
    readHeader = ['controllerFamily', 'Object Name', 'Action', 'ToolTip/Name', 'applicationValue', 'Value1']
    updateCSVRow("applicationValue",controller_applicationList,"controllerFamily",controllerFamily,None,None,file,readHeader)
    keyAction(file,controllerVariant)
          
def chk_ProductInfo(applicationList,controllerVariant):
    if str(applicationList) in "":
        file='chk_ProductInfoStatic.csv'
        keyAction(file,controllerVariant)
    else:
        chk_Application(applicationList,controllerVariant)
        file="chk_ProductInfoDynamic.csv"
        controllerFamily = findControllerFamily(controllerVariant)
        action='verify_ProductInfo'
        readHeader = ['controllerFamily', 'Object Name', 'Action', 'ToolTip/Name', 'Value', 'Value1']
        updateCSVRow("Value",applicationList,"controllerFamily",controllerFamily,'Action',action,file,readHeader)
        keyAction(file,controllerVariant)
 
def chk_CodeNumber_PVVersion(codeNumber_PVVersion,IsPVVersion,controllerVariant):
    if IsPVVersion == "No":
        file = 'chk_CodeNumberWithPVVersion.csv'
        controllerFamily = findControllerFamily(controllerVariant)
        action='ComboBox_EnumExistenceCheck'
        readHeader = ['controllerFamily', 'Object Name', 'Action', 'ToolTip/Name', 'Value', 'Value1']
        updateCSVRow("Value",codeNumber_PVVersion,"controllerFamily",controllerFamily,'Action',action,file,readHeader)
        keyAction(file,controllerVariant)
    
    elif IsPVVersion == "Yes":
        file= 'chk_CodeNumberWithPVVersionBothExists.csv'
        controllerFamily = findControllerFamily(controllerVariant)
        action='verifyList_When_DynamicChoiceInComboBox'
        readHeader = ['controllerFamily', 'Object Name', 'Action', 'ToolTip/Name', 'Value', 'Value1']
        updateCSVRow("Value",codeNumber_PVVersion,"controllerFamily",controllerFamily,'Action',action,file,readHeader)
        keyAction(file,controllerVariant)
               
def getCodeNumberPVVersion(controllerVariant):
    controllerCodenumberPVversion=[]
    controllerFamily=findControllerFamily(controllerVariant)
    for controller in CompletecontrollerListInfo:
        if controller.controllerVariant == controllerVariant:
            controllerCodeNo = controller.controllerCodeNo
            controllerPV=controller.controllerPV
            if (controllerCodeNo==None and controllerPV==None) or (controllerCodeNo=="" and controllerPV==""):
                return    
            if str(controllerPV) not in " " and controller.Isdefault=="Yes":    
                codeNo_PV=str(controllerCodeNo)+'$$'+str(controllerPV)
                controllerCodenumberPVversion.append(codeNo_PV)
            elif str(controllerCodeNo) not in " " and controller.Isdefault=="Yes":
                controllerCodenumberPVversion.append(controllerCodeNo)
            
    if len(controllerCodenumberPVversion)>0:
        codeNumberPVversion='%%'.join(controllerCodenumberPVversion)
    return codeNumberPVversion
      
def getApplication(controllerVariant):
    controllergetApplication=[]
    controllerApplicationListtt=[]
    controllerFamily=findControllerFamily(controllerVariant)
    for controller in CompletecontrollerListInfo:
        if controller.controllerVariant == controllerVariant:
            controllerApplication = controller.controllerApplication
            if controllerApplication==None or controllerApplication=="":
                return
            elif controller.Isdefault=="Yes":
                controllergetApplication.append(controllerApplication)
    
    for i in controllergetApplication:
        if i not in controllerApplicationListtt:
            controllerApplicationListtt.append(str(i))
        
    if controllerApplicationListtt>0:
        applicationList='%%'.join(controllerApplicationListtt)
    return applicationList  
    
def Common_chk_ProjectName(controllerVariant):
    file="chk_ProjectName.csv"
    keyAction(file,controllerVariant)

def Common_chk_ProjectDescription(controllerVariant):
    file="chk_ProjectDescription.csv"
    keyAction(file,controllerVariant)
        
def chk_PartNoPowSupplySpindle(controllerVariant):
    file="chk_PartNoPowSupplySpindle.csv"
    keyAction(file,controllerVariant)
          
def chk_WizardCheckBox(controllerVariant):
    file="chk_WizardCheckBox.csv"
    keyAction(file,controllerVariant)    
    
def getApplication_CodeNumber(controllerVariant):
    applicationCodeNumber=[]
    controllerFamily=findControllerFamily(controllerVariant)
    for controller in CompletecontrollerListInfo:
        if controller.controllerVariant == controllerVariant:
            controllerApplication = controller.controllerApplication
            controllerCodeNo=controller.controllerCodeNo
            if (controllerApplication==None and controllerCodeNo==None) or (controllerApplication=="" and controllerCodeNo==""):
                return    
            if str(controllerCodeNo) not in " " and controller.Isdefault=="Yes":    
                appCode=str(controllerApplication)+'$$'+str(controllerCodeNo)
                applicationCodeNumber.append(appCode)
            elif str(controllerApplication) not in " " and controller.Isdefault=="Yes":
                applicationCodeNumber.append(controllerApplication)
            
    if applicationCodeNumber>0:
        codeNumberApplication='%%'.join(applicationCodeNumber)
    return codeNumberApplication
    
def chk_Application_CodeNumber(application_CodeNumber,controllerVariant):
    file="chk_Application_CodeNumber.csv"
    controllerFamily = findControllerFamily(controllerVariant)
    action='verifyList_When_DynamicChoiceInComboBox'
    readHeader = ['controllerFamily', 'Object Name', 'Action', 'ToolTip/Name', 'Value', 'Value1']
    updateCSVRow("Value",application_CodeNumber,"controllerFamily",controllerFamily,'Action',action,file,readHeader)
    keyAction(file,controllerVariant)
    
def getcodeNumberSWVersion(controllerVariant):
    controllerCodenumberSWVersion=[]
    controllerFamily=findControllerFamily(controllerVariant)
    for controller in CompletecontrollerListInfo:
        if controller.controllerVariant == controllerVariant:
            controllerCodeNo = controller.controllerCodeNo
            controllerSV=controller.controllerSV
            if (controllerCodeNo==None and controllerSV==None) or (controllerCodeNo=="" and controllerSV==""):
                return    
            if str(controllerSV) not in " " and controller.Isdefault=="Yes":    
                codeNo_PV=str(controllerCodeNo)+'$$'+str(controllerSV)
                controllerCodenumberSWVersion.append(codeNo_PV)
            elif str(controllerCodeNo) not in " " and controller.Isdefault=="Yes":
                controllerCodenumberSWVersion.append(controllerCodeNo)
            
    if controllerCodenumberSWVersion>0:
        codeNumberSWVversion='%%'.join(controllerCodenumberSWVersion)
    return codeNumberSWVversion
    
def chk_CodeNumber_SWVersion(codeNumberSWVersion,controllerVariant):
    file="chk_CodeNumber_SWVersion.csv"
    controllerFamily = findControllerFamily(controllerVariant)
    action='verifyList_When_DynamicChoiceInComboBox'
    readHeader = ['controllerFamily', 'Object Name', 'Action', 'ToolTip/Name', 'Value', 'Value1']
    updateCSVRow("Value",codeNumberSWVersion,"controllerFamily",controllerFamily,'Action',action,file,readHeader)
    keyAction(file,controllerVariant)
    
def Common_chk_SkeletonStructure(controllerVariant):
    controllerList={}
    for aController in CompletecontrollerListInfo:
        if aController.controllerFamily not in controllerList:
            controllerList[aController.controllerFamily]=aController.controllerVariant
        
    for k,v in controllerList.items():
        file="chk_SkeletonStructure.csv"
        keyAction(file,v)
    
def Common_createNewProject_CancelValidation(controllerVariant):
    file="createNewProject_CancelValidation.csv"
    keyAction(file,controllerVariant)
    
def chk_IbuttonProductInfoOnline(controllerVariant):
    file="chk_IbuttonProductInfoOnline.csv"
    keyAction(file,controllerVariant)
    
def chk_MenuIconState(controllerVariant,screen):
    snooze(10)
    file="chk_MenuIconState.xlsx"   
    temporary_file = "temporary_file.csv"
    InputListSheet, headers, min, max = merged_Rows(file, screen)
    create_TemporaryActionFile(InputListSheet,headers, min , max,temporary_file )
    keyAction(temporary_file,controllerVariant)
    os.remove(temporary_file)
            
def create_TemporaryActionFile(file, headers,  min, max, temporary_file):
    with open(temporary_file, "w") as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(headers)
        
        for row in range(file.nrows):
            if(row == min - 1):
                if (max != "NUll"):
                    for i in range(row, max):
                        writer.writerow(file.row_values(i))
                    break
                else:
                    for i in range(row,file.nrows ):
                        writer.writerow(file.row_values(i)) 
                    break
    csvfile.close()
    
def merged_Rows(file, screen):
    
    list1 = list()
    inputList = xlrd.open_workbook(file)
    InputListSheet = inputList.sheet_by_index(0)
    headers_file= InputListSheet.row_values(0)
     
    rows = InputListSheet.nrows
    cols = InputListSheet.ncols
     
    headers = inputConfig.required_fields_from_input_sheet
    Highlighted_list = InputListSheet.merged_cells 
     
    for j, value in enumerate(Highlighted_list): 
        count = 0
        for h in Highlighted_list[j]:
            count = count +1
            if count == 2:
                list1.append(h)
    list1.sort() 
                 
    count = 0       
    for col in InputListSheet.col(0): 
        count = count + 1
        if (col.value == screen):
            count1 = count  
             
            if (count1 == list1[-1]):
                min = list1[-1] + 1
                max = "NUll"
                break
            else:    
                min = count1 + 1
                count_index = list1.index(count1) + 1
                max = list1[count_index] - 1 
                break
    return(InputListSheet, headers, min , max)

def chk_GridIconState(controllerVariant,screen):
    file="chk_GridIconState.xlsx"   
    temporary_file = "temporary_file.csv"
    InputListSheet, headers, min, max = merged_Rows(file, screen)
    create_TemporaryActionFile(InputListSheet,headers, min , max,temporary_file )
    keyAction(temporary_file,controllerVariant)
    os.remove(temporary_file) 
            

    

    
 
    
        
        
        
        
        
    
    



 
            
            
            
    
    


    
    
    