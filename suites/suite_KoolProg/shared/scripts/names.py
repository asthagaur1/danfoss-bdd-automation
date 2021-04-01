# encoding: UTF-8
   
from objectmaphelper import *



###########################################################################################################################
######## ############## H O M E W I N D O W ###############################################################################################
###########################################################################################################################
     
############### HOME PAGE #################################################################################################
homepage_Window = {"id": "windowhomepage", "type": "Window"} # koolProg_Window
############### HOME PAGE #################################################################################################
   
############### KOOLPROG label #################################################################################################
homepage_koolprogtxt_Label = {"container": homepage_Window, "id": "txtkoolprog", "type": "Label"}
############### KOOLPROG label #################################################################################################
   
############### HOME PAGE KOOLPROG LOGO #################################################################################################
homepage_danfosslogo_Image = {"container": homepage_Window, "id": "Imgdanfossimage", "type": "Image"}
############### HOME PAGE KOOLPROG LOGO #################################################################################################
   
############### HOME PAGE HELP BUTTON####################################################################################
homepage_mnuHelp_window = {"container": homepage_Window, "id": "mnuHelpMenu", "type": "MenuBar"}
homepage_menuHelp_button = {"container": homepage_mnuHelp_window, "id": "mnuHelp", "type": "MenuItem"}
############### HOME PAGE HELP BUTTON####################################################################################
   
################# HOME PAGE PREFERNCE BUTTON ########################################################################################################
homepage_btnSettings_Button = {"container": homepage_Window, "id": "btnSettings", "name": "btnSettings", "type": "Button"}#koolProg_btnSettings_Button
################## HOME PAGE PREFERNCE BUTTON ######################################################################################################
   
###################HOME PAGE USER LABEL##################################################################################################################################
homepage_Userlogo_Label = {"container": homepage_Window, "id": "lblUser", "type": "Label"}
homepage_change_User_Button = {"container": homepage_Window, "id": "btnUser", "name": "btnUser", "type": "Button"}
###################HOME PAGE USER LABEL###################################################################################################################################
   
   
####################KOOLPROG VERSION LABEL#################################################################################################################################
homepage_KPVersion_label = {"container": homepage_Window, "id": "lblVersion", "type": "Label"}#koolProg_version_label
####################KOOLPROG VERSION LABEL##################################################################################################################################
   
   
####################KOOLPROG DANFOSS LINK LABEL#################################################################################################################################
homepage_danfosslink_Label = {"container": homepage_Window, "id": "lbllink", "type": "Label"}
####################KOOLPROG DANFOSS LINK##################################################################################################################################
   
#####################SET PARAMETER BUTTON SYMBOLIC NAMES ################################################################################################################################
homepage_imgSetParams_Image = {"container": homepage_Window, "id": "imgSetParams", "type": "Image"}
homepage_imgSetParams_Button = {"container": homepage_Window, "id": "btnSetparameters", "type": "Button"}
homepage_imgSetParams_Label = {"container": homepage_Window, "id": "", "type": "Label"}
#####################SET PARAMETER BUTTON SYMBOLIC NAMES #################################################################################################################################
   
######################COPY TO CONTROLLER SYMBOLIC NAMES ###############################################################################################################################
homepage_Copycontroller_Image = {"container": homepage_Window, "id": "imgCopycontroller", "type": "Image"}#koolProg_btnCopytocontroller_Button
homepage_Copytocontroller_Button = {"container": homepage_Window, "id": "btnCopytocontroller", "type": "Button"}
homepage_Copytocontroller_Label = {"container": homepage_Window, "id": "", "occurrence": 2, "type": "Label"}
######################COPY TO CONTROLLER SYMBOLIC NAMES  ################################################################################################################################
   
###################### ON-LINE SERVICE SYMBOLIC NAMES ###############################################################################################################################
homepage_Servicetest_Image = {"container": homepage_Window, "id": "imgServicetest", "type": "Image"}#homepage_Servicetest_Button
homepage_Servicetest_Button = {"container": homepage_Window, "id": "btnServiceTest", "type": "Button"}
homepage_Servicetest_Label = {"container": homepage_Window, "id": "", "occurrence": 3, "type": "Label"}
###################### ON-LINE SERVICE SYMBOLIC NAMES ##############################################################################################################################
  
###########################################################################################################################
###################### HOMEWINDOW ENDS ###############################################################################################
###########################################################################################################################
   
   
##########################################################################################################################################
###################### SET PARAMTER  WINDOW ###############################################################################################
##########################################################################################################################################
setparameter_Window = {"id": "windowsetparameter", "type": "Window"}
  
###########################PROJECT WINDOW KOOLPROG POP-UP SYMBOLIC NAMES################################### 
  
  
################## SET PARAMETER TITLE LABLE ###################################################################################################################################
setparameter_window_Title_Label = {"container": setparameter_Window, "id": "lblTitle", "type": "Label"}#setParameter_lblTitle_Label
#codenumber_popup_window_label = {"container": setparameter_Window2, "occurrence": 3, "type": "Label"}
setparameter_window_SettingFile_Label = {"container": setparameter_Window, "id": "lblCreatenew", "type": "Label"}
################## SET PARAMETER TITLE LABLE ####################################################################################################################################
   
################### SET PARAMETER WINDOW CANCEL BUTTON ##################################################################################################################################
setparameter_window_Close_Button = {"container": setparameter_Window, "id": "btnClose", "type": "Button"}
#################### SET PARAMETER WINDOW CANCEL BUTTON ##################################################################################################################################
   
#################### SET PARAMETER WINDOW  OPEN RECENT FILE #################################################################################################################################
setparameter_window_recentProject_Label = {"container": setparameter_Window, "id": "lblrecentProject", "type": "Label"} #setParameter_lblrecentProject_Label
#################### SET PARAMETER WINDOW  OPEN RECENT FILE #################################################################################################################################
   
#################### SET PARAMETER WINDOW NEW ################################################################################################################################
setparameter_window_boxItems_List = {"container": setparameter_Window, "id": "lstboxItems", "type": "List"}
boxItems_List_Item = {"container": setparameter_window_boxItems_List, "id": "", "type": "ListItem"}
setparameter_window_New_Label = {"container": boxItems_List_Item, "id": "lblProject", "type": "Label"}#setParameter_lblCreatenew_Label
#################### SET PARAMETER WINDOW NEW #################################################################################################################################
   
##################### SET PARAMETER WINDOW IMPPORT SETTING FROM CONTROLLER ################################################################################################################################
lstboxItems_ListItem_2 = {"container": setparameter_window_boxItems_List, "id": "", "occurrence": 2, "type": "ListItem"}
setparameter_window_Uplaodfromcontroller_Label = {"container": lstboxItems_ListItem_2, "id": "lblUplaodcontroller", "type": "Label"}#lstBoxImportSetting_lblUplaodcontroller_Label
###################### SET PARAMETER WINDOW IMPPORT SETTING FROM CONTROLLER ################################################################################################################################
   
   
###################### SET PARAMETER WINDOW OPEN ##############################################################################################################################
lstboxItems_ListItem_3 = {"container": setparameter_window_boxItems_List, "id": "", "occurrence": 3, "type": "ListItem"}
# ################## SET PARAMETER O P E  N B U T T O N ######################
setparameter_window_Openproject_Label = {"container": lstboxItems_ListItem_3, "id": "lblOpenproject", "type": "Label"}
###################### SET PARAMETER WINDOW OPEN ###############################################################################################################################
   
   
####################### SET PARAMETER WINDOW CONTROLLER MODEL ##############################################################################################################################
setparameter_window_controllersmodels_Label = {"container": setparameter_Window, "id": "lblCdf", "type": "Label"}
####################### SET PARAMETER WINDOW CONTROLLER MODEL ##############################################################################################################################
   
######################### SET PARAMETER WINDOW IMPORT CDF MODEL ############################################################################################################################
windowsetparameter_lstboxCDFItems_List = {"container": setparameter_Window, "id": "lstboxCDFItems", "type": "List"}
lstboxCDFItems_ListItem_2 = {"container": windowsetparameter_lstboxCDFItems_List, "id": "", "type": "ListItem"}#lstboxItems_lstBoxImportSetting_ListItem
setparameter_window_importcdf_Label = {"container": lstboxCDFItems_ListItem_2, "id": "lblCDF", "type": "Label"}#setParameter_lblCdf_Label
########################### SET PARAMETER WINDOW IMPORT CDF MODEL  ###########################################################################################################################
   
   
############################ SET PARAMETER WINDOW CANCEL BUTTON #########################################################################################################################
setparameter_window_Close_Button = {"container": setparameter_Window, "id": "btnClose", "type": "Button"}
############################## SET PARAMETER WINDOW CANCEL BUTTON ########################################################################################################################
   
##########################################################################################################################################
###################### SET PARAMTER  WINDOW ENDS ###############################################################################################
########################################################################################################################################## 
   
   
###########################################################################################################################
###################### NEW PROJECT WINDOW ###############################################################################################
###########################################################################################################################
   
   
#newproject_Window = {"id": "windowNewProject", "type": "Window"}
newproject_Window = {"text": "Newproject", "type": "Window"}
###################### NEW PROJECT WINDOW NEW PROJECT LABEL###############################################################################################################################
newproject_Window_Title_Label = {"container": newproject_Window, "id": "lblTitle", "type": "Label"}
###################### NEW PROJECT WINDOW NEW PROJECT LABEL ################################################################################################################################
   
###################### NEW PROJECT WINDOW CLOSE BUTTON ###############################################################################################################################
newproject_Window_Close_Button = {"container": newproject_Window, "id": "btnClose", "type": "Button"}
####################### NEW PROJECT WINDOW CLOSE BUTTON ####################################################################################################################################################################################################################################################################################
   
##################### NEW PROJECT WINDOW SELECT CONTROLLER VARIANT ######################################################################################################################################################################################################################################################################################
newproject_Window_select_controllervarient_Label = {"container": newproject_Window, "id": "txtselect", "type": "Label"}
##################### NEW PROJECT WINDOW SELECT CONTROLLER VARIANT #####################################################################################################################################################################################################################################################################################
   
