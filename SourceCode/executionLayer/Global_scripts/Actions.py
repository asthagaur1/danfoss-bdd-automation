count=0

def keyAction(file,controllerVariant):
    global controllerListInfo
    source(findFile("scripts", "global.py"));
    source(findFile("scripts", "Functions.py"));
    source(findFile("scripts", "Modals.py"));
    global ResultList
    ResultList = []
    ObjectList = []
    #records = testData.dataset(file)
    objects = testData.dataset("Objects.xls")
    for obj in objects:
        objName = testData.field(obj, 0)
        symbName = testData.field(obj, 1)
        ObjectList.append(objName+'#'+symbName)
    countObj = len(ObjectList)     
#     test.log(str(countObj)) 
    ##########################################################
#     global count
#     count=count+1
#     if count==1:
#         file="C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\KoolProg\\Automation\\SourceCode\\inputLayer\\suite_inputLayer\\tst_inputExecution\\chk_MenuIconState_offline.xlsx"
#         records = testData.dataset(file)
#     else:
#         file="C:\\gitworkspace\\KoolProg-SourceCode\\KoolProg-Maintenance\\KoolProg\\Automation\\SourceCode\\inputLayer\\suite_inputLayer\\tst_inputExecution\\chk_SetParameter_ProductInfo.xlsx"
#         records = testData.dataset(file)
# 	
	#reading the records
    records = testData.dataset(file)

    for rec in records:
        id = testData.field(rec, 0)
        for controller in CompletecontrollerListInfo:       
                if controller.controllerVariant==controllerVariant:
                    controllerFamily=controller.controllerFamily
        if id!="Common" and controllerFamily not in id:
            continue
        
            
        object_name = testData.field(rec, 1)
