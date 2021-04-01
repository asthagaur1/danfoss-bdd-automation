# coding=utf-8

import __builtin__
from distutils.util import strtobool
from PIL import Image
import imagehash
import datetime

def Enable(symbolicname, value):
    result = False 
    test.log("inside enable function")
    tbl=waitForObjectExists(symbolicname)  
    Object=tbl.nativeObject
    test.compare(bool(strtobool((value))), Object.IsEnabled) 
    result = True
    return result 

def Tooltip(symbolicname, value):
   test.log("inside tooltip")
   result = False   
   tbl=waitForObjectExists(symbolicname)
   test.compare(value, tbl.tooltip) 
   result = True 
   return result  

def FinishButton(symbolicname):
    test.log("inside Finish Button")
    result = False
    mouseClick(waitForObject(symbolicname), MouseButton.PrimaryButton)
    try:
        snooze(5)      
        mouseClick(":messageBoxDisplay_btnYes_Button"), MouseButton.PrimaryButton
        snooze(10)
    except:
            snooze(5)
    result = True 
    return result 

def Snooze():
    test.log("inside snooze")
    result = False
    snooze(20)
    result = True
    return result 

def ComboBox_EnumExistenceCheck(symbolicName, value):
    value=value.split("%%")

    expand(waitForObject(symbolicName))
    mouseClick(waitForObject(symbolicName))
    drop_down_list=waitForObject(symbolicName)
    children = object.children(drop_down_list)
    ValueFromKoolProg=[]
    for child in children:
        if child.type=="ComboBoxItem":
#             test.log(str(child.text))
            ValueFromKoolProg.append(child.text)
    test.log(str(value))
    test.log(str(ValueFromKoolProg))
    count=len(value)
    count_KoolProg=len(ValueFromKoolProg)
    if count==count_KoolProg:
        for i in value:
            if i not in ValueFromKoolProg:
                test.fail("List is not the same")
                return
    else:
        test.fail("List is not the same")
        return
    test.passes("List is the same")
    return True

def Text(symbolicname, value):
    test.log("inside text")
    result = False
    tbl=waitForObjectExists(symbolicname)     
    test.compare(str(value).strip(), str(tbl.text)) 
    #Object=tbl.nativeObject
    result = True 
    return result

def verify_Text(controllerVariant):
    result=False
    try:
        test.vp(controllerVariant)
    except:
        test.fail("Verification Point does not exists to validate")
    result=True
    return result

def TextDescription(symbolicname, value):
    test.log("inside text")
    result = False
    test.log(str(value))
    test.log(str(__builtin__.type(value)))
    tbl=waitForObjectExists(symbolicname)     
    test.compare(str(value).strip(), str(tbl.text)) 
    result = True 
    return result

def Text_Box(symbolicname, value):
    test.log("inside textbox ")
    result = False
    doubleClick(waitForObject(symbolicname), MouseButton.PrimaryButton)
    snooze(2)
    type(waitForObject(symbolicname), value)
    snooze(2)
    type(waitForObject(symbolicname), "<Return>")
    snooze(2)
    result = True
    return result

def ComboBox_Edit(symbolicname, value):
    test.log("inside Combobox_edit")
    result = False
    mouseClick(waitForObject(symbolicname), MouseButton.PrimaryButton)
    snooze(2) 
    type(waitForObject(symbolicname), value)
    snooze(2)
    type(waitForObject(symbolicname), "<Return>")  
    result = True
    return result

def Edit(symbolicname, value):
    test.log("inside edit")
    result = False 
    type(waitForObject(symbolicname), "<Right>")
    type(waitForObject(symbolicname), "<Backspace>")
    type(waitForObject(symbolicname), value)
    result = True
    return result

def Checked(symbolicname, value):
    test.log("inside checked")
    result = False
    test.log("this function check label is checked or not.")
    tbl=waitForObjectExists(symbolicname)   
    test.compare(bool(strtobool(value)),(tbl.checked))
    result = True
    return result

def ClickButton(symbolicname):
    test.log("inside click button")
    result = False
    #mouseClick(waitForObject(symbolicname), MouseButton.PrimaryButton)
    snooze(3)
    try:
        mouseClick(waitForObject(symbolicname))
    except:
        test.log("Failed to find:")
        test.log(str(symbolicname))
    snooze(2) 
    result = True
    return result

def ComboBox_Edit(symbolicname, value):
    test.log("inside combo box")
    result = False
    mouseClick(waitForObject(symbolicname), MouseButton.PrimaryButton)
    snooze(2) 
    
    type(waitForObject(symbolicname), value)
    snooze(2)
    type(waitForObject(symbolicname), "<Return>")  
    result = True
    return result