###################### NEW PROJECT WINDOW PRODUCT DATADRID #####################################################################################################################################################################################################################################################################################
#tabController_TabItem = {"container": newproject_Window, "id": "tabNewproject", "type": "TabItem"}
#newproject_Window__Products_datagrid = {"container": tabController_TabItem, "id": "datagridProducts", "type": "Table"}#newProject_tabNewproject_TabFolder
#newproject_TabFolder = {"container": newproject_Window, "type": "TabFolder"}
#newproject_TabFolder = {"container": newproject_Window, "type": "TabFolder"}
newProject_tabNewproject_TabFolder = {"container": newproject_Window, "id": "tabNewproject", "type": "TabFolder"}
   
###################### NEW PROJECT WINDOW PRODUCT DATADRID #####################################################################################################################################################################################################################################################################################
   
###################### NEW PROJECT WINDOW IMAGE LABEL#####################################################################################################################################################################################################################################################################################
newproject_Window_controller_Image = {"container": newproject_Window, "id": "imgProductImageTemplateA", "type": "Image"}#newProject_imgProduct_Image
####################### NEW PROJECT WINDOW IMAGE LABEL ####################################################################################################################################################################################################################################################################################
   
######################### NEW PROJECT WINDOW WIRE-FRAME LABEL ##################################################################################################################################################################################################################################################################################
newproject_Window_wireframe_Image = {"container": newproject_Window, "id": "imgWireDiagramTemplateB", "type": "Image"}#newProject_imgWireDiagram_Image
######################## NEW PROJECT WINDOW WIRE-FRAME LABEL ###################################################################################################################################################################################################################################################################################
   
########################### NEW PROJECT WINDOW DESCRPTION ######################################################################################################################################################################################################################################################################################
newproject_Window_Description_Label = {"container": newproject_Window, "id": "txtproductDescription", "type": "Label"}#newProject_description_Label
############################ NEW PROJECT WINDOW DESCRPTION ###############################################################################################################################################################################################################################################################################
   
############################# NEW PROJECT WINDOW CONTROLLER VARIANT TITLE ##############################################################################################################################################################################################################################################################################
newproject_Window_controlelr_variant_title = {"container": newproject_Window, "id": "txtTitleTemplateA", "type": "Label"}#newProject_lblTitle_Label
############################# NEW PROJECT WINDOW CONTROLLER VARIANT TITLE ##############################################################################################################################################################################################################################################################################
   
############################# NEW PROJECT WINDOW SCROLL BAR ##############################################################################################################################################################################################################################################################################
newproject_Window_ScrollBar = {"container": newproject_Window, "id": "VerticalScrollBar", "type": "ScrollBar"}
############################# NEW PROJECT WINDOW SCROLL BAR ##############################################################################################################################################################################################################################################################################
   
############################# NEW PROJECT WINDOW NEXT BUTTON##############################################################################################################################################################################################################################################################################
newproject_Window_next_Button = {"container": newproject_Window, "id": "btnRightArrow", "type": "Button"}
############################# NEW PROJECT WINDOW NEXT BUTTON ##############################################################################################################################################################################################################################################################################
  
###########################################################################################################################
###################### NEW PROJECT WINDOW ENDS ###############################################################################################
########################################################################################################################### 
   
   
###########################################################################################################################
###################### NEW PROJECT PRODUCT DESCRIPTION WINDOW ###############################################################################################
###########################################################################################################################
   
####################### NEW PROJECT TITLE IN PRODUCT DESCRIPTION WINDOW ####################################################################################################################################################################################################################################################################################
product_description_window_Title_Label = {"container": newproject_Window, "id": "lblTitle", "type": "Label"}
######################## NEW PROJECT TITLE IN PRODUCT DESCRIPTION WINDOW ###################################################################################################################################################################################################################################################################################
   
######################## PRODUCT DESCRIPTION WINDOW CLOSE BUTTON ###################################################################################################################################################################################################################################################################################
product_description_window_Close_Button = {"container": newproject_Window, "id": "btnClose", "type": "Button"}
######################### PRODUCT DESCRIPTION WINDOW CLOSE BUTTON ##################################################################################################################################################################################################################################################################################
   
######################### PRODUCT INFORMATION SELECTION TITLE(ex:select code number ,SW version) ##################################################################################################################################################################################################################################################################################
product_description_window_productinfo_label = {"container": newproject_Window, "id": "txtselect", "type": "Label"}
########################## PRODUCT INFORMATION SELECTION  TITLE(ex:select code number ,SW version)#################################################################################################################################################################################################################################################################################
   
########################### PRODUCT INFORMATION SELECTION DETAILS ################################################################################################################################################################################################################################################################################
product_description__TableItems = {"container": newproject_Window, "id": "tabProductName", "type": "TabItem"}
product_description_ApplicationType_label = {"container": product_description__TableItems, "id": "lblApplicationType", "type": "Label"}
product_description_CodeNumber_label = {"container": product_description__TableItems, "id": "lblCodeNumber", "type": "Label"}
product_description_partnumber_label = {"container": product_description__TableItems, "id": "lblpartnumber", "type": "Label"}
product_description_powersupply_label = {"container": product_description__TableItems, "id": "lblpowersupply", "type": "Label"}
product_description_Spindle_label = {"container": product_description__TableItems, "id": "lblSpindle", "type": "Label"}
product_description_PVVersion_Label = {"container": product_description__TableItems, "id": "lblPVVersion", "type": "Label"}
########################### PRODUCT INFORMATION SELECTION DETAILS ################################################################################################################################################################################################################################################################################
   
############################PROJECT NAME AND PROJECT DESCRIPTION TITLE##############################################################################################################################################################################################################################################################################
tabProductName_TabItem = {"container": newproject_Window, "id": "tabProductName", "type": "TabItem"}
product_description_proname_prodesc_Label = {"container": tabProductName_TabItem, "id": "", "type": "Label"}
############################PROJECT NAME AND PROJECT DESCRIPTION TITLE###############################################################################################################################################################################################################################################################################
   
#################### PROJECT NAME TITLE IN PROJECT DESCRIPTION WINDOW ##################################################################################################################################
product_description_window_projectName_Label = {"container": tabProductName_TabItem, "id": "lblProjectName", "type": "Label"}
#################### PROJECT NAME TITLE IN PROJECT DESCRIPTION WINDOW ##################################################################################################################################
   
#################### PROJECT DESCRIPTION TITLE IN PROJECT DESCRIPTION WINDOW ##################################################################################################################################
product_description_window_projdescr_label = {"container": tabProductName_TabItem, "id": "lblProjDescr", "type": "Label"}
#################### PROJECT DESCRIPTION TITLE IN PROJECT DESCRIPTION WINDOW ##################################################################################################################################
   
################ PROJECT DESCRIPTION WINDOW PRODUCT INFORMATION TYPE INFORMATION(Ex:text editor,combobox) OBJECT NAMES #################################################################################################################################
product_description_window_Application_ComboBox = {"container": tabProductName_TabItem, "id": "cmbApplication", "type": "ComboBox"}
product_description_window_partnumber_Edit = {"container": tabProductName_TabItem, "id": "txtpartnumber", "type": "Edit"}
product_description_window_PowerSupply_ComboBox = {"container": tabProductName_TabItem, "id": "cmbPowerSupply", "type": "ComboBox"}
product_description_window_Spindle_ComboBox= {"container": tabProductName_TabItem, "id": "CmbSpindle", "type": "ComboBox"}
product_description_window_CodeNumber_ComboBox = {"container": tabProductName_TabItem, "id": "cmbCodeNumber", "type": "ComboBox"}
product_description_window_PVVersion_ComboBox = {"container": tabProductName_TabItem, "id": "cmbPVVersion", "type": "ComboBox"}
product_description_window_SWversion_ComboBox = {"container": tabProductName_TabItem, "id": "cmbSWversion", "type": "ComboBox"}
   
sym_product_description_selection = {
    "ETC1Hx": {"controllerApplication": product_description_window_Application_ComboBox,
               "power": product_description_window_PowerSupply_ComboBox,
               "spindle": product_description_window_Spindle_ComboBox,
               "partnum": product_description_window_partnumber_Edit,
               },
    "EET": {"controllerCodeNo": product_description_window_CodeNumber_ComboBox,
            "controllerPV": product_description_window_PVVersion_ComboBox,
            },
    "ERC11x": {"controllerCodeNo": product_description_window_CodeNumber_ComboBox,
               "controllerPV": product_description_window_PVVersion_ComboBox
               },
    "ERC21x": {"controllerCodeNo": product_description_window_CodeNumber_ComboBox,
               "controllerApplication": product_description_window_Application_ComboBox,
               },
    "EKE1x": {"controllerCodeNo": product_description_window_CodeNumber_ComboBox,
              "controllerPV": product_description_window_SWversion_ComboBox,
              },
    "AK-CC55": {"controllerCodeNo": product_description_window_CodeNumber_ComboBox,
                "softwareVersion": product_description_window_SWversion_ComboBox
                }
}
#################PROJECT DESCRIPTION WINDOW PRODUCT INFORMATION TYPE INFORMATION(Ex:text editor,combobox) OBJECT NAMES#######################################################################################################################################################################################################################################
   
   
################# PROJECT DESCRIPTION WINDOW BUTTONS OBJEC NAMES ###########################################################################################################################################################################################################################################################################################
product_description_window_back_Button = {"container": newproject_Window, "id": "btnLeftArrow", "type": "Button"}
product_description_window_Cancel_Button = {"container": newproject_Window, "id": "btnCancel", "type": "Button"}
product_description_window_Finish_Button = {"container": newproject_Window, "id": "btnFinish", "type": "Button"}
################# PROJECT DESCRIPTION WINDOW BUTTONS OBJEC NAMES ###########################################################################################################################################################################################################################################################################################
   