#         test.log(str(object_name))
#          symbolicname = testData.field(rec,2)
        symbolicname = getSymbolicName(object_name)
        keyword = testData.field(rec, 2)
        tooltip = testData.field(rec, 3)
        value = testData.field(rec, 4)
        value1=testData.field(rec,5)
        if value!="" and value!=None:
            if value.startswith('Dynamic'):
                value=value.split('_')
                string=value[1]
                global CurrentControllerInstance      
                controllerVarInfo={}
                controllerVarInfo["controllerVariant"]=CurrentControllerInstance.controllerVariant
                controllerVarInfo["controllerCodeNo"]=CurrentControllerInstance.controllerCodeNo
                controllerVarInfo["controllerSV"]=CurrentControllerInstance.controllerSV
                controllerVarInfo["controllerPV"]=CurrentControllerInstance.controllerPV
                controllerVarInfo["controllerFamily"]=CurrentControllerInstance.controllerFamily
                controllerVarInfo["controllerApplication"]=CurrentControllerInstance.controllerApplication
                value=controllerVarInfo[string]
                value=str(value)
                    
        if value1!="" and value1!=None:
            if value1.startswith('Dynamic'):
                value1=value1.split('_')
                string=value1[1]
                global CurrentControllerInstance      
                controllerVarInfo={}
                controllerVarInfo["controllerVariant"]=CurrentControllerInstance.controllerVariant
                controllerVarInfo["controllerCodeNo"]=CurrentControllerInstance.controllerCodeNo
                controllerVarInfo["controllerSV"]=CurrentControllerInstance.controllerSV
                controllerVarInfo["controllerPV"]=CurrentControllerInstance.controllerPV
                controllerVarInfo["controllerFamily"]=CurrentControllerInstance.controllerFamily
                controllerVarInfo["controllerApplication"]=CurrentControllerInstance.controllerApplication
                value1=controllerVarInfo[string]
                value1=str(value1)
            
                                 
        if value!="" and value!=None:
            if value.startswith('DiffDynamic'):
                value=value.split('_')
                string=value[1]
                for controller in CompletecontrollerListInfo:       
                    if  controller.controllerVariant==controllerVariant:
                        controllerVarInfo={}
                        controllerVarInfo["controllerVariant"]=controller.controllerVariant
                        controllerVarInfo["controllerCodeNo"]=controller.controllerCodeNo
                        controllerVarInfo["controllerSV"]=controller.controllerSV
                        controllerVarInfo["controllerPV"]=controller.controllerPV
                        controllerVarInfo["controllerFamily"]=controller.controllerFamily
                        controllerVarInfo["controllerApplication"]=controller.controllerApplication
                        value=controllerVarInfo[string]
                        value=str(value)
                         
        if value1!="" and value1!=None:
            if value1.startswith('DiffDynamic'):
                value1=value1.split('_')
                string=value1[1]
                for controller in CompletecontrollerListInfo:       
                    if  controller.controllerVariant==controllerVariant:
                        controllerVarInfo={}
                        controllerVarInfo["controllerVariant"]=controller.controllerVariant
                        controllerVarInfo["controllerCodeNo"]=controller.controllerCodeNo
                        controllerVarInfo["controllerSV"]=controller.controllerSV
                        controllerVarInfo["controllerPV"]=controller.controllerPV
                        controllerVarInfo["controllerFamily"]=controller.controllerFamily
                        controllerVarInfo["controllerApplication"]=controller.controllerApplication
                        value1=controllerVarInfo[string]
                        value1=str(value1)
          
        #result = testData.field(rec, 6)
    ###########################################################
        matching = [s for s in ObjectList if symbolicname in s]
        objList = []
        count = len(matching)
        if(count != 0):
            for x in matching[0].split('#'):
                objList.append(x)  
            symbolicname = objList[1]
     ###########################################################    
         
            if (keyword == "Launch"):
                result = Launch()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Snooze"):
                result = Snooze()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            
            elif (keyword == "Checked"):
                result = Checked(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                           
            elif (keyword == "Click_Button"):
                result = ClickButton(symbolicname)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            
            elif (keyword == "Close"):
                result = Close()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Compatibility"):
                result = Compatibility()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "DataGrid_Verification_Offline"):
                result = DataGrid_Verification_Offline()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)    
             
            elif (keyword == "DataGrid_Verification_Offline_Unit_C"):
                result = DataGrid_Verification_Offline_Unit_C()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                            
            elif (keyword == "DataGrid_Verification_Offline_Unit_F"):
                result = DataGrid_Verification_Offline_Unit_F()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif(keyword == "DataGrid_Verification_Online"):
                result =DataGrid_Verification_Online()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result) 
                
            elif (keyword == "Delete_File"):
                result = Delete_File()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Delete_Folder"):
                result = Delete_Folder()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Enable"):
                result = Enable(symbolicname, value) 
                result = str(result)
                ResultList.append(symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result) 
                
            elif (keyword == "Enable_F"):
                result = Enable_F(symbolicname, value) 
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result) 
                
            elif (keyword == "Enable_Popup"):
                result =  Enable_Popup(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Enable_S"):
                result = Enable_S(symbolicname, value) 
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Enable_Popup_M"):
                result =  Enable_Popup_M(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Edit"):
                result = Edit(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Edit_About"):
                result = Edit_About(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Expanded"):
                result =  Expanded(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif(keyword == "Factory_Reset_Online"):
                result = Factory_Reset_Online()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif(keyword == "Factory_Reset_Verification_Online"):
                result = Factory_Reset_Verification_Online()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result) 
            
            elif(keyword == "File_Generation"):
                result = File_Generation()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Finish_Button"):
                result = FinishButton(symbolicname) 
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Highted_Folder"):
                result = Highted_Folder(symbolicname) 
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)  
                
            elif (keyword == "Max_Length"):
                result = Max_Length(symbolicname, value) 
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Open_Path_Change"):
                result = Open_Path_Change()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Open_Path_Change_Cancel"):
                result = Open_Path_Change_Cancel()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                        
            elif (keyword == "Open_New_Path_Verification"):
                result = Open_New_Path_Verification(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)        
                
            elif (keyword == "Open_Old_Path_Verification"):
                result = Open_Old_Path_Verification(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            
            elif (keyword == "Password_Verfication"):
                result = Password_Verfication()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Pdf_Verfication"):
                result = Pdf_Verfication(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Random_Plot_11"):
                result =testRandomPlot_11()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Random_Plot"):
                result =testRandomPlot()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)          
                
            elif (keyword == "Selected"):
                result = Selected(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Selected_Is"):
                result = Selected_Is(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Show_Password"):
                result = Show_Password(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Show_Password_Show"):
                result = Show_Password_Show(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Snooze"):
                result = Snooze()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Value_Generation_Offline"):
                result = Value_Generation_Offline()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            
            elif (keyword == "Value_Generation_Online"):
                result = Value_Generation_Online()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Value_Verification_Offline"):
                result = Value_Verification_Offline()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Value_Verification_Online"):
                result = Value_Verification_Online()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Value_Verification_Textbox_Online"):
                result = Value_Verification_Textbox_Online()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                 
            elif (keyword == "Text"):
                result = Text(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+str(value)+'-'+result)
            
            elif (keyword == "verify_Text"):
                argument= str(controllerVariant)+"_" +str(value) 
                result = verify_Text(argument)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+str(value)+'-'+result)
                 
                
                
            elif (keyword == "TextDescription"):
                result = Text(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+str(value)+'-'+result)
                
            elif (keyword == "verify_Image"):
                result = verify_Image(symbolicname, controllerVariant)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+str(value)+'-'+result)
                
            
            elif (keyword == "verify_WireImage"):
                result = verify_WireImage(symbolicname, controllerVariant)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+str(value)+'-'+result)
                
                
            elif(keyword == "Textbox_Online"):
                result =Textbox_Online()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result) 
                
            elif(keyword == "Textbox_Verification_Online"):
                result =Textbox_Verification_Online()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Text_box"):
                result = Text_Box(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
                
            elif (keyword == "TextDescription"):
                result = TextDescription(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
                
            elif (keyword == "Text_box1"):
                result = Text_Box1(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Text_Checking"):
                result = Text_Checking(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Text_DataContext"):
                result = Text_DataContext(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)        
            
            elif (keyword == "Tooltip"):
                result = Tooltip(symbolicname, tooltip)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                     
            elif (keyword == "Type"):
                result = Type(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Visible"):
                result = Visible(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Visible_F"):
                result = Visible_F(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                           
            elif (keyword == "Visible_S"):
                result = Visible_S(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Window"):
                result = Window(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                           
            elif (keyword== "Combo_box_edit"):
                result = ComboBox_Edit(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            
            elif (keyword == "SaveAs_Text_Box"):
                result = SaveAs_Text_Box(symbolicname,value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                    
            elif (keyword == "Code_No"):
                result = Code_No(symbolicname)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            
            
            elif (keyword == "ComboBox_EnumExistenceCheck"):
                result = ComboBox_EnumExistenceCheck(symbolicname,value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            
                
            elif (keyword == "Value_Verification_Online"):
                result = Value_Verification_Online()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
             
            elif (keyword == "DataGrid_Verification_Offline_EKE"):
                result =DataGrid_Verification_Offline_EKE()
                result = str(result)                        
                
            elif (keyword == "App_Change"):
                result = App_Change(value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "App_Verify"):
                result = App_Verify()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            
            #copy to controller
            elif (keyword == "Maxlength"):
                result = Maxlength(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "CountDownrange"):
                result = CountDownrange(value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "CountUprange"):
                result = CountUprange(value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Text_box1"):
                result = Text_Box1(symbolicname, value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            
              
            elif (keyword == "verify_ProductInfo"):
                result = verify_ProductInfo(symbolicname, value,value1,controllerVariant)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            
            
            #Service and test
            
            elif (keyword == "SnoozeForPlot"):            
                result =SnoozeForPlot(value)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            elif (keyword == "Verify_Active_Alarms"):
                result = verifyActiveAlarm()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            elif (keyword == "Check_Favourites"):
                result =checkFavorites()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            elif (keyword == "UnCheck_Favourites"):
                result =unCheckFavourites()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            elif (keyword == "Verify_Search"):
                result =verifySearchParameters()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            elif (keyword == "Print_Result"):
                printResult()
                
                
            ###AK_CC####
            elif (keyword == "DB_Verification"):
                result = DB_Verification()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            
            elif (keyword == "Value_Generation_AK_CC"):
                result = Value_Generation_AK_CC()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "AKCC_SWCode"):
                result = AK_CC_SW_Code()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            
            elif (keyword == "AKCC_App_Wizard"):
                result = AKCC_Application_Wizard()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Verify_Search_AK_CC"):
                result = verifySearchParameters_AK_CC()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            
            elif (keyword == "AK_CC_Tree"):
                result = AK_CC_TreeView()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            
            elif (keyword == "AKCC_SG"):
                result = AKCC_SG()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            
            elif (keyword == "Factory_Reset"):
                result = Factory_Reset()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Product_Variant"):
                result = AKCC_Product_Variant()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result) 
            elif (keyword == "AKCC_Readouts"):
               result = AKCC_Readouts()
               result = str(result)
               ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result) 
                   
            elif (keyword == "AKCC_IO_ManualOverride"):
               result = AKCC_IO_ManualOverride()
               result = str(result)
               ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result) 
            
            elif (keyword == "AKCC_QW"):
               result = AKCC_QW()
               result = str(result)
               ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result) 
               
            elif (keyword == "AKCC_QW_Verify"):
               result = AKCC_QW_Verify()
               result = str(result)
               ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result) 
            elif (keyword == "AKCC_Active_Alarms"):
               result = AKCC_Active_Alarms()
               result = str(result)
               ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)     
                   
            elif (keyword == "Check_IO_Parameters"):
               result = Check_IO_Parameters()
               result = str(result)
               ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
               
            elif (keyword == "Value_Verification"):
                result = Value_Verification()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)

            elif (keyword == "Select_Controller"):
                result = selectControllerparse(symbolicname, value, value1)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Click_All"):
                result = clickAll(symbolicname)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Click_All"):
                result = clickAll(symbolicname)
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Verify_Metric_Unit"):
                result = Verify_Metric_Unit()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "Verify_Imperial_Unit"):
                result = Verify_Imperial_Unit()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
                
            elif (keyword == "Verify_Metric_Unit_M"):
                result = Verify_Metric_Unit_M()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
            
            elif (keyword == "Verify_Imperial_Unit_M"):
                result = Verify_Imperial_Unit_M()
                result = str(result)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)

            elif (keyword == "Getonlineibuttonvariantinfo"):
                result=Getonlineibuttonvariantinfo(symbolicname)
                ResultList.append(id+'-'+symbolicname+'-'+keyword+'-'+tooltip+'-'+value+'-'+result)
                
            elif (keyword == "verify_MaxCharacter"):
                result=verify_MaxCharacter(symbolicname,value)
                ResultList.append(str(id)+'-'+str(symbolicname)+'-'+str(keyword)+'-'+str(tooltip)+'-'+str(value)+'-'+str(result))   
            
            
            
            elif (keyword == "verify_UnwantedCharEntryInEdit"):
                result=verify_UnwantedCharEntryInEdit(symbolicname,value,value1)
                ResultList.append(str(id)+'-'+str(symbolicname)+'-'+str(keyword)+'-'+str(tooltip)+'-'+str(value)+'-'+str(result))   
           
            
            elif (keyword == "CheckExistenceOfObject"):
                result=CheckExistenceOfObject(symbolicname)
                ResultList.append(str(id)+'-'+str(symbolicname)+'-'+str(keyword)+'-'+str(tooltip)+'-'+str(value)+'-'+str(result))   
            
            elif (keyword == "CheckAbsenceOfObject"):
                result=CheckAbsenceOfObject(symbolicname)
                ResultList.append(str(id)+'-'+str(symbolicname)+'-'+str(keyword)+'-'+str(tooltip)+'-'+str(value)+'-'+str(result))   
           
           
            elif (keyword == "UncheckCheckBox"):
                result=UncheckCheckBox(symbolicname)
                ResultList.append(str(id)+'-'+str(symbolicname)+'-'+str(keyword)+'-'+str(tooltip)+'-'+str(value)+'-'+str(result))   
    
            elif (keyword == "CheckCheckBox"):
                result=CheckCheckBox(symbolicname)
                ResultList.append(str(id)+'-'+str(symbolicname)+'-'+str(keyword)+'-'+str(tooltip)+'-'+str(value)+'-'+str(result))   
    
            elif (keyword == "verifyList_When_DynamicChoiceInComboBox"):
                result=verifyList_When_DynamicChoiceInComboBox(symbolicname,value,value1)
                ResultList.append(str(id)+'-'+str(symbolicname)+'-'+str(keyword)+'-'+str(tooltip)+'-'+str(value)+'-'+str(result))   
                
            elif (keyword == "ValidateIbuttonOnline"):
                result=ValidateIbuttonOnline(symbolicname,value1)
                ResultList.append(str(id)+'-'+str(symbolicname)+'-'+str(keyword)+'-'+str(tooltip)+'-'+str(result))   

    
                    
now = datetime.datetime.now()
#print now.strftime("%d-%m-%Y_%H_%M")
Timestr = now.strftime("%d-%m-%Y_%H_%M")

def printResult():
 test.log("inside print result")
 count = len(ResultList)
 Val = []
 file_1 = "Result_Sheet"
 file_1 = file_1 + Timestr
 file_1 = file_1 + ".csv"
 openfile = open(file_1,'wt') 
 writer = csv.writer(openfile)
 writer.writerow(["ID", "Object_Name", "Keyword", "Tooltip", "Value", "Result"])   
 for i in range(0, count):
     result = ResultList[i]
     #test.log(result)
     for x in result.split('-'):
         Val.append(x)
     writer.writerow([Val[0], Val[1], Val[2], Val[3], Val[4], Val[5]])
     Val = []
         
     
         
 
     
     
                 
 
 
 