def verify_Image(symbolicname,controllerVariant):
    result=False
    widget = waitForObject(symbolicname)
    image = grabWidget(widget)
    image.save("testImage.png", "PNG")
    testData.get("testImage.png")
    im = Image.open("testImage.png")
    im.save("testImage.jpg")
    input_TestImage= "Controller Images\\"+controllerVariant+"_ProductImage.png" 
    input_TestImage=str(input_TestImage)  
    try:
        hash0 = imagehash.average_hash(Image.open("testImage.jpg")) 
        hash1 = imagehash.average_hash(Image.open(input_TestImage)) 
        cutoff = 3
        test.log(str(hash0))
        test.log(str(hash1))
        test.log(str(hash0-hash1))
        
        if hash0 - hash1 < cutoff:
            test.passes('images are similar')
        else:
            test.fail('images are not similar')
    
    except:
        test.fail("Source Image is not found to compare")
    result=True
    return result 

def verify_WireImage(symbolicname,controllerVariant):
    result=False
    widget = waitForObject(symbolicname)
    image = grabWidget(widget)
    image.save("testImage.png", "PNG")
    testData.get("testImage.png")
    im = Image.open("testImage.png")
    im.save("testImage.jpg")
    input_TestImage= "Controller Images\\"+controllerVariant+"_SupportImage.png"
    try:
        hash0 = imagehash.average_hash(Image.open("testImage.jpg")) 
        hash1 = imagehash.average_hash(Image.open(input_TestImage)) 
        cutoff = 5
        test.log(str(hash0))
        test.log(str(hash1))
        test.log(str(hash0-hash1))
        if hash0 - hash1 < cutoff:
            test.passes('images are similar')
        else:
            test.fail('images are not similar')
    except:
        test.fail("Source Image not found to compare")
    result=True
    return result

def verify_ProductInfo(symbolicName, value , value1,controllerVariant):
    #This is applicable only if application exists
    value1=value1.split('$$')
    if len(value1)>2:
        wireImageInput=value1[0].split(",")
        DescriptionInput=value1[1].split(",")  
        ApplicationDynamicLabel=value1[2].split(",")     
        applicationList=value.split("%%")
        expand(waitForObject(symbolicName))  
        mouseClick(waitForObject(symbolicName))
        drop_down_list=waitForObject(symbolicName)
        children = object.children(drop_down_list)
        for application in applicationList:
            for child in children:
                if child.type=="ComboBoxItem":
                    if child.text==application:
                        type(waitForObject(symbolicName), application)
                        snooze(2)
                        type(waitForObject(symbolicName), "<Return>") 
                        symbolicName_WireImage=getSymbolicName(wireImageInput[1])
                        argument_WireImage=controllerVariant+"_"+application
                        verify_WireImage(symbolicName_WireImage, argument_WireImage)
                        argument_Description=controllerVariant + "_" + application + "_Description"
                        verify_Text(argument_Description)
                        symbolicName_ApplicationDynamicLabel=getSymbolicName(ApplicationDynamicLabel[1])
                        Text(symbolicName_ApplicationDynamicLabel,application)
    elif len(value1)==2:
        ApplicationDynamicLabel=value1[1].split(",")
        applicationList=value.split("%%")
        expand(waitForObject(symbolicName))  
        mouseClick(waitForObject(symbolicName))
        drop_down_list=waitForObject(symbolicName)
        children = object.children(drop_down_list)
        for application in applicationList:
            for child in children:
                if child.type=="ComboBoxItem":
                    if child.text==application:
                        type(waitForObject(symbolicName), application)
                        snooze(2)
                        type(waitForObject(symbolicName), "<Return>")
                        argument_Description=controllerVariant + "_" + application + "_Description"
                        verify_Text(argument_Description)
                        symbolicName_ApplicationDynamicLabel=getSymbolicName(ApplicationDynamicLabel[1])
                        Text(symbolicName_ApplicationDynamicLabel,application)

def Getonlineibuttonvariantinfo(symbolicname):
    test.log("inside text")
    result = False
    tbl=waitForObjectExists(symbolicname)     
    onlineIbuttonVariant=str(tbl.text) 
    #Object=tbl.nativeObject
    result = True 
    return onlineIbuttonVariant

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

def verify_MaxCharacter(symbolicname,value):
    result=False
    max_Value_list=value.split('-')
    max_Value=__builtin__.int(max_Value_list[1])
    above_boundaryLimit=max_Value+10
    validateString=''
    for i in range(0,above_boundaryLimit):
        if i %2==0:
            validateString=validateString+str(i)
        else:
            validateString=validateString+"i"
            
    type(waitForObject(symbolicname), validateString)
    snooze(5)
    tbl=waitForObjectExists(symbolicname)     
    name=str(tbl.text)
    Length_Of_String=len(name)
    
    test.log(str(Length_Of_String))
    
    if __builtin__.int(Length_Of_String) == __builtin__.int(max_Value):
        test.passes("Boundary Values are checked and its valid")
    elif __builtin__.int(Length_Of_String) < __builtin__.int(max_Value):
        test.fail("Only minimum Characters are allowed to enter")
    elif __builtin__.int(Length_Of_String) > __builtin__.int(max_Value):
        test.fail("Number of characters exceeds the maximum Boundary Limit")
        
    type(waitForObject(symbolicname),'')
    return True