#################  PROJECT NAME  EDITOR IN PROJECT DESCRIPTION WINDOW #####################################################################################################################################################################################################
newproject_Product_Name_TabItem = {"container": newproject_Window, "id": "tabProductName", "type": "TabItem"}
product_Name_System_Windows_Controls_StackPanel_Label = {"container": newproject_Product_Name_TabItem, "text": "System.Windows.Controls.StackPanel", "type": "Label"}
product_description_window_projectname_Edit = {"aboveObject": product_Name_System_Windows_Controls_StackPanel_Label, "container": newproject_Product_Name_TabItem, "type": "Edit"}################ PROJECT NAME  EDITOR IN PROJECT DESCRIPTION WINDOW #####################################################################################################################################################################################################
   
################# PROJECT DESCRIPTION EDITOR IN PROJECT DESCRIPTION WINDOW ##################################################################################
product_Name_Project_Description_Max_250_Characters_Label = {"container": newproject_Product_Name_TabItem, "id": "lblProjDescr", "type": "Label"}
product_description_window_description_Edit = {"aboveObject": product_Name_Project_Description_Max_250_Characters_Label, "container": newproject_Product_Name_TabItem, "type": "Edit"}
product_description_Softwareversion_Label = {"container": newproject_Product_Name_TabItem, "id": "lblSwVersion", "type": "Label"}

#################  PROJECT DESCRIPTION EDITOR IN PROJECT DESCRIPTION WINDOW ##################################################################################
   
#################  PROJECT DESCRIPTION WINDOW CHECKBOX ##################################################################################
windowNewProject_Window = {"id": "windowNewProject", "type": "Window"}
product_description_chkWizardConfig_CheckBox = {"container": windowNewProject_Window, "id": "chkWizardConfig", "type": "CheckBox"}
#################  PROJECT DESCRIPTION WINDOW CHECKBOX ##################################################################################
   
###########################################################################################################################
###################### NEW PROJECT PRODUCT DESCRIPTION WINDOW ENDS ###############################################################################################
########################################################################################################################### 
   
   
###########################################################################################################################
######################  PROJECT WINDOW  ###############################################################################################
##########################################################################################################################
  
###################### PROJECT WINDOW MENU ITEMS###############################################################################################
project_window_Home_Button = {"container": homepage_Window, "id": "btnHome", "name": "btnHome", "type": "Button"}
project_window_Open_Button = {"container": homepage_Window, "id": "btnOpen", "name": "btnOpen", "type": "Button"}
project_window_Save_Button = {"container": homepage_Window, "id": "btnSave", "name": "btnSave", "type": "Button"}
project_window_SaveAs_Button = {"container": homepage_Window, "id": "btnSaveAs", "name": "btnSaveAs", "type": "Button"}
project_window_Download_Button = {"container": homepage_Window, "id": "btnDownload", "name": "btnDownload", "type": "Button"}
project_window_Title_Label = {"container": homepage_Window, "id": "lblTitle", "type": "Label"}
project_window_Printer_Button = {"container": homepage_Window, "id": "btnPrinter", "name": "btnPrinter", "type": "Button"}
  
  
###################### PROJECT WINDOW MENU ITEMS###############################################################################################
   
###################### PROJECT WINDOW GRID ICONS###############################################################################################
project_window_txtSearch_Edit = {"container": homepage_Window, "id": "txtSearch", "type": "Edit"}
project_window_SearchParameters_Button = {"container": homepage_Window, "id": "btnSearchParameters", "name": "btnSearchParameters", "type": "Button"}
project_window_FactoryReset_Button = {"container": homepage_Window, "id": "btnFactoryReset", "name": "btnFactoryReset", "type": "Button"}
project_window_ViewMore_Label = {"container": homepage_Window, "id": "lblViewMore", "type": "Label"}
project_window_helpexpander_Button = {"container": homepage_Window, "id": "btnexpandParamHelp", "name": "btnexpandParamHelp", "type": "Button"}
print_window = {"type": "Window"}
koolProg_Window = {"text": "KoolProg","type": "Window"}
prj_window_help_description_Label = {"container": koolProg_Window, "id": "txtHelp", "type": "Label"}

###################### PROJECT WINDOW GRID ICONS###############################################################################################
   
###################### PROJECT WINDOW PROJECT NAME AND DESCRIPTION###############################################################################################
project_window_txtprojectFilename_Label = {"container": homepage_Window, "id": "txtprojectFilename", "type": "Label"}
project_window_txtDescription_Edit = {"container": homepage_Window, "id": "txtDescription", "type": "Edit"}
project_window_projectname_Label = {"container": homepage_Window, "id": "", "type": "Label"}
###################### PROJECT WINDOW PROJECT NAME AND DESCRIPTION###############################################################################################
   
###################### PROJECT WINDOW MENU ITEMS###############################################################################################
newproject_tabController_TabItem = {"container": newproject_Window, "id": "tabController", "type": "TabItem"}
tabController_datagridProducts_Table = {"container": newproject_tabController_TabItem, "id": "datagridProducts", "type": "Table"}
datagridProducts_Expander = {"container": tabController_datagridProducts_Table, "id": "", "occurrence": 2, "type": "Expander"}

###################### PROJECT WINDOW MENU ITEMS###############################################################################################
   
   
################################ TREE VIEW LEFT SIDE ####################################################
windowhomepage_treeViewParameters_Tree = {"container": homepage_Window, "id": "treeViewParameters", "type": "Tree"}
setparameter_win_recent_project_list = {"container": setparameter_Window, "id": "lsbProjectList", "type": "List"}
lsbProjectList_ListItem = {"container": setparameter_win_recent_project_list, "id": "", "type": "ListItem"}
txtProjectpath_Label = {"container": lsbProjectList_ListItem, "id": "txtProjectpath", "type": "Label"}
newproject_tabController_TabItem = {"container": newproject_Window, "id": "tabController", "type": "TabItem"}
tabController_datagridProducts_Table = {"container": newproject_tabController_TabItem, "id": "datagridProducts", "type": "Table"}
datagridProducts_Expander = {"container": tabController_datagridProducts_Table, "id": "", "occurrence": 2, "type": "Expander"}
################################ TREE VIEW LEFT SIDE ####################################################
  
################################ SET PARAMTER NEW PROJECT WINDOW PROJECT DETAILS VALUE  #############   
project_window_Label_Value_1 = {"container": homepage_Window, "id": "tbProductInfoValue0", "type": "Label"}
project_window_Label_Value_2 = {"container": homepage_Window, "id": "tbProductInfoValue1", "type": "Label"}
project_window_Label_Value_3 = {"container": homepage_Window, "id": "tbProductInfoValue2", "type": "Label"}
project_window_Label_Value_4 = {"container": homepage_Window, "id": "tbProductInfoValue3", "type": "Label"}
project_window_sym_product_details_label_value = {
                   "ETC1Hx" : { "controllerVariant" : project_window_Label_Value_1,
                               "controllerApplication" : project_window_Label_Value_2,
                               "power" : project_window_Label_Value_3,
                               "controllerCodeNo" : project_window_Label_Value_4
                                 },
                   "EET" : {"controllerVariant" : project_window_Label_Value_1,
                            "controllerCodeNo" : project_window_Label_Value_2,
                               "softwareVersion" : project_window_Label_Value_3,
                               "controllerPV" : project_window_Label_Value_4
                                 },
                   "ERC11x" :{"controllerVariant" : project_window_Label_Value_1,
                               "controllerCodeNo" : project_window_Label_Value_2,
                               "softwareVersion" : project_window_Label_Value_3,
                               "controllerPV" : project_window_Label_Value_4
                                 },
                   "ERC21x" : {"controllerVariant" : project_window_Label_Value_1,
                               "controllerApplication" : project_window_Label_Value_2,
                               "controllerCodeNo" : project_window_Label_Value_3
                                 },
                   "EKE1x" : { "controllerVariant" : project_window_Label_Value_1,
                               "controllerCodeNo" : project_window_Label_Value_2,
                               "controllerPV" : project_window_Label_Value_3
                                 },
                   "AK-CC55" : {"controllerVariant" : project_window_Label_Value_1,
                                "controllerCodeNo" : project_window_Label_Value_2,
                               "softwareVersion" : project_window_Label_Value_3
                               }
                   }
################################ SET PARAMTER NEW PROJECT WINDOW PROJECT DETAILS VALUE  ############# 
  
################################ PROJECT WINDOW- INFO BUTTON  ###################################
project_window_controller_Info_Button = {"container": homepage_Window, "id": "btnInfo", "type": "Button"}
################################ PROJECT WINDOW- INFO BUTTON  ###################################
project_window_expand_collapse_Help_Button = {"container": homepage_Window, "id": "btnexpandParamHelp", "name": "btnexpandParamHelp", "type": "Button"}
project_window_website_link_Label = {"container": homepage_Window, "id": "lbllink", "type": "Label"}
################################ SET PARAMTER NEW PROJECT WINDOW PROJECT DETAILS LABEL #############
  
##### label is changing based on controller selection so keeping label_1, label_2....
project_window_Label_1 = {"container": homepage_Window, "id": "tbProductInfoName0", "type": "Label"}
project_window_Label_2 = {"container": homepage_Window, "id": "tbProductInfoName1", "type": "Label"}
project_window_Label_3 = {"container": homepage_Window, "id": "tbProductInfoName2", "type": "Label"}
project_window_Label_4= {"container": homepage_Window, "id": "tbProductInfoName3", "type": "Label"}
   
project_window_sym_product_details_label_text = {
                   "ETC1Hx" : { "controllerVariant" : project_window_Label_1,
                               "controllerApplication" : project_window_Label_2,
                               "powerSupply" : project_window_Label_3,
                               "controllerCodeNo" : project_window_Label_4
                                 },
                   "EET" : {"controllerVariant" : project_window_Label_1,
                            "controllerCodeNo" : project_window_Label_2,
                               "softwareVersion" : project_window_Label_3,
                               "controllerPV" : project_window_Label_4
                                 },
                   "ERC11x" :{"controllerVariant" : project_window_Label_1,
                               "controllerCodeNo" : project_window_Label_2,
                               "softwareVersion" : project_window_Label_3,
                               "controllerPV" : project_window_Label_4
                                 },
                   "ERC21x" : {"controllerVariant" : project_window_Label_1,
                               "controllerApplication" : project_window_Label_2,
                               "controllerCodeNo" : project_window_Label_3
                                 },
                   "EKE1x" : { "controllerVariant" : project_window_Label_1,
                               "controllerCodeNo" : project_window_Label_2,
                               "controllerPV" : project_window_Label_3
                                 },
                   "AK-CC55" : {"controllerVariant" : project_window_Label_1,
                                "controllerCodeNo" : project_window_Label_2,
                               "softwareVersion" : project_window_Label_3
                               }
                   }
################################ SET PARAMTER NEW PROJECT WINDOW PROJECT DETAILS LABEL #############
           
################################ PROJECT WINDOW- INFO BUTTON  ###################################
btnInfo_Button = {"container": homepage_Window, "id": "btnInfo", "type": "Button"}
################################ PROJECT WINDOW- INFO BUTTON  ###################################
   
################################ PRODUCT INFORMATION WINDOW #################################################################
productinformaiton_window = {"id": "windowproductinformaiton", "type": "Window"}
productinformaiton_header = {"container": productinformaiton_window, "id": "lblproductinfo", "type": "Label"}
productinformaiton_close_button = {"container": productinformaiton_window, "id": "btnClose", "type": "Button"}
productinformaiton_ProductName_Label = {"container": productinformaiton_window, "id": "lblProductName", "type": "Label"}
productinformaiton_Productimage_Image = {"container": productinformaiton_window, "id": "imgProductimage", "type": "Image"}
productinformaiton_productDescription_Label = {"container": productinformaiton_window, "id": "txtproductDescription", "type": "Label"}
productinformaiton_imgWireDiagram_Image = {"container": productinformaiton_window, "id": "imgWireDiagram", "type": "Image"}
productinformaiton_ScrollBar= {"container": productinformaiton_window, "id": "VerticalScrollBar", "type": "ScrollBar"}
################################ PRODUCT INFORMATION WINDOW #################################################################
   
################################ DATA GRID SYMBOLIC NAMES ####################################################
prj_window_datagridParameters_Table = {"container": homepage_Window, "id": "datagridParameters", "type": "Table"}
datagridParameters_datagridExpander_Expander = {"container": prj_window_datagridParameters_Table, "id": "datagridExpander", "type": "Expander"}
datagridExpander_TableRow_zero = {"container": datagridParameters_datagridExpander_Expander, "row": "0", "type": "TableRow"}
prj_window_datagrid_parameters_expand_collapse_button = {"container": prj_window_datagridParameters_Table, "id": "imgCollapse", "type": "Image"}
prj_window_project_details_collpase_Button = {"container": homepage_Window, "id": "btnexpandinfo", "name": "btnexpandinfo", "type": "Button"}
################################ View more label  ####################################################
prj_window_ViewMoreInfo_Label = {"container": homepage_Window, "id": "lblViewMore", "type": "Label"}
prj_window_ViewMoreInfo_Label_button = {"container": homepage_Window, "id": "btnMoreinfo", "name": "btnMoreinfo", "type": "Button"}
  
##################### ONLINE CONTROLLER DETAILS######################################################################
online_controller_variant_CodeNumber_Label = {"container": homepage_Window, "id": "txtCodeNumber", "type": "Label"}
online_controller_variant_SW_Version_Label = {"container": homepage_Window, "id": "txtVersion", "type": "Label"}
online_controller_variant_Product_Image = {"container": homepage_Window, "id": "imgProduct", "type": "Image"}
online_controller_variant_name = {"container": homepage_Window, "id": "txtProuctName", "type": "Label"}
online_controller_deviceinfo_button = {"container": homepage_Window, "id": "btnConnectedDeviceInfo", "type": "Button"}
online_controller_txtstatus_Label = {"container": homepage_Window, "id": "txtStatus", "type": "Label"}
online_controller_WPFControl = {"container": homepage_Window, "id": "UCconnectedcontrol", "type": "WPFControl"}
windowhomepage_btnInfo_Button = {"container": homepage_Window, "id": "btnInfo", "type": "Button"}
online_controller_variant_application_Label = {"container": homepage_Window, "id": "txtApp", "type": "Label"}
##################### ONLINE CONTROLLER DETAILS########################################################################
   
# ############o_Button = {"container": open_Dialog, "id": "", "occurrence": 2, "type": "Button"}
#####  E N D          O N L I N E      C O N T R O L L E R           D E T A I L S   ###########################
  
###########################COMMON KOOLPROG POP-UP MESSAGE BOX SYMBOLIC NAMES################################################################
messageBoxDisplay_Window = {"text": "MessageBoxDisplay", "type": "Window"}
Common_KoolProg_PopUp_window=messageBoxDisplay_Window
Common_KoolProg_PopUp_Image = {"container": messageBoxDisplay_Window, "id": "", "type": "Image"}
Common_KoolProg_PopUp_KoolProg_Label = {"container": messageBoxDisplay_Window, "id": "lblCaption", "type": "Label"}
# Common_KoolProg_PopUp_KoolProg_Label = {"container": messageBoxWindow_Window, "id": "lblCaption", "type": "Label"}
Common_KoolProg_PopUp_close_Button = {"container": messageBoxDisplay_Window, "id": "btnclose", "type": "Button"}
Common_KoolProg_PopUp_Msg_Label = {"container": messageBoxDisplay_Window, "id": "lblMsg", "type": "Label"}
Common_KoolProg_PopUp_Yes_Button = {"container": messageBoxDisplay_Window, "id": "btnYes", "type": "Button"}
Common_KoolProg_PopUp_NO_Button = {"container": messageBoxDisplay_Window, "id": "btnNO", "type": "Button"}
Common_KoolProg_PopUp_Cancel_Button = {"container": messageBoxDisplay_Window, "id": "btnCancel", "type": "Button"}
Common_KoolProg_PopUp_InProject_Button = {"container": messageBoxDisplay_Window, "id": "btnInProject", "type": "Button"}
Common_KoolProg_PopUp_OK_Button = {"container": messageBoxDisplay_Window, "id": "btnOK", "type": "Button"}
Common_KoolProg_PopUp_home_koolprog_Label = {"container": messageBoxDisplay_Window, "id": "", "type": "Label"}
Common_KoolProg_PopUp_InController_Button = {"container": messageBoxDisplay_Window, "id": "btnInController", "type": "Button"}

############################COMMON KOOLPROG POP-UP MESSAGE BOX SYMBOLIC NAMES################################################################
  
############ WINDOW DIALOG CODE NUMBER AND PROJECT ALREADY EXISTS POPUP SYMBOLIC NAMES ########################################################################
Code_Number_Popup_Window = {"type": "Window"}
o_Dialog = {"id": "", "type": "Dialog"}
Window_Dialog=o_Dialog
Code_Number_Popup_Window_Edit = {"container": Code_Number_Popup_Window, "type": "Edit"}
Code_Number_Popup_Window_CodeNumber_Label = {"container": Code_Number_Popup_Window, "occurrence": 3, "type": "Label"}
Code_Number_Popup_Window_ComboBox = {"container": Code_Number_Popup_Window, "type": "ComboBox"}
Code_Number_Popup_Window_FileType_Label = {"container": Code_Number_Popup_Window, "type": "Label"}
Code_Number_Popup_Window_Ok_Button = {"container": Code_Number_Popup_Window, "occurrence": 2, "type": "Button"}
Code_Number_Popup_Window_Cancel_Button = {"container": Code_Number_Popup_Window, "type": "Button"}
open_Dialog = {"text": "Open", "type": "Dialog"}
WindowDialog_PopUp_Yes_Button = {"container": open_Dialog, "text": "OK", "type": "Button"}
#open_OK_Button = {"container": open_Dialog, "text": "OK", "type": "Button"}
WindowDialog_PopUp_Ok_Button=WindowDialog_PopUp_Yes_Button
#WindowDialog_PopUp_Yes_Button = {"container": o_Dialog, "id": "", "type": "Button"}
#WindowDialog_PopUp_Ok_Button={"container": o_Dialog, "id": "", "type": "Button"}
WindowDialog_PopUp_No_Button = {"container": o_Dialog, "id": "", "occurrence": 2, "type": "Button"}
save_As_Dialog = {"text": "Save As", "type": "Dialog"}
save_As_OK_Button = {"container": save_As_Dialog, "text": "OK", "type": "Button"}
############## WINDOW DIALOG CODE NUMBER AND PROJECT ALREADY EXISTS POPUP SYMBOLIC NAMES ########################################################################
 
################################### WINDOW DIALOG(OPEN/SAVEAS) SYMBOLIC NAMES#######################################################################
Window_Dialog_Saveas_Edit = {"container": o_Dialog, "id": 1001, "type": "Edit"}
Window_Dialog_Open_or_Save_Button = {"container": o_Dialog, "id": 1, "type": "Button"}
Window_Dialog_Cancel_Button = {"container": o_Dialog, "id": 2, "type": "Button"}
Window_SaveAs_Dialog_ComboBox = {"container": o_Dialog, "id": "", "occurrence": 0, "type": "ComboBox"}
o_Pane = {"id": "", "occurrence": 13, "type": "Pane"}
Window_Dialog_SaveAs_Dialog_Toolbar = {"container": o_Pane, "id": 1001, "type": "Toolbar"}
Window_Open_Dialog_ComboBox = {"container": o_Dialog, "id": 1136, "type": "ComboBox"}
Window_Dialog_Open_Edit = {"container": o_Dialog, "id": 1148, "type": "Edit"}
o_Pane_2 = {"id": "", "occurrence": 11, "type": "Pane"}
Window_Open_Dialog_Toolbar = {"container": o_Pane_2, "id": 1001, "type": "Toolbar"}
Window_Dialog_Open_filename_Label = {"container": o_Dialog, "id": 1090, "type": "Label"}
Window_Dialog_File_List = {"id": "", "type": "List"}
################################### WINDOW DIALOG(OPEN/SAVEAS) SYMBOLIC NAMES#######################################################################
  
#########################################################################################################################windowpreference_lblLanguages_Label = {"container": windowpreference_Window, "id": "lblLanguages", "type": "Label"}
##
######################  PROJECT WINDOW ENDS  ###############################################################################################
##########################################################################################################################
  