def verify_UnwantedCharEntryInEdit(symbolicname,value,value1):
    value1=value1.split(',')
    messageWindow=value1[0]
    messageWindowOkButton=value1[1]
    messageWindowCharacterUnsupportedLabel=value1[2]
    messageWindowCloseButton=value1[3]
    messageWindowSymbolicName=getSymbolicName(messageWindow)
    messageWindowOkButtonSymbolicName=getSymbolicName(messageWindowOkButton)
    messageWindowCharacterUnsupportedLabelSymName=getSymbolicName(messageWindowCharacterUnsupportedLabel)
    messageWindowCloseButtonSymName=getSymbolicName(messageWindowCloseButton)
    UnsupportedCharactersList=value.split('$')
    result=False
    type(waitForObject(symbolicname), '')
    snooze(4)
    tbl=waitForObjectExists(symbolicname)     
    name=str(tbl.text)
    Length_Of_String=len(name)
    
    test.log(str(Length_Of_String))
    for i in range(1,len(UnsupportedCharactersList)):
        type(waitForObject(symbolicname), UnsupportedCharactersList[i])
        test.log(UnsupportedCharactersList[i])
        try:
            snooze(3)
            if object.exists(messageWindowSymbolicName):
                test.passes("Message  Box is displayed to indicate the error")
                if object.exists(messageWindowOkButtonSymbolicName):
                    test.log("Ok button is there")
                    Text(messageWindowOkButtonSymbolicName, "OK")
                    if object.exists(messageWindowCharacterUnsupportedLabelSymName):
                        test.log("Label is there")
                        test.vp("Unsupported_Characters_verification_in_ProjectName&Description")
                        if object.exists(messageWindowCloseButtonSymName):
                            snooze(2)
                            test.log("Close button is there")
                            test.passes("Label, Close Button , Ok Button exists")
                            
                        else:
                            test.fail("One of the object does not exists in Message Box")
                    else:
                        test.fail("One of the object does not exists in Message Box")
                else:
                    test.fail("One of the object does not exists in Message Box")
                
            else:
                test.fail("Message Box is not displayed to indicate the error")
            
           
            
            mouseClick(messageWindowOkButtonSymbolicName), MouseButton.PrimaryButton
        except:
            snooze(3)
    result=True
    return result

def CheckExistenceOfObject(symbolicName):
    result=False
    tbl=waitForObjectExists(symbolicName)
    if tbl.nativeObject.IsVisible == True:
        test.passes("Object Exists")
        test.log(str(symbolicName))
    else:
        test.fail("Object does not exists")
        test.log(str(symbolicName))
    result=True
    return result

def CheckAbsenceOfObject(symbolicName):
    result=False
    tbl=waitForObjectExists(symbolicName)
    if tbl.nativeObject.IsVisible == True:
        test.fail("Object exists")
    else:
        test.passes("Object does not Exists")
    test.log(str(symbolicName))

    result=True
    return result

def UncheckCheckBox(symbolicName):
    result=False
    tbl=waitForObject(symbolicName)
    if object.exists(symbolicName):
        if tbl.checked:
            mouseClick(waitForObject(symbolicName))
            test.compare(findObject(symbolicName).checked, False)
#         else:
#             test.fail("CheckBox is unchecked by default")
    else:
        test.fail("Öbject does not exists to uncheck")
    result=True
    return result

def CheckCheckBox(symbolicName):
    result=False
    tbl=waitForObject(symbolicName)
    if object.exists(symbolicName):
        if not tbl.checked:
            mouseClick(waitForObject(symbolicName))
            test.compare(findObject(symbolicName).checked, True)
#         else:
#             test.fail("CheckBox is unchecked by default")
    else:
        test.fail("Object does not exists to check")
    result=True
    return result