################################### PREFERENCE WINDOW ###############################################################################
preference_Window = {"id": "windowpreference", "type": "Window"}
windowpreference_Window=preference_Window
preference_Window_Title_Label = {"container": windowpreference_Window, "id": "lblWindowTitle", "type": "Label"}
preference_Window_close_Button = {"container": windowpreference_Window, "id": "", "type": "Button"}
preference_Window_Languages_Label = {"container": windowpreference_Window, "id": "lblLanguages", "type": "Label"}
preference_Window_Languages_ComboBox = {"container": windowpreference_Window, "id": "cmbLanguages", "type": "ComboBox"}
preference_Window_SaveFileson_Label = {"container": windowpreference_Window, "id": "lblSaveFileson", "type": "Label"}
preference_Window_FilePath_Edit = {"container": windowpreference_Window, "id": "txtFilePath", "type": "Edit"}
preference_Window_LangAKCC_Label = {"container": windowpreference_Window, "id": "txtLangAKCC", "type": "Label"}
preference_Window_Unit_Label = {"container": windowpreference_Window, "id": "lblUnit", "type": "Label"}
preference_Window_Unitconverter_ComboBox = {"container": windowpreference_Window, "id": "cmbTempconverter", "type": "ComboBox"}
preference_Window_Baudrate_Label = {"container": windowpreference_Window, "id": "lblBaudrate", "type": "Label"}
preference_Window_Baudrate_ComboBox = {"container": windowpreference_Window, "id": "cmbBaudrate", "type": "ComboBox"}
preference_Window_PasswordEnable_CheckBox = {"container": windowpreference_Window, "id": "chkPasswordEnable", "type": "CheckBox"}
preference_Window_password_Label = {"container": windowpreference_Window, "id": "", "type": "Label"}
preference_Window_Password_Edit = {"container": windowpreference_Window, "id": "pwdPassword", "type": "Edit"}
preference_Window_confirm_password_label = {"container": windowpreference_Window, "id": "", "occurrence": 2, "type": "Label"}
preference_Window_pwd_case_sensitive_Label = {"container": windowpreference_Window, "id": "", "occurrence": 3, "type": "Label"}
preference_Window_ShowPassword_CheckBox = {"container": windowpreference_Window, "id": "chkShowPassword", "type": "CheckBox"}
preference_Window_Save_Button = {"container": windowpreference_Window, "id": "btnSave", "type": "Button"}
preference_Window_Cancel_Button = {"container": windowpreference_Window, "id": "btnCancel", "type": "Button"}
preference_Window_btnBrowse_Button = {"container": windowpreference_Window, "id": "btnBrowse", "type": "Button"}
preference_Window_ConfirmPwd_Edit = {"container": windowpreference_Window, "id": "pwdConfirmPwd", "type": "Edit"}
preference_Window_AKCCLang_Label = {"container": windowpreference_Window, "id": "txtLangAKCC", "type": "Label"}
o_Dialog = {"id": "", "type": "Dialog"}
preference_Window_browse_window=o_Dialog
preference_Window_Browse_folder_create_new = {"container": o_Dialog, "id": 14150, "type": "Button"}
Preference_window_Ok_Button = {"container": o_Dialog, "id": 1, "type": "Button"}
preference_Window_Browse_Cancel_Button = {"container": o_Dialog, "id": 2, "type": "Button"}
################################### PREFERENCE WINDOW ###############################################################################

######################################### ABOUT WINDOW #####################################################
windowabout_Window = {"id": "Windowabout", "type": "Window"}
about_Window=windowabout_Window
about_Window_Title_Label = {"container": windowabout_Window, "id": "lblTitle", "type": "Label"}
about_Window_cancel_Button = {"container": windowabout_Window, "id": "btnclose", "type": "Button"}
about_Window_KoolProg_Label = {"container": windowabout_Window, "id": "txtAppName", "type": "Label"}
about_Window_version_Label = {"container": windowabout_Window, "id": "lblversion", "type": "Label"}
about_Window_rights_Label = {"container": windowabout_Window, "id": "lblrights", "type": "Label"}
about_Window_Close_Button = {"container": windowabout_Window, "id": "btnClose", "type": "Button"}
about_Window_Version_Number_label = {"container": windowabout_Window, "id": "txtVersion", "type": "Label"}
######################################### ABOUT WINDOW #####################################################


################################## HELP WINDOW #######################################################################################################
windowhelp_Window = {"id": "windowhelp", "type": "Window"}
help_Window=windowhelp_Window
help_Window_Close_Button = {"container": windowhelp_Window, "id": "btnClose", "type": "Button"}
help_Window_Close_X_Button = {"container": windowhelp_Window, "id": "btnclose", "type": "Button"}
help_Window_Maximize_Button = {"container": windowhelp_Window, "id": "btnMaximize", "type": "Button"}
help_Window_WindowTitle_Label = {"container": windowhelp_Window, "id": "lblWindowTitle", "type": "Label"}
################################## HELP WINDOW ######################################################################################################

################################## VIEW MORE MWINDOW #################################################################################################
windowviewmore_Window = {"id": "windowviewmore", "type": "Window"}
viewmore_Window=windowviewmore_Window
viewmore_Window_WindowTitle_Label = {"container": windowviewmore_Window, "id": "lblWindowTitle", "type": "Label"}
viewmore_Window_Maximize_Button = {"container": windowviewmore_Window, "id": "btnMaximize", "type": "Button"}
viewmore_Window_Close_X_Button = {"container": windowviewmore_Window, "id": "CloseWindow", "type": "Button"}
viewmore_Window_Close_Button = {"container": windowviewmore_Window, "id": "btnClose", "type": "Button"}
viewmore_Window_WindowsFormsControl = {"class": "Danfoss.T4CClient.PDFViewer", "container": windowviewmore_Window, "type": "WindowsFormsControl"}
################################## VIEW MORE MWINDOW ###############################################################################################
###########################################  N E W    F I L E  N A M E   ############################################################
newfilename_window = {"id": "windowNewfilename", "type": "Window"}
newfilename_window_title_label = {"container": newfilename_window, "type": "Label"}
newfilename_window_description_label = {"container": newfilename_window, "id": "lbltext", "type": "Label"}
newfilename_window_newfilename_label = {"container": newfilename_window, "occurrence": 3, "type": "Label"}
newfilename_window_code_number_edit = {"container": newfilename_window, "type": "Edit"}
newfilename_window_ok_button = {"container": newfilename_window, "type": "Button"}
###########################################  N E W    F I L E  N A M E   ############################################################
 
###################################### PRINT WINDOW #######################################################################################################
o_Window = {"type": "Window"}
print_window=o_Window
print_window_FormsControl = {"class": "Microsoft.Reporting.WinForms.ReportPanel+RenderingPanel", "container": o_Window, "type": "WindowsFormsControl"}
o_Toolbar = {"container": o_Window, "type": "Toolbar"}
print_window_Toolbar=o_Toolbar
print_window_ToolbarItem_export = {"container": o_Toolbar, "occurrence": 16, "type": "ToolbarItem"}
o_ToolbarItem = {"container": o_Toolbar, "occurrence": 16, "type": "ToolbarItem"}
print_window_Toolbar_Export_Excel = {"container": o_ToolbarItem, "type": "MenuItem"}
print_window_Toolbar_Export_PDF = {"container": o_ToolbarItem, "occurrence": 2, "type": "MenuItem"}
print_window_Toolbar_Export_word = {"container": o_ToolbarItem, "occurrence": 3, "type": "MenuItem"}
print_window_Toolbar_nextpage = {"container": o_Toolbar, "occurrence": 6, "type": "ToolbarItem"}
print_window_Toolbar_lastpage = {"container": o_Toolbar, "occurrence": 7, "type": "ToolbarItem"}
print_window_Toolbar_previouspage = {"container": o_Toolbar, "occurrence": 2, "type": "ToolbarItem"}
print_window_Toolbar_firstpage = {"container": o_Toolbar, "type": "ToolbarItem"}
print_window_Toolbar_zoom_combobox = {"container": o_Window, "type": "ComboBox"}
print_window_page_Edit = {"container": o_Window, "type": "Edit"}
print_window_maxpage_number = {"container": o_Toolbar, "occurrence": 5, "type": "ToolbarItem"}
print_window_print_button = {"container": o_Toolbar, "occurrence": 13, "type": "ToolbarItem"}
o_Dialog = {"id": "", "type": "Dialog"}
print_window_print_popup=o_Dialog
print_saveas_window_combobox={"container": o_Dialog, "id": "", "occurrence": 2, "type": "ComboBox"}
o_Pane_3 = {"id": "", "occurrence": 13, "type": "Pane"}
print_saveas_toolbar = {"container": o_Pane_3, "id": 1001, "type": "Toolbar"}
###################################### PRINT WINDOW #######################################################################################################

####################################### PRINT POP-UP WINDOW  #################################################################################################
print_popup_Window = {"id": "Windowdialogprint", "type": "Window"}
print_popup_ParamSheet_Button = {"container": print_popup_Window, "id": "btnParamSheet", "type": "Button"}
print_popup_EngrSheet_Button = {"container": print_popup_Window, "id": "btnEngrSheet", "type": "Button"}
print_popup_Cancel_Button = {"container": print_popup_Window, "id": "btnCancel", "type": "Button"}
print_popup_Msg_Label = {"container": print_popup_Window, "id": "lblMsg", "type": "Label"}
print_popup_koolprog_Image = {"container": print_popup_Window, "id": "", "type": "Image"}
print_popup_Title_Label = {"container": print_popup_Window, "id": "lblTitle", "type": "Label"}
print_popup_close_Button = {"container": print_popup_Window, "id": "btnclose", "type": "Button"}

####################################### PRINT POP-UP WINDOW ###########################################################################################

####################################### PRINT WINDOW #################################################################################################

######################################## PASSWORD POP-UP ##############################################################################
o_Window = {"id": "", "type": "Window"}
password_popup=o_Window
password_popup_change_user_title = {"container": o_Window, "id": "lblTitle", "type": "Label"}
password_popup_cancel_button = {"container": o_Window, "id": "", "type": "Button"}
password_popup_user_Label = {"container": o_Window, "id": "", "type": "Label"}
password_popup_user_Edit = {"container": o_Window, "id": "txtUser", "type": "Edit"}
password_popup_password_label = {"container": o_Window, "id": "","type": "Label"}
password_popup_Password_Edit = {"container": o_Window, "id": "txtPassword", "type": "Edit"}
password_popup_ShowPassword_CheckBox = {"container": o_Window, "id": "chkShowPassword", "type": "CheckBox"}
password_popup_Ok_Button = {"container": o_Window, "id": "btnOk", "type": "Button"}
password_popup_Close_Button = {"container": o_Window, "id": "btnClose", "type": "Button"}
password_popup_case_sensitive_label = {"container": password_popup, "id": "", "occurrence": 3, "type": "Label"}

######################################### PASSWORD POP-UP ###########################################################################


######################################PLUG AND PLAY ONLINE###################################
project_window_sym_online_controller_details = {

                   "ETC1Hx" : { "connected_controllerVariant" : online_controller_variant_name,
                               "connected_controllerApplication" : online_controller_variant_application_Label,
                               "connected_power" : None,
                               "connected_controllerCodeNo" : online_controller_variant_CodeNumber_Label
                                 },
                   "EET" : {"connected_controllerVariant" : online_controller_variant_name,
                            "connected_controllerCodeNo" : online_controller_variant_CodeNumber_Label,
                               "connected_softwareVersion" : online_controller_variant_SW_Version_Label,
                                 },
                   "ERC11x" :{"connected_controllerVariant" : online_controller_variant_name,
                               "connected_controllerCodeNo" : online_controller_variant_CodeNumber_Label,
                               "connected_softwareVersion" : online_controller_variant_SW_Version_Label,
                               "connected_controllerPV" : online_controller_variant_application_Label
                                 },
                   "ERC21x" : {"connected_controllerVariant" : online_controller_variant_name,
                               "connected_controllerApplication" : online_controller_variant_application_Label,
                               "connected_controllerCodeNo" : online_controller_variant_CodeNumber_Label
                                 },
                   "EKE1x" : { "connected_controllerVariant" : online_controller_variant_name,
                               "connected_controllerCodeNo" : online_controller_variant_CodeNumber_Label,
                               "connected_controllerPV" : online_controller_variant_application_Label
                                 },
                   "AK-CC55" : {"connected_controllerVariant" : online_controller_variant_name,
                                "connected_controllerCodeNo" : online_controller_variant_CodeNumber_Label,
                               "connected_softwareVersion" : online_controller_variant_application_Label
                               }
                   }
                   
                   
online_service_please_connect_controller_label = {"container": homepage_Window, "id": "", "text":"Please connect a controller!", "type": "Label"}
homepage_btnDisconnect_Button = {"container": homepage_Window, "id": "btnDisconnect", "name": "btnDisconnect", "type": "Button"}
homepage_btnConnect_Button = {"container": homepage_Window, "id": "btnConnect", "name": "btnConnect", "type": "Button"}                  
######################################PLUG AND PLAY ONLINE###################################          

#########################################COPY TO CONTROLLER ######################################################################
windowhomepage_Window = {"id": "windowhomepage", "type": "Window"}
windowhomepage_lblmenucodeinfo_Label = {"container": windowhomepage_Window, "id": "lblmenucodeinfo", "type": "Label"}
windowhomepage_lblparamnameinfo_Label = {"container": windowhomepage_Window, "id": "lblparamnameinfo", "type": "Label"}
copytocontroller_Label = {"container": windowhomepage_Window, "id": "lblcopytocontroller", "type": "Label"}
copytocontroller_selectfile_Label = {"container": windowhomepage_Window, "id": "", "type": "Label"}
copytocontroller_selectfile_Edit = {"container": windowhomepage_Window, "id": "txtFilePath", "type": "Edit"}
copytocontroller_filebrowse_Button = {"container": windowhomepage_Window, "id": "btnfilebrowse", "type": "Button"}
copytocontroller_pleaseconnectCocontroller_Label = {"container": windowhomepage_Window, "id": "tbNoData1", "type": "Label"}
copytocontroller_Singleormultiple_Label = {"container": windowhomepage_Window, "id": "txtSingleormultiple", "type": "Label"}
copytocontroller_Single_RadioButton = {"container": windowhomepage_Window, "id": "rdbSingle", "type": "RadioButton"}
copytocontroller_Multiple_RadioButton = {"container": windowhomepage_Window, "id": "rdbMultiple", "type": "RadioButton"}
copytocontroller_setcounter_Label = {"container": windowhomepage_Window, "id": "lblsetcntr", "type": "Label"}
copytocontroller_setcounter_Edit = {"container": windowhomepage_Window, "id": "txtCounter", "type": "Edit"}
copytocontroller_countUp_RadioButton = {"container": windowhomepage_Window, "id": "rdbIncCounter", "type": "RadioButton"}
copytocontroller_countDown_RadioButton = {"container": windowhomepage_Window, "id": "rdbDecCounter", "type": "RadioButton"}
copytocontroller_Start_Text_label = {"container": windowhomepage_Window, "id": "", "occurrence": 3, "type": "Label"}
copytocontroller_Counter_Label = {"container": windowhomepage_Window, "id": "lblCCounter", "type": "Label"}
copytocontroller_Counter_Number_Label = {"container": windowhomepage_Window, "id": "lblProgCounter", "type": "Label"}
copytocontroller_Counter_Reset_Button = {"container": windowhomepage_Window, "id": "btnReset", "name": "btnReset", "type": "Button"}
copytocontroller_copying_Status_Label = {"container": windowhomepage_Window, "id": "lblStatus", "type": "Label"}
copytocontroller_copying_Progress_percentage = {"container": windowhomepage_Window, "id": "lblProgress", "occurrence": 2, "type": "Label"}
copytocontroller_copying_ProgressBar = {"container": windowhomepage_Window, "id": "progbar", "type": "ProgressBar"}
copytocontroller_copying_paramter_box = {"container": windowhomepage_Window, "id": "rtbProgress", "type": "Edit"}
copytocontroller_start_Button = {"container": windowhomepage_Window, "id": "btnUpdate", "type": "Button"}
copytocontroller_Info_Button = {"container": windowhomepage_Window, "id": "btnInfo", "type": "Button"}
copytocontroller_Productleft_Image = {"container": windowhomepage_Window, "id": "imgProductleft", "type": "Image"}
copytocontroller_ProductInfoName0_Label = {"container": windowhomepage_Window, "id": "tbProductInfoName0", "type": "Label"}
copytocontroller_ProductInfoName1_Label = {"container": windowhomepage_Window, "id": "tbProductInfoName1", "type": "Label"}
copytocontroller_ProductInfoName2_Label = {"container": windowhomepage_Window, "id": "tbProductInfoName2", "type": "Label"}
copytocontroller_ProductInfoName3_Label = {"container": windowhomepage_Window, "id": "tbProductInfoName3", "type": "Label"}
copytocontroller_ProductInfoName0_Value = {"container": windowhomepage_Window, "id": "tbProductInfoValue0", "type": "Label"}
copytocontroller_ProductInfoName1_Value = {"container": windowhomepage_Window, "id": "tbProductInfoValue1", "type": "Label"}
copytocontroller_ProductInfoName2_Value = {"container": windowhomepage_Window, "id": "tbProductInfoValue2", "type": "Label"}
copytocontroller_ProductInfoName3_Value = {"container": windowhomepage_Window, "id": "tbProductInfoValue3", "type": "Label"}
copytocontroller_fav_title = {"container": windowhomepage_Window, "id": "", "occurrence": 2, "type": "Label"} 
windowhomepage_dgFavoriteFiles_Table = {"container": windowhomepage_Window, "id": "dgFavoriteFiles", "type": "Table"}
copytocontroller_fav_Table=windowhomepage_dgFavoriteFiles_Table
copytocontroller_fav_projectname_Label = {"container": windowhomepage_dgFavoriteFiles_Table, "id": "", "type": "Label"}
copytocontroller_fav_projectpath_Label = {"container": windowhomepage_dgFavoriteFiles_Table, "id": "", "occurrence": 2, "type": "Label"}
copytocontroller_fav_controllertype_Label = {"container": windowhomepage_dgFavoriteFiles_Table, "id": "", "occurrence": 3, "type": "Label"}
copytocontroller_fav_action_Label = {"container": windowhomepage_dgFavoriteFiles_Table, "id": "", "occurrence": 4, "type": "Label"}
dgFavoriteFiles_0_3_TableCell = {"column": 3, "container": windowhomepage_dgFavoriteFiles_Table, "id": "", "row": 0, "type": "TableCell"}
copytocontroller_fav_Delete_Button = {"container": dgFavoriteFiles_0_3_TableCell, "id": "btnDeleteRow", "name": "btnDeleteRow", "type": "Button"}
copytocontroller_connection_Status_Label = {"container": windowhomepage_Window, "id": "txtStatus", "type": "Label"}
copytocontroller_controllerconnecting_image = {"container": windowhomepage_Window, "id": "UCconnectedcontrol", "type": "WPFControl"}
copytocontroller_controllerconnecting_Label = {"container": windowhomepage_Window, "id": "txtStatus", "type": "Label"}
copytocontroller_SetAsFavourite_Button = {"container": windowhomepage_Window, "id": "btnSetAsFavourite", "type": "Button"}
copytocontroller_ConnectedDeviceInfo_Button = {"container": windowhomepage_Window, "id": "btnConnectedDeviceInfo", "type": "Button"}
copytocontroller_copying_ProgressBar_red = {"container": koolProg_Window, "id": "progbarRed", "type": "ProgressBar"}
copy_to_controller_product_details_labels_text= {

    "ETC1Hx": {"controllerVariant": copytocontroller_ProductInfoName0_Label,
               "controllerApplication": copytocontroller_ProductInfoName1_Label,
               "powerSupply": copytocontroller_ProductInfoName2_Label,
               "description": copytocontroller_ProductInfoName3_Label
               },
    "EET": {"controllerVariant": copytocontroller_ProductInfoName0_Label,
            "controllerCodeNo": copytocontroller_ProductInfoName1_Label,
            "DatabaseVersion": copytocontroller_ProductInfoName2_Label,
            "softwareVersion":copytocontroller_ProductInfoName3_Label
            
            },
    "ERC11x": {"controllerVariant":copytocontroller_ProductInfoName0_Label,
               "controllerCodeNo":copytocontroller_ProductInfoName1_Label,
               "DatabaseVersion": copytocontroller_ProductInfoName2_Label,
               "softwareVersion": copytocontroller_ProductInfoName3_Label
               },
    "ERC21x": {"controllerVariant": copytocontroller_ProductInfoName0_Label,
               "controllerApplication":copytocontroller_ProductInfoName1_Label,
               "controllerCodeNo": copytocontroller_ProductInfoName2_Label,
               "description": copytocontroller_ProductInfoName3_Label
               },
    "EKE1x": {"controllerVariant": copytocontroller_ProductInfoName0_Label,
              "controllerCodeNo":copytocontroller_ProductInfoName1_Label,
              "controllerPV": copytocontroller_ProductInfoName2_Label,
              "description": copytocontroller_ProductInfoName3_Label
              },
    "AK-CC55": {"controllerVariant": copytocontroller_ProductInfoName0_Label,
                "controllerCodeNo": copytocontroller_ProductInfoName1_Label,
                "softwareVersion": copytocontroller_ProductInfoName2_Label
                }
}