def verifyList_When_DynamicChoiceInComboBox(ComboBoxChoiceListsymbolicName,valueList,ComboBoxDynamicListCommonName):   
    result=False
    ChoiceList_DynamicListDict={}
    valueList=valueList.split('%%')
    for listItem in valueList:
        listItemList=listItem.split('$$')
        ChoiceItem=listItemList[0]
        DynamicItem=listItemList[1]
        if ChoiceItem  in ChoiceList_DynamicListDict:
            ChoiceList_DynamicListDict[ChoiceItem].append(DynamicItem)
        else:
            ChoiceList_DynamicListDict[ChoiceItem]=[]
            ChoiceList_DynamicListDict[ChoiceItem].append(DynamicItem)
            
    expand(waitForObject(ComboBoxChoiceListsymbolicName))  
    mouseClick(waitForObject(ComboBoxChoiceListsymbolicName))
    drop_down_list=waitForObject(ComboBoxChoiceListsymbolicName)
    children = object.children(drop_down_list)
    ComboBoxDynamicListCommonNameSymName=getSymbolicName(ComboBoxDynamicListCommonName)
    expand(waitForObject(ComboBoxDynamicListCommonNameSymName))  
    mouseClick(waitForObject(ComboBoxDynamicListCommonNameSymName))
    drop_down_CheckList=waitForObject(ComboBoxDynamicListCommonNameSymName)
    checkList=[]
    for choice,DynamicList in ChoiceList_DynamicListDict.items():
        for child in children:
            if child.type=="ComboBoxItem":
                if child.text==choice:
                    type(waitForObject(ComboBoxChoiceListsymbolicName), choice)
                    snooze(3)
                    childrenList_ToCheck = object.children(drop_down_CheckList)
                    for childCheck in childrenList_ToCheck:
                        if childCheck.type=="ComboBoxItem":
                            checkList.append(childCheck.text)



                    test.log(str(DynamicList))
                    test.log(str(checkList))
                    if DynamicList.sort()==checkList.sort():
                        test.passes("Dynamic Lists has been updated correctly")
                    else:
                        test.fail("Dynamic Lists has not been updated correctly")

        checkList=[]
    result=True
    return result

def ValidateIbuttonOnline(symbolicname,value1):
    tbl=waitForObjectExists(symbolicname)
    controllerVariant=str(tbl.text)
    test.log(controllerVariant)
    value1=value1.split('$$')
    wireImageInput=value1[0].split(",")
    DescriptionInput=value1[1].split(",")
    imageInput=value1[2].split(",")
    symbolicName_Image=getSymbolicName(imageInput[1])     
    symbolicName_WireImage=getSymbolicName(wireImageInput[1])
    verify_WireImage(symbolicName_WireImage, controllerVariant)
    argument_Description=controllerVariant + "_"+ "Description"
    verify_Text(argument_Description)
    verify_Image(symbolicName_Image, controllerVariant)
    
def selectControllerparse(symbolicname, fam, val): ##While creating a project, to dynamically click on expander and controller name as per the input from excel sheet##
    test.log("inside select controller")
    fam=str(fam)
    val=str(val)
    tbl = waitForObjectExists(symbolicname)
    try:
        with codecs.open(findFile("testdata", r"\Latest_CDF\device.jso"),encoding='utf-8') as data_file:
            content = data_file.read()
            content = content.replace(u'\ufeff','') 
            data = json.loads(content)
            
            Parameter_Count = len(data["Parameters"])
            
            
            Headers = len(data["Header"])
            
            Description = data["Header"]["Description"]
            Product_Variant =str(Description)
            test.log("Product Variant from CDF file is: " +str(Product_Variant))
    except:
        test.log("not akcc controller")
        
    ControllerTable = {}        
    items_1 = object.children(tbl)
    for item_1 in items_1:        
        if((object.properties(item_1)["type"] == "TabItem")and(object.properties(item_1)["name"] == "tabController")) :
            TableItem = object.children(item_1)
            for table in TableItem:
                if((object.properties(table)["type"] == "Table") and (object.properties(table)["name"] == "datagridProducts")):
                    childs = object.children(table)
                    for child in childs:                
                        if((object.properties(child)["type"] == "WPFControl") and (object.properties(child)["class"] == "System.Windows.Controls.GroupItem")):
                            expander = object.children(child)
                            for exp in expander:
                                if(object.properties(exp)["type"] == "Expander"):
                                    ExpanderName = None
                                    ExpanderName = exp.nativeObject.DataContext.Name
                                    if (str(ExpanderName).strip() == str(fam).strip()):
                                        if exp.expanded == False:
                                            mouseClick(waitForObject(exp)), MouseButton.PrimaryButton
                                            test.log("Expander name in KoolProg is " + str(ExpanderName))
                                    rows = object.children(exp)
                                    for row in rows:                                                               
                                        if(object.properties(row)["type"] == "TableRow"):
                                            cells = object.children(row)
                                            for cell in cells:
                                                if (object.properties(cell)["type"] == "TableCell"):
                                                    CellName = None
                                                    CellName = object.properties(cell)["text"]
                                                    if (str(CellName).strip() == str(val).strip()):
                                                        mouseClick(cell), MouseButton.PrimaryButton
                                                        test.log("Controller name in KoolProg is: " + str(CellName))