copy_to_controller_product_details_labels_text_value = {
                   "ETC1Hx" : { "controllerVariant" : copytocontroller_ProductInfoName0_Value,
                               "controllerApplication" : copytocontroller_ProductInfoName1_Value,
                               "powerSupply" : copytocontroller_ProductInfoName2_Value,
                               "project_description": copytocontroller_ProductInfoName3_Value
                                 },
                   "EET" : {"controllerVariant" : copytocontroller_ProductInfoName0_Value,
                            "controllerCodeNo" : copytocontroller_ProductInfoName1_Value,
                            "DatabaseVersion" : copytocontroller_ProductInfoName2_Value,
                            "softwareVersion": copytocontroller_ProductInfoName3_Value
                                 },
                   "ERC11x" :{"controllerVariant" : copytocontroller_ProductInfoName0_Value,
                               "controllerCodeNo" : copytocontroller_ProductInfoName1_Value,
                               #"DatabaseVersion" : copytocontroller_ProductInfoName2_Value,
                               "softwareVersion": copytocontroller_ProductInfoName3_Value
                                 },
                   "ERC21x" : {"controllerVariant" : copytocontroller_ProductInfoName0_Value,
                               "controllerApplication" : copytocontroller_ProductInfoName1_Value,
                               "controllerCodeNo" : copytocontroller_ProductInfoName2_Value,
                               "project_description": copytocontroller_ProductInfoName3_Value
                                 },
                   "EKE1x" : { "controllerVariant" : copytocontroller_ProductInfoName0_Value,
                               "controllerCodeNo" : copytocontroller_ProductInfoName1_Value,
                               "controllerPV" : copytocontroller_ProductInfoName2_Value,
                               "project_description": copytocontroller_ProductInfoName3_Value
                                 },
                   "AK-CC55" : {"controllerVariant" : copytocontroller_ProductInfoName0_Value,
                                "controllerCodeNo" : copytocontroller_ProductInfoName1_Value,
                               "softwareVersion" : copytocontroller_ProductInfoName2_Value
                               }
                   }
firmwarePassword_Window = {"id": "windowfirmwarepassword", "type": "Window"}
firmwarePassword_Firmware_update_is_password_protected_Label = {"container": firmwarePassword_Window, "id": "lbltextrow1", "type": "Label"}
firmwarePassword_OK_Button = {"container": firmwarePassword_Window, "id": "btnOk", "type": "Button"}
firmwarePassword_Password_is_case_sensitive_Label = {"container": firmwarePassword_Window, "id": "lbltext", "type": "Label"}
firmwarePassword_cancel_Button = {"container": firmwarePassword_Window, "id": "btnClose", "type": "Button"}
firmwarepassword_header_Label = {"container": firmwarePassword_Window, "id": "lblTitle", "type": "Label"}
firmwarePassword_X_Button = {"container": firmwarePassword_Window, "id": "lblclose", "type": "Button"}
firmwarePassword_Enter_koolprog_password_label = {"container": firmwarePassword_Window, "id": "lbltextrow2", "type": "Label"}
#firmwarePassword_password_Label = {"container": firmwarePassword_Window, "occurrence": 2, "id": "lbltextpassword", "type": "Label"}
#firmwarePassword_password_Edit = {"container": firmwarePassword_Window, "leftObject": firmwarePassword_password_Label, "type": "Edit"}
firmwarePassword_password_Edit = {"container": firmwarePassword_Window, "id": "txtPassword", "type": "Edit"}
firmwarePassword_password_Label = {"container": firmwarePassword_Window, "id": "lbltextpassword", "type": "Label"}
windowhomepage_lblmenucodeinfo_Label = {"container": windowhomepage_Window, "id": "lblmenucodeinfo", "type": "Label"}
windowhomepage_lblparamnameinfo_Label = {"container": windowhomepage_Window, "id": "lblparamnameinfo", "type": "Label"}

#########################################COPY TO CONTROLLER ######################################################################

##############################IMPORT SETTING FROM CONTROLLER###############################################
import_setting_controller_model_Progress_Label = {"container": windowhomepage_Window, "id": "txtProgress", "type": "Label"}
import_setting_controller_connecting_controller_label=import_setting_controller_model_Progress_Label
##############################IMPORT SETTING FROM CONTROLLER###############################################
    
#####################################CHART RELATED##############################################




# Click on chart button
homepage_ServiceTestMain_Button = {"container": homepage_Window, "id": "btnServiceTestMain", "name": "btnServiceTestMain", "type": "Button"}

uI_ChartWindow = {"id": "UI", "type": "Window"}

#stop button
uIChart_btnStop_Button = {"container": uI_ChartWindow, "id": "btnStop", "type": "Button"}

#The chart
uI_WindowsFormsControl = {"class": "System.Windows.Forms.DataVisualization.Charting.Chart", "container": uI_ChartWindow, "type": "WindowsFormsControl"}
UIGraph_WindowsFormsAccessibleObject = {"container": uI_WindowsFormsControl, "role": "Graphic", "type": "WindowsFormsAccessibleObject"}
uI_WindowsFormsControl = {"class": "System.Windows.Forms.DataVisualization.Charting.Chart", "container": uI_ChartWindow, "type": "WindowsFormsControl"}
uI_WindowsFormsAccessibleObject = {"container": uI_WindowsFormsControl, "role": "StaticText", "type": "WindowsFormsAccessibleObject"}

UIGraph_WindowsFormsAccessibleObject_Grid = {"container": UIGraph_WindowsFormsAccessibleObject,"role": "Graphic", "name":"X axis Major Gridlines", "type": "WindowsFormsAccessibleObject"}
#Log interval
uIChart_logInterval_Label = {"container": uI_ChartWindow, "id": "", "occurrence": 2, "type": "Label"}
#Log period
uIChart_LogPeriod_Label = {"container": uI_ChartWindow, "id": "", "occurrence": 3, "type": "Label"}

#Log Interval combo
uIChart_logInterval_ComboBox = {"container": uI_ChartWindow, "id": "cmbSecs", "type": "ComboBox"}
#Log Period combo
uIChart_LogPeriod_ComboBox = {"container": uI_ChartWindow, "id": "cmbLogPeriod", "type": "ComboBox"}

#Grid label
uIChart_Grid_Label = {"container": uI_ChartWindow, "id": "", "occurrence": 5, "type": "Label"}

#Save chart checkbox
uIChart_saveChart_CheckBox = {"container": uI_ChartWindow, "id": "cbLog", "type": "CheckBox"}

#reset button
uIChart_btnReset_Button = {"container": uI_ChartWindow, "id": "btnReset", "type": "Button"}

# Label label
uIChart_label_Label = {"container": uI_ChartWindow, "id": "", "occurrence": 7, "type": "Label"}
#Label combobox
uIChart_labelInterval_ComboBox = {"container": uI_ChartWindow, "id": "cmbInterval", "type": "ComboBox"}

#The parameter display table
uIChart_ParametersInfo_Table = {"container": uI_ChartWindow, "id": "dgParametersInfo", "type": "Table"}

# Zoom label
uIChart_zoom_Label = {"container": uI_ChartWindow, "id": "", "occurrence": 6, "type": "Label"}
#zoom level combobox
uIChart_zoomLevel_ComboBox = {"container": uI_ChartWindow, "id": "cmbScaleView", "type": "ComboBox"}


#back button
uIChart_back_Button = {"container": uI_ChartWindow, "id": "btnHome", "name": "btnHome", "type": "Button"}

#save button
uIChart_Save_Button = {"container": uI_ChartWindow, "id": "btnSave", "name": "btnSave", "type": "Button"}

# print button
uIChart_Printer_Button = {"container": uI_ChartWindow, "id": "btnchartPrinter", "name": "btnchartPrinter", "type": "Button"}

# help
uIChart_mnuHelpMenu_MenuBar = {"container": uI_ChartWindow, "id": "mnuHelpMenu", "type": "MenuBar"}
UIChart_mnuHelp_button= {"container": uIChart_mnuHelpMenu_MenuBar, "id": "mnuHelp", "type": "MenuItem"}

# product variant name
uIChart_txtName1_Label = {"container": uI_ChartWindow, "id": "txtName1", "type": "Label"}

#Line Graph Label
uIChart_imgproductright_Image = {"container": uI_ChartWindow, "id": "imgproductright", "type": "Image"}

uIchart_saveAsDialog_FileType_ComboBox = {"container": o_Dialog, "id": "", "occurrence": 2, "type": "ComboBox"}

#Grid Checkbox
uIChart_Grid_CheckBox = {"container": uI_ChartWindow, "id": "cbGrid", "type": "CheckBox"}


uIChart_dgParametersInfo_Table = {"container": uI_ChartWindow, "id": "dgParametersInfo", "type": "Table"}


uIChart_LineGraph_Label = {"container": uI_ChartWindow, "id": "", "text":"Line Graph","type": "Label"}
koolProg_ServiceTest_Window = {"text": "KoolProg-ServiceTest", "type": "Window"}
UIChart_codenumber_Label = {"container": koolProg_ServiceTest_Window, "id": "txtName2", "type": "Label"}
UIChart_sw_version_Label = {"container": koolProg_ServiceTest_Window, "id": "txtName3", "type": "Label"}
koolProg_ServiceTest_i_Button = {"container": koolProg_ServiceTest_Window, "text": "i", "type": "Button"}
#####################################CHART RELATED#############################################

######################################### FAVORITE ######################################################
windowhomepage_treeViewParameters_Tree = {"container": windowhomepage_Window, "id": "treeViewParameters", "type": "Tree"}
treeViewParameters_TreeItem = {"container": windowhomepage_treeViewParameters_Tree, "id": "", "type": "TreeItem"}
koolProg_btnQuickSetting_Button = {"container": koolProg_Window, "name": "btnQuickSetting", "type": "Button"}
koolProg_btnConvSetfile_Button = {"container": koolProg_Window, "name": "btnConvSetfile", "type": "Button"}
koolProg_Set_Main_Switch_ON_after_copying_CheckBox = {"container": koolProg_Window, "text": "Set Main Switch ON after copying", "type": "CheckBox"}

######################################### FAVORITE ######################################################


#####################################CONVERT SETTINGS RELATED#############################################

convertSettingFile_Window = {"text": "ConvertSettingFile", "type": "Window"}
convertSettingFile_New_file_name_Label = {"container": convertSettingFile_Window, "text": "New file name:", "type": "Label"}
convertSettingFile_Product_name_Label = {"container": convertSettingFile_Window, "text": "Product name:", "type": "Label"}
convertSettingFile_Code_no_Label = {"container": convertSettingFile_Window, "text": "Code no:", "type": "Label"}
convertSettingFile_Product_info_value_Label = {"container": convertSettingFile_Window, "id": "tbProductInfoValue0", "type": "Label"}
convertSettingFile_Software_version_Label = {"container": convertSettingFile_Window, "text": "Software version:", "type": "Label"}
convertSettingFile_Software_version_ComboBox = {"container": convertSettingFile_Window, "leftObject": convertSettingFile_Software_version_Label, "type": "ComboBox"}
convertSettingFile_CANCEL_Button = {"container": convertSettingFile_Window, "text": "CANCEL", "type": "Button"}
convertSettingFile_Select_different_Software_version_or_file_name_can_t_be_empty_Label = {"container": convertSettingFile_Window, "text": "*Select different Software version or file name can't be empty.", "type": "Label"}
convertSettingFile_CONVERT_FILE_Button = {"container": convertSettingFile_Window, "text": "CONVERT FILE", "type": "Button"}
convertSettingFile_Select_the_setting_file_you_want_to_use_Label = {"container": convertSettingFile_Window, "text": "Select the setting file you want to use", "type": "Label"}
convertSettingFile_Code_no_ComboBox = {"container": convertSettingFile_Window, "leftObject": convertSettingFile_Code_no_Label, "type": "ComboBox"}
convertSettingFile_New_file_name_Edit = {"container": convertSettingFile_Window, "leftObject": convertSettingFile_New_file_name_Label, "type": "Edit"}
convertSettingFile_X_Button = {"container": convertSettingFile_Window, "text": "X", "type": "Button"}
convertSettingFile_ConvertSettingFile_Label = {"container": convertSettingFile_Window, "text": "ConvertSettingFile", "type": "Label"}
convertSettingFile_Image = {"container": convertSettingFile_Window, "type": "Image"}
convertSettingFile_i_Button = {"container": convertSettingFile_Window, "text": "i", "type": "Button"}
converted_Settings_Report_Window = {"text": "Converted Settings Report", "type": "Window"}
converted_Settings_Report_Converted_Settings_File_Report_Label = {"container": converted_Settings_Report_Window, "text": "Converted Settings File Report", "type": "Label"}
converted_Settings_Report_X_Button = {"container": converted_Settings_Report_Window, "text": "X", "type": "Button"}
converted_Settings_Report_Close_Button = {"container": converted_Settings_Report_Window, "text": "Close", "type": "Button"}
converted_Settings_Report_Table = {"container": converted_Settings_Report_Window, "type": "Table"}
o_Button = {"container": converted_Settings_Report_Table, "text": "", "type": "Button"}
label_HeaderItem = {"container": converted_Settings_Report_Table, "text": "Label", "type": "HeaderItem"}
parameter_Name_HeaderItem = {"container": converted_Settings_Report_Table, "text": "Parameter Name", "type": "HeaderItem"}
converted_Settings_Report_Vertical_ScrollBar = {"container": converted_Settings_Report_Table, "orientation": "vertical", "type": "ScrollBar"}
converted_Settings_Report_Horizontal_ScrollBar = {"container": converted_Settings_Report_Table, "orientation": "horizontal", "type": "ScrollBar"}


#####################################CONVERT SETTINGS RELATED#############################################

#########################################   QUICK   SETTINGS     WINDOW   ######################################################
newWizard_Window = {"text": "NewWizard", "type": "Window"}
quick_setup_Label = {"container": newWizard_Window, "id": "lblTitle", "type": "Label"}
newWizard_title_template_label = {"container": newWizard_Window, "id": "txtTitleTemplate", "type": "Label"}
newWizard_menuCode_Label = {"container": newWizard_Window, "id": "txtMenuCode", "type": "Label"}
newWizard_parameterName_Label = {"container": newWizard_Window, "id": "txtParameterName", "type": "Label"}
newWizard_parameter_description = {"container": newWizard_Window, "id": "txtDescription", "type": "Label"}
newWizard_Quick_Setting_Parameters_Label = {"container": newWizard_Window, "id": "txtselect", "type": "Label"}
newWizard_SW_Version_Label = {"container": newWizard_Window, "id": "txtVersionNumber",  "type": "Label"}
newWizard_Variant_Label = {"container": newWizard_Window, "id": "txtProductNumber",  "type": "Label"}
newWizard_CodeNumber_Label = {"container": newWizard_Window, "id": "txtCodeNumber",  "type": "Label"}
newWizard_ListView = {"container": ":newWizard_Window", "type": "ListView"}
newWizard_Image = {"container": newWizard_Window, "type": "Image"}
newWizard_FINISH_Button = {"container": newWizard_Window, "id": "btnFinish", "type": "Button"}
newWizard_X_Button = {"container": newWizard_Window, "id": "btnClose", "type": "Button"}
newWizard_ScrollBar = {"container": newWizard_ListView, "orientation": "vertical", "type": "ScrollBar"}
newWizard_ScrollBar_2 = {"container": newWizard_Window, "occurrence": 2, "orientation": "vertical", "type": "ScrollBar"}

#########################################   QUICK   SETTINGS     WINDOW   ######################################################

#########################################   ONLINE SERVICE  ######################################################

koolProg_Parameters_TabItem = {"container": windowhomepage_Window, "id": "tabParameters", "type": "TabItem"}
koolProg_Alarms_TabItem = {"container": windowhomepage_Window, "id": "tabAlarms", "type": "TabItem"}
koolProg_Input_Output_TabItem = {"container": windowhomepage_Window, "id": "tabInputOutput", "type": "TabItem"}
input_Output_TabItem = {"container": print_window, "text": "Input/Output", "type": "TabItem"}
input_Output_Main_switch_Label = {"container": input_Output_TabItem, "text": "Main switch:", "type": "Label"}
input_Output_Manual_RadioButton = {"container": input_Output_TabItem, "text": "Manual", "type": "RadioButton"}
input_Output_Start_RadioButton = {"container": input_Output_TabItem, "text": "Start", "type": "RadioButton"}
input_Output_Stop_RadioButton = {"container": input_Output_TabItem, "text": "Stop", "type": "RadioButton"}
koolProg_Table = {"container": koolProg_Window, "occurrence": 7, "type": "Table"}
manual_Label = {"container": koolProg_Table, "text": "Manual", "type": "Label"}
collapseImg_Image = {"container": print_window, "id": "collapseImg", "type": "Image"}

#########################################   ONLINE SERVICE  ######################################################

####################################### ALARMS - ONLINE SERVICE WINDOW ###########################################

onlineService_Alarm_Window = {"id": "windowhomepage", "type": "Window"}
onlineService_Alarm_Window_Alarms_Table = {"container": onlineService_Alarm_Window, "id": "datagridRPCAlarms", "type": "Table"}
onlineService_Alarm_Window_treeView = {"container": onlineService_Alarm_Window, "id": "treeViewAlarms", "type": "Tree"}
onlineService_Alarm_dataGridActiveAlarm_Table = {"container": windowhomepage_Window, "id": "dataGridActiveAlarm", "type": "Table"}
onlineService_Alarm_ResetAlarm_Button = {"container": onlineService_Alarm_Window, "id": "btnResetAlarm", "name": "btnResetAlarm", "type": "Button"}
onlineService_Readouts_Table = {"container": onlineService_Alarm_Window, "id": "dataGridInput", "type": "Table"}
onlineService__AlarmTab_ReadOuts = {"class": "System.Windows.Controls.ItemsControl", "container": onlineService_Alarm_Window, "id": "", "type": "WPFControl"}

####################################### ALARMS - ONLINE SERVICE WINDOW ###########################################

koolProg_Tree = {"container": koolProg_Window, "occurrence": 3, "type": "Tree"}
horizontal_ScrollBar_treeView = {"container": koolProg_Tree, "orientation": "horizontal", "type": "ScrollBar"}
windowfactoryreset_Window = {"id": "windowfactoryreset", "type": "Window"}
windowfactoryreset_btnInController_Button = {"container": windowfactoryreset_Window, "id": "btnInController", "type": "Button"}
