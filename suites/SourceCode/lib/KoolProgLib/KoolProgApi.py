# -*- coding: utf-8 -*-

import KoolProg_verify
from KoolProg import MainWindow, SetparamWindow, NewProjectWindow, \
    WindowDialog, ProjectWindow, PopupMessageBox, CodenumberPopupWindow, \
    WindowDialogPopUp, CommonFunction, NewFileName, ConnectedController, \
    Preferenceswindow, PasswordWindow , OnlineServiceWindow , Copytocontroller, \
    PortCommunication, ImportSettingModel, ChartWindow, \
    ConvertSettingsWindow, QuickSettingsWindow , FirmwareUpgrade \
    
   
import koolprogconfig


class KoolprogApi():
    """
    """

    def __init__(self, sym_names):
        """
        """
        self.sym_names = sym_names
        self.main_window = MainWindow()
        self.set_param_window = SetparamWindow()
        self.new_project_win = NewProjectWindow()
        self.popup_message = PopupMessageBox()
        self.project_win = ProjectWindow()
        self.Window_Dialog = WindowDialog()
        self.CodenumberPopupWindow = CodenumberPopupWindow()
        self.WindowDialogPopUp = WindowDialogPopUp()
        self.newfilename_window = NewFileName()
        self.CommonFunction = CommonFunction()
        self.connected_controller = ConnectedController()
        self.Preferenceswindow = Preferenceswindow()
        self.PasswordWindow = PasswordWindow()
        self.OnlineServiceWindow = OnlineServiceWindow()
        self.Copytocontroller = Copytocontroller()
        self.portCommunication = PortCommunication()
        self.ImportSettingModel = ImportSettingModel()
        self.chartWindow= ChartWindow()
        self.convert_settings_window = ConvertSettingsWindow()
        self.quick_settings_window = QuickSettingsWindow()
        self.firmwareUpgrade = FirmwareUpgrade()
        
    def report_log(self, message, detail="None"):
        """
        """
        self.main_window.winapp.log(message, detail)

    def report_fail(self, message, detail="None"):
        """
        """
        self.main_window.winapp.fail(message, detail)

    def report_pass(self, message, detail="None"):
        """
        """
        self.main_window.winapp.pass_log(message, detail)

    def check_main_window_visible(self):
        """
        """
        sym_name_list = list()
        sym_name_list.append(self.sym_names.homepage_Window)
        sym_name_list.append(self.sym_names.homepage_imgSetParams_Button)
        sym_name_list.append(self.sym_names.homepage_Copytocontroller_Button)
        sym_name_list.append(self.sym_names.homepage_Servicetest_Button)
        sym_name_list.append(self.sym_names.homepage_menuHelp_button)
        sym_name_list.append(self.sym_names.homepage_btnSettings_Button)
        sym_name_list.append(self.sym_names.homepage_danfosslogo_Image)
        sym_name_list.append(self.sym_names.homepage_menuHelp_button)
        sym_name_list.append(self.sym_names.homepage_Userlogo_Label)
        sym_name_list.append(self.sym_names.homepage_KPVersion_label)
        sym_name_list.append(self.sym_names.homepage_danfosslink_Label)
        self.main_window.check_main_window_visible(sym_name_list)

    def Home_window_is_Enable(self, visible=True):
        """
        check the Home window lable, logo, buttons are enable
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        sym_name_list = list()
        sym_name_list.append(self.sym_names.homepage_Window)
        sym_name_list.append(self.sym_names.homepage_imgSetParams_Button)
        sym_name_list.append(self.sym_names.homepage_Copytocontroller_Button)
        sym_name_list.append(self.sym_names.homepage_Servicetest_Button)
        sym_name_list.append(self.sym_names.homepage_menuHelp_button)
        sym_name_list.append(self.sym_names.homepage_btnSettings_Button)
        sym_name_list.append(self.sym_names.homepage_danfosslogo_Image)
        sym_name_list.append(self.sym_names.homepage_menuHelp_button)
        sym_name_list.append(self.sym_names.homepage_Userlogo_Label)
        sym_name_list.append(self.sym_names.homepage_KPVersion_label)
        sym_name_list.append(self.sym_names.homepage_danfosslink_Label)
        self.main_window.Home_window_is_Enable(sym_name_list, visible)
    
    def Home_window_check_buttons_and_labels_is_visible(self, visible = True):
        """
        check the Home window lable, logo, buttons are visible.
        :param visible: Visibility Status(True or False)
        :return: True if succeeds.
        """
        sym_name_list = list()
        sym_name_list.append(self.sym_names.homepage_imgSetParams_Button)
        sym_name_list.append(self.sym_names.homepage_Copytocontroller_Button)
        sym_name_list.append(self.sym_names.homepage_Servicetest_Button)
        sym_name_list.append(self.sym_names.homepage_btnSettings_Button)
        self.main_window.Home_window_check_buttons_and_labels_is_visible(sym_name_list, visible)

    def Home_window_check_Setparameter_button_text(self, text):
        """
        Check the "Set Parameters" button text in Home window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.main_window.Home_window_check_Setparameter_button_text(
                                                        self.sym_names.homepage_imgSetParams_Label,text)
        
    def Home_window_check_copytocontroller_button_text(self, text):
        """
        Check the "Copy To Controller" button text in Home window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.main_window.Home_window_check_copytocontroller_button_text(
                                                        self.sym_names.homepage_Copytocontroller_Label, text)     
        
    def Home_window_check_onlineservice_button_text(self, text):
        """
        Check the "On-Line Service" button text in Home window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.main_window.Home_window_check_onlineservice_button_text(
                                                        self.sym_names.homepage_Servicetest_Label, text)  
    
    def get_koolprog_version(self):
        """
        Get the KoolProg version from the main window.
        """
        return self.main_window.get_koolprog_version(self.sym_names.homepage_KPVersion_label)
    
    def check_koolprog_version_with_latest_version(self, koolprog_version):
        """
        Check the koolprog version after upgrading to latest version.
        :param koolprog_version: Koolprog version
        :return: True if succeeds.
        """
        self.main_window.check_koolprog_version_with_latest_version(self.sym_names.homepage_KPVersion_label, koolprog_version) 

    def check_koolprog_version(self):
        """
        """
        self.main_window.check_koolprog_version(self.sym_names.homepage_KPVersion_label,
                                                KoolProg_verify.koolprog_version)

    def click_set_parameter_button(self):
        """
        Clicks set Parameter Button in Main Window
        """
        self.main_window.click_set_parameter_button(self.sym_names.homepage_imgSetParams_Button)

    def click_online_service_button(self):
        """
        Click on "Online service" Button in Main Window
        :return: True if button is present and clicked else False
        """
        return self.main_window.click_online_service_button(
                                            self.sym_names.homepage_Servicetest_Button)

    def Home_window_check_change_user_tooltip(self, tooltip_text):
        """
        verify the "change user" label tooltip in Home window
        :param tooltip_text: change user tooltip text
        :return:True if succeeds
        """
        self.main_window.Home_window_check_change_user_tooltip(self.sym_names.homepage_change_User_Button,
                                                                    tooltip_text)

    def Home_window_check_change_user_is_visible(self, visible=True):
        """
        verify the "change user" label is visible in Home window
        :param visible: check visible status(True or False).
        :return:True if succeeds.
        """
        self.main_window.Home_window_check_change_user_is_visible(
                                                self.sym_names.homepage_change_User_Button, visible)

    def Home_window_check_User_label_text(self, text):
        """
        verify the "User" label text in Home window
        :param text:text to compare
        :return:True if success
        """
        return self.main_window.Home_window_check_User_label_text(
                                                   self.sym_names.homepage_Userlogo_Label, text)
        
    def Home_window_check_set_parameter_is_visible(self, visible=True):
        """
        verify the "Set Parameter" label is visible in Home window
        :param visible: check visible status(True or False).
        :return:True if succeeds.
        """
        self.main_window.Home_window_check_set_parameter_is_visible(
                                                self.sym_names.homepage_imgSetParams_Button, visible)       
        
    def Home_window_check_Online_service_is_visible(self, visible=True):
        """
        verify the "On-Line service" label is visible in Home window
        :param visible: check visible status(True or False).
        :return:True if succeeds.
        """
        self.main_window.Home_window_check_Online_service_is_visible(
                                                self.sym_names.homepage_Servicetest_Button, visible)

    def Home_window_check_help_is_Enabled(self, status=True):
        """
        Check the "Help" button is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.main_window.Home_window_check_help_is_Enabled(
                                                                  self.sym_names.homepage_menuHelp_button, status)        

    def Home_window_check_change_user_is_Enabled(self, status=True):
        """
        Check the "Change User" button is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.main_window.Home_window_check_change_user_is_Enabled(
                                                                    self.sym_names.homepage_change_User_Button, status)               

    def Home_window_check_Online_service_is_Enabled(self, status=True):
        """
        verify the "On-Line service" label is enabled or disabled.
        :param status: check Enable status(True or False).
        :return:True if succeeds.
        """
        return self.main_window.Home_window_check_Online_service_is_Enabled(
                                                self.sym_names.homepage_Servicetest_Button, status)

    def Home_window_check_set_parameter_is_visible(self, status=False):
        """
        verify the "Set Parameter" label is Enabled in Home window
        :param status: check Enabled status(True or False).
        :return:True if succeeds.
        """
        return self.main_window.Home_window_check_set_parameter_is_visible(
                                                self.sym_names.homepage_imgSetParams_Button, status)

    def Home_window_check_copy_to_controller_is_Enabled(self, status=True):
        """
        verify the "Copy to controller" label is Enabled in Home window
        :param Enabled: check Enabled status(True or False).
        :return:True if succeeds.
        """
        self.main_window.Home_window_check_copy_to_controller_is_Enabled(
                                                self.sym_names.homepage_Copytocontroller_Label, status)
 
    def Home_window_check_setting_button_is_Enabled(self, status=True):
        """
        verify the "Setting" button is Enabled in Home window
        :param status: check Enabled status(True or False).
        :return:True if succeeds.
        """
        self.main_window.Home_window_check_setting_button_is_Enabled(
                                                self.sym_names.homepage_btnSettings_Button, status)
    def home_window_click_copy_to_controller_button(self):
        """
        Clicks copy to controller Button in Main Window.
        :return: True if succeeds.
        
        """
        return self.main_window.home_window_click_copy_to_controller_button(self.sym_names.homepage_Copytocontroller_Button)

    def Home_window_click_change_user_button(self):
        """
        Click on the "Change User" Button
        """
        self.main_window.Home_window_click_change_user_button(
                                                self.sym_names.homepage_change_User_Button)
               
    # ########################## S E T   P A R A M E T E R     W I N D O W   #######################

    def set_param_window_is_visible(self, visible=True):
        """
        Check visiblity of setparameter window
        :param visible: check visible status(True or False).
        :return: True if visible is Equal else False.
        """
        sym = list()
        sym.append(self.sym_names.setparameter_Window)
        sym.append(self.sym_names.setparameter_window_Title_Label)
        sym.append(self.sym_names.setparameter_window_recentProject_Label)
        sym.append(self.sym_names.setparameter_window_New_Label)
        sym.append(self.sym_names.setparameter_window_importcdf_Label)
        sym.append(self.sym_names.setparameter_window_Uplaodfromcontroller_Label)
        self.set_param_window.set_param_window_is_visible(sym, visible)

    def set_param_window_check_close_button_is_visible(self, visible=True):
        """
        Check close button in setparameter window is visible
        :param visible: check visible status(True or False).
        :return: True if visible is Equal else False.
        """
        sym_name = self.sym_names.setparameter_window_Close_Button
        self.set_param_window.set_param_window_check_close_button_is_visible(sym_name, visible)

    def set_param_window_check_open_button_is_visible(self, visible=True):
        """
        Check open button visible.
        :param visible: check visible status(True or False).
        :return: True if visible is Equal else False.
        """
        return self.set_param_window.set_param_window_check_open_button_is_visible(
            self.sym_names.lstboxItems_ListItem_3, visible)

    def set_param_window_check_new_button_is_visible(self, visible=True):
        """
        Check new button visible.
        :param visible: check visible status(True or False).
        :return: True if visible is Equal else False.
        """
        self.set_param_window.set_param_window_check_new_button_is_visible(self.sym_names.setparameter_window_New_Label,
                                                                           visible)

    def set_param_window_check_import_settings_from_controller_button_is_visible(self, visible=True):
        """
        Check import settings from controller button visible.
        :param visible: check visible status(True or False).
        :return: True if visible is Equal else False.
        """
        return self.set_param_window.set_param_window_check_import_settings_from_controller_button_is_visible(
            self.sym_names.setparameter_window_Uplaodfromcontroller_Label, visible)

    def set_param_window_check_import_controller_model_button_is_visible(self, visible=True):
        """
        Check import controller model button is visible.
        :param visible: check visible status(True or False).
        :return: True if visible is Equal else False.
        """
        return self.set_param_window.set_param_window_check_import_controller_model_button_is_visible(
            self.sym_names.setparameter_window__importcdf_Label, visible)

    def set_param_window_click_new_button(self):
        """
        Click "new" button in setparameter window
        :return: True if button is present and clicked else False
        """
        return self.set_param_window.set_param_window_click_new_button(self.sym_names.setparameter_window_New_Label)

    def set_param_window_click_open_button(self):
        """
        Click "open" button in setparameter window
        :return: True if button is present and clicked else False
        """
        return self.set_param_window.set_param_window_click_open_button(self.sym_names.lstboxItems_ListItem_3)

    def set_param_window_click_close_button(self):
        """
        Click close button in setparameter window
        :return: True if button is present and clicked else False
        """
        sym_name = self.sym_names.setparameter_window_Close_Button
        return self.set_param_window.set_param_window_click_close_button(sym_name)

    def set_param_window_click_import_controller_model(self):
        """
        Click "import controller model" button in setparameter window
        :return: True if button is present and clicked else False
        """
        sym_name = self.sym_names.setparameter_window_importcdf_Label
        return self.set_param_window.set_param_window_click_import_controller_model(sym_name)

    def set_param_window_click_import_setting_from_controller_button(self):
        """
        Click "import setting from controller" button in setparameter window
        :return: True if button is present and clicked else False
        """
        sym_name = self.sym_names.setparameter_window_Uplaodfromcontroller_Label
        return self.set_param_window.set_param_window_click_import_setting_from_controller_button(sym_name)

    def set_param_window_open_recent_project(self, projectname):
        """
        Open a recent project given.
        :param projectname: project name to select from list.
        :return: Boolean if project selected successfully.
        """
        sym = self.sym_names.setparameter_win_recent_project_list
        return self.set_param_window.set_param_window_open_recent_project(sym, projectname)

    def set_param_window_get_open_recent_project_files_list(self, tooltip=False):
        """
        Get list of recent files in setparameter window.
        :param tooltip: True - To get tooltip with list of recent files, False - List of recent files only.
        :return:list of recent files
        """
        sym = self.sym_names.setparameter_win_recent_project_list
        return self.set_param_window.set_param_window_get_open_recent_project_files_list(sym, tooltip)

    def set_param_window_compare_close_button_tooltip(self, tooltip_text):
        """
        In setparamter window Compare tooltip text of close button tooltip
        :param tooltip_text: string to check with tooltip
        :return: True if visible is Equal else False.
        """
        sym_name = self.sym_names.setparameter_window_Close_Button
        return self.set_param_window.set_param_window_compare_close_button_tooltip(sym_name, tooltip_text)

    def set_param_window_compare_new_button_tooltip(self, tooltip_text):
        """
        In setparamter window Compare tooltip text of new button tooltip
        :param tooltip_text: string to check with tooltip
        :return: True if visible is Equal else False.
        """
        sym_name = self.sym_names.setparameter_window_New_Label
        return self.set_param_window.set_param_window_compare_new_button_tooltip(sym_name, tooltip_text)

    def set_param_window_compare_open_button_tooltip(self, tooltip_text):
        """
        In setparamter window Compare tooltip text of open button tooltip
        :param tooltip_text: string to check with tooltip
        :return: True if visible is Equal else False.
        """
        sym_name = self.sym_names.setparameter_window_Openproject_Label
        return self.set_param_window.set_param_window_compare_open_button_tooltip(sym_name, tooltip_text)

    def set_param_window_compare_import_controller_model_button_tooltip(self, tooltip_text):
        """
        In setparamter window Compare tooltip text of "import controller model" button tooltip
        :param tooltip_text: string to check with tooltip
        :return: True if visible is Equal else False.
        """
        sym_name = self.sym_names.setparameter_window_importcdf_Label
        return self.set_param_window.set_param_window_compare_import_controller_model_button_tooltip(sym_name,
                                                                                                     tooltip_text)

    def set_param_window_compare_import_setting_from_controller_button_tooltip(self, tooltip_text):
        """
        In setparamter window Compare tooltip text of "import setting from controller" button tooltip
        :param tooltip_text: string to check with tooltip
        :return: True if visible is Equal else False.
        """
        sym_name = self.sym_names.setparameter_window_Uplaodfromcontroller_Label
        return self.set_param_window.set_param_window_compare_import_setting_from_controller_button_tooltip(sym_name,
                                                                                                            tooltip_text)

    def set_param_window_check_text_label_setparameter(self, text):
        """
        Set parameter window check "label" text of "Setparameter".
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        return self.set_param_window.set_param_window_check_text_label_setparameter(
            self.sym_names.setparameter_window_Title_Label, text)

    def set_param_window_check_text_label_open_a_recent_setting_file(self, text):
        """
        Set parameter window check "label" text of "open a recent setting file".
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        return self.set_param_window.set_param_window_check_text_label_open_a_recent_setting_file(
            self.sym_names.setparameter_window_recentProject_Label, text)

    def set_param_window_check_text_label_setting_files(self, text):
        """
        Set parameter window check "label" text of "setting files".
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        return self.set_param_window.set_param_window_check_text_label_setting_files(
            self.sym_names.setparameter_window_SettingFile_Label, text)

    def set_param_window_check_text_label_controller_model(self, text):
        """
        Set parameter window check "label" text of "controller model".
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        return self.set_param_window.set_param_window_check_text_label_controller_model(
            self.sym_names.setparameter_window_controllersmodels_Label, text)
        
    # ############################################## NEW PROJECT WINDOW  ##############################################
    def new_project_window_is_visible(self, visible=True):
        """
        """
        sym = list()
        sym.append(self.sym_names.newproject_Window)
        sym.append(self.sym_names.newproject_Window_Title_Label)
        sym.append(self.sym_names.newproject_Window_Close_Button)

        self.new_project_win.new_project_window_is_visible(sym, visible)

    def select_controller_in_new_project_window(self, fam, val):
        """
        """
        self.new_project_win.select_controller_in_new_project_window(self.sym_names.newProject_tabNewproject_TabFolder,
                                                                     fam, val)
    
    def new_prj_window_select_controller_family(self, fam):
        """
        Select controller family in the new project window
        :param fam: controller family
        :return: True if succeeds.
        """
        self.new_project_win.new_prj_window_select_controller_family(self.sym_names.newProject_tabNewproject_TabFolder,fam)
    
    def select_controller_family_in_new_project_window(self, fam, val):
        """
        Select controller family from new project window
        :param fam: controller family
        :param val: controller variant
        """
        self.new_project_win.select_controller_family_in_new_project_window(self.sym_names.newProject_tabNewproject_TabFolder,
                                                                     fam, val)
        
    def compare_titile_text_in_new_project_window(self, text):
        """
        """
        sym_name = self.sym_names.newproject_Window_controlelr_variant_title
        self.new_project_win.compare_titile_text_in_new_project_window(sym_name, text)

    def new_prj_validate_prodImage_wiringDiagram(self, prod_image, wiring_diagram, product_details):
        """
        """
        sym_prod_image = self.sym_names.newproject_Window_controller_Image
        sym_wiring_diagram = self.sym_names.newproject_Window_wireframe_Image
        sym_prod_details = self.sym_names.newproject_Window_Description_Label
        self.new_project_win.new_prj_validate_prodImage_wiringDiagram(sym_prod_image, sym_wiring_diagram,
                                                                      sym_prod_details, prod_image,
                                                                      wiring_diagram, product_details)

    def new_prj_window_validate_controller_description(self, product_details):
        """
        Check description text in new project window.
        :param product_details: string text to compare text in textbox.
        :return: True if text is equal . False if unequal.
        """
        sym_prod_details = self.sym_names.newproject_Window_Description_Label
        return self.new_project_win.new_prj_window_validate_controller_description(sym_prod_details, product_details)

    def new_prj_window_validate_controller_wiring_diagram(self, wiring_diagram):
        """
        Check wiring diagram in new project window.
        :param wiring_diagram: path of wire image.
        :return: True if image is equal else False.
        """
        sym_wiring_diagram = self.sym_names.newproject_Window_wireframe_Image
        return self.new_project_win.new_prj_window_validate_controller_wiring_diagram(sym_wiring_diagram,
                                                                                      wiring_diagram)

    def new_prj_window_validate_controller_product_image(self, prod_image):
        """
        Check wiring diagram in new project window.
        :param prod_image: path of product image.
        :return: True if image is equal else False.
        """
        sym_prod_image = self.sym_names.newproject_Window_controller_Image
        self.new_project_win.new_prj_window_validate_controller_product_image(sym_prod_image, prod_image)

    def new_prj_check_close_button_is_visible(self):
        """
        Check close button is visible in new project window.
        """
        sym_name = self.sym_names.newproject_Window_Close_Button
        self.new_project_win.check_close_button_is_visible(sym_name)

    def new_prj_window_click_close_button(self):
        """
        Close new project window by clicking close button.
        """
        self.new_project_win.new_prj_window_click_close_button(self.sym_names.newproject_Window_Close_Button)

    def new_prj_window_check_tooltip_text_and_click_close_button(self, tooltip_text):
        """
        Check close button tooltip text and click it.
        """
        if self.new_prj_check_close_button_is_visible():
            if self.create_new_project_check_close_button_tooltip(tooltip_text):
                self.create_new_project_click_close_button()

    def set_param_window_check_tooltip_text_and_click_close_button(self, tooltip_text):
        """
        Check close button tooltip text and click it.
        """
        if self.set_param_window_check_close_button_is_visible():
            if self.set_param_window_compare_close_button_tooltip(tooltip_text):
                self.set_param_window_click_close_button()

    def new_prj_window_AKCC55_app_selection(self, code_num, soft_version):
        """
        """
        sym_code_num = self.sym_names.product_description_window_CodeNumber_ComboBox
        sym_soft_version = self.sym_names.product_description_window_SWversion_ComboBox
        self.new_project_win.new_prj_window_AKCC55_app_selection(sym_code_num, sym_soft_version, code_num, soft_version)

    def new_prj_window_AKCC55_codeNumber_selection(self, code_num):
        """
        Selects code Number for AKCC Project Creation.
        :param code_num: Code number to be selected.
        :return: True if succeeds, False Otherwise.
        
        """
        self.new_project_win.new_prj_window_AKCC55_codeNumber_selection(self.sym_names.product_description_window_CodeNumber_ComboBox, code_num)
        
    def new_prj_window_EKE1x_app_selection(self, code_num, prod_version):
        """
        """
        sym_code_num = self.sym_names.product_description_window_CodeNumber_ComboBox
        sym_prod_version = self.sym_names.product_description_window_SWversion_ComboBox
        self.new_project_win.new_prj_window_EKE1x_app_selection(sym_code_num, sym_prod_version, code_num, prod_version)

    def new_prj_window_ERC11x_app_selection(self, code_num, prod_version):
        """
        """
        sym_code_num = self.sym_names.product_description_window_CodeNumber_ComboBox
        sym_prod_version = self.sym_names.product_description_window_PVVersion_ComboBox
        self.new_project_win.new_prj_window_ERC11x_app_selection(sym_code_num, sym_prod_version, code_num, prod_version)

    def new_prj_window_ERC21x_app_selection(self, code_num, app):
        """
        """
        sym_code_num = self.sym_names.product_description_window_CodeNumber_ComboBox
        sym_app = self.sym_names.product_description_window_Application_ComboBox
        self.new_project_win.new_prj_window_ERC_app_selection(sym_code_num, sym_app, code_num, app)

    def new_prj_window_EET_app_selection(self, code_num, prod_version):
        """
        """
        sym_code_num = self.sym_names.product_description_window_CodeNumber_ComboBox
        sym_prod_version = self.sym_names.product_description_window_PVVersion_ComboBox
        self.new_project_win.new_prj_window_EET_app_selection(sym_code_num, sym_prod_version, code_num, prod_version)

    def new_prj_window_ETC1Hx_app_selection(self, select_app, pwr_supply, spindle):
        """
        """
        sym_select_app = self.sym_names.product_description_window_Application_ComboBox
        sym_pwr_suply = self.sym_names.product_description_window_PowerSupply_ComboBox
        sym_spindle = self.sym_names.product_description_window_Spindle_ComboBox

        self.new_project_win.new_prj_window_ETC1Hx_app_selection(sym_select_app,
                                                                 sym_pwr_suply, sym_spindle, select_app,
                                                                 pwr_supply, spindle)

    def new_prj_window_next_button_is_visible(self):
        """
        Check Next button is visible in new project window.
        :param visible: visible= True checks button presence ,False - window absense.
        :return: True if succeed
        """
        self.new_project_win.new_prj_window_next_button_is_visible(self.sym_names.newproject_Window_next_Button)

    def new_prj_window_finish_button_is_visible(self, visible=True):
        """
        Check Finish button is visible in new project window.
        :param visible: visible= True checks button presence ,False - window absense.
        :return: True if succeed
        """
        self.new_project_win.new_prj_window_finish_button_is_visible(
            self.sym_names.product_description_window_Finish_Button, visible)

    def new_prj_window_cancel_button_is_visible(self, visible=True):
        """
        Check Cancel button is visible in new project window.
        :param visible: visible= True checks button presence ,False - window absense.
        :return: True if succeed
        """
        self.new_project_win.new_prj_window_cancel_button_is_visible(
            self.sym_names.product_description_window_Cancel_Button, visible)

    def new_prj_window_back_button_is_visible(self, visible=True):
        """
        Check Back button is visible in new project window.
        :param visible: visible= True checks button presence ,False - window absense.
        :return: True if succeed
        """

        self.new_project_win.new_prj_window_back_button_is_visible(
            self.sym_names.product_description_window_back_Button, visible)

    def new_prj_window_next_button_is_not_visible(self):
        """
        Check Next button is Not visible in new project window.
        """
        self.new_project_win.new_prj_window_next_button_is_visible(self.sym_names.newproject_Window_next_Button, False)

    def new_prj_window_click_next_button(self):
        """
        Click next button in new project window.
        """
        self.new_project_win.new_prj_window_click_next_button(self.sym_names.newproject_Window_next_Button)

    def new_prj_window_click_back_button(self):
        """
        """
        self.new_project_win.new_prj_window_click_back_button(self.sym_names.product_description_window_back_Button)

    def new_prj_controller_selection_window_check_text_of_next_button(self, value):
        """
        Check text of next button.
        :param value: Test Data value of next button.
        :return: True if succeeds.

        """
        self.new_project_win.new_prj_controller_selection_window_check_text_of_next_button(
            self.sym_names.newproject_Window_next_Button, value)

    def new_prj_product_description_window_check_text_of_next_button(self, value):
        """
        Check text of next button.
        :param value: Test Data value of next button.
        :return: True if succeeds.

        """
        self.new_project_win.new_prj_product_description_window_check_text_of_next_button(
            self.sym_names.product_description_window_Finish_Button, value)

    def new_prj_window_check_text_of_cancel_button(self, value):
        """
        Check text of cancel button.
        :param value: Test Data value of cancel button.
        :return: True if succeed
        """
        self.new_project_win.new_prj_window_check_text_of_cancel_button(
            self.sym_names.product_description_window_Cancel_Button, value)

    def new_prj_window_check_text_of_back_button(self, value):
        """
        Check text of back button.
        :param value: Test Data value of back button.
        :return: True if succeed
        """
        self.new_project_win.new_prj_window_check_text_of_back_button(
            self.sym_names.product_description_window_back_Button, value)

    def new_prj_window_check_text_of_finish_button(self, value):
        """
        Check text of finish button.
        :param value: Test Data value of finish button.
        :return: True if succeed

        """
        self.new_project_win.new_prj_window_check_text_of_finish_button(
            self.sym_names.product_description_window_Finish_Button, value)

    def create_new_project_for_ETC1Hx_family(self, controller_name, app_name, part_num, supply_volt,
                                             spindle_type):  # not replaced the symbolic names
        """
        """
        controller_family = "ETC1Hx"
        self.select_controller_in_new_project_window(controller_family, controller_name)
        self.new_prj_window_click_next_button()
        self.new_prj_window_ETC1Hx_app_selection(app_name, supply_volt, spindle_type)

    def create_new_project_for_EET_family(self, controller_name, code_num, prd_ver):  # not replaced the symbolic names
        """
        """
        controller_family = "EET"
        self.select_controller_in_new_project_window(controller_family, controller_name)
        self.new_prj_window_click_next_button()
        self.new_prj_window_EET_app_selection(code_num, prd_ver)

    def create_new_project_for_ERC11x_family(self, controller_name, code_num,
                                             prd_ver):  # not replaced the symbolic names
        """
        """
        controller_family = "ERC11x"
        self.select_controller_in_new_project_window(controller_family, controller_name)
        self.new_prj_window_click_next_button()
        self.new_prj_window_EET_app_selection(code_num, prd_ver)

    def create_new_project_for_EKE_family(self, controller_name, code_num, prd_ver):  # not replaced the symbolic names
        """
        """
        controller_family = "EKE"
        self.select_controller_in_new_project_window(controller_family, controller_name)
        self.new_prj_window_click_next_button()
        self.new_prj_window_EKE1x_app_selection(code_num, prd_ver)

    def create_new_project_for_ERC21x_family(self, controller_name, app, code_num):  # not replaced the symbolic names
        """
        """
        controller_family = "ERC21x"
        self.select_controller_in_new_project_window(controller_family, controller_name)
        self.new_prj_window_click_next_button()
        self.new_prj_window_ERC21x_app_selection(code_num, app)

    def create_new_project_for_AK_CC55_family(self, controller_name, code_num,
                                              sw_ver):  # not replaced the symbolic names
        """
        """
        controller_family = "AK-CC55"
        self.select_controller_in_new_project_window(controller_family, controller_name)
        self.new_prj_window_click_next_button()
        self.new_prj_window_AKCC55_app_selection(code_num, sw_ver)

    def create_new_project_set_product_details_from_dict(self, project_details, controllerfamily, product_details_dict,
                                                         product_details_order):
        """ 
        select the values in controller details selection window which is selected YES in input sheet
        :param project_details : it is dict which has keys:
        ["controllerFamily","controllerVariant","controllerCodeNo","softwareVersion",
                                    "controllerPV","controllerApplication", "PortNumber"]
        :param controllerfamily: selected controller family 
        :param product_details_dict: dict of controller details keys
        :param product_details_order: list of controller details keys
        :return: True if succeed
        """
        sym_name_dict = None
        if controllerfamily in self.sym_names.sym_product_description_selection:
            sym_name_dict = self.sym_names.sym_product_description_selection[controllerfamily]
        return self.new_project_win.create_new_project_set_product_details_from_dict(project_details, sym_name_dict,
                                                                                     product_details_dict,
                                                                                     product_details_order)

    def create_new_project_get_product_details_from_key(self, key_list):
        """
                key list is [app , power ,spindle ,partnum, codenum , sversion , pversion,]
        """
        sym_code_num = self.sym_names.product_description_window_CodeNumber_ComboBox
        sym_soft_version = self.sym_names.product_description_window_SWversion_ComboBox
        sym_prod_version = self.sym_names.product_description_window_PVVersion_ComboBox
        sym_select_app = self.sym_names.product_description_window_Application_ComboBox
        sym_your_part_num = self.sym_names.product_description_window_partnumber_Edit
        sym_pwr_suply = self.sym_names.product_description_window_PowerSupply_ComboBox
        sym_spindle = self.sym_names.product_description_window_Spindle_ComboBox
        # errorr code
        _dict = dict()
        return self.new_project_win.create_new_project_get_product_details_from_key(_dict,
                                                                                    sym_code_num,
                                                                                    sym_soft_version,
                                                                                    sym_prod_version,
                                                                                    sym_select_app,
                                                                                    sym_your_part_num,
                                                                                    sym_pwr_suply,
                                                                                    sym_spindle)

    def create_new_project_select_app_from_details(self, controller_details):
        """
         Select application details for given controller with specification.
        :param  : controller_details : dictionary of application details.
        :Example:
        controler_details = {'controllerFamily': 'ETC1Hx', 'controllerVariant': 'ETC1H1',
                             'controllerCodeNo': '', 'softwareVersion': '', 'controllerPV': '',
                             'controllerApplication': 'GDM101', 'database': 'Danfoss.ETC1H.GDM101.db3',
                              'toTest': '', 'PortNumber': '', 'Isdefault': 'Yes'
        }
        """
        self.report_log("controler_details = {}".format(controller_details))

        if "ETC1Hx" in controller_details['controllerFamily']:
            self.new_prj_window_ETC1Hx_app_selection(controller_details['controllerApplication'],
                                                     KoolProg_verify.default_product_details_info["ETC1Hx"]["power"],
                                                     KoolProg_verify.default_product_details_info["ETC1Hx"]["spindle"])

        elif "ERC11x" in controller_details['controllerFamily']:
            self.new_prj_window_ERC11x_app_selection(controller_details['controllerCodeNo'],
                                                     controller_details['controllerPV'])

        elif "EET" in controller_details['controllerFamily']:
            self.new_prj_window_EET_app_selection(controller_details['controllerCodeNo'],
                                                  controller_details['controllerPV'])

        elif "EKE" in controller_details['controllerFamily']:
            self.new_prj_window_EKE1x_app_selection(controller_details['controllerCodeNo'],
                                                    controller_details['controllerPV'])

        elif "ERC21x" in controller_details['controllerFamily']:
            self.new_prj_window_ERC21x_app_selection(controller_details['controllerCodeNo'],
                                                     controller_details['controllerApplication'])

        elif "AK-CC55" in controller_details['controllerFamily']:
            self.new_prj_window_AKCC55_app_selection(controller_details['controllerCodeNo'],
                                                     controller_details['softwareVersion'])
        else:
            self.report_fail("create_new_project_select_app_from_details is failed ...",
                             "controller family is not valid ={} ".format(controller_details))

    def new_prj_window_set_prj_name_and_description(self, prj_name, prj_desc):
        """
        """
        sym_prj_name = self.sym_names.product_description_window_projectname_Edit
        sym_name = self.sym_names.product_description_window_description_Edit
        self.new_project_win.new_prj_window_prj_name(sym_prj_name, prj_name)
        self.new_project_win.new_prj_window_prj_description(sym_name, prj_desc)

    def new_prj_window_click_finish_button(self):
        """
        """
        self.new_project_win.new_prj_window_click_next_button(self.sym_names.product_description_window_Finish_Button)

    def create_new_project_set_text_in_project_name_txt_box(self, name):
        """
        Set text in project name textbox.
        """
        self.new_project_win.create_new_project_set_text_in_project_name_txt_box(
            self.sym_names.product_description_window_projectname_Edit, name)

    def new_prj_window_Chk_project_name_is_empty(self):
        """
        Checks if project name is empty.
        """
        self.new_project_win.new_prj_window_Chk_project_name_is_empty(
            self.sym_names.product_description_window_projectname_Edit)

    def create_new_project_set_text_in_project_description(self, description):
        """
        Set text in project description textbox.
        """
        self.new_project_win.create_new_project_set_text_in_project_description(
            self.sym_names.product_description_window_description_Edit, description)

    def new_project_window_check_header_text(self, value):
        """
        Check text of header in new project window.
        :param value: text to compare
    
        """
        self.new_project_win.new_project_window_check_header_text(self.sym_names.newproject_Window_Title_Label, value)

    def new_project_window_check_select_controller_model_label_text(self, value):
        """
        Check text of select_controller_model label in new project window.
        :param value: text to compare
      
        
        """
        self.new_project_win.new_project_window_check_select_controller_model_label_text(
            self.sym_names.product_description_window_productinfo_label, value)

    def create_new_project_get_text_from_project_name_txt_box(self):
        """
        Get text in project name textbox.
        :return: string
        """
        return self.new_project_win.create_new_project_get_text_from_project_name_txt_box(
            self.sym_names.product_description_window_projectname_Edit)

    def create_new_project_verify_text_in_project_name_edit_box(self, projectName):
        """
        Verify the text in project name edit box.
        :param projectName: Value in project Name edit box
        """
        return self.new_project_win.create_new_project_verify_text_in_project_name_edit_box(
            self.sym_names.product_description_window_projectname_Edit, projectName)

    def create_new_project_verify_text_in_project_description_edit_box(self, projectDescription):
        """
        Verify the text in project description edit box.
        :param projectDescription: Value in project Description edit box
        """
        return self.new_project_win.create_new_project_verify_text_in_project_description_edit_box(
            self.sym_names.product_description_window_description_Edit, projectDescription)

    def create_new_project_window_check_close_button_is_visible(self):
        """
        Check close button is visible.
        :param sym_name: Close button symbolic name
          
        """
        self.new_project_win.check_close_button_is_visible(self.sym_names.newProject_btnClose_Button)

    def create_new_project_check_close_button_tooltip(self, tooltip_text):
        """
        Check close button tooltip text.
        :param sym_name: Close button symbolic name
        :param tooltip: tooltip text to compare.
        :return: True if tooltip text is equal.
        """
        self.new_project_win.check_close_button_tooltip(self.sym_names.newproject_Window_Close_Button, tooltip_text)

    def create_new_project_click_close_button(self):
        """
        Click close button in new project window
        :param  sym_name:close button sym
        """
        self.new_project_win.new_prj_window_click_close_button(self.sym_names.newproject_Window_Close_Button)

    def new_prj_window_check_text_of_project_name_and_description_title(self, label_text):
        """
        Check text in new project window title label.
        :param label_text: text to compare in label
        :return: True if succeed
        """
        self.new_project_win.check_text_of_project_name_and_description_title(
            self.sym_names.product_description_proname_prodesc_Label, label_text)
    
    def new_prj_window_check_text_of_select_controller_code_number_and_sw_version_label(self, text):
        """
        Check text of select controller code number and software version label in new project window.
        :param text: text to compare in label
        :return: True if succeeds
        """
        self.new_project_win.new_prj_window_check_text_of_select_controller_code_number_and_sw_version_label(
            self.sym_names.newproject_Window_select_controllervarient_Label, text)
    
    def new_prj_window_check_text_of_code_number_label(self, text):
        """
        Check text of code number label in new project window.
        :param text: text to compare in label
        :return: True if succeeds
        """
        self.new_project_win.new_prj_window_check_text_of_code_number_label(self.sym_names.product_description_CodeNumber_label, text)
    
    def new_prj_window_check_text_of_sw_version_label(self, text):
        """
        Check text of software version label in new project window.
        :param text: text to compare in label
        :return: True if succeeds
        """
        self.new_project_win.new_prj_window_check_text_of_sw_version_label(self.sym_names.product_description_Softwareversion_Label, text)

    def new_prj_window_check_text_of_project_name_label(self, label_text):
        """
        Check text in new project name label.
        :param label_text: text to compare in label
        :return: True if succeed
        """
        self.new_project_win.check_text_of_project_name_label(
            self.sym_names.product_description_window_projectName_Label, label_text)

    def new_prj_window_check_project_name_textbox_is_visible(self):
        """
        Check new project window project name text box is visible.
        :return: True if succeed
        """
        self.new_project_win.project_name_textbox_visible(self.sym_names.product_description_window_description_Edit)

    def create_new_project_win_check_project_name_length(self, len):
        """
        Check project name in new project window should be equal to len
        :param  len : int length of text in project name.
        """
        sym = self.sym_names.product_description_window_projectname_Edit
        self.new_project_win.create_new_project_win_check_project_name_length(sym, len)

    def create_new_project_win_check_project_description_length(self, len):
        """
        Check project description string in new project window should be equal to len
        :param  len : int length of text in project name.
        """
        sym = self.sym_names.product_description_window_description_Edit
        self.new_project_win.create_new_project_win_check_project_description_length(sym, len)

    def new_prj_window_check_text_of_project_description_label(self, label_text):
        """
        Check text in new project description label.
        :param label_text: text to compare in label
        :return: True if succeed
        """
        self.new_project_win.check_text_of_project_description_label(
            self.sym_names.product_description_window_projdescr_label, label_text)

    def new_prj_window_check_project_description_textbox_is_visible(self):
        """
        Project description textbox visible.
        :param sym_name: symbolic name of Project description textbox
        """
        self.new_project_win.project_description_textbox_visible(
            self.sym_names.product_description_window_description_Edit)

    def new_project_window_chk_controllerFamily_List(self, controllerFamily_list):
        """
        Check the controller Family list in new project window.
        :param controllerFamily_list: list of controller family names to compare
     
        """
        self.new_project_win.new_project_window_chk_controllerFamily_List(
            self.sym_names.newProject_tabNewproject_TabFolder, controllerFamily_list)

    def new_project_window_chk_controllerVariant_List(self, controllerFamilyVariantDict):
        """
        Check the controller variant list for all controller family in new project window.
        :param controllerFamilyVariantDict: dictionary of controller family and its corresponding controller variants.
       
        """

        self.new_project_win.new_project_window_chk_controllerVariant_List(
            self.sym_names.newProject_tabNewproject_TabFolder, controllerFamilyVariantDict)

    def new_prj_window_verify_given_controller_family_with_variant_is_selected(self, family, variant):

        """
         Verify controllers family will be expanded after clicking on back button\
         :param family : Controller family as text value
         :param variant : Controller variant as text value
       
        """
        self.new_project_win.new_prj_window_verify_given_controller_family_with_variant_is_selected(
            self.sym_names.newProject_tabNewproject_TabFolder, family, variant)

    def new_project_details_selection_window_cursor_in_text_box_of_project_name_should_blink(self):
        """
        Verify, cursor in text box of project name should blink in new project details selection window.
        """
        self.new_project_win.new_project_details_selection_window_cursor_in_text_box_of_project_name_should_blink(
            self.sym_names.product_description_window_projectname_Edit)
    
    def new_prj_window_check_quick_wizard_option_is_visible(self, visible=True):
        """
        Check quick wizard option in new project window is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.new_project_win.new_prj_window_check_quick_wizard_option_is_visible(self.sym_names.product_description_chkWizardConfig_CheckBox, visible)
    
    def new_prj_window_check_quick_wizard_option_is_enabled(self, status=True):
        """
        Check quick wizard option in new project window is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        return self.new_project_win.new_prj_window_check_quick_wizard_option_is_enabled(self.sym_names.product_description_chkWizardConfig_CheckBox, status)
    
    def new_prj_window_uncheck_quick_wizard_option(self):
        """
        uncheck the quick wizard option if controller.
        """
        self.new_project_win.new_prj_window_uncheck_quick_wizard_option(
            self.sym_names.product_description_chkWizardConfig_CheckBox)
    
    def new_prj_window_check_quick_wizard_option(self):
        """
        check  quick wizard option in Project description window.
        :return: True if succeeds.
        """
        self.new_project_win.new_prj_window_check_quick_wizard_option(
            self.sym_names.product_description_chkWizardConfig_CheckBox)
    
    def new_prj_window_check_text_of_quick_wizard_option_label(self, text):
        """
        Check text of quick wizard option label in new project description window.
        :param text: testData to compare
        :return: True if succeeds
        """
        self.new_project_win.new_prj_window_check_text_of_quick_wizard_option_label(self.sym_names.product_description_chkWizardConfig_CheckBox, text)

    def check_project_description_textbox_empty(self):
        """
        check textbox of project description is empty
        """
        self.new_project_win.check_project_description_textbox_empty(
            self.sym_names.product_description_window_description_Edit)

    def new_prj_window_check_spindle_list(self, spindle_list):
        """
        Check list of controller supported spindle types present in the list box of new project details selection
        window.
        :param spindle_list: list of text to compare in list box.
        :return: True if list is equal else False
        """
        sym_name = self.sym_names.product_description_window_Spindle_ComboBox
        self.new_project_win.new_prj_window_check_spindle_list(sym_name, spindle_list)

    def new_prj_window_check_powersupply_list(self, pwr_list):
        """
        Check list of controller supported power supply present in the list box of new project details selection window.
        :param pwr_list: list of text to compare in list box.
        :return: True if list is equal else False.
        """
        sym_name = self.sym_names.product_description_window_PowerSupply_ComboBox
        self.new_project_win.new_prj_window_check_powersupply_list(sym_name, pwr_list)

    def new_prj_window_check_application_list(self, app_list):
        """
        Check list of controller application present in the list box of new project details selection window.
        :param app_list: list of text to compare in list box.
        :return: True if list is equal else False
        """
        sym_name = self.sym_names.product_description_window_Application_ComboBox
        return self.new_project_win.new_prj_window_check_application_list(sym_name, app_list)
    
    def new_prj_window_get_list_of_software_version(self):
        """
        Get list of the software versions in the controller detail selection window..
        :return: list of items in combobox.
        """
        return self.new_project_win.new_prj_window_get_list_of_software_version(self.sym_names.product_description_window_SWversion_ComboBox)
    
    def new_prj_window_get_list_of_code_number(self):
        """
        Get list of the codenumber in the controller detail selection window. .
        :return: list of items in combobox.
        """
        return self.new_project_win.new_prj_window_get_list_of_code_number(self.sym_names.product_description_window_CodeNumber_ComboBox)

    def new_prj_window_check_selected_code_num_has_software_version_list(self, code_num, software_list):
        """
        Select given code number in code number listbox in controller detail selection window,
        and check the list of product version present in it.
        :param code_num: string code number.
        :param software_list: list of software version string.
        :return: boolean True if code number has that list of product versions.
        """
        sym_code_num = self.sym_names.product_description_window_CodeNumber_ComboBox
        sym_software_list = self.sym_names.product_description_window_SWversion_ComboBox
        return self.new_project_win.new_prj_window_check_selected_code_num_has_software_version_list(sym_code_num,
                                                                                                     sym_software_list,
                                                                                                     code_num,
                                                                                                     software_list)

    def new_prj_window_check_selected_application_has_code_number_list(self, app,
                                                                       code_num_list):
        """
        Select given application in application listbox in controller detail selection window,
        and check the list of code number present in it.
        :param app: string -> application.
        :param code_num_list: list of code number string.
        :return: boolean True if application has that list of code number.
        """
        sym_app = self.sym_names.product_description_window_Application_ComboBox
        sym_code_num_list = self.sym_names.product_description_window_CodeNumber_ComboBox
        return self.new_project_win.new_prj_window_check_selected_application_has_code_number_list(sym_app,
                                                                                                   sym_code_num_list,
                                                                                                   app, code_num_list)

    def new_prj_window_check_selected_code_num_has_product_version_list(self, code_num, prod_version_list):
        """
        Select given code number in code number listbox in controller detail selection window,
        and check the list of product version present in it.
        :param code_num: string code number.
        :param prod_version_list: list of product version string.
        :return: boolean True if code number has that list of product versions.
        """
        sym_code_num = self.sym_names.product_description_window_CodeNumber_ComboBox
        sym_prod_version_list = self.sym_names.product_description_window_PVVersion_ComboBox
        return self.new_project_win. \
            new_prj_window_check_selected_code_num_has_product_version_list(sym_code_num,
                                                                            sym_prod_version_list,
                                                                            code_num,
                                                                            prod_version_list)

    def new_prj_window_select_application_in_controller_details_selection_window(self, app):
        """
        Select application in application listbox.
        :param app: string application name to select.
        :return: True if application selected successfully.
        """
        sym_app = self.sym_names.product_description_window_Application_ComboBox
        return self.new_project_win.new_prj_window_select_application_in_controller_details_selection_window(sym_app,
                                                                                                             app)

    def new_prj_window_select_code_number_in_controller_details_selection_window(self, code_num):
        """
        Select given code number in code number listbox in controller detail selection window.
        :param code_num: string code number.
        :return: boolean True if code number has selected successfully else False.
        """
        sym_app = self.sym_names.product_description_window_Application_ComboBox
        return self.new_project_win.new_prj_window_select_code_number_in_controller_details_selection_window(sym_app,
                                                                                                             code_num)

    def new_prj_window_check_list_items_in_listbox(self, sym_listbox, list_items):
        """
        Check list of items present in the list box of new project details selection.
        window.
        :param sym_listbox: symbolic name of listbox
        :param list_items: list of text to compare in list box.
        :return: True if list is equal else False
        """
        return self.new_project_win.new_prj_window_check_list_items_in_listbox(sym_listbox, list_items)

    def new_prj_window_check_project_name_label_is_visible(self, visible=True):
        """
        Check "Project Name" Label is visible in new project window.
        :param visible: visible= True checks Label is visible ,False - Label is not visible.
        :return: True if succeed
        """
        self.new_project_win.new_prj_window_check_project_name_label_is_visible(
            self.sym_names.product_description_window_projectName_Label, visible)

    def new_prj_window_check_project_description_label_is_visible(self, visible=True):
        """
        Check "Project description" Label is visible in new project window.
        :param visible: visible= True checks Label is visible ,False - Label is not visible.
        :return: True if succeed
        """
        self.new_project_win.new_prj_window_check_project_description_label_is_visible(
            self.sym_names.product_description_window_projdescr_label, visible)

    def new_prj_window_check_project_description_Max_250_characters_Label_is_visible(self, visible=True):
        """
        Check "Project description with Max 250 characters " Label is visible in new project window.
        :param visible: visible= True checks Label is visible ,False - Label is not visible.
        :return: True if succeed
        """
        self.new_project_win.new_prj_window_check_project_description_Max_250_characters_Label_is_visible(
            self.sym_names.product_Name_Project_Description_Max_250_Characters_Label, visible)
        
        
    def new_prj_window_get_variant_list_for_specific_controller_family(self,fam):
        """
        Get the controller variants for the specific controller family in new project window.
        :param fam: controller family
        :return: controller variant list for the controller family given.
        """
        
        return self.new_project_win.new_prj_window_get_variant_list_for_specific_controller_family(self.sym_names.newProject_tabNewproject_TabFolder,fam)
    

    # ##################        P O P U P         M E S S A G E B O X           ####################################

    def popup_messagebox_window_is_visible(self, window=None, visible=True):
        """
        Check popup window is visible
        :param visible: visiblity check of dialog(True or False)
        :param window:window to validate
        :return: True if succeed
        """
        sym_names_list = list()
        if window == "PROJECT_WINDOW":
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_window)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_Image)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_KoolProg_Label)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_close_Button)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_Msg_Label)
        elif window == "HOME_WINDOW":
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_window)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_Image)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_close_Button)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_KoolProg_Label)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_Msg_Label)
        elif window == "PRINT_WINDOW":
            sym_names_list.append(self.sym_names.print_popup_Window)
            sym_names_list.append(self.sym_names.print_popup_ParamSheet_Button)
            sym_names_list.append(self.sym_names.print_popup_EngrSheet_Button)
            sym_names_list.append(self.sym_names.print_popup_Cancel_Button)
            sym_names_list.append(self.sym_names.print_popup_Msg_Label)
            sym_names_list.append(self.sym_names.print_popup_koolprog_Image)
            sym_names_list.append(self.sym_names.print_popup_Title_Label)
            sym_names_list.append(self.sym_names.print_popup_close_Button)
        elif window == "CONVERTSETTINGS_WINDOW":
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_window)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_Image)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_close_Button)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_KoolProg_Label)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_Msg_Label)
        
        return self.popup_message.popup_messagebox_window_is_visible(sym_names_list, visible)
    
    
    def popup_messagebox_window_return_existence_of_window(self,window=None):
        """
        Return the existence of popup_messagebox_window.
        :param sym_name: symbolic name of popup_messagebox_window
        :return: True if exists or False Otherwise.
        
        """
        
        if window == "PROJECT_WINDOW":
            sym_name = self.sym_names.Common_KoolProg_PopUp_window
            
        elif window == "HOME_WINDOW":
            sym_name = self.sym_names.Common_KoolProg_PopUp_window
            
        elif window == "PRINT_WINDOW":
            sym_name = self.sym_names.print_popup_Window
            
        elif window == "CONVERTSETTINGS_WINDOW":
            sym_name = self.sym_names.Common_KoolProg_PopUp_window
        
        return self.popup_message.popup_messagebox_window_return_existence_of_window(sym_name)
        
    
    def popup_messagebox_window_is_enabled(self, window=None, status=True):
        """
        Check popup window is enabled or disabled.
        :param window:window to validate
        :param status: boolean status value True or False.
        :return: True if succeeds
        """
        sym_names_list = list()
        if window == "PROJECT_WINDOW":
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_window)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_Image)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_KoolProg_Label)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_close_Button)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_Msg_Label)
        elif window == "HOME_WINDOW":
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_window)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_Image)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_close_Button)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_KoolProg_Label)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_Msg_Label)
        elif window == "PRINT_WINDOW":
            sym_names_list.append(self.sym_names.print_popup_Window)
            sym_names_list.append(self.sym_names.print_popup_ParamSheet_Button)
            sym_names_list.append(self.sym_names.print_popup_EngrSheet_Button)
            sym_names_list.append(self.sym_names.print_popup_Cancel_Button)
            sym_names_list.append(self.sym_names.print_popup_Msg_Label)
            sym_names_list.append(self.sym_names.print_popup_koolprog_Image)
            sym_names_list.append(self.sym_names.print_popup_Title_Label)
            sym_names_list.append(self.sym_names.print_popup_close_Button)
        elif window == "CONVERTSETTINGS_WINDOW":
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_window)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_Image)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_close_Button)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_KoolProg_Label)
            sym_names_list.append(self.sym_names.Common_KoolProg_PopUp_Msg_Label)
        
        return self.popup_message.popup_messagebox_window_is_enabled(sym_names_list, status)

    def popup_messagebox_window_click_ok_button(self, window=None):
        """
        Click on ok button in popup window.
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button

        return self.popup_message.popup_messagebox_window_click_ok_button(sym)

    def popup_messagebox_window_click_no_button(self, window=None):
        """
        Click no button in popup window.
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_NO_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_NO_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_NO_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_NO_Button

        return self.popup_message.popup_messagebox_window_click_no_button(sym)

    def popup_messagebox_window_click_yes_button(self, window=None):
        """
        Click on Yes button in popup window.
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Yes_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Yes_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Yes_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_Yes_Button

        return self.popup_message.popup_messagebox_window_click_yes_button(sym)

    def popup_messagebox_window_click_Cancel_button(self, window=None):
        """
        Click on Cancel button in popup window.
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Cancel_Button
        elif window == "PRINT_WINDOW":
            sym = self.sym_names.print_popup_Cancel_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Cancel_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Cancel_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_Cancel_Button

        return self.popup_message.popup_messagebox_window_click_yes_button(sym)

    def popup_messagebox_window_click_Close_button(self, window=None):
        """
        Click on close button(X mark button) in popup window.
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_close_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_close_Button
        elif window == "PRINT_WINDOW":
            sym = self.sym_names.print_popup_close_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_close_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_close_Button

        return self.popup_message.popup_messagebox_window_click_yes_button(sym)

    def popup_messagebox_window_check_message_text(self, message, window=None):
        """
        check the pop-up message text.
        :param message:string to compare
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Msg_Label
        elif window == "PRINT_WINDOW":
            sym = self.sym_names.print_popup_Msg_Label
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Msg_Label
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Msg_Label
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_Msg_Label

        return self.popup_message.popup_messagebox_window_check_message_text(sym, message)

    def popup_messagebox_window_check_YES_button_text(self, message, window=None):
        """
        check the "Yes" button text in pop-up window
        :param message:string to compare
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Yes_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Yes_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Yes_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_Yes_Button

        return self.popup_message.popup_messagebox_window_check_YES_button_text(sym, message)

    def popup_messagebox_window_check_NO_button_text(self, message, window=None):
        """
        check the "No" button text in pop-up window
        :param message:string to compare
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_NO_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_NO_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_NO_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_NO_Button

        return self.popup_message.popup_messagebox_window_check_NO_button_text(sym, message)

    def popup_messagebox_window_check_CANCEL_button_text(self, message, window=None):
        """
        check the "Cancel" button text in pop-up window
        :param message:string to compare
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Cancel_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Cancel_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Cancel_Button
        elif window == "PRINT_WINDOW":
            sym = self.sym_names.print_popup_Cancel_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_Cancel_Button

        return self.popup_message.popup_messagebox_window_check_CANCEL_button_text(sym, message)

    def popup_messagebox_window_NO_button_visible(self, window, visible=True):
        """
        check the "NO" button visible in pop-up window
        :param visible: visibility check of dialog(True or False)
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_NO_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_NO_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_NO_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_NO_Button

        return self.popup_message.popup_messagebox_window_NO_button_visible(sym, visible)

    def popup_messagebox_window_YES_button_visible(self, window, visible=True):
        """
        check the "Yes" button visible in pop-up window
        :param visible: visibility check of dialog(True or False)
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Yes_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Yes_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Yes_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_Yes_Button

        return self.popup_message.popup_messagebox_window_YES_button_visible(sym, visible)

    def popup_messagebox_window_CANCEL_button_visible(self, window, visible=True):
        """
        check the "Cancel" button visible in pop-up window
        :param visible: visibility check of dialog(True or False)
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Cancel_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Cancel_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Cancel_Button
        elif window == "PRINT_WINDOW":
            sym = self.sym_names.print_popup_Cancel_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_Cancel_Button

        return self.popup_message.popup_messagebox_window_CANCEL_button_visible(sym, visible)

    def popup_messagebox_window_YES_button_Enabled(self, window, status=True):
        """
        check the "Yes" button enabled/disabled in pop-up window
        :param status: boolean status value True or False.
        :param window:window to validate
        :return: True if button is enabled value is equal to status else False.
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Yes_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Yes_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Yes_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_Yes_Button

        return self.popup_message.popup_messagebox_window_YES_button_Enabled(sym, status)

    def popup_messagebox_window_NO_button_Enabled(self, window, status=True):
        """
        check the "NO" button enabled/disabled in pop-up window
        :param status: boolean status value True or False.
        :param window:window to validate
        :return: True if button is enabled value is equal to status else False.
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_NO_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_NO_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_NO_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_NO_Button

        return self.popup_message.popup_messagebox_window_NO_button_Enabled(sym, status)

    def popup_messagebox_window_CANCEL_button_Enabled(self, window, status=True):
        """
        check the "Cancel" button enabled/disabled in pop-up window
        :param status: boolean status value True or False.
        :param window:window to validate
        :return: True if button is enabled value is equal to status else False.
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Cancel_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Cancel_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Cancel_Button
        elif window == "PRINT_WINDOW":
            sym = self.sym_names.print_popup_Cancel_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_Cancel_Button

        return self.popup_message.popup_messagebox_window_CANCEL_button_Enabled(sym, status)

    def popup_messagebox_window_OK_button_Enabled(self, window, status=True):
        """
        check the "OK" button enabled/disabled in popup window
        :param status: boolean status value True or False.
        :param window:window to validate
        :return: True if button is enabled value is equal to status else False.
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button

        return self.popup_message.popup_messagebox_window_OK_button_Enabled(sym, status)

    def popup_messagebox_window_OK_button_visible(self, window, visible=True):
        """
        check the "OK" button visible in popup window
        :param visible: visibility check of dialog(True or False)
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button

        return self.popup_message.popup_messagebox_window_OK_button_visible(sym, visible)
    
    
    def popup_messagebox_window_OK_button_visibleStatus(self, window):
        """
        Return the "OK" button visible status in popup window
        :param window:window to validate
        :param sym:Symbolic name of popup message OK button.
        :return: Status of OK Button
        
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button

        return self.popup_message.popup_messagebox_window_OK_button_visibleStatus(sym)

    def popup_messagebox_window_check_OK_button_text(self, message, window=None):
        """
        check the "OK" button text in pop-up window
        :param message:string to compare
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_OK_Button

        return self.popup_message.popup_messagebox_window_check_OK_button_text(sym, message)

    def popup_messagebox_window_X_button_visible(self, window, visible=True):
        """
        check the "X " button visible in pop-up window
        :param visible: visibility check of dialog(True or False)
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_close_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_close_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_close_Button
        elif window == "PRINT_WINDOW":
            sym = self.sym_names.print_popup_close_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_close_Button

        return self.popup_message.popup_messagebox_window_X_button_visible(sym, visible)

    def popup_messagebox_window_X_button_Enabled(self, window, status=True):
        """
        check the "X" button enabled/disabled in popup window
        :param status: boolean status value True or False.
        :param window:window to validate
        :return: True if button is enabled value is equal to status else False.
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_close_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_close_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_close_Button
        elif window == "PRINT_WINDOW":
            sym = self.sym_names.print_popup_close_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_close_Button

        return self.popup_message.popup_messagebox_window_X_button_Enabled(sym, status)

    def popup_messagebox_window_check_KoolProg_label_text(self, text,window):

        """
        Check the "KoolProg" label text in pop-up window 
        :param text:text to compare
        :return:True if succeeds
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_KoolProg_Label
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_KoolProg_Label
        elif window == "PRINT_WINDOW":
            sym = self.sym_names.print_popup_Title_Label
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_KoolProg_Label
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_KoolProg_Label

        return self.popup_message.popup_messagebox_window_check_KoolProg_label_text(sym, text)

    def popup_messagebox_window_check_X_button_text(self, message, window=None):
        """
        check the "X" button text in pop-up window
        :param message:string to compare
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_close_Button
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_close_Button
        elif window == "PRINT_WINDOW":
            sym = self.sym_names.print_popup_close_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_close_Button
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_close_Button

        return self.popup_message.popup_messagebox_window_check_X_button_text(sym, message)

    def popup_messagebox_window_click_Parameter_sheet_button(self, window):
        """
        Click "Parameter Sheet" button in Print popup window.
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.print_popup_ParamSheet_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.print_popup_ParamSheet_Button
        elif window == "PRINT_WINDOW":
            sym = self.sym_names.print_popup_ParamSheet_Button
        else:
            sym = self.sym_names.print_popup_ParamSheet_Button

        return self.popup_message.popup_messagebox_window_click_ok_button(sym)

    def popup_messagebox_window_click_Engineering_sheet_button(self, window):
        """
        Click "Engineering Sheet" button in Print popup window.
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.print_popup_EngrSheet_Button
        elif window == "HOME_WINDOW":
            sym = self.sym_names.print_popup_EngrSheet_Button
        else:
            sym = self.sym_names.print_popup_EngrSheet_Button

        return self.popup_message.popup_messagebox_window_click_ok_button(sym)

    def popup_messagebox_window_check_Parameter_sheet_button_text(self, message, window=None):
        """
        check the "Parameter sheet" button text in pop-up window
        :param message:string to compare
        :param window:window to validate
        :return: True if succeed
        """
        return self.popup_message.popup_messagebox_window_check_Parameter_sheet_button_text(
                                                                self.sym_names.print_popup_ParamSheet_Button, message)

    def popup_messagebox_window_check_Engineering_sheet_button_text(self, message, window=None):
        """
        check the "Engineering sheet" button text in pop-up window
        :param message:string to compare
        :param window:window to validate
        :return: True if succeed
        """
        return self.popup_message.popup_messagebox_window_check_Engineering_sheet_button_text(
                                                                self.sym_names.print_popup_EngrSheet_Button, message)



    # ###################### E N D     P O P U P     M E S S A G E B O X   #######################################

    # ########################   P O R J E C T        W I N D O W       A P I S ##################################

    def project_window_visible(self, time=5):

        """
         Verify project window is visible
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.project_window_Open_Button)
        sym_names_list.append(self.sym_names.project_window_Save_Button)
        sym_names_list.append(self.sym_names.project_window_SaveAs_Button)
        sym_names_list.append(self.sym_names.project_window_Home_Button)
        sym_names_list.append(self.sym_names.project_window_Download_Button)
        sym_names_list.append(self.sym_names.project_window_Title_Label)
        self.project_win.project_window_visible(sym_names_list, time)

    def new_prj_window_click_cancel_button(self):
        """
        Click Cancel button in new project window.
        :return: True if succeed
        """
        self.new_project_win.new_prj_window_click_cancel_button(self.sym_names.product_description_window_Cancel_Button)

    def prj_window_chk_menu_bar_icons_Enable(self,time=10):
        """
        verify Enabled status of the menu icons in project window
        :param time: Time to wait until the condition passes.
        :return:True if succeeds
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.project_window_Open_Button)
        sym_names_list.append(self.sym_names.project_window_Save_Button)
        sym_names_list.append(self.sym_names.project_window_SaveAs_Button)
        sym_names_list.append(self.sym_names.project_window_Home_Button)
        sym_names_list.append(self.sym_names.project_window_Title_Label)
        self.project_win.prj_window_chk_menu_bar_icons_Enable(sym_names_list,time)

    def prj_window_chk_menu_bar_icons_Disable(self):
        """
        verify disabled status of the menu icons in project window
        :return:True if succeeds
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.project_window_Download_Button)
        self.project_win.prj_window_chk_menu_bar_icons_Disable(sym_names_list)

    def project_window_check_controller_details_label_text(self, controller_family, label_text_dic):
        """
        Verify text of labels for Product Name, Power Supply, SW Verison, PV Version, Code Number or Application for created project
        :param  controller_family : selected controller family
        :param  label_text_dic : dic of project details label text from input config file
        :return: True if succeed
        """
        sym_names_dic = self.sym_names.project_window_sym_product_details_label_text[controller_family]
        self.project_win.project_window_check_controller_details_label_text(sym_names_dic, label_text_dic)

    def prj_window_chk_grid_icons_enable(self):
        """
        Verify,grid icons in the  project window are enable.
        :return: True if succeed
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.project_window_txtSearch_Edit)
        sym_names_list.append(self.sym_names.project_window_SearchParameters_Button)
        sym_names_list.append(self.sym_names.project_window_FactoryReset_Button)
        self.project_win.prj_window_chk_grid_icons_enable(sym_names_list)

    def project_window_get_tree_view_list(self):
        """
        Get tree view list from given tree object.
        :return: list of tree view contains parent child details.
        """
        return self.project_win.project_window_get_tree_view_list(self.sym_names.windowhomepage_treeViewParameters_Tree)
    
    def project_window_tree_check_item_is_expanded(self, tree_item_name_list, expand=True):
        """
        Check tree item is expanded in tree.
        :param tree_item_name_list: list of items check to be expanded.
        :param expand: expansion check , true or false.
        :return: Boolean True - if list of items are expanded in tree.
        """
        sym_treeview = self.sym_names.windowhomepage_treeViewParameters_Tree
        return self.project_win.project_window_tree_check_item_is_expanded(sym_treeview, tree_item_name_list, expand)
    
    def project_window_tree_click_item(self, tree_item_name):
        """
        Click tree item.
        :param tree_item_name: name of tree item.
        :return: Boolean True - it item is found and click.
        """
        sym_treeview = self.sym_names.windowhomepage_treeViewParameters_Tree
        return self.project_win.project_window_tree_click_item(sym_treeview, tree_item_name)

    def project_window_check_controller_details_label_value(self, controller_details, controller_family):
        """
        Verify text of labels for Product Name, Power Supply, SW Verison, PV Version, Code Number or Application for created project
        :param  controller_family : selected controller family e.g. ERC11x
        :param  controller_details: selected controller details i.e. Product Name, Power Supply, SW Version, PV Version, Code Number or Application
                for ERC11x controller values are            
                                    Product Name: ERC111A
                                    Code Number : 080G3237-Standard(Blue LED without Buzzer)
                                    Software Version: 3.06
                                    Product Version: PV01
        :return: True if succeed
        """
        sym_names_dic = self.sym_names.project_window_sym_product_details_label_value[controller_family]
        return self.project_win.project_window_check_controller_details_label_value(sym_names_dic, controller_details)

    def prj_window_chk_prj_name_text_in_project_name_edit_box(self, project_name):
        """
        verify the project name in project window is same as project description window.
        :param project_name:project name from project description window 
        :return:True if succeed
        """
        return self.project_win.prj_window_chk_prj_name_text_in_project_name_edit_box(
            self.sym_names.project_window_txtprojectFilename_Label, project_name)

    def prj_window_chk_prj_desc_text_in_project_desc_edit_box(self, project_description):
        """
        verify the project description in project window is same as project description window
        :param project_description:project_description from project description window
        :return:True if succeed
        """
        return self.project_win.prj_window_chk_prj_desc_text_in_project_desc_edit_box(
            self.sym_names.project_window_txtDescription_Edit, project_description)

    def get_groupname_list_from_treeview_list(self, tree_list):
        """
        get group name list from tree view.
        :param tree_list: tree list from UI.
        :return: list of group name in order.
        """
        _lst = list()
        if isinstance(tree_list, list):
            for l in tree_list:
                if isinstance(l, dict):
                    for k, v in l.items():
                        _lst.append(k)
                        if v:
                            for item in self.get_groupname_list_from_treeview_list(v):
                                _lst.append(k + "|" + item)
        return _lst

    def project_window_expand_tree_view_item(self, tree_item_name, expand=True):
        """
        Set tree item as "expand" option is given.
        :param tree_item_name: name of tree item
        :param expand :True if item need to expand, False if item to colapse.
        :return: True if expand successfully, False if already expanded or unable to expand.
        """
        sym_treeview = self.sym_names.windowhomepage_treeViewParameters_Tree
        return self.project_win.project_window_expand_tree_view_item(sym_treeview, tree_item_name, expand)

    def prj_window_chk_info_button_enable(self):
        """
        Verify info button is enable in the project window
        :return: True if succeeds.
        """
        return self.project_win.prj_window_chk_info_button_enable(self.sym_names.project_window_controller_Info_Button)

    def product_info_window_is_visible(self, visible=True):
        """
        Verify, product information window is visible after clicking on info button
        :param visible: info button will be visible
        :return: True if succeeds.
        """
        sym_name_list = list()
        sym_name_list.append(self.sym_names.productinformaiton_window)
        sym_name_list.append(self.sym_names.productinformaiton_header)
        sym_name_list.append(self.sym_names.productinformaiton_close_button)
        sym_name_list.append(self.sym_names.productinformaiton_ProductName_Label)
        sym_name_list.append(self.sym_names.productinformaiton_Productimage_Image)
        sym_name_list.append(self.sym_names.productinformaiton_productDescription_Label)
        sym_name_list.append(self.sym_names.productinformaiton_imgWireDiagram_Image)
        return self.project_win.product_info_window_is_visible(sym_name_list, visible)

    def product_info_window_header_text(self, text):
        """
        Verify, header text in product information window
        :param text: header text
        :return: True if succeeds.
        """
        sym_name = self.sym_names.productinformaiton_header
        return self.project_win.product_info_window_header_text(sym_name, text)

    def product_info_window_close_tooltip_text(self, tooltip_text):
        """
        Verify, tooltip of close button in product information window
        :param tooltip_text: close button tooltip
        """
        sym_name = self.sym_names.productinformaiton_close_button
        self.project_win.product_info_window_close_tooltip_text(sym_name, tooltip_text)

    def product_info_window_label_text(self, controllervariant):
        """
        Verify, label text in product information window
        :param controllervariant: label text in product information window
        :return: True if succeeds.
        """
        sym_name = self.sym_names.productinformaiton_ProductName_Label
        return self.project_win.product_info_window_label_text(sym_name, controllervariant)

    def product_info_window_click_close_button(self):
        """
        Click on info button in project window 
        :return: True if succeeds.
        """
        return self.project_win.product_info_window_click_close_button(self.sym_names.productinformaiton_close_button)

    def product_info_window_click_on_scrollbar(self):
        """
        Click 'scroll bar' in project information window
        :return: True if click is successful else False.
        """
        return self.project_win.product_info_window_click_on_scrollbar(self.sym_names.productinformaiton_ScrollBar)

    def product_info_window_validate_prodImage_wiringDiagram(self, prod_image, wiring_diagram, product_details):
        """
        verify product image, wire diagram and product description in product information window
        :param prod_image : path of product image
        :param wiring_diagram : path of wire diagram
        :param product_details : product description
        :return: True if succeeds.
        """
        sym_prod_image = self.sym_names.productinformaiton_Productimage_Image
        sym_wiring_diagram = self.sym_names.productinformaiton_imgWireDiagram_Image
        sym_prod_details = self.sym_names.productinformaiton_productDescription_Label
        return self.project_win.product_info_window_prodImage_wiringDiagram(sym_prod_image, sym_wiring_diagram,
                                                                            sym_prod_details, prod_image,
                                                                            wiring_diagram, product_details)
                            
    def set_param_window_click_open_button(self):
        """
        Clicks open button in set parameter window.
        :return: True if succeeds.
        
        """
        return self.set_param_window.set_param_window_click_open_button(self.sym_names.lstboxItems_ListItem_3)

    def click_settings_icon_in_homepage_window(self):
        """
        Clicks settings icom in homepage window.
        :return: True if succeeds.
        
        """
        return self.main_window.click_settings_icon_in_homepage_window(self.sym_names.homepage_btnSettings_Button)

    def Window_Dialog_check_unavailable_file_pop_up(self, visible=True):
        """
        Checks open window popup dialog is enabled for unavailable file.
        :return: True if succeeds.
        
        """
        self.Window_Dialog.Window_Dialog_check_unavailable_file_pop_up([self.sym_names.WindowDialog_PopUp_Ok_Button],
                                                                       visible)

    def prj_window_write_project_path_with_file_name(self, project_file):
        """
        Enter project file name in open window
        :param project_file : project file name
        """
        return self.project_win.prj_window_write_project_path_with_file_name(self.sym_names.Window_Dialog_Open_Edit,
                                                                             project_file)

    def prj_window_get_project_detail_values(self, family):
        """
        Get project details value from project window.
        :return: dict of key: value from UI.
        """
        return self.project_win.prj_window_get_project_detail_values(
            self.sym_names.project_window_sym_product_details_label_value, family)

    def prj_window_get_project_description(self):
        """
        Get text description in project window.
        :return: project description text.
        """
        return self.project_win.prj_window_get_project_description(self.sym_names.project_window_txtDescription_Edit)

    def prj_window_check_home_button_is_enabled(self, status=True):
        """
        Check status of home button is enabled or disabled.
        :param status: boolean status to check home button.
        :return: True if home button is enabled value is equal to status else False.
        """
        return self.project_win.prj_window_check_home_button_is_enabled(self.sym_names.project_window_Home_Button,
                                                                        status)

    def product_info_window_check_close_button_is_enabled(self, status=True):
        """
        Check status of 'product information close button' is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.project_win.product_info_window_check_close_button_is_enabled(
            self.sym_names.productinformaiton_close_button, status)
    
    def prj_window_check_controller_visible(self,visible=True):
        """
        Check if the controller is visible in project window 
        :param visible: Visible status(True or False)
        :return: True if succeeds
        """
        return self.project_win.prj_window_check_controller_visible(self.sym_names.online_controller_variant_Product_Image,visible)
    
    def prj_window_check_controller_visible_for_expand_and_collapse(self,visible=True):
        """
        Check if the controller is visible in project window 
        :param visible: Visible status(True or False)
        :return: True if succeeds
        """
        return self.project_win.prj_window_check_controller_visible_for_expand_and_collapse(self.sym_names.collapseImg_Image,visible)    
    
    def check_danfoss_website_link_is_enabled(self, status=True):
        """
        Check status of 'danfoss website link' is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.CommonFunction.check_danfoss_website_link_is_enabled(
            self.sym_names.project_window_website_link_Label
            , status)

    def prj_window_check_offline_controller_info_button_is_enabled(self, status=True):
        """
        Check status of 'offline controller info' button is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        self.project_win.prj_window_check_offline_controller_info_button_is_enabled(
            self.sym_names.project_window_controller_Info_Button, status)

    def prj_window_check_export_button_is_enabled(self, status=True):
        """
        Check status of 'download' button is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.project_win.prj_window_check_export_button_is_enabled(
            self.sym_names.project_window_Download_Button, status)

    def prj_window_check_saveas_button_is_enabled(self, status=True):
        """
        Check status of 'saveas' button is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.project_win.prj_window_check_saveas_button_is_enabled(
            self.sym_names.project_window_SaveAs_Button, status)

    def prj_window_check_save_button_is_enabled(self, status=True):
        """
        Check status of 'save' button is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.project_win.prj_window_check_save_button_is_enabled(
            self.sym_names.project_window_Save_Button, status)

    def prj_window_check_print_button_is_enabled(self, status=True):
        """
        Check status of 'print' button is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.project_win.prj_window_check_print_button_is_enabled(
            self.sym_names.project_window_Printer_Button, status)

    def prj_window_check_search_button_is_enabled(self, status=True):
        """
        Check status of 'search' button is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.project_win.prj_window_check_search_button_is_enabled(
            self.sym_names.project_window_SearchParameters_Button, status)

    def prj_window_check_open_button_is_enabled(self, status=True):
        """
        Check status of 'open' button is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.project_win.prj_window_check_open_button_is_enabled(
            self.sym_names.project_window_Open_Button, status)

    def prj_window_check_search_textbox_editor_is_enabled(self, status=True):
        """
        Check status of 'search text box editor ' is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.project_win.prj_window_check_search_textbox_editor_button_is_enabled(
            self.sym_names.project_window_txtSearch_Edit, status)

    def prj_window_check_help_button_is_enabled(self, status=True):
        """
        Check status of 'help' button is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.project_win.prj_window_check_help_button_is_enabled(
            self.sym_names.homepage_menuHelp_button, status)

    def prj_window_check_viewmore_button_is_enabled(self, status=True):
        """
        Check status of 'viewmore' button is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.project_win.prj_window_check_viewmore_button_is_enabled(
            self.sym_names.prj_window_ViewMoreInfo_Label_button, status)
    
    def viewmore_window_check_X_button_text(self, text):
        """
        verify the "X" buttton text
        :param text:text to compare
        :return:True if succeeds
        """
        return self.CommonFunction.viewmore_window_check_X_button_text(
                                                    self.sym_names.viewmore_Window_Close_X_Button, text)
    
    def viewmore_window_check_Close_button_text(self, text):
        """
       verify the "Close" buttton text
        :param text:text to compare
        :return:True if succeeds
        """
        return self.CommonFunction.viewmore_window_check_Close_button_text(
                                                    self.sym_names.viewmore_Window_Close_Button, text)
        
    def prj_window_check_factory_reset_button_is_enabled(self, status=True):
        """
        Check status of 'factory reset' button is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.project_win.prj_window_check_factory_reset_button_is_enabled(
            self.sym_names.project_window_FactoryReset_Button, status)

    def prj_window_parameters_Expand_collapse_button_is_enabled(self, status=True):
        """
        Check status of 'Parameters expand' button is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.project_win.prj_window_parameters_Expand_collapse_button_is_enabled(
            self.sym_names.prj_window_datagrid_parameters_expand_collapse_button, status)

    def prj_window_check_project_details_expand_collapse_button_is_enabled(self, status=True):
        """
        Check status of 'project details expand' button is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.project_win.prj_window_check_project_details_expand_collapse_button_is_enabled(
            self.sym_names.prj_window_project_details_collpase_Button, status)
    
    def prj_window_cursor_in_edit_box_of_search_editor_should_blink(self, focused=True):
        """
        Verify, cursor in edit box of search editor should blink in project window.
        :param focused: boolean status value True or False.
        :return: True if succeeds
        """
        return self.project_win.prj_window_cursor_in_edit_box_of_search_editor_should_blink(self.sym_names.project_window_txtSearch_Edit, focused)

    def prj_window_click_on_export_button(self):
        """
        Click export button in project window.
        :return: True if click is successful else False.
        """
        return self.project_win.prj_window_click_on_export_button(self.sym_names.project_window_Download_Button)

    def prj_window_click_on_home_button(self):
        """
        Click home button in project window.
        :return: True if click is successful else False.
        """
        return self.project_win.prj_window_click_on_home_button(self.sym_names.project_window_Home_Button)

    def prj_window_click_on_project_details_expand_collapse_button(self):
        """
        Click on "project details expand collapse" button in project window.
        :return: True if click is successful else False.
        """
        return self.project_win.prj_window_click_on_project_details_expand_collapse_button(
            self.sym_names.prj_window_project_details_collpase_Button)

    def prj_window_click_on_datagrid_parameters_Expand_collapse_button(self):
        """
        Click on "parameters expand collapse" button in project window.
        :return: True if click is successful else False.
        """
        return self.project_win.prj_window_click_on_datagrid_parameters_Expand_collapse_button(
            self.sym_names.prj_window_datagrid_parameters_expand_collapse_button)

    def prj_window_click_on_factory_reset_button(self):
        """
        Click on "factory reset" button in project window.
        :return: True if click is successful else False.
        """
        return self.project_win.prj_window_click_on_factory_reset_button(
            self.sym_names.project_window_FactoryReset_Button)

    def prj_window_click_on_viewmore_button(self):
        """
        Click on "view more" button in project window.
        :return: True if click is successful else False.
        """
        return self.project_win.prj_window_click_on_viewmore_button(self.sym_names.prj_window_ViewMoreInfo_Label_button)

    def prj_window_click_on_help_button(self):
        """
        Click on "help" button in project window.
        :return: True if click is successful else False.
        """
        return self.project_win.prj_window_click_on_help_button(self.sym_names.homepage_menuHelp_button)

    def prj_window_click_on_search_textbox_editor(self):
        """
        Click on "search textbox editor" in project window.
        :return: True if click is successful else False.
        """
        return self.project_win.prj_window_click_on_search_textbox_editor_button(
            self.sym_names.project_window_txtSearch_Edit)

    def prj_window_click_on_open_button(self):
        """
        Click on open button in project window.
        :return: True if click is successful else False.
        """
        return self.project_win.prj_window_click_on_open_button(self.sym_names.project_window_Open_Button)

    def prj_window_click_on_search_button(self):
        """
        Click on search button in project window.
        :return: True if click is successful else False.
        """
        return self.project_win.prj_window_click_on_search_button(self.sym_names.project_window_SearchParameters_Button)

    def prj_window_click_on_print_button(self):
        """
        Click on print button in project window.
        :return: True if click is successful else False.
        """
        return self.project_win.prj_window_click_on_print_button(self.sym_names.project_window_Printer_Button)

    def prj_window_click_on_save_button(self):
        """
        Click on save button in project window.
        :return: True if click is successful else False.
        """
        return self.project_win.prj_window_click_on_save_button(self.sym_names.project_window_Save_Button)

    def prj_window_click_on_product_information_window_close_button(self):
        """
        Click on product information window'close' button.
        :return: True if click is successful else False.
        """
        return self.project_win.prj_window_click_on_product_information_window_close_button(
            self.sym_names.productinformaiton_close_button)

    def prj_window_click_on_saveas_button(self):
        """
        Click on saveas button in project window.
        :return: True if click is successful else False.
        """
        return self.project_win.prj_window_click_on_saveas_button(self.sym_names.project_window_SaveAs_Button)

    def click_on_danfoss_website_link(self):
        """
        Click on 'danfoss website link' label.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.CommonFunction.click_on_danfoss_website_link(
            self.sym_names.project_window_website_link_Label)

    def prj_window_click_on_offline_controller_info_button(self):
        """
        Click on "offline controller info button" in project window.
        :return: True if click is successful else False.
        """
        return self.project_win.prj_window_click_on_offline_controller_info_button(
            self.sym_names.project_window_controller_Info_Button)

    def prj_window_check_home_button_is_visible(self, status=True):
        """
        Check status of home button is visible.
        :param status: boolean status to check home button.
        :return: True if home button is visible value is equal to status else False.
        """
        return self.project_win.prj_window_check_home_button_is_visible(self.sym_names.project_window_Home_Button,
                                                                        status)

    def product_info_window_check_close_button_is_visible(self, status=True):
        """
        Check status of 'product information close button' is visible.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        return self.project_win.product_info_window_check_close_button_is_visible(
            self.sym_names.productinformaiton_close_button, status)

    def check_danfoss_website_link_is_visible(self, status=True):
        """
        Check status of 'danfoss website link' is visible.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        return self.CommonFunction.check_danfoss_website_link_is_visible(
            self.sym_names.project_window_website_link_Label
            , status)

    def prj_window_check_offline_controller_info_button_is_visible(self, status=True):
        """
        Check status of 'offline controller info' button is visible.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        self.project_win.prj_window_check_offline_controller_info_button_is_visible(
            self.sym_names.project_window_controller_Info_Button, status)

    def prj_window_check_export_button_is_visible(self, status=True):
        """
        Check status of 'download' button is visible.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        return self.project_win.prj_window_check_export_button_is_visible(
            self.sym_names.project_window_Download_Button, status)

    def prj_window_check_saveas_button_is_visible(self, status=True):
        """
        Check status of 'saveas' button is visible.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        return self.project_win.prj_window_check_saveas_button_is_visible(
            self.sym_names.project_window_SaveAs_Button, status)

    def prj_window_check_save_button_is_visible(self, status=True):
        """
        Check status of 'save' button is visible.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        return self.project_win.prj_window_check_save_button_is_visible(
            self.sym_names.project_window_Save_Button, status)

    def prj_window_check_print_button_is_visible(self, status=True):
        """
        Check status of 'print' button is visible.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        return self.project_win.prj_window_check_print_button_is_visible(
            self.sym_names.project_window_Printer_Button, status)

    def prj_window_check_search_button_is_visible(self, status=True):
        """
        Check status of 'search' button is visible.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        return self.project_win.prj_window_check_search_button_is_visible(
            self.sym_names.project_window_SearchParameters_Button, status)

    def prj_window_check_open_button_is_visible(self, status=True):
        """
        Check status of 'open' button is visible.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        return self.project_win.prj_window_check_open_button_is_visible(
            self.sym_names.project_window_Open_Button, status)

    def prj_window_check_search_textbox_editor_button_is_visible(self, status=True):
        """
        Check status of 'search text box editor ' button is visible.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        return self.project_win.prj_window_check_search_textbox_editor_button_is_visible(
            self.sym_names.project_window_txtSearch_Edit, status)

    def prj_window_check_help_button_is_visible(self, status=True):
        """
        Check status of 'help' button is visible.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        return self.project_win.prj_window_check_help_button_is_visible(
            self.sym_names.homepage_menuHelp_button, status)

    def prj_window_check_viewmore_button_is_visible(self, status=True):
        """
        Check status of 'viewmore' button is visible.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        return self.project_win.prj_window_check_viewmore_button_is_visible(
            self.sym_names.prj_window_ViewMoreInfo_Label_button, status)

    def prj_window_check_factory_reset_button_is_visible(self, status=True):
        """
        Check status of 'factory reset' button is visible.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        return self.project_win.prj_window_check_factory_reset_button_is_visible(
            self.sym_names.project_window_FactoryReset_Button, status)

    def prj_window_parameters_Expand_collapse_button_is_visible(self, status=True):
        """
        Check status of 'parameters expand-collapse' button is visible.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        return self.project_win.prj_window_parameters_Expand_collapse_button_is_visible(
            self.sym_names.prj_window_datagrid_parameters_expand_collapse_button, status)

    def prj_window_check_project_details_expand_collapse_button_is_visible(self, visible=True):
        """
        Check status of 'project details expand' button is visible.
        :param visible: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        return self.project_win.prj_window_check_project_details_expand_collapse_button_is_visible(
            self.sym_names.prj_window_project_details_collpase_Button, visible)

    def prj_window_get_project_name(self):
        """
        Get project name from project window.
        :return: string of project name.
        """
        return self.project_win.prj_window_get_project_name(self.sym_names.project_window_txtprojectFilename_Label)

    def prj_window_check_Setparameter_title_Enabled(self, status=True):
        """
        Check the "Set Parameters" title label is enabled/disabled in Project window
        :param status: boolean status value True or False.
        :return: True if label is enabled value is equal to status else False.
        """
        return self.project_win.prj_window_check_Setparameter_title_Enabled(
            self.sym_names.project_window_Title_Label, status)

    def prj_window_check_Setparameter_title_visible(self, visible=True):
        """
        Check the "Set Parameters" title label is visible in Project window
        :param visible: check visible status(True or False).
        :return:True if succes
        """
        return self.project_win.prj_window_check_Setparameter_title_visible(
            self.sym_names.project_window_Title_Label, visible)

    def prj_window_check_Setparameter_title_text(self, text):
        """
        Check the "Set Parameters" title label text in Project window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.project_win.prj_window_check_Setparameter_title_text(
            self.sym_names.project_window_Title_Label, text)

    def prj_window_check_ProjectName_label_Enabled(self, status=True):
        """
        Check the "Project Name" label is enabled/disabled in Project window
        :param status: boolean status value True or False.
        :return: True if label is enabled value is equal to status else False.
        """
        return self.project_win.prj_window_check_ProjectName_label_Enabled(
            self.sym_names.project_window_projectname_Label, status)

    def prj_window_check_ProjectName_label_visible(self, visible=True):
        """
        Check the "Project Name" label is visible in Project window
        :param visible: check visible status(True or False).
        :return:True if succes
        """
        return self.project_win.prj_window_check_ProjectName_label_visible(
            self.sym_names.project_window_projectname_Label, visible)    

    def prj_window_check_ProjectName_label_text(self, text):
        """
        Check the "Project Name" label text in Project window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.project_win.prj_window_check_ProjectName_label_text(
            self.sym_names.project_window_projectname_Label, text)
        
    def prj_window_check_product_name_label_is_visible(self, visible=True):
        """
        Check the product name label is visible in parameters description in expand/collapse button
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.project_win.prj_window_check_product_name_label_is_visible(
            self.sym_names.project_window_Label_1, visible)
    
    def prj_window_check_product_name_label_text(self, text):
        """
        Check the "Product Name" label text in Project window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.project_win.prj_window_check_product_name_label_text(
            self.sym_names.project_window_Label_1, text)    
    
    def prj_window_check_code_number_label_is_visible(self, visible=True):
        """
        Check the code number label is visible in parameters description in expand/collapse button
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.project_win.prj_window_check_code_number_label_is_visible(
            self.sym_names.project_window_Label_2, visible)                                                                  
        
    def prj_window_check_code_number_label_text(self, text):
        """
        Check the code number label text in parameters description in expand/collapse button
        :param text: text to compare
        :return:True if succeeds
        """
        return self.project_win.prj_window_check_code_number_label_text(
            self.sym_names.project_window_Label_2, text)           
        
    def prj_window_check_software_version_label_is_visible(self, visible=True):
        """
        Check the software version label is visible in parameters description in expand/collapse button
        :param text: text to compare
        :return:True if succeeds
        """
        return self.project_win.prj_window_check_software_version_label_is_visible(
            self.sym_names.project_window_Label_3, visible)
    
    def prj_window_check_software_version_label_text(self, text):
        """
        Check the software version label text in parameters description in expand/collapse button
        :param text: text to compare
        :return:True if succeeds
        """
        return self.project_win.prj_window_check_software_version_label_text(
            self.sym_names.project_window_Label_3, text)     
                                                                                
    def prj_window_product_info_button_is_visible(self, visible=True):
        """
        Check the product information button is visible in parameters description in expand/collapse button
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.project_win.prj_window_product_info_button_is_visible(
            self.sym_names.windowhomepage_btnInfo_Button, visible)                                                                  

    def prj_window_enter_string_in_search_box(self, string):
        """
        Enter text in "search edit textbox"
        param name: name string to enter in search textbox.
        :return: True if text entered successfully else False.
        """
        return self.project_win.prj_window_enter_string_in_search_box(
            self.sym_names.project_window_txtSearch_Edit, string)
    
    def prj_window_get_controller_image(self):
        """
        Get controller image in project window.
        return: 
        """
        return self.project_win.prj_window_get_controller_image(self.sym_names.copytocontroller_Productleft_Image)

    def prj_window_get_headers_from_the_datagrid(self):
        """
        Get headers from the datagrid in project window.
        :return: True if succeeds.
        """
        return self.project_win.prj_window_get_headers_from_the_datagrid(self.sym_names.prj_window_datagridParameters_Table)
        
        
    # #######################  C O D E   N U M B E R    P O P U P     W I N D O W    ###########################
    
    def codenumber_popup_window_visible(self, visible=True):
        """
        Check visiblity of codenumber popup window
        :param visible: visiblity check value. either True or False.
        :return: True if equal to 'visible' value.
        """
        sym_name_list = list()
        sym_name_list.append(self.sym_names.Code_Number_Popup_Window)
        sym_name_list.append(self.sym_names.Code_Number_Popup_Window_Edit)
        sym_name_list.append(self.sym_names.Code_Number_Popup_Window_CodeNumber_Label)
        sym_name_list.append(self.sym_names.Code_Number_Popup_Window_ComboBox)
        sym_name_list.append(self.sym_names.Code_Number_Popup_Window_FileType_Label)
        sym_name_list.append(self.sym_names.Code_Number_Popup_Window_Ok_Button)
        sym_name_list.append(self.sym_names.Code_Number_Popup_Window_Cancel_Button)
        return self.CodenumberPopupWindow.codenumber_popup_window_visible(sym_name_list, visible)

    def code_number_popup_window_ok_button(self):
        """
        Click ok button in code number window.
        :return: boolean True if click is successful else False.
        """
        return self.CodenumberPopupWindow.code_number_popup_window_ok_button(
            self.sym_names.Code_Number_Popup_Window_Ok_Button)

    def code_number_popup_window_cancel_button(self):
        """
        Click cancel button in code number popup window.
        :return: boolean True if click is succesfull else False.
        """
        return self.CodenumberPopupWindow.code_number_popup_window_cancel_button(
            self.sym_names.Code_Number_Popup_Window_Cancel_Button)

    def code_number_popup_window_get_list_of_file_types(self):
        """
        Get file types list from code number popup window.
        :return: list of items in combobox.
        """

        return self.CodenumberPopupWindow.code_number_popup_window_get_list_of_file_types(
            self.sym_names.Code_Number_Popup_Window_ComboBox)

    def code_number_popup_window_select_file_type_in_combobox(self, file_type):
        """
        Get file types list from code number popup window.
        :param file_type: string to select in file type in combobox.
        :return: True if item selected else False.
        """
        return self.CodenumberPopupWindow.code_number_popup_window_select_file_type_in_combobox(
            self.sym_names.Code_Number_Popup_Window_ComboBox, file_type)

    def codenumber_popup_window_check_codenumber(self, message):
        """
        Check the default code number from the pop-up window text editor(Ex:080G3415)
        :param message:message to compare with Code number Popup Window text
        :return:True if text is equal else False.
        """
        return self.CodenumberPopupWindow.codenumber_popup_window_check_codenumber(
            self.sym_names.code_number_popup_window_codenumber_label_textbox, message)

    def codenumber_popup_window_set_codenumber(self, txt):
        """
        Set the desired code number in the pop-up window text editor(Ex:080G3415)
        :param txt:desired text to set in code number pop-up window
        :return:True if text is set in text editor.
        """
        return self.CodenumberPopupWindow.codenumber_popup_window_set_codenumber(
            self.sym_names.code_number_popup_window_codenumber_label_textbox, txt)

    def codenumber_popup_window_check_text_label_CodeNumber(self, text):
        """
        Check Code number popup window  "label" text of "CodeNumber:".
        :param text:string to compare with label.
        :return:True if label is equal else False.
        """
        return self.CodenumberPopupWindow.codenumber_popup_window_check_text_label_CodeNumber(
            self.sym_names.codenumber_popup_window_codenumber_label, text)

    def codenumber_popup_window_check_text_label_File_Type(self, text):
        """
        Check Code number popup window  "label" text of "File Type:".
        :param text:string to compare with label.
        :return:True if label is equal else False.
        """
        return self.CodenumberPopupWindow.codenumber_popup_window_check_text_label_File_Type(
            self.sym_names.codenumber_popup_window_filetype_label, text)
        
    # ############################# E N D   C O D E  N U M B E R   P O P U P     W I N D O W    #################

    # #############################    W I N D O W    D I A L O G      W I N D O W    ###########################

    def Window_Dialog_is_enabled(self, dialog, enable=True):
        """
        Checks if open window is visible.
        :param dialog:dialog to test
        :param status: boolean status value True or False.
        :return: True if succeeds.

        """
        symnames_list = []
        if dialog == "OPEN":
            symnames_list.append(self.sym_names.Window_Dialog)
            #symnames_list.append(self.sym_names.Window_Dialog_Open_or_Save_Button)
            symnames_list.append(self.sym_names.Window_Dialog_Cancel_Button)
            symnames_list.append(self.sym_names.Window_Dialog_Open_filename_Label)
            symnames_list.append(self.sym_names.Window_Dialog_Open_Edit)
            symnames_list.append(self.sym_names.Window_Open_Dialog_ComboBox)
        #             symnames_list.append(self.sym_names.Window_Open_Dialog_Toolbar)
        elif dialog == "SAVEAS":

            symnames_list.append(self.sym_names.Window_Dialog)
            symnames_list.append(self.sym_names.Window_Dialog_Open_or_Save_Button)
            symnames_list.append(self.sym_names.Window_Dialog_Cancel_Button)
            symnames_list.append(self.sym_names.Window_Dialog_Saveas_Edit)
            symnames_list.append(self.sym_names.Window_SaveAs_Dialog_ComboBox)
            symnames_list.append(self.sym_names.Window_Dialog_SaveAs_Dialog_Toolbar)
            symnames_list.append(self.sym_names.Window_Dialog_Cancel_Button)
            
        elif dialog == "PRINT_SAVEAS":
            symnames_list.append(self.sym_names.Window_Dialog)
            symnames_list.append(self.sym_names.Window_Dialog_Open_or_Save_Button)
            symnames_list.append(self.sym_names.Window_Dialog_Cancel_Button)
            symnames_list.append(self.sym_names.Window_Dialog_Saveas_Edit)
            symnames_list.append(self.sym_names.print_saveas_window_combobox)
            symnames_list.append(self.sym_names.Window_Dialog_SaveAs_Dialog_Toolbar)
            symnames_list.append(self.sym_names.Window_Dialog_Cancel_Button)
            
        elif dialog == "PREFERENCE_WINDOW":
            symnames_list.append(self.sym_names.preference_Window_browse_window)
            symnames_list.append(self.sym_names.preference_Window_Browse_folder_create_new)
            symnames_list.append(self.sym_names.Preference_window_Ok_Button)
            symnames_list.append(self.sym_names.preference_Window_Cancel_Button)
            
        return self.Window_Dialog.Window_Dialog_is_enabled(symnames_list, enable)

    def Window_Dialog_write_project_path(self, project_file, dialog):
        """
        Enters project file name in open window
        :param project_file : project file name to be written
        :param dialog:in which dialog we need to write the path ex:Open or Save As window
        :return: True if succeeds.
        """
        sym = None
        if dialog == "OPEN":
            sym = self.sym_names.Window_Dialog_Open_Edit
        elif dialog == "SAVEAS":
            sym = self.sym_names.Window_Dialog_Saveas_Edit
        elif dialog == "PRINT_SAVEAS":
            sym = self.sym_names.Window_Dialog_Saveas_Edit 
            
        return self.Window_Dialog.Window_Dialog_write_project_path(sym, project_file)

    def Window_Dialog_click_open_button(self, dialog="OPEN"):
        """
        Clicks open button in open window.
        :param dialog:dialog to test
        :return:True if succeeds.
        """
        sym = None
        if dialog == "OPEN":
            sym = self.sym_names.Window_Dialog_Open_or_Save_Button
        elif dialog == "SAVEAS":
            sym = self.sym_names.Window_Dialog_Open_or_Save_Button

        return self.Window_Dialog.Window_Dialog_click_open_button(sym)

    def Window_Dialog_click_cancel_button(self, dialog="OPEN"):
        """
        click on the open dialogue window cancel button
        :param dialog:dialog to test
        :return: True if succeeds.
        """
        syn_name = None
        if dialog == "OPEN":
            syn_name = self.sym_names.Window_Dialog_Cancel_Button
        elif dialog == "SAVEAS":
            syn_name = self.sym_names.Window_Dialog_Cancel_Button
        elif dialog == "PREFERENCE_WINDOW":
            syn_name = self.sym_names.preference_Window_Browse_Cancel_Button
        return self.Window_Dialog.Window_Dialog_click_cancel_button(syn_name)

    def Window_Dialog_check_cancel_button_text(self, dialog, text):
        """
       check the text of cancel button on window dialog
        :param dialog:dialog to test
        :return: True if succeeds.
        """
        syn_name = None
        if dialog == "OPEN":
            syn_name = self.sym_names.Window_Dialog_Cancel_Button
        elif dialog == "SAVEAS":
            syn_name = self.sym_names.Window_Dialog_Cancel_Button
        elif dialog == "PREFERENCE_WINDOW":
            syn_name = self.sym_names.preference_Window_Cancel_Button
        return self.Window_Dialog.Window_Dialog_check_cancel_button_text(syn_name, text)

    def Window_Dialog_check_make_new_folder_button_text(self, text):
        """
        Check the New Folder Button Text in Window Dialog. 
        :param text:button text to compare
        :return: True if succeeds.
        """
        syn_name = self.sym_names.preference_Window_Browse_folder_create_new
        return self.Window_Dialog.Window_Dialog_check_make_new_folder_button_text(syn_name, text)

    def Window_Dialog_check_OK_button_text(self, dialog, text):
        """
        Check the text of ok button in window dialog
        :param dialog:dialog to test
        :return: True if succeeds.
        """
        syn_name = None
        if dialog == "OPEN":
            syn_name = self.sym_names.Window_Dialog_Cancel_Button
        elif dialog == "SAVEAS":
            syn_name = self.sym_names.Window_Dialog_Cancel_Button
        elif dialog == "PREFERENCE_WINDOW":
            syn_name = self.sym_names.Preference_window_Ok_Button
        return self.Window_Dialog.Window_Dialog_check_OK_button_text(syn_name, text)

    def Window_Dialog_click_OK_button(self, dialog="OPEN"):
        """
        Click on "OK" button in browse window dialog
        :param dialog:dialog to test
        :return: True if succeeds.
        """
        syn_name = None
        if dialog == "OPEN":
            syn_name = None
        elif dialog == "SAVEAS":
            syn_name = None
        elif dialog == "PREFERENCE_WINDOW":
            syn_name = self.sym_names.Preference_window_Ok_Button
        return self.Window_Dialog.Window_Dialog_click_OK_button(syn_name)

    def Window_Dialog_click_New_Folder_button(self, dialog="OPEN"):
        """
        Click on "New Folder" button in browse window dialog
        :param dialog:dialog to test
        :return: True if succeeds.
        """
        syn_name = None
        if dialog == "OPEN":
            syn_name = None
        elif dialog == "SAVEAS":
            syn_name = None
        elif dialog == "PERFERENCE_WINDOW":
            syn_name = self.sym_names.preference_Window_Browse_folder_create_new
        return self.Window_Dialog.Window_Dialog_click_New_Folder_button(syn_name)

    def Window_Dialog_click_save_button(self, dialog="SAVEAS"):
        """
        Cilck save button in open save dialouge window.
        :return: True if succeeds.
        """
        sym = None
        if dialog == "OPEN":
            sym = None
        elif dialog == "SAVEAS":
            sym = self.sym_names.Window_Dialog_Open_or_Save_Button
        elif dialog == "PRINT_SAVEAS":
            sym = self.sym_names.Window_Dialog_Open_or_Save_Button
            
        self.Window_Dialog.Window_Dialog_click_save_button(sym)

    def Window_Dialog_select_filter(self, name, dialog="OPEN"):
        """
        Open window add filters by given name.
        :param dialog:
        :param name: name of filter to selected.
        :return:
        """
        sym = None
        if dialog == "OPEN":
            sym = self.sym_names.Window_Open_Dialog_ComboBox
        elif dialog == "SAVEAS":
            sym = self.sym_names.Window_SaveAs_Dialog_ComboBox
        self.Window_Dialog.Window_Dialog_select_filter(sym, name)

    def Window_Dialog_get_filter_text(self, dialog="OPEN"):
        """
        Window dialog add filters by given name.
        :param dialog: window dialog OPEN or SAVEAS.
        :return: String of text selected in filter combobox.
        """
        sym = None
        if dialog == "OPEN":
            sym = self.sym_names.Window_Open_Dialog_ComboBox
        elif dialog == "SAVEAS":
            sym = self.sym_names.saveas_dialog_ComboBox
        return self.Window_Dialog.Window_Dialog_get_filter_text(sym)

    def Window_Dialog_check_supporting_filters(self, dialog="OPEN"):
        """
        Check the window dialog show all the supporting filters.
        :param dialog:dialog to validate
        :return: True if succeed
        """
        sym = None
        if dialog == "OPEN":
            sym = self.sym_names.Window_Open_Dialog_ComboBox
        elif dialog == "SAVEAS":
            sym = self.sym_names.saveas_dialog_ComboBox
        return self.Window_Dialog.Window_Dialog_check_supporting_filters(sym)

    def Window_Dialog_get_list_of_files(self, dialog):
        """
        Open window add filters by given name.
        :param dialog: OPEN/SAVE Dialog
        :return: list of file names.
        """
        sym = None
        if dialog == "OPEN":
            sym = self.sym_names.Window_Dialog_File_List
        elif dialog == "SAVEAS":
            sym = self.sym_names.Window_Dialog_File_List
        return self.Window_Dialog.Window_Dialog_get_list_of_files(sym)

    def Window_Dialog_select_file_from_list_of_files_in_window(self , dialog, filename):
        """
        Open window add filters by given name.
        :param dialog: OPEN/SAVE Dialog
        :param filename:filename to open
        :return: list of file filter names.
        """
        sym = None
        if dialog == "OPEN":
            sym = self.sym_names.Window_Dialog_File_List
        elif dialog == "SAVEAS":
            sym = self.sym_names.Window_Dialog_File_List
        return self.Window_Dialog.Window_Dialog_select_file_from_list_of_files_in_window(sym, filename)


    def Window_Dialog_go_to_given_location(self, path, dialog="OPEN"):
        """
        Writes explorer path to go given location.
        :param dialog:
        :param path: path to explorer to move.
        :return:
        """
        sym = None
        if dialog == "OPEN":
            sym = self.sym_names.Window_Dialog_Open_Edit
        elif dialog == "SAVEAS":
            sym = self.sym_names.Window_Dialog_Saveas_Edit
        self.Window_Dialog.Window_Dialog_go_to_given_location(sym, path)

    def Window_Dialog_get_explorer_path(self, dialog="OPEN"):
        """
        Get explorer directory from open project dialogbox.
        :return: string of directory.
        """
        sym = None
        if dialog == "OPEN":
            sym = self.sym_names.Window_Open_Dialog_Toolbar
        elif dialog == "SAVEAS":
            sym = self.sym_names.Window_Dialog_SaveAs_Dialog_Toolbar
        elif dialog == "PRINT_SAVEAS":
            sym = self.sym_names.print_saveas_toolbar 
        return self.Window_Dialog.Window_Dialog_get_explorer_path(sym)

    def Window_Dialog_get_file_name(self, dialog):
        """
        Get the project name written in the saveas dialog
        :return: project name/file name.
        """
        if dialog == "OPEN":
            sym = self.sym_names.Window_Dialog_Open_Edit
        elif dialog == "SAVEAS":
            sym = self.sym_names.Window_Dialog_Saveas_Edit
        elif dialog == "PRINT_SAVEAS":
            sym = self.sym_names.Window_Dialog_Saveas_Edit
        else:
            sym = None

        return self.Window_Dialog.Window_Dialog_get_file_name(sym)
    
    def Window_Dialog_check_file_name_text(self, dialog, text=''):
        """
        Check the project name written in the saveas dialog
        :param dialog: OPEN/SAVE Dialog
        :param text: TestData to compare.
        :return: True if succeeds.
        """
        if dialog == "OPEN":
            sym = self.sym_names.Window_Dialog_Open_Edit
        elif dialog == "SAVEAS":
            sym = self.sym_names.Window_Dialog_Saveas_Edit
        elif dialog == "PRINT_SAVEAS":
            sym = self.sym_names.Window_Dialog_Saveas_Edit
        else:
            sym = None

        return self.Window_Dialog.Window_Dialog_check_file_name_text(sym,text)
    
    # #############################  E N D    W I N D O W    D I A L O G      W I N D O W    ##########################

    # #############################      D A T A    G R I D     A P I      ############################################

    def prj_window_verify_help_for_each_parameter(self, database):
        """
        Verify help will be available on right hand side for each parameter.
        :param database: Database input sheet name with respect to the selected controller.
        :return: True if succeeds.

        """
        self.report_fail("not implemented....")

    def prj_window_verify_value_will_change_within_its_minimum_and_maximum_range_in_dataGrid(self):
        """
        Verify value will change within its minimum and maximum range in dataGrid.
        :return: True if succeeds.

        """
        self.report_fail("not implemented ...")

    def prj_window_check_group_name_is_expanded_in_DataGrid(self, group_name, expand=True):
        """
        Check group name is expanded in datagrid
        :param group_name: group name to check expand.
        :param expand: boolean to check expanded or not.
        :return: True if expected value is equal else false.
        """
        return self.project_win.prj_window_check_group_name_is_expanded_in_DataGrid(
            self.sym_names.prj_window_datagridParameters_Table,
            group_name, expand)

    def prj_window_click_on_group_name_in_DataGrid(self, group_name, expand=True):
        """
        Set group name is expand or collapse in datagrid
        :param group_name: group name to is expand or collapse.
        :param expand: boolean to is expand or collapse.
        :return: True if expected value is equal else false.
        """
        return self.project_win.prj_window_click_on_group_name_in_DataGrid(
            self.sym_names.prj_window_datagridParameters_Table,
            group_name)

    def prj_window_get_row_count_of_dataGrid(self):
        """
        Gets row count of the dataGrid in KoolProg.
        :return: Row count of the dataGrid.

        """
        return self.project_win.prj_window_get_row_count_of_dataGrid(self.sym_names.prj_window_datagridParameters_Table)

    def prj_window_parse_the_datagrid(self):
        """
        Gets the datagrid information.
        :return: below datagrid Information will be returned
        Below information we are capturing from the datagrid
        :Example: Datagrid row will be.
            CircleVisible (bool)-false
            Datatype (char)-INT
            DefaultUnit-(char)
            DefaultValue(char)-0
            Description(char)-LIC001
            Enum (ParameterModel)-<null>
            EnumText(char)
            FavouritesValue (bool)-false
            GroupName (char)-Service
            IsEnabled (bool)-true
            IsHiddenByFilter(bool)-false
            IsManualColumnVisible(bool)-true
            IsSelectedForPlotting(bool)-false
            Key(char)-OEM Code Low
            Maxvalue(char)-999
            MenuCode (char)-oEL
            Minvalue (char)-0
            ParameterName(char)-OEM Code Low
            ReadOnly(bool)-false
            SubGroupName(char)-Service
            Unit (char)-C
            Value(char)-0
        """
        return self.project_win.prj_window_parse_the_datagrid(self.sym_names.prj_window_datagridParameters_Table, 
                                                              self.sym_names.prj_window_help_description_Label,
                                                              self.sym_names.windowhomepage_lblmenucodeinfo_Label,
                                                              self.sym_names.windowhomepage_lblparamnameinfo_Label)
            

    def prj_window_get_selected_row_in_dataGrid(self):
        """
        Gets the current highlighted row Object in a dataGrid.
        :return: Highlighted row Object in a dataGrid.
        Eg: currentHighLightedRow properties are obtained from dataGrid such as,
        currentHighLightedRow.Favourites
        currentHighLightedRow.MenuCode
        currentHighLightedRow.ParameterName
        currentHighLightedRow.Minvalue
        currentHighLightedRow.DefaultValue
        currentHighLightedRow.DefaultUnit
        currentHighLightedRow.Value
        currentHighLightedRow.Unit
        currentHighLightedRow.Maxvalue

        """
        return self.project_win.prj_window_get_selected_row_in_dataGrid(
            self.sym_names.prj_window_datagridParameters_Table)

    def prj_window_set_favourite_in_datagrid(self, groupName, parameterName, setValue):
        """
        Set value for given parameter in datagrid.
        :param groupName: string of group name or expander name of parameter.
        :param parameterName: string parameter name to set value
        :param setValue: boolean True/False - set value of parameter.
        :return: True if parameter is found , else returns False.
        """
        return self.project_win.prj_window_set_favourite_in_datagrid(self.sym_names.prj_window_datagridParameters_Table,
                                                                     groupName,
                                                                     parameterName, setValue)

    def prj_window_check_favourite_value_parameter_in_datagrid(self, groupName, parameterName, check):
        """
        check favourite checkbox value for given parameter name .
        :param groupName: string of group name or expander name of parameter.
        :param parameterName: string parameter name to set value.
        :param check: value (True/False) to be check against favourite checkbox.
        :return: True if parameter is found , else returns False.
        """
        return self.project_win.prj_window_check_favourite_value_parameter_in_datagrid(
            self.sym_names.prj_window_datagridParameters_Table, groupName,
            parameterName, check)

    def prj_window_set_value_in_datagrid(self, groupName, parameterName, setValue):
        """
        Set value for given parameter in datagrid.
        :param groupName: string of group name or expander name of parameter.
        :param parameterName: string parameter name to set value
        :param setValue: string set value of parameter.
        :return: True if parameter is found , else returns False.
        """
        return self.project_win.prj_window_set_value_in_datagrid(self.sym_names.prj_window_datagridParameters_Table,
                                                                 groupName,
                                                                 parameterName, setValue)

    # #############################  O P E N    S A V E A S    D I A L O G     W I N D O W    #########################

    def Window_Dialog_PopUp_visible(self, visible=True):
        """
        window dialog pop-up is visible
        :param visible: visiblity check of dialog(True or False).
        :return: True if visiblity is equal.
        """
        sym_list = list()
        sym_list.append(self.sym_names.Window_Dialog)
        return self.WindowDialogPopUp.Window_Dialog_PopUp_visible(sym_list, visible)

    def Window_Dialog_PopUp_Click_Yes(self):
        """
        window dialog popup click yes button.
        :return:True if button is present else False.
        """
        return self.WindowDialogPopUp.Window_Dialog_PopUp_Click_Yes(self.sym_names.WindowDialog_PopUp_Yes_Button)

    def Window_Dialog_PopUp_Click_No(self):
        """
        Window dialog popup click no button.
        :return:True if button is present else False.
        """
        return self.WindowDialogPopUp.Window_Dialog_PopUp_Click_No(self.sym_names.WindowDialog_PopUp_No_Button)

    def Window_Dialog_PopUp_Click_Ok(self, dialog):
        """
        Window dialog popup click ok button.
        :return:True if button is present else False.
        """
        if dialog == "OPEN":
            sym = self.sym_names.WindowDialog_PopUp_Ok_Button
        elif dialog == "SAVEAS":
            sym = self.sym_names.save_As_OK_Button
        else:
            sym = None
        return self.WindowDialogPopUp.Window_Dialog_PopUp_Click_Ok(sym)

    def Window_Dialog_PopUp_Check_Text(self, message):
        """
        Window dialog popup check text.
        :param message: message string to compare.
        :return:True if text message is equal else False.
        """
        # TODO : can't able to pickup object for message.
        return self.WindowDialogPopUp.Window_Dialog_PopUp_Check_Text(None, message)

    def set_param_window_check_text_label_new_button(self, text):
        """
        Set parameter window check "label" text of "new button ".
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        return self.set_param_window.set_param_window_check_text_label_new_button(
            self.sym_names.setparameter_window_New_Label, text)

    def set_param_window_check_text_label_open_button(self, text):
        """
        Set parameter window check "label" text of "open button ".
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        return self.set_param_window.set_param_window_check_text_label_open_button(
            self.sym_names.setparameter_window_Openproject_Label, text)

    def set_param_window_check_text_label_import_controller_model_button(self, text):
        """
        Set parameter window check "label" text of "import controller model button".
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        return self.set_param_window.set_param_window_check_text_label_import_controller_model_button(
            self.sym_names.setparameter_window_controllersmodels_Label, text)

    def set_param_window_check_text_label_import_settings_from_controller_button(self, text):
        """
        Set parameter window check "label" text of "import settings from controller".
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        return self.set_param_window.set_param_window_check_text_label_import_settings_from_controller_button(
            self.sym_names.setparameter_window_Uplaodfromcontroller_Label, text)

    # ############################# E N D     O P E N    S A V E A S    D I A L O G     W I N D O W    #################

    def set_param_window_check_text_label_new_button(self, text):
        """
        Set parameter window check "label" text of "new button ".
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        return self.set_param_window.set_param_window_check_text_label_new_button(
            self.sym_names.setparameter_window_New_Label, text)

    def set_param_window_check_text_label_open_button(self, text):
        """
        Set parameter window check "label" text of "open button ".
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        return self.set_param_window.set_param_window_check_text_label_open_button(
            self.sym_names.setparameter_window_Openproject_Label, text)

    def set_param_window_check_text_label_import_controller_model_button(self, text):
        """
        Set parameter window check "label" text of "import controller model button".
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        return self.set_param_window.set_param_window_check_text_label_import_controller_model_button(
            self.sym_names.setparameter_window_controllersmodels_Label, text)

    def set_param_window_check_text_label_import_settings_from_controller_button(self, text):
        """
        Set parameter window check "label" text of "import settings from controller".
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        return self.set_param_window.set_param_window_check_text_label_import_settings_from_controller_button(
            self.sym_names.setparameter_window_Uplaodfromcontroller_Label, text)

    def prj_window_compare_home_button_tooltip(self, tooltip_text):
        """
        In Project window  Compare tooltip text of home button
        :param tooltip_text: string to check with tooltip
        :return: True if text is Equal else False.
        """
        sym_name = self.sym_names.project_window_Home_Button
        return self.project_win.prj_window_compare_home_button_tooltip(sym_name, tooltip_text)

    def prj_window_compare_SaveAs_button_tooltip(self, tooltip_text):
        """
        In Project window  Compare tooltip text of SaveAs button
        :param tooltip_text: string to check with tooltip
        :return: True if text is Equal else False.
        """
        sym_name = self.sym_names.project_window_SaveAs_Button
        return self.project_win.prj_window_compare_SaveAs_button_tooltip(sym_name, tooltip_text)

    def prj_window_compare_Save_button_tooltip(self, tooltip_text):
        """
        In Project window  Compare tooltip text of Save button
        :param tooltip_text: string to check with tooltip
        :return: True if text is Equal else False.
        """
        sym_name = self.sym_names.project_window_Save_Button
        return self.project_win.prj_window_compare_Save_button_tooltip(sym_name, tooltip_text)

    def prj_window_compare_export_button_tooltip(self, tooltip_text):
        """
        In Project window  Compare tooltip text of export button
        :param tooltip_text: string to check with tooltip
        :return: True if text is Equal else False.
        """
        sym_name = self.sym_names.project_window_Download_Button
        return self.project_win.prj_window_compare_export_button_tooltip(sym_name, tooltip_text)

    def prj_window_compare_offline_contrller_info_button_tooltip(self, tooltip_text):
        """
        In Project window  Compare tooltip text of info(i) button
        :param tooltip_text: string to check with tooltip
        :return: True if text is Equal else False.
        """
        sym_name = self.sym_names.btnInfo_Button
        return self.project_win.prj_window_compare_offline_contrller_info_button_tooltip(sym_name, tooltip_text)

    def prj_window_compare_print_button_tooltip(self, tooltip_text):
        """
        In Project window  Compare tooltip text of "print" button
        :param tooltip_text: string to check with tooltip
        :return: True if text is Equal else False.
        """
        sym_name = self.sym_names.project_window_Printer_Button
        return self.project_win.prj_window_compare_print_button_tooltip(sym_name, tooltip_text)

    def prj_window_compare_help_button_tooltip(self, tooltip_text):
        """
        In Project window  Compare tooltip text of "help" button
        :param tooltip_text: string to check with tooltip
        :return: True if text is Equal else False.
        """
        sym_name = self.sym_names.homepage_menuHelp_button
        return self.project_win.prj_window_compare_help_button_tooltip(sym_name, tooltip_text)

    def prj_window_compare_ViewMore_button_tooltip(self, tooltip_text):
        """
        In Project window  Compare tooltip text of "ViewMore" button
        :param tooltip_text: string to check with tooltip
        :return: True if text is Equal else False.
        """
        sym_name = self.sym_names.project_window_ViewMore_Label
        return self.project_win.prj_window_compare_ViewMore_button_tooltip(sym_name, tooltip_text)

    def prj_window_compare_Search_button_tooltip(self, tooltip_text):
        """
        In Project window  Compare tooltip text of "Search" button
        :param tooltip_text: string to check with tooltip
        :return: True if text is Equal else False.
        """
        sym_name = self.sym_names.project_window_SearchParameters_Button
        return self.project_win.prj_window_compare_Search_button_tooltip(sym_name, tooltip_text)

    def prj_window_compare_Factory_reset_button_tooltip(self, tooltip_text):
        """
        In Project window  Compare tooltip text of "Factory reset" button
        :param tooltip_text: string to check with tooltip
        :return: True if text is Equal else False.
        """
        sym_name = self.sym_names.project_window_FactoryReset_Button
        return self.project_win.prj_window_compare_Factory_reset_button_tooltip(sym_name, tooltip_text)

    def prj_window_compare_help_Expand_collapse_button_tooltip(self, tooltip_text):
        """
        In Project window  Compare tooltip text of " Help Expand/collapse" button
        :param tooltip_text: string to check with tooltip
        :return: True if text is Equal else False.
        """
        sym_name = self.sym_names.project_window_helpexpander_Button
        return self.project_win.prj_window_compare_help_Expand_collapse_button_tooltip(sym_name, tooltip_text)

    def prj_window_check_help_Expand_collapse_button_is_visible(self, visible=True):
        """
        Check the expand/collapse button in help of parameter description is visible in Project window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        sym_name = self.sym_names.project_window_helpexpander_Button
        return self.project_win.prj_window_check_help_Expand_collapse_button_is_visible(sym_name, visible)

    def prj_window_click_help_Expand_collapse_button(self):
        """
        Click the expand/collapse button in help of parameter description in Project window
        :return True: if succeeds ,False otherwise
        """       
        return self.project_win.prj_window_click_help_Expand_collapse_button(self.sym_names.project_window_helpexpander_Button)

    def prj_window_check_status_of_help_expand_collapse_button(self, isExpanded=True):
        """
        Check the status of expand/collapse button of help in project window.
        :param isExpanded: Expand status(True or False).
        :return: True if expanded else False.
        """
        return self.project_win.prj_window_check_status_of_help_expand_collapse_button(self.sym_names.prj_window_help_description_Label, isExpanded)

    def prj_window_check_help_Expand_collapse_button_is_Enabled(self, status=True):
        """
        Check the expand/collapse button in help of parameter description is enabled/disabled in Project window
        :param status: boolean status value True or False.
        :return: True if label is enabled value is equal to status else False.
        """
        return self.project_win.prj_window_check_help_Expand_collapse_button_is_Enabled(self.sym_names.project_window_helpexpander_Button, status)


    def prj_window_compare_open_button_tooltip(self, tooltip_text):
        """
        In Project window  Compare tooltip text of "open" button
        :param tooltip_text: string to check with tooltip
        :return: True if text is Equal else False.
        """
        sym_name = self.sym_names.project_window_Open_Button
        return self.project_win.prj_window_compare_open_button_tooltip(sym_name, tooltip_text)

    def prj_window_compare_search_editor_tooltip(self, tooltip_text):
        """
        In Project window  Compare tooltip text of "search editor"
        :param tooltip_text: string to check with tooltip
        :return: True if text is Equal else False.
        """
        sym_name = self.sym_names.project_window_txtSearch_Edit
        return self.project_win.prj_window_compare_search_editor_tooltip(sym_name, tooltip_text)

    def prj_window_compare_parameter_Expand_collapse_button_tooltip(self, tooltip_text):
        """
        In Project window  Compare tooltip text of "Parameter Exapnd/Collapse button"
        :param tooltip_text: string to check with tooltip
        :return: True if text is Equal else False.
        """
        sym_name = self.sym_names.prj_window_datagrid_parameters_expand_collapse_button
        return self.project_win.prj_window_compare_parameter_Expand_collapse_button_tooltip(sym_name, tooltip_text)

    def prj_window_compare_project_details_Expand_collapse_button_tooltip(self, tooltip_text):
        """
        In Project window  Compare tooltip text of "expand/collapse" button
        :param tooltip_text: string to check with tooltip
        :return: True if text is Equal else False.
        """
        sym_name = self.sym_names.prj_window_project_details_collpase_Button
        return self.project_win.prj_window_compare_project_details_Expand_collapse_button_tooltip(sym_name,
                                                                                                  tooltip_text)
        
    def prj_window_check_status_of_project_details_expand_collapse_button(self, isExpanded=True):
        """
        Click on "project details expand collapse" button in project window.
        :param isExpanded: Expand status(True or False).
        :return: True if expanded else False.
        """
        return self.project_win.prj_window_check_status_of_project_details_expand_collapse_button(self.sym_names.copytocontroller_Productleft_Image, isExpanded)
    
    def check_danfoss_website_link_text(self, link_text):
        """
        Check the "danfoss website link" label text in Project window
        :param link_text:text to compare
        :return:True if succeeds else false.
        """
        return self.CommonFunction.check_danfoss_website_link_text(
            self.sym_names.project_window_website_link_Label, link_text)

    def select_help_menuitem(self, item):
        """
        Select a help menu item from help menu.
        :param item: string -> item to select
        :return: True if menu item is selected successfully else False.
        """
        return self.CommonFunction.select_help_menuitem(self.sym_names.homepage_menuHelp_button, item)
        

    def get_List_of_help_menu_items(self):
        """
        Get list of menu items from help menu list.
        :return: list of menu items.
        """
        return self.CommonFunction.get_List_of_help_menu_items(self.sym_names.homepage_menuHelp_button)

    def about_window_is_visible(self, visible=True):
        """
        verify the about window labels are visible
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.about_Window)
        sym_names_list.append(self.sym_names.about_Window_Title_Label)
        sym_names_list.append(self.sym_names.about_Window_cancel_Button)
        sym_names_list.append(self.sym_names.about_Window_KoolProg_Label)
        sym_names_list.append(self.sym_names.about_Window_version_Label)
        sym_names_list.append(self.sym_names.about_Window_rights_Label)
        sym_names_list.append(self.sym_names.about_Window_Close_Button)
        self.CommonFunction.about_window_is_visible(sym_names_list, visible)

    def about_window_check_koolprog_version(self, text):
        """
        CHeck the koolrpog version in about window
        :param text:text to compare
        :return:True if succeeds
        """
        self.CommonFunction.about_window_check_koolprog_version(self.sym_names.about_Window_Version_Number_label, text)

    def about_window_check_close_button_tooltip(self, tooltip_text):
        """
        Check the "about window" close button tooltip
        :param tooltip_text: close button tooltip
        :return:True if succeeds
        """
        self.CommonFunction.about_window_check_close_button_tooltip(self.sym_names.about_Window_cancel_Button,
                                                                    tooltip_text)

    def about_window_is_Enabled(self, status=True):
        """
        Check the "about" window labels are enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.about_Window)
        sym_names_list.append(self.sym_names.about_Window_Title_Label)
        sym_names_list.append(self.sym_names.about_Window_cancel_Button)
        sym_names_list.append(self.sym_names.about_Window_KoolProg_Label)
        sym_names_list.append(self.sym_names.about_Window_version_Label)
        sym_names_list.append(self.sym_names.about_Window_rights_Label)
        sym_names_list.append(self.sym_names.about_Window_Close_Button)
        return self.CommonFunction.about_window_is_Enabled(sym_names_list)
    
    def about_window_check_right_reserved_text(self, text):
        """
        verify the "Right reserved" text in about window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.CommonFunction.about_window_check_right_reserved_text(
                                                            self.sym_names.about_Window_rights_Label, text)
        
    def about_window_check_header_text(self, text):
        """
        verify the "about" header text in about window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.CommonFunction.about_window_check_header_text(
                                                            self.sym_names.about_Window_Title_Label, text)

    def about_window_check_koolprog_label_text(self, text):
        """
        verify the "KoolProg" label text in about window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.CommonFunction.about_window_check_koolprog_label_text(
                                                            self.sym_names.about_Window_KoolProg_Label, text)
                                                            
    def about_window_check_koolprog_version_label_text(self, text):
        """
        verify the "KoolProg Version" label text in about window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.CommonFunction.about_window_check_koolprog_version_label_text(
                                                            self.sym_names.about_Window_version_Label, text)

    def about_window_check_close_button_text(self, text):
        """
        verify the "Close" button text in about window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.CommonFunction.about_window_check_close_button_text(
                                                            self.sym_names.about_Window_Close_Button, text)    

    def about_window_check_X_button_text(self, text):
        """
        verify the "X" button text in about window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.CommonFunction.about_window_check_X_button_text(
                                                            self.sym_names.about_Window_cancel_Button, text)                                                            
        
    def viewmore_window_check_labels_Enabled(self, status=True):
        """
        Check the "View More" window labels are enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.viewmore_Window)
        sym_names_list.append(self.sym_names.viewmore_Window_WindowTitle_Label)
        sym_names_list.append(self.sym_names.viewmore_Window_Maximize_Button)
        sym_names_list.append(self.sym_names.viewmore_Window_Close_X_Button)
        sym_names_list.append(self.sym_names.viewmore_Window_Close_Button)
        return self.CommonFunction.viewmore_window_Enabled(sym_names_list, status)

    def viewmore_window_visible(self, visible=True):
        """
        Check the "View More" window labels are visible
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.viewmore_Window)
        sym_names_list.append(self.sym_names.viewmore_Window_WindowTitle_Label)
        sym_names_list.append(self.sym_names.viewmore_Window_Maximize_Button)
        sym_names_list.append(self.sym_names.viewmore_Window_Close_X_Button)
        sym_names_list.append(self.sym_names.viewmore_Window_Close_Button)
        self.CommonFunction.viewmore_window_visible(sym_names_list, visible)

    def viewmore_window_check_header_text(self, text):
        """
        Check the "View More" window header text
        :param text:text to compare
        :return:True if succeeds
        """
        self.CommonFunction.viewmore_window_check_header_text(self.sym_names.viewmore_Window_WindowTitle_Label, text)

    def viewmore_window_check_close_button_tooltip(self, tooltip_text):
        """
        Check the "View More" window close button tooltip
        :param tooltip_text: close button tooltip
        :return:True if succeeds
        """
        self.CommonFunction.viewmore_window_check_close_button_tooltip(self.sym_names.viewmore_Window_Close_X_Button,
                                                                       tooltip_text)

    def help_window_Enabled(self, status=True):
        """
        Check the "help" window labels are enabled or disabled
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.help_Window)
        sym_names_list.append(self.sym_names.help_Window_Close_X_Button)
        sym_names_list.append(self.sym_names.help_Window_Close_Button)
        sym_names_list.append(self.sym_names.help_Window_Maximize_Button)
        sym_names_list.append(self.sym_names.help_Window_WindowTitle_Label)
        self.CommonFunction.help_window_Enabled(sym_names_list, status)

    def help_window_visible(self, visible=True):
        """
        Check the "help" window labels are visible
        :param visible: check visible status(True or False).
        :return:True if succes
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.help_Window)
        sym_names_list.append(self.sym_names.help_Window_Close_X_Button)
        sym_names_list.append(self.sym_names.help_Window_Close_Button)
        sym_names_list.append(self.sym_names.help_Window_Maximize_Button)
        sym_names_list.append(self.sym_names.help_Window_WindowTitle_Label)
        self.CommonFunction.help_window_visible(sym_names_list, visible)

    def help_window_check_header_text(self, text):
        """
        Check the "help" window header text
        :param text:text to compare
        :return:True if succeeds
        """
        self.CommonFunction.help_window_check_header_text(self.sym_names.help_Window_WindowTitle_Label, text)

    def help_window_check_close_button_tooltip(self, tooltip_text):
        """
        Check the "help" window close button tooltip
        :param tooltip_text: close button tooltip
        :return:True if succeeds
        """
        self.CommonFunction.help_window_check_close_button_tooltip(self.sym_names.help_Window_Close_X_Button,
                                                                   tooltip_text)

    def newfilename_window_is_enabled(self, enable=True, time=10):
        """
        check "new file name window" is enabled or not.
        :param enable: boolean True/False enable check value.
        :param time: maximum time to wait for window arrival".
        :return: True if check value is equal else False.
        """
        sym_list = list()
        sym_list.append(self.sym_names.newfilename_window)
        sym_list.append(self.sym_names.newfilename_window_title_label)
        sym_list.append(self.sym_names.newfilename_window_description_label)
        sym_list.append(self.sym_names.newfilename_window_newfilename_label)
        sym_list.append(self.sym_names.newfilename_window_code_number_edit)
        sym_list.append(self.sym_names.newfilename_window_ok_button)
        return self.newfilename_window.newfilename_window_is_enabled(sym_list, enable, time)

    def newfilename_window_is_visible(self, visible=True, time=60):
        """
        check "new file name window" is visible.
        :param visible: boolean True/False visible check value.
        :param time: maximum time to wait for window arrival".
        :return: True if visible value is equal else False.
        """
        sym_list = list()
        sym_list.append(self.sym_names.newfilename_window)
        sym_list.append(self.sym_names.newfilename_window_title_label)
        sym_list.append(self.sym_names.newfilename_window_description_label)
        sym_list.append(self.sym_names.newfilename_window_newfilename_label)
        sym_list.append(self.sym_names.newfilename_window_code_number_edit)
        sym_list.append(self.sym_names.newfilename_window_ok_button)
        return self.newfilename_window.newfilename_window_is_visible(sym_list, visible, time)

    def newfilename_window_check_label_text(self, window_header_name, window_description, newfile_name_label):
        """
        Check labels text in new file name window.
        :param window_header_name: Header string.
        :param window_description: New file name "description" label text.
        :param newfile_name_label: "new file name" label text
        :return: True if string expected text present in "new file name window" else False.
        """
        return self.newfilename_window.newfilename_window_check_label_text(
            self.sym_names.newfilename_window_title_label,
            self.sym_names.newfilename_window_description_label,
            self.sym_names.newfilename_window_newfilename_label,
            window_header_name, window_description,
            newfile_name_label)

    def newfilename_window_check_filename_textbox_text(self, file_name_text):
        """
        check file name edit text box containing text.
        :param file_name_text: string to compare.
        :return: True if expected text present else False.
        """
        return self.newfilename_window.newfilename_window_check_filename_textbox_text(
            self.sym_names.newfilename_window_code_number_edit,
            file_name_text)

    def newfilename_window_get_filename_textbox_text(self):
        """
        get "file name edit text box" containing text.
        :return: string of text in edit box.
        """
        return self.newfilename_window.newfilename_window_get_filename_textbox_text(
            self.sym_names.newfilename_window_code_number_edit)

    def newfilename_window_set_filename_textbox_text(self, name):
        """
        set text in "file name edit text box".
        :param name: name string to set in textbox.
        :return: True if text set successfully else False.
        """
        return self.newfilename_window.newfilename_window_set_filename_textbox_text(
            self.sym_names.newfilename_window_code_number_edit, name)

    def newfilename_window_check_ok_button_enabled(self, status):
        """
        Check status ok button is enabled or disabled.
        :param status: boolean status value to check ok button.
        :return: True if ok button is enabled value is equal to status else False.
        """
        return self.newfilename_window.newfilename_window_check_ok_button_enabled(
            self.sym_names.newfilename_window_ok_button, status)

    def newfilename_window_check_ok_button_visible(self, visible=True):
        """
        Check ok button in new file name window is visible
        :param visible: check visible status(True or False).
        :return: True if visible is Equal else False.
        """
        return self.newfilename_window.newfilename_window_check_ok_button_visible(
            self.sym_names.newfilename_window_ok_button, visible)

    def newfilename_window_click_ok_button(self):
        """
        Click on ok button in "new file name window".
        :param sym_name: Symbolic name of ok button in "new file name window".
        :return: True if succeed.
        """
        return self.newfilename_window.newfilename_window_click_ok_button(self.sym_names.newfilename_window_ok_button)

    def newfilename_window_check_ok_button_text(self, text):
        """
        Check ok button text in "new file name window".
        :param text: text to compare with ok button text.
        :return: True if ok button text is equal to expected text else False.
        """
        return self.newfilename_window.newfilename_window_check_ok_button_text(
            self.sym_names.newfilename_window_ok_button,
            text)

    # ################## online / connected controller information ###################################################

    def check_expand_collapse_online_controller_info_button_is_enabled(self, status=True):
        """
        Check status of 'online controller info collapse' button is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        self.connected_controller.check_expand_collapse_online_controller_info_button_is_enabled(
            self.sym_names.online_controller_deviceinfo_button, status)

    def check_connected_controller_info_button_is_enabled(self, status=True):
        """
        Check status of 'connected controller info' button is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.connected_controller.check_connected_controller_info_button_is_enabled(
            self.sym_names.online_controller_deviceinfo_button, status)

    def check_online_controller_image_is_fadeout(self, fadeout):
        """
        Check online controller image is fadeout.
        :param fadeout: boolean True to check fadeout or False to check full visiblity.
        :return: True if fadeout expect is equal to opacity value else False.
        """
        return self.connected_controller.check_online_controller_image_is_fadeout(
            self.sym_names.online_controller_WPFControl, fadeout)

    def click_on_connected_controller_info_button(self):
        """
        Click on "connected controller info button" in project window.
        :return: True if click is successful else False.
        """
        return self.connected_controller.click_on_connected_controller_info_button(
            self.sym_names.online_controller_deviceinfo_button)

    def check_expand_collapse_online_controller_info_button_is_visible(self, status=True):
        """
        Check status of 'online controller info collapse' button is visible.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        self.connected_controller.check_expand_collapse_online_controller_info_button_is_visible(
            self.sym_names.online_controller_deviceinfo_button, status)

    def check_connected_controller_info_button_is_visible(self, status=True):
        """
        Check status of 'connected controller info' button is visible.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        return self.connected_controller.check_connected_controller_info_button_is_visible(
            self.sym_names.online_controller_deviceinfo_button, status)

    def online_get_variant_text(self):
        """
        Get online controller variant name.
        :return: string text of controller.
        """
        return self.connected_controller.online_get_variant_text(self.sym_names.online_controller_variant_name)

    def check_online_variant_text(self, variant_name):
        """
        Check online/connected controller variant name.
        :param variant_name : string name to check with the connected controller variant name.
        :return: True if string is equal else false.
        """
        return self.connected_controller.check_online_variant_text(self.sym_names.online_controller_variant_name,
                                                                   variant_name)

    def online_get_controller_code_number(self):
        """
        get controller codenumber string from project window.
        :return: string
        """
        return self.connected_controller.online_get_controller_code_number(
            self.sym_names.online_controller_variant_CodeNumber_Label)

    def check_online_controller_code_number(self, codenumber_text):
        """
        Check online/connected controller code number.
        :param codenumber_text : string of code number to check
        :return: True if string is equal else false.
        """
        return self.connected_controller.check_online_controller_code_number(
            self.sym_names.online_controller_variant_CodeNumber_Label, codenumber_text)
    
    def connected_controller_check_controller_code_number_is_visible(self,visible=True):
        """
        Check "controller code number " is visible in Connected Controller window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        
        return self.connected_controller.connected_controller_check_controller_code_number_is_visible(self.sym_names.online_controller_variant_CodeNumber_Label,visible)
    
    def connected_controller_check_controller_code_number_is_enabled(self,status=True):
        """
        Check "controller code number " is enabled in Connected Controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        
        return self.connected_controller.connected_controller_check_controller_code_number_is_enabled(self.sym_names.online_controller_variant_CodeNumber_Label,status)
    
    def connected_controller_check_software_version_is_visible(self,visible=True):
        """
        Check "software version" is visible in Connected Controller window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        
        return self.connected_controller.connected_controller_check_software_version_is_visible(self.sym_names.online_controller_variant_application_Label,visible)
    
    def connected_controller_check_software_version_is_enabled(self,status=True):
        """
        Check "software version" is enabled in Connected Controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        
        return self.connected_controller.connected_controller_check_software_version_is_enabled(self.sym_names.online_controller_variant_application_Label,status)
    
    def check_online_software_version(self, software_version_text):
        """
        Check online/connected controller software version.
        :param software_version_text : string of software version to check
        :return: True if string is equal else false.
        """
        return self.connected_controller.check_online_software_version(
            self.sym_names.online_controller_variant_application_Label, software_version_text)
        
    def online_get_software_version_number(self):
        """
        get online controller software string from project window.
        :return: string
        """
        return self.connected_controller.online_get_software_version_number(
            self.sym_names.online_controller_variant_SW_Version_Label)

    def check_online_software_version_number(self, software_version_text):
        """
        Check online/connected controller software version number.
        :param software_version_text : string of software version  to check
        :return: True if string is equal else false.
        """
        return self.connected_controller.check_online_software_version_number(
            self.sym_names.online_controller_variant_SW_Version_Label, software_version_text)

    def online_get_controller_image(self):
        """
        get online controller image from project window.
        :return: string
        """
        return self.connected_controller.online_get_controller_image(
            self.sym_names.online_controller_variant_Product_Image)

    def check_online_controller_image(self, image_path, window = None):
        """
        Check online controller image
        :param image_path: image to compare with UI.
        :return: True - image is equal , False - Image is different
        """
        if window == None:
            sym = self.sym_names.online_controller_variant_Product_Image
        elif window == "chartWindow":
            sym = self.sym_names.uIChart_imgproductright_Image
            
        return self.connected_controller.check_online_controller_image(sym, image_path)
            

    def get_online_controller_details(self, controller_family):
        """
        Get online controller details
        :param controller_family: controller family name.
        :return: True - image is equal , False - Image is different
        """
        return self.connected_controller.get_project_detail_values(
            self.sym_names.project_window_sym_online_controller_details, controller_family)

    def check_online_controller_loading_image_is_visible(self, visible=True, timeout=60):
        """
        Project window check visiblity of unconnected or wating to controller connection image
        :param visible: To check visiblity
        :param timeout: maximum time to wait for object visible.
        :return:
        """
        sym = self.sym_names.online_controller_WPFControl
        return self.connected_controller.check_online_controller_loading_image_is_visible(sym, visible, timeout)

    def check_online_controller_is_visible(self, controller_family, visible=True, timeout=60):
        """
        Check online connected controller is visible.
        :param controller_family: controller family name.
        :param visible: Visiblity option to check visiblity.
        :param timeout: Maximum time to wait for Objects visible.
        :return: True - image is equal , False - Image is different
        """
        return self.connected_controller.check_online_controller_is_visible(
            list(self.sym_names.project_window_sym_online_controller_details[controller_family].values()),
            visible,            
            timeout)

    def Check_status_text_of_online_connecting_controller(self, text):
        """
        Get status message text from connecting controller status bar.
        :return: string text from status label.
        """
        return self.CommonFunction.Check_status_text_of_online_connecting_controller(
            self.sym_names.online_controller_txtstatus_Label, text)

    def check_status_msg_of_online_controller(self, sts_msg):
        """
        Check status message from connected controller status bar.
        :param sts_msg: status message to check with label text.
        :return: boolean True if string equal to expected text else False.
        """
        return self.connected_controller.check_status_msg_of_online_controller(
            self.sym_names.online_controller_txtstatus_Label, sts_msg)

    def compare_connected_controller_info_button_tooltip(self, tooltip_text):
        """
        In Project window  Compare tooltip text of connected controller info(i) button
        :param tooltip_text: string to check with tooltip
        :return: True if text is Equal else False.
        """
        sym_name = self.sym_names.online_controller_deviceinfo_button
        return self.connected_controller.compare_connected_controller_info_button_tooltip(sym_name, tooltip_text)
    
    def connected_controller_check_non_compliant_controller_label_is_visible(self,visible=True):
        """
        Check "non compliant controller" status message of connected controller  is visible in Connected Controller window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        
        return self.connected_controller.connected_controller_check_non_compliant_controller_label_is_visible(self.sym_names.online_controller_txtstatus_Label,visible)
    
    def connected_controller_check_non_compliant_controller_label_is_enabled(self,status=True):
        """
        Check "non compliant controller" status message of connected controller  is enabled in Connected Controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        
        return self.connected_controller.connected_controller_check_non_compliant_controller_label_is_enabled(self.sym_names.online_controller_txtstatus_Label,status)
    
    def connected_controller_check_non_compliant_controller_label_text(self,text):
        
        """
        check "non compliant controller" text in Connected Controller window.
        :param text: testData to compare.
        :return: True if text is Equal else False.
        """
        return self.connected_controller.connected_controller_check_non_compliant_controller_label_text(self.sym_names.online_controller_txtstatus_Label,text)

    def connected_controller_get_color_of_non_compliant_controller_label(self):
        """
        Get text color from "non compliant controller" status message in Connected Controller window.
        :return: list of rgb colors of status message
        """
        
        return self.connected_controller.connected_controller_get_color_of_non_compliant_controller_label(self.sym_names.online_controller_txtstatus_Label)

    def connected_controller_importing_controller_model_progress_label_is_visible(self, visible=True):
        """
        verify the "Importing controller model" progress label is visible in Connected Controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.connected_controller.connected_controller_importing_controller_model_progress_label_is_visible(self.sym_names.import_controller_model_progress_label, visible)    
        
    def connected_controller_importing_controller_model_progress_label_is_enabled(self, status=True):
        """
        verify the "Importing controller model" progress label is enabled in Connected Controller window
        :param status: boolean status value True or False.
        :return: True if progress label is enabled value is equal to status else False
        """
        return self.connected_controller.connected_controller_importing_controller_model_progress_label_is_enabled(self.sym_names.import_controller_model_progress_label, status)    
        
    def connected_controller_check_importing_controller_model_progress_label_text(self, text):
        """
        check "Importing controller model" progress label text in Connected Controller window
        :param text:testData to compare
        :return:True if succeeds
        """
        return self.connected_controller.connected_controller_check_importing_controller_model_progress_label_text(self.sym_names.import_controller_model_progress_label, text) 

# ######################## connected controller information end ######################################################

    def Print_Paramter_Sheet_window_is_visible(self, visible=True):
        """
        check the Print Paramter Sheet window visible
        :param visible: check visible status(True or False).
        """
        sym_name_list = list()
        sym_name_list.append(self.sym_names.print_window_Toolbar)
        sym_name_list.append(self.sym_names.print_window_Toolbar_nextpage)
        sym_name_list.append(self.sym_names.print_window_Toolbar_lastpage)
        sym_name_list.append(self.sym_names.print_window_Toolbar_previouspage)
        sym_name_list.append(self.sym_names.print_window_Toolbar_firstpage)
        sym_name_list.append(self.sym_names.print_window_ToolbarItem_export)
        sym_name_list.append(self.sym_names.print_window_print_button)
        sym_name_list.append(self.sym_names.print_window_FormsControl)
        self.CommonFunction.Print_Paramter_Sheet_window_is_visible(sym_name_list, visible)

    def Print_Paramter_Sheet_window_click_on_Export_button(self):
        """
        Click on "Export" button in Print Paramter Sheet window.
        :return: True if click is successful else False.
        """
        return self.CommonFunction.Print_Paramter_Sheet_window_click_on_Export_button(
                                                            self.sym_names.print_window_ToolbarItem_export)

    def Print_Paramter_Sheet_window_click_on_Export_as_Word_button(self):
        """
        Click on "Export as Word" button in Print Paramter Sheet window.
        :return: True if click is successful else False.
        """
        return self.CommonFunction.Print_Paramter_Sheet_window_click_on_Export_as_Word_button(
                                                            self.sym_names.print_window_Toolbar_Export_word)
    
    def Print_Paramter_Sheet_window_click_on_Export_as_Excel_button(self):
        """
        Click on "Export as Excel" button in Print Paramter Sheet window.
        :return: True if click is successful else False.
        """
        return self.CommonFunction.Print_Paramter_Sheet_window_click_on_Export_as_Excel_button(
                                                            self.sym_names.print_window_Toolbar_Export_Excel)
        
    def Print_Paramter_Sheet_window_click_on_Export_as_PDF_button(self):
        """
        Click on "Export as PDF" button in Print Paramter Sheet window.
        :return: True if click is successful else False.
        """
        return self.CommonFunction.Print_Paramter_Sheet_window_click_on_Export_as_PDF_button(
                                                            self.sym_names.print_window_Toolbar_Export_PDF)

    def Print_Paramter_Sheet_window_click_on_zoom_button(self):
        """
        Click on "Zoom" button in Print Paramter Sheet window.
        :return: True if click is successful else False.
        """
        return self.CommonFunction.Print_Paramter_Sheet_window_click_on_zoom_button(
                                                            self.sym_names.print_window_Toolbar_zoom_combobox)

    def Print_Paramter_Sheet_window_click_on_Next_page_button(self):
        """
        Click on "Next Page" button in Print Paramter Sheet window.
        :return: True if click is successful else False.
        """
        return self.CommonFunction.Print_Paramter_Sheet_window_click_on_Next_page_button(
                                                            self.sym_names.print_window_Toolbar_nextpage)
        
    def Print_Paramter_Sheet_window_click_on_Last_page_button(self):
        """
        Click on "Last Page" button in Print Paramter Sheet window.
        :return: True if click is successful else False.
        """
        return self.CommonFunction.Print_Paramter_Sheet_window_click_on_Last_page_button(
                                                            self.sym_names.print_window_Toolbar_lastpage)
        
    def Print_Paramter_Sheet_window_click_on_Previous_page_button(self):
        """
        Click on "Previous Page" button in Print Paramter Sheet window.
        :return: True if click is successful else False.
        """
        return self.CommonFunction.Print_Paramter_Sheet_window_click_on_Previous_page_button(
                                                            self.sym_names.print_window_Toolbar_previouspage)
        
    def Print_Paramter_Sheet_window_click_on_First_page_button(self):
        """
        Click on "First Page" button in Print Paramter Sheet window.
        :return: True if click is successful else False.
        """
        return self.CommonFunction.Print_Paramter_Sheet_window_click_on_zoom_button(
                                                            self.sym_names.print_window_Toolbar_firstpage)

    def Print_Paramter_Sheet_window_enter_page_number(self):
        """
        Enter "Page Number" in Print Paramter Sheet window.
        :return: True if click is successful else False.
        """
        return self.CommonFunction.Print_Paramter_Sheet_window_enter_page_number(
                                                            self.sym_names.print_window_page_Edit, 3)

    def Print_Paramter_Sheet_window_get_max_page_number(self):
        """
        Get " Max Page Number" in Print Paramter Sheet window.
        :return: string
        """
        return self.CommonFunction.Print_Paramter_Sheet_window_get_max_page_number(
                                                            self.sym_names.print_window_maxpage_number)    

    def Print_Paramter_Sheet_window_click_on_Print_button(self):
        """
        Click on "Print" button in Print Paramter Sheet window.
        :return: True if click is successful else False.
        """
        return self.CommonFunction.Print_Paramter_Sheet_window_click_on_Print_button(
                                                            self.sym_names.print_window_print_button)

    def Preferences_window_check_X_button_text(self, text):
        """
        Verify the "X" button text in Preferences window.
        :param text:text to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_check_X_button_text(
                                                            self.sym_names.preference_Window_close_Button, text)  
        
    def Preferences_window_check_header_text(self, text):
        """
        Verify the "header" label text in Preferences window.
        :param text:text to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_check_header_text(
                                                            self.sym_names.preference_Window_Title_Label, text)


    def Preferences_window_check_save_button_text(self, text):
        """
        verify the "Save" Label text in Preferences window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_check_save_button_text(
                                                            self.sym_names.preference_Window_Save_Button, text)  
        
        
    def Preferences_window_check_cancel_button_text(self, text):
        """
        verify the "Cancel" Label text in Preferences window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_check_cancel_button_text(
                                                            self.sym_names.preference_Window_Cancel_Button, text)  
        
    def Preferences_window_check_onlyForAKCC_label_text(self, text):
        """
        verify the "Only for AK-CC55" Label text in Preferences window
        :param text:testData to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_check_onlyForAKCC_label_text(
                                                            self.sym_names.preference_Window_LangAKCC_Label, text)  

    def Preferences_window_check_Language_label_text(self, text):
        """
        verify the "Language" Label text in Preferences window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_check_Language_label_text(
                                                            self.sym_names.preference_Window_Languages_Label, text)
        

    def Preferences_window_check_Unit_label_text(self, text):
        """
        verify the "Unit" Label text in Preferences window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_check_Unit_label_text(
                                                            self.sym_names.preference_Window_Unit_Label, text)


    def Preferences_window_check_Baudrate_label_text(self, text):
        """
        verify the "Baudrate" Label text in Preferences window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_check_Baudrate_label_text(
                                                            self.sym_names.preference_Window_Baudrate_Label, text)
        
    def Preferences_window_check_SaveFilesOn_label_text(self, text):
        """
        verify the "Save Files On" Label text in Preferences window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_check_SaveFilesOn_label_text(
                                                            self.sym_names.preference_Window_SaveFileson_Label, text)
        

    def Preferences_window_check_UsePasswordProtection_label_text(self, text):
        """
        verify the "Use Password Protection" Label text in Preferences window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_check_UsePasswordProtection_label_text(
                                                            self.sym_names.preference_Window_PasswordEnable_CheckBox, text)  
        
    def Preferences_window_check_Password_label_text(self, text):
        """
        verify the "Password" Label text in Preferences window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_check_Password_label_text(
                                                            self.sym_names.preference_Window_password_Label, text)    
        
    def Preferences_window_check_Confirm_Password_label_text(self, text):
        """
        verify the "Confirm Password" Label text in Preferences window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_check_Confirm_Password_label_text(
                                                            self.sym_names.preference_Window_confirm_password_label, text)
        
    def Preferences_window_check_Password_casesensitive_label_text(self, text):
        """
        verify the "Password are case sensitive" Label text in Preferences window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_check_Password_casesensitive_label_text(
                                                            self.sym_names.preference_Window_pwd_case_sensitive_Label, text)

    def Preferences_window_Show_Password_label_text(self, text):
        """
        verify the "Show Password" Label text in Preferences window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_Show_Password_label_text(
                                                            self.sym_names.preference_Window_ShowPassword_CheckBox, text)
        
    def Preferences_window_Browse_button_text(self, text):
        """
        verify the "Browse button "  text in Preferences window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_Browse_button_text(
                                                            self.sym_names.preference_Window_btnBrowse_Button, text)
        
    def Preferences_window_check_X_button_tooltip(self, tooltip_text):
        """
        verify the "X"  button tooltip in preferences window
        :param tooltip_text: X button tooltip text
        :return:True if succeeds
        """
        self.Preferenceswindow.Preferences_window_check_X_button_tooltip(self.sym_names.preference_Window_close_Button,
                                                                    tooltip_text)
        
    def Preferences_window_check_filepath_tooltip(self, tooltip_text):
        """
        verify the "filepath"  button tooltip in preferences window
        :param tooltip_text: filepath editor tooltip text
        :return:True if succeeds
        """
        self.Preferenceswindow.Preferences_window_check_filepath_tooltip(self.sym_names.preference_Window_FilePath_Edit,
                                                                    tooltip_text)

    def Preferences_window_is_Enabled(self, status=True):
        """
        Check the "Preferences" window labels are enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.preference_Window)
        sym_names_list.append(self.sym_names.preference_Window_Title_Label)
        sym_names_list.append(self.sym_names.preference_Window_close_Button)
        sym_names_list.append(self.sym_names.preference_Window_Languages_Label)
        sym_names_list.append(self.sym_names.preference_Window_Languages_ComboBox)
        sym_names_list.append(self.sym_names.preference_Window_SaveFileson_Label)
        sym_names_list.append(self.sym_names.preference_Window_FilePath_Edit)
        sym_names_list.append(self.sym_names.preference_Window_LangAKCC_Label)
        sym_names_list.append(self.sym_names.preference_Window_Unit_Label)
        sym_names_list.append(self.sym_names.preference_Window_Unitconverter_ComboBox)
        sym_names_list.append(self.sym_names.preference_Window_Baudrate_Label)
        sym_names_list.append(self.sym_names.preference_Window_Baudrate_ComboBox)
        sym_names_list.append(self.sym_names.preference_Window_PasswordEnable_CheckBox)
        sym_names_list.append(self.sym_names.preference_Window_btnBrowse_Button)
        sym_names_list.append(self.sym_names.preference_Window_Save_Button)
        sym_names_list.append(self.sym_names.preference_Window_Cancel_Button)
        return self.Preferenceswindow.Preferences_window_is_Enabled(sym_names_list, status)
    
    def Preferences_window_is_visible(self, visible=True):
        """
        verify the "Preferences" window labels are visible in Preferences window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.preference_Window)
        sym_names_list.append(self.sym_names.preference_Window_Title_Label)
        sym_names_list.append(self.sym_names.preference_Window_close_Button)
        sym_names_list.append(self.sym_names.preference_Window_Languages_Label)
        sym_names_list.append(self.sym_names.preference_Window_Languages_ComboBox)
        sym_names_list.append(self.sym_names.preference_Window_SaveFileson_Label)
        sym_names_list.append(self.sym_names.preference_Window_FilePath_Edit)
        sym_names_list.append(self.sym_names.preference_Window_Unit_Label)
        sym_names_list.append(self.sym_names.preference_Window_Unitconverter_ComboBox)
        sym_names_list.append(self.sym_names.preference_Window_Baudrate_Label)
        sym_names_list.append(self.sym_names.preference_Window_Baudrate_ComboBox)
        sym_names_list.append(self.sym_names.preference_Window_PasswordEnable_CheckBox)
        sym_names_list.append(self.sym_names.preference_Window_btnBrowse_Button)
        sym_names_list.append(self.sym_names.preference_Window_Save_Button)
        sym_names_list.append(self.sym_names.preference_Window_Cancel_Button)
        return self.Preferenceswindow.Preferences_window_is_visible(sym_names_list, visible)
    
    def Preference_window_return_existence_of_window(self):
        """
        Return the existence of preference window.
        :return: True if exists or False Otherwise.
        
        """
        
        return self.Preferenceswindow.Preference_window_return_existence_of_window(self.sym_names.preference_Window)

    def Preferences_window_check_password_label_is_visible(self, visible=True):
        """
        verify the "Password" label is visible in Preferences window
        :param visible: check visible status(True or False).
        :return:True if succeeds.
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.preference_Window_password_Label)
        sym_names_list.append(self.sym_names.preference_Window_Password_Edit)
        sym_names_list.append(self.sym_names.preference_Window_pwd_case_sensitive_Label)
        sym_names_list.append(self.sym_names.preference_Window_ShowPassword_CheckBox)
        self.Preferenceswindow.Preferences_window_check_password_label_is_visible(sym_names_list, visible)        

    def Preferences_window_check_Only_for_AKCC55_label_is_visible(self, visible=True):
        """
        verify the "Only for AK-CC55 " label is visible in Preferences window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        self.Preferenceswindow.Preferences_window_check_Only_for_AKCC55_label_is_visible(
                                                        self.sym_names.preference_Window_AKCCLang_Label, visible)

    def Preferences_window_check_confirm_password_label_is_visible(self, visible=True):
        """
        verify the "Confirm Password" label is visible in Preferences window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.preference_Window_password_Label)
        sym_names_list.append(self.sym_names.preference_Window_Password_Edit)
        sym_names_list.append(self.sym_names.preference_Window_pwd_case_sensitive_Label)
        sym_names_list.append(self.sym_names.preference_Window_ShowPassword_CheckBox)
        return self.Preferenceswindow.Preferences_window_check_confirm_password_label_is_visible(sym_names_list, visible)
        

    def Preferences_window_get_List_of_Languages(self, list_items):
        """
        Check list of "Languages" present in the list box of preference window.
        :param list_items: list of text to compare in list box.
        :return: True if list is equal else False
        """
        return self.Preferenceswindow.Preferences_window_get_List_of_Languages(
                                                    self.sym_names.preference_Window_Languages_ComboBox, list_items)
    
    
    def Preferences_window_select_languange_from_List_of_Languages(self, Language):
        """
        Select Language in Preferences window Languages listbox in preference window.
        :param Language: string Language.
        :return: boolean True if Language has selected successfully else False.
        """

        return self.Preferenceswindow.Preferences_window_select_languange_from_List_of_Languages(
                                                            self.sym_names.preference_Window_Languages_ComboBox, Language)
        

    def Preferences_window_select_Units_from_List_of_Units(self, Unit):
        """
        Select Unit in Preferences window Units listbox in preference window.
        :param Unit: string Unit.
        :return: boolean True if Unit has selected successfully else False.
        """
        return self.Preferenceswindow.Preferences_window_select_Units_from_List_of_Units(
                                                    self.sym_names.preference_Window_Unitconverter_ComboBox, Unit)
        

    def Preferences_window_get_List_of_Units(self, list_items):
        """
        Check list of "Units" present in the list box of preference window.
        :param list_items: list of text to compare in list box.
        :return: True if list is equal else False
        """
        return self.Preferenceswindow.Preferences_window_get_List_of_Units(
                                                    self.sym_names.preference_Window_Unitconverter_ComboBox, list_items)

    def Preferences_window_get_List_of_Baudrate(self):
        """
        get list of "Baudrate" present in the list box of preference window.
        :return: True if list is equal else False
        """

        return self.Preferenceswindow.Preferences_window_get_List_of_Baudrate(
                                                self.sym_names.preference_Window_Baudrate_ComboBox)
        
    def Preferences_window_chk_Default_List_of_Baudrate(self, list_items):
        """
        Check default list of "Baudrate" present in the list box of preference window.
        :param list_items: list of text to compare in list box.
        :return: True if list is equal else False
        """
        return self.Preferenceswindow.Preferences_window_chk_default_List_of_Baudrate(
                                                self.sym_names.preference_Window_Baudrate_ComboBox, list_items)
    def Preferences_window_select_Baudrate_from_List_of_Baudrates(self, Baudrate):
        """
        Select Baudrate in Preferences window Baudrate listbox in preference window.
        :param Baudrate: string Baudrate.
        :return: boolean True if Baudrate has selected successfully else False.
        """
        return self.Preferenceswindow.Preferences_window_select_Baudrate_from_List_of_Baudrates(
                                                    self.sym_names.preference_Window_Baudrate_ComboBox, Baudrate)

    def Preferences_window_click_X_button(self):
        """
        Click on close button(X mark button) in Preferences window.
        :return: True if succeed
        """
        return self.Preferenceswindow.Preferences_window_click_X_button(
                                                    self.sym_names.preference_Window_close_Button)
        

    def Preferences_window_click_Save_button(self):
        """
        Click on "Save" button in Preferences window.
        :return: True if succeed
        """
        return self.Preferenceswindow.Preferences_window_click_Save_button(
                                                    self.sym_names.preference_Window_Save_Button)
        

    def Preferences_window_click_cancel_button(self):
        """
        Click on "Cancel" button in Preferences window.
        :return: True if succeed
        """
        return self.Preferenceswindow.Preferences_window_click_cancel_button(
                                                    self.sym_names.preference_Window_Cancel_Button)


    def Preferences_window_click_Browse_button(self):
        """
        Click on "Browse button "  in Preferences window.
        :return: True if succeed
        """
        return self.Preferenceswindow.Preferences_window_click_Browse_button(
                                                    self.sym_names.preference_Window_btnBrowse_Button)

    def Preferences_window_click_password_protection_checkbox(self):
        """
        Click on "Password Protection" checkbox in Preferences window.
        :return: True if succeed
        """
        return self.Preferenceswindow.Preferences_window_click_password_protection_checkbox(
                                                    self.sym_names.preference_Window_PasswordEnable_CheckBox)
    
    def Preferences_window_deselect_password_protection_checkbox(self):
        """
        Deselect the Password Protection checkbox in Preference window.
        :return: True if succeeds.
        """
        return self.Preferenceswindow.Preferences_window_deselect_password_protection_checkbox(self.sym_names.preference_Window_PasswordEnable_CheckBox)

    def Preferences_window_click_Show_password_checkbox(self):
        """
        Click on "Password Protection" checkbox in Preferences window.
        :return: True if succeed
        """
        return self.Preferenceswindow.Preferences_window_click_Show_password_checkbox(
                                    self.sym_names.preference_Window_ShowPassword_CheckBox)

    def Preferences_window_enter_password(self, password):
        """
        Writing the Password in preference window.
        :param password:Desired Password to set.
        :return: True if succeed
        """
        return self.Preferenceswindow.Preferences_window_enter_password(
                                                                self.sym_names.preference_Window_Password_Edit, password)
        

    def Preferences_window_enter_confirm_password(self, password):
        """
        Writing the Password for Confirmation in preference window.
        :param password:Password to reconfirm.
        :return: True if succeed
        """
        sym_name = self.sym_names.preference_Window_ConfirmPwd_Edit
        return self.Preferenceswindow.Preferences_window_enter_confirm_password(sym_name, password)
    
        
    def Preferences_window_check_default_password(self, password):
        """
        Get the default "Password" from Preferences window.
        :param password:default password 
        :return: password
        """
        return self.Preferenceswindow.Preferences_window_check_default_password(
                                                    self.sym_names.preference_Window_Password_Edit, password)

    def Preferences_window_check_default_confirm_password(self, password):
        """
        Get default "Confirm Password" information from Preferences window.
        :param password:default confirm password 
        :return: Confirm Password
        """
        return self.Preferenceswindow.Preferences_window_check_default_confirm_password(
                                                        self.sym_names.preference_Window_ConfirmPwd_Edit, password)
        
    def Preferences_window_get_default_Language(self, Language):
        """
        Get "Default Language" from Preferences window.
        :param Language:Language to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_get_default_Language(
                                                        self.sym_names.preference_Window_Languages_ComboBox, Language)  


    def Preferences_window_get_default_Unit(self, Unit):
        """
        Get "Default Unit" from Preferences window.
        :param Unit:Unit to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_get_default_Unit(
                                                            self.sym_names.preference_Window_Unitconverter_ComboBox, Unit) 

    def Preferences_window_get_default_Baudrate(self, Baudrate):
        """
        Get "Default Baudrate" from Preferences window.
        :param Baudrate:Baudrate to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_get_default_Baudrate(
                                                            self.sym_names.preference_Window_Baudrate_ComboBox, Baudrate) 
        
    def Preferences_window_get_default_FilePath(self, FilePath):
        """
        Get "Default Language" from Preferences window.
        :param FilePath:FilePath to compare
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_get_default_FilePath(
                                                            self.sym_names.preference_Window_FilePath_Edit, FilePath)
        
    def Preferences_window_get_FilePath(self):
        """
        Get the "FilePath" from the Preferences window.
        :return: FilePath.
        """
        return self.Preferenceswindow.Preferences_window_get_FilePath(
                                                            self.sym_names.preference_Window_FilePath_Edit)

    def Preferences_window_get_Password(self):
        """
        Get the "Password" from the Preferences window.
        :return: Password.
        """
        return self.Preferenceswindow.Preferences_window_get_Password(
                                        self.sym_names.preference_Window_Password_Edit)

    def Preferences_window_Browse_dialog_create_and_select_new_folder(self, Path):
        """
        select the New folder in Browse dialog from  Preference Window.
        :param Path:path to select.
        :return: Password.
        """
        return self.Preferenceswindow.Preferences_window_Browse_dialog_create_and_select_new_folder(
                                        self.sym_names.preference_Window_browse_window, Path)

    
    def Preferences_window_Browse_dialog_select_special_character_named_folder(self, Path):
        """
        select the special character named folder in Browse dialog from Preference Window.
        :param Path:path to select.
        :return: Password.
        """
        return self.Preferenceswindow.Preferences_window_Browse_dialog_select_special_character_named_folder(
                                        self.sym_names.preference_Window_browse_window, Path)

    def Preferences_window_get_Password(self):
        """
        Get the "Password" from the Preferences window.
        :return: Password.
        """
        return self.Preferenceswindow.Preferences_window_get_Password(
                                        self.sym_names.preference_Window_Password_Edit)

    def Preferences_window_get_confirm_password(self):
        """
        Get the " Confirm Password" from the Preferences window.
        :return: Password.
        """
        return self.Preferenceswindow.Preferences_window_get_confirm_password(
                                        self.sym_names.preference_Window_ConfirmPwd_Edit) 
 
    def Preferences_window_get_selected_Language(self):
        """
        Get "selected Language" from Preferences window.
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_get_selected_Language(
                                                        self.sym_names.preference_Window_Languages_ComboBox)

    def Preferences_window_get_selected_Unit(self):
        """
        Get "selected Unit" from Preferences window.
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_get_selected_Unit(
                                                            self.sym_names.preference_Window_Unitconverter_ComboBox) 

    def Preferences_window_get_selected_Baudrate(self):
        """
        Get "selected Baudrate" from Preferences window.
        :return:True if succeeds
        """
        return self.Preferenceswindow.Preferences_window_get_selected_Baudrate(
                                                            self.sym_names.preference_Window_Baudrate_ComboBox) 
        
    def click_cancel_button_in_preference_window(self):
        """
        Clicks cancel button in preference window.
        :return: True if succeeds.
        
        """
        return self.Preferenceswindow.click_cancel_button_in_preference_window(
                                                                self.sym_names.preference_Window_Cancel_Button)

    def get_the_path_from_preference_window(self):
        """
        Gets the path from preference window.
        :return: Path as String.
        
        """
        return self.Preferenceswindow.get_the_path_from_preference_window(
                                                        self.sym_names.preference_Window_FilePath_Edit)
               
    def Password_window_check_default_user(self, User):
        """
        Get the default "User" from Password window.
        :param User:Default User to compare
        :return: password
        """
        return self.PasswordWindow.Password_window_check_default_user(
                                                    self.sym_names.password_popup_user_Edit, User)   
    
    def Password_window_enter_password(self, password):
        """
        Writing the "Password" in Password window.
        :param password:Desired Password to set.
        :return: True if succeed
        """
        return self.PasswordWindow.Password_window_enter_password(
                                                        self.sym_names.password_popup_Password_Edit, password)
        
    def Password_window_click_Ok_Button(self):
        """
        Click on "Ok" button in Password window.
        :return: True if succeed
        """
        return self.PasswordWindow.Password_window_click_Ok_Button(
                                                    self.sym_names.password_popup_Ok_Button)
        
    def Password_window_click_Cancel_Button(self):
        """
        Click on "Cancel" button in Password window.
        :return: True if succeed
        """
        return self.PasswordWindow.Password_window_click_Cancel_Button(
                                                    self.sym_names.password_popup_Close_Button)

    def Password_window_check_Cancel_Button_text(self, text):
        """
        verify the "Cancel" button text in Password window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.PasswordWindow.Password_window_check_Cancel_Button_text(
                                                            self.sym_names.password_popup_Close_Button, text)

    def Password_window_check_Ok_Button_text(self, text):
        """
        verify the "Ok" button text in Password window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.PasswordWindow.Password_window_check_Ok_Button_text(
                                                            self.sym_names.password_popup_Ok_Button, text)
        
    def Password_window_check_Show_Password_label_text(self, text):
        """
        verify the "Show Password" label text in Password window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.PasswordWindow.Password_window_check_Show_Password_label_text(
                                                            self.sym_names.password_popup_ShowPassword_CheckBox, text)

    def Password_window_check_CaseSensitive_label_text(self, text):
        """
        verify the "CaseSensitive" label text in Password window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.PasswordWindow.Password_window_check_CaseSensitive_label_text(
                                                            self.sym_names.password_popup_case_sensitive_label, text)

    def Password_window_check_Password_label_text(self, text):
        """
        verify the "Password" label text in Password window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.PasswordWindow.Password_window_check_Password_label_text(
                                                            self.sym_names.password_popup_password_label, text)
        

    def Password_window_check_User_label_text(self, text):
        """
        verify the "Password" label text in Password window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.PasswordWindow.Password_window_check_User_label_text(
                                                            self.sym_names.password_popup_user_Label, text)

    def Password_window_check_close_button_text(self, text):
        """
        verify the "X" button text in Password window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.PasswordWindow.Password_window_check_close_button_text(
                                                            self.sym_names.password_popup_cancel_button, text)   
        

    def Password_window_check_header_text(self, text):
        """
        verify the "header" label text in Password window
        :param text:text to compare
        :return:True if succeeds
        """
        return self.PasswordWindow.Password_window_check_header_text(
                                                            self.sym_names.password_popup_change_user_title, text)
 
    def Password_window_is_Enabled(self, status=True):
        """
        Check the "Password" window labels are enabled or disabled.
        :param status: boolean status value True or False.
        :return:True if success
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.password_popup)
        sym_names_list.append(self.sym_names.password_popup_change_user_title)
        sym_names_list.append(self.sym_names.password_popup_cancel_button)
        sym_names_list.append(self.sym_names.password_popup_user_Label)
        sym_names_list.append(self.sym_names.password_popup_user_Edit)
        sym_names_list.append(self.sym_names.password_popup_password_label)
        sym_names_list.append(self.sym_names.password_popup_Password_Edit)
        sym_names_list.append(self.sym_names.password_popup_case_sensitive_label)
        sym_names_list.append(self.sym_names.password_popup_ShowPassword_CheckBox)
        sym_names_list.append(self.sym_names.password_popup_Ok_Button)
        sym_names_list.append(self.sym_names.password_popup_Close_Button)
        return self.PasswordWindow.Password_window_is_Enabled(sym_names_list, status)

    def Password_window_is_visible(self, visible=True):
        """
        verify the "Password" window labels are visible
        :param visible: check visible status(True or False).
        :return:True if success
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.password_popup)
        sym_names_list.append(self.sym_names.password_popup_change_user_title)
        sym_names_list.append(self.sym_names.password_popup_cancel_button)
        sym_names_list.append(self.sym_names.password_popup_user_Label)
        sym_names_list.append(self.sym_names.password_popup_user_Edit)
        sym_names_list.append(self.sym_names.password_popup_password_label)
        sym_names_list.append(self.sym_names.password_popup_Password_Edit)
        sym_names_list.append(self.sym_names.password_popup_case_sensitive_label)
        sym_names_list.append(self.sym_names.password_popup_ShowPassword_CheckBox)
        sym_names_list.append(self.sym_names.password_popup_Ok_Button)
        sym_names_list.append(self.sym_names.password_popup_Close_Button)
        return self.PasswordWindow.Password_window_is_visible(sym_names_list, visible)
 
    def Password_window_get_user_information(self):
        """
        Get "User" information from Password window.
        :return:User
        """
        return self.PasswordWindow.Password_window_get_user_information(
                                                                    self.sym_names.password_popup_user_Edit)

    def Password_window_get_password_information(self):
        """
        Get "Password" information from Password window.
        :return: Password
        """
        return self.PasswordWindow.Password_window_get_password_information(
                                                                self.sym_names.password_popup_Password_Edit)
        
    def Password_window_enter_user(self, user):
        """
        Writing the "User" in Password window.
        :param user:Desired user to set.
        :return: True if succeed
        """
        return self.PasswordWindow.Password_window_enter_user(
                                                  self.sym_names.password_popup_user_Edit, user)

    def Password_window_click_Show_password_checkbox(self):
        """
        Click on "Show Password" checkbox in Password window.
        :return: True if succeed
        """
        return self.PasswordWindow.Password_window_click_Show_password_checkbox(
                                                                    self.sym_names.password_popup_ShowPassword_CheckBox)
    def Password_window_enter_password(self, Password):
        """
        Writing the "Password" in Password window.
        :param password:Desired Password to set.
        :return: True if succeed
        """
        return self.PasswordWindow.Password_window_enter_password(
                                                  self.sym_names.password_popup_Password_Edit, Password)
          
    def Preferences_window_clear_password(self):
        """
         Remove the Password for Confirmation in preference window.
        :return: True if succeed
        """
        sym_name = self.sym_names.preference_Window_Password_Edit
        return self.Preferenceswindow.Preferences_window_clear_password(sym_name)
    
    def Preferences_window_clear_confirm_password(self):
        """
         Remove the Confirm Password for Confirmation in preference window.
        :return: True if succeed
        """
        sym_name = self.sym_names.preference_Window_ConfirmPwd_Edit
        return self.Preferenceswindow.Preferences_window_clear_confirm_password(sym_name)

    def popup_messagebox_window_click_InController_button(self, window):
        """
       Click on "InController" button in Factory reset popup window
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.windowfactoryreset_btnInController_Button
        else:
            sym = None
        return self.popup_message.popup_messagebox_window_click_InController_button(sym)
    
    def popup_messagebox_window_check_InController_button_isEnabled(self, window,status=True):
        """
        Check "InController" button is enabled in Factory reset popup window
        :param window:window to validate
        :param status: boolean status value True or False.
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_InController_Button
        else:
            sym = None
        return self.popup_message.popup_messagebox_window_check_InController_button_isEnabled(sym,status)

    def popup_messagebox_window_click_InProject_button(self, window):
        """
        Click "InProject" button in Factory reset popup window
        :param window:window to validate
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_InProject_Button
        else:
            sym = None
        return self.popup_message.popup_messagebox_window_click_InProject_button(sym)
    
    def popup_messagebox_window_check_InProject_button_isEnabled(self, window,status=True):
        """
        Check "InProject" button is enabled in Factory reset popup window
        :param window:window to validate
        :param status: boolean status value True or False.
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_InProject_Button
        else:
            sym = None
        return self.popup_message.popup_messagebox_window_check_InProject_button_isEnabled(sym,status)

    def Copy_to_controller_check_title_text(self, text):
        """
        verify the "COPY TO CONTROLLER" label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_title_text(
                                                   self.sym_names.copytocontroller_Label, text) 

    def Copy_to_controller_check_select_file_text(self, text):
        """
        verify the "Select File" label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_select_file_text(
                                                   self.sym_names.copytocontroller_selectfile_Label, text) 
        

    def Copy_to_controller_check_browse_button_text(self, text):
        """
        verify the "Browse Button " label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_browse_button_text(
                                                   self.sym_names.copytocontroller_filebrowse_Button, text)       
        
        
        
    def Copy_to_controller_check_please_connect_controller_text(self, text):
        """
        verify the "Please connect a controller" label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_please_connect_controller_text(
                                                   self.sym_names.copytocontroller_pleaseconnectCocontroller_Label, text) 
        
        
    def Copy_to_controller_check_sinlgle_multi_contr_prgm_text(self, text):
        """
        verify the "Single or Multiple controller programming" label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_sinlgle_multi_contr_prgm_text(
                                                   self.sym_names.copytocontroller_Singleormultiple_Label, text)   
        
        
    def Copy_to_controller_check_single_controller_prgm_text(self, text):
        """
        verify the "Single controller programming" label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_single_controller_prgm_text(
                                                   self.sym_names.copytocontroller_Single_RadioButton, text) 
        
        
    def Copy_to_controller_check_multiple_controller_prgm_text(self, text):
        """
        verify the "Multiple controller programming" label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_multiple_controller_prgm_text(
                                                   self.sym_names.copytocontroller_Multiple_RadioButton, text)   
        
        
    def Copy_to_controller_check_start_label_text(self, text):
        """
        verify the "Start" label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_start_label_text(
                                                   self.sym_names.copytocontroller_Start_Text_label, text)      
     
    def Copy_to_controller_check_fav_files_label_text(self, text):
        """
        verify the "Favourite Files" label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_fav_files_label_text(
                                                   self.sym_names.copytocontroller_fav_title, text)
        
        
    def Copy_to_controller_check_project_name_label_text(self, text):
        """
        verify the "Project Name" label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_project_name_label_text(
                                                   self.sym_names.copytocontroller_fav_projectname_Label, text)      
        
    def Copy_to_controller_check_project_path_label_text(self, text):
        """
        verify the "Project Path" label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_project_path_label_text(
                                                   self.sym_names.copytocontroller_fav_projectpath_Label, text) 
        
    def Copy_to_controller_check_controller_type_label_text(self, text):
        """
        verify the "Controller Type" label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_controller_type_label_text(
                                                   self.sym_names.copytocontroller_fav_controllertype_Label, text) 
        
    def Copy_to_controller_check_Action_label_text(self, text):
        """
        verify the "Actions" label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_Action_label_text(
                                                   self.sym_names.copytocontroller_fav_action_Label, text) 
        
    def Copy_to_controller_check_set_counter_label_text(self, text):
        """
        verify the "Set Counter" label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_set_counter_label_text(
                                                   self.sym_names.copytocontroller_setcounter_Label, text)
        
    def Copy_to_controller_check_countUp_timer_label_text(self, text):
        """
        verify the "CountUp Timer" label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_countUp_timer_label_text(
                                                   self.sym_names.copytocontroller_countUp_RadioButton, text)
        
        
    def Copy_to_controller_check_countDown_timer_label_text(self, text):
        """
        verify the "CountDown Timer" label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_countDown_timer_label_text(
                                                   self.sym_names.copytocontroller_countDown_RadioButton, text)
        
        
    def Copy_to_controller_check_counter_label_text(self, text):
        """
        verify the "Counter" label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_counter_label_text(
                                                   self.sym_names.copytocontroller_Counter_Label, text)
        
    def Copy_to_controller_check_default_counter_value(self, countervalue):
        """
        Check the default counter value in Copy to controller window
        :param countervalue:countervalue to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_default_counter_value(
                                                   self.sym_names.copytocontroller_Counter_Number_Label, countervalue)
        
    def Copy_to_controller_check_copying_settings_progress_label_text(self, text):
        """
        verify the "Copying Settings in progress" label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_copying_settings_progress_label_text(
                                                   self.sym_names.copytocontroller_copying_Status_Label, text)
        
        
    def Copy_to_controller_check_set_as_fav_button_text(self, text):
        """
        verify the "Set As Favourite" button text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_set_as_fav_button_text(
                                                   self.sym_names.copytocontroller_SetAsFavourite_Button, text)
        
    def Copy_to_controller_check_controller_connecting_label_text(self, text):
        """
        verify the "Controller Connecting" label text in Copy to controller window
        :param text:text to compare
        :return:True if success
        """
        return self.Copytocontroller.Copy_to_controller_check_controller_connecting_label_text(
                                                   self.sym_names.copytocontroller_controllerconnecting_Label, text)
        
    def Copy_to_controller_check_title_visible(self, visible=True):
        """
        verify the copy to controller "Title" is visible in  copy to controller window.
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_title_visible(
                                                            self.sym_names.copytocontroller_Label, visible)

    def Copy_to_controller_check_select_file_visible(self, visible=True):
        """
        verify the "Select File" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_select_file_visible(
                                                            self.sym_names.copytocontroller_selectfile_Label, visible)

    def Copy_to_controller_check_browse_button_visible(self, visible=True):
        """
        verify the "Browse Button " label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_browse_button_visible(
                                                            self.sym_names.copytocontroller_filebrowse_Button, visible)

    def Copy_to_controller_check_please_connect_controller_visible(self, visible=True):
        """
        verify the "Please connect a controller" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_please_connect_controller_visible(
                                                        self.sym_names.copytocontroller_pleaseconnectCocontroller_Label, visible)
        
    def Copy_to_controller_check_sinlgle_multi_contr_prgm_visible(self, visible=True):
        """
        verify the "Single or Multiple controller programming" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_sinlgle_multi_contr_prgm_visible(
                                                            self.sym_names.copytocontroller_Singleormultiple_Label, visible)
        
    def Copy_to_controller_check_sinlgle_controller_prgm_visible(self, visible=True):
        """
        verify the "Single controller programming" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_sinlgle_controller_prgm_visible(
                                                            self.sym_names.copytocontroller_Single_RadioButton, visible)

    def Copy_to_controller_check_multiple_controller_prgm_visible(self, visible=True):
        """
        verify the "Multiple controller programming" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_multiple_controller_prgm_visible(
                                                            self.sym_names.copytocontroller_Multiple_RadioButton, visible)
        
    def Copy_to_controller_check_start_label_visible(self, visible=True):
        """
        verify the "Start" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_start_label_visible(
                                                            self.sym_names.copytocontroller_Start_Text_label, visible)
        
    def Copy_to_controller_check_fav_files_label_visible(self, visible=True):
        """
        verify the "Favourite Files" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_fav_files_label_visible(
                                                            self.sym_names.copytocontroller_fav_title, visible)    
        
    def Copy_to_controller_check_project_name_label_visible(self, visible=True):
        """
        verify the "Project Name" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_project_name_label_visible(
                                                            self.sym_names.copytocontroller_fav_projectname_Label, visible)
        
    def Copy_to_controller_check_project_path_label_visible(self, visible=True):
        """
        verify the "Project Path" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_project_path_label_visible(
                                                            self.sym_names.copytocontroller_fav_projectpath_Label, visible)
        
    def Copy_to_controller_check_controller_type_label_visible(self, visible=True):
        """
        verify the "Controller Type" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_controller_type_label_visible(
                                                            self.sym_names.copytocontroller_fav_controllertype_Label, visible)
        
    def Copy_to_controller_check_Action_label_visible(self, visible=True):
        """
        verify the "Actions" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_Action_label_visible(
                                                            self.sym_names.copytocontroller_fav_action_Label, visible)

    def Copy_to_controller_check_set_counter_label_visible(self, visible=True):
        """
        verify the "Set Counter" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_set_counter_label_visible(
                                                            self.sym_names.copytocontroller_setcounter_Label, visible)
    
    def Copy_to_controller_check_countUp_timer_label_visible(self, visible=True):
        """
        verify the "CountUp Timer" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_countUp_timer_label_visible(
                                                            self.sym_names.copytocontroller_countUp_RadioButton, visible)
        
    def Copy_to_controller_check_countDown_timer_label_visible(self, visible=True):
        """
        verify the "CountDown Timer" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_countDown_timer_label_visible(
                                                            self.sym_names.copytocontroller_countDown_RadioButton, visible)
        
    def Copy_to_controller_check_default_counter_label_visible(self, visible=True):
        """
        verify the "Default Counter" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_default_counter_label_visible(
                                                            self.sym_names.copytocontroller_Counter_Number_Label, visible)
        
    def Copy_to_controller_check_copying_settings_progress_label_visible(self, visible=True):
        """
        verify the "Copying Settings in progress" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_copying_settings_progress_label_visible(
                                                            self.sym_names.copytocontroller_copying_Status_Label, visible)
        
    def Copy_to_controller_check_set_as_fav_button_label_visible(self, visible=True):
        """
        verify the "Set As Favourite" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_set_as_fav_button_label_visible(
                                                            self.sym_names.copytocontroller_SetAsFavourite_Button, visible)
    
    def Copy_to_controller_check_fav_table_is_visible(self, visible=True):
        """
        verify the "Favourite Files" table is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_fav_table_is_visible(self.sym_names.copytocontroller_fav_Table, visible)

    def Copy_to_controller_check_controller_connecting_label_visible(self, visible=True):
        """
        verify the "Controller Connecting" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_controller_connecting_label_visible(
                                                    self.sym_names.copytocontroller_controllerconnecting_Label, visible)

    def Copy_to_controller_check_title_Enabled(self, status=True):
        """
        verify the "Title" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_title_Enabled(
                                                            self.sym_names.copytocontroller_Label, status)

    def Copy_to_controller_check_select_file_Enabled(self, status=True):
        """
        verify the "Select File" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_select_file_Enabled(
                                                            self.sym_names.copytocontroller_selectfile_Label, status)

    def Copy_to_controller_check_browse_button_Enabled(self, status=True):
        """
        verify the "Browse Button " label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_browse_button_Enabled(
                                                            self.sym_names.copytocontroller_filebrowse_Button, status)

    def Copy_to_controller_check_please_connect_controller_Enabled(self, status=True):
        """
        verify the "Please connect a controller" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_please_connect_controller_Enabled(
                                                            self.sym_names.copytocontroller_pleaseconnectCocontroller_Label, status)

    def Copy_to_controller_check_sinlgle_multi_contr_prgm_Enabled(self, status=True):
        """
        verify the "Single or Multiple controller programming" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_sinlgle_multi_contr_prgm_Enabled(
                                                            self.sym_names.copytocontroller_Singleormultiple_Label, status)

    def Copy_to_controller_check_sinlgle_controller_prgm_Enabled(self, status=True):
        """
        verify the "Single controller programming" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_sinlgle_controller_prgm_Enabled(
                                                            self.sym_names.copytocontroller_Single_RadioButton, status)


    def Copy_to_controller_check_multiple_controller_prgm_Enabled(self, status=True):
        """
        verify the "Multiple controller programming" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_multiple_controller_prgm_Enabled(
                                                            self.sym_names.copytocontroller_Multiple_RadioButton, status)

    def Copy_to_controller_check_start_label_Enabled(self, status=True):
        """
        verify the "Start" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_start_label_Enabled(
                                                            self.sym_names.copytocontroller_Start_Text_label, status)
        
    def Copy_to_controller_check_fav_files_label_Enabled(self, status=True):
        """
        verify the "Favourite Files" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_fav_files_label_Enabled(
                                                            self.sym_names.copytocontroller_fav_title, status)

    def Copy_to_controller_check_project_name_label_Enabled(self, status=True):
        """
        verify the "Project Name" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_project_name_label_Enabled(
                                                            self.sym_names.copytocontroller_fav_projectname_Label, status)
    
    def Copy_to_controller_check_project_path_label_Enabled(self, status=True):
        """
        verify the "Project Path" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_project_path_label_Enabled(
                                                            self.sym_names.copytocontroller_fav_projectpath_Label, status)
    
    def Copy_to_controller_check_controller_type_label_Enabled(self, status=True):
        """
        verify the "Controller Type" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_controller_type_label_Enabled(
                                                            self.sym_names.copytocontroller_fav_controllertype_Label, status)
        
    def Copy_to_controller_check_Action_label_Enabled(self, status=True):
        """
        verify the "Actions" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_Action_label_Enabled(
                                                            self.sym_names.copytocontroller_fav_action_Label, status)


    def Copy_to_controller_check_set_counter_label_Enabled(self, status=True):
        """
        verify the "Set Counter" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_set_counter_label_Enabled(
                                                            self.sym_names.copytocontroller_setcounter_Label, status)
        
    def Copy_to_controller_check_countUp_timer_label_Enabled(self, status=True):
        """
        verify the "CountUp Timer" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_countUp_timer_label_Enabled(
                                                            self.sym_names.copytocontroller_countUp_RadioButton, status)

    def Copy_to_controller_check_countDown_timer_label_Enabled(self, status=True):
        """
        verify the "CountDown Timer" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_countDown_timer_label_Enabled(
                                                        self.sym_names.copytocontroller_countDown_RadioButton, status)

    def Copy_to_controller_check_counter_label_Enabled(self, status=True):
        """
        verify the "Counter" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_counter_label_Enabled(
                                                            self.sym_names.copytocontroller_Counter_Label, status)

    def Copy_to_controller_check_default_counter_label_Enabled(self, status=True):
        """
        verify the "Default Counter" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_default_counter_label_Enabled(
                                                    self.sym_names.copytocontroller_Counter_Number_Label, status)
        
    def Copy_to_controller_check_copying_settings_progress_label_Enabled(self, status=True):
        """
        verify the "Copying Settings in progress" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_copying_settings_progress_label_Enabled(
                                                            self.sym_names.copytocontroller_copying_Status_Label, status)
        
    def Copy_to_controller_check_set_as_fav_button_label_Enabled(self, status=True):
        """
        verify the "Set As Favourite" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_set_as_fav_button_label_Enabled(
                                                        self.sym_names.copytocontroller_SetAsFavourite_Button, status)
        
    def Copy_to_controller_check_fav_table_is_enabled(self, status=True):
        """
        verify the "Favourite Files" table is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_fav_table_is_enabled(self.sym_names.copytocontroller_fav_Table, status) 

    def Copy_to_controller_check_controller_connecting_label_Enabled(self, status=True):
        """
        verify the "Controller Connecting" label is enabled or disabled in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_controller_connecting_label_Enabled(
                                                    self.sym_names.copytocontroller_controllerconnecting_Label, status)

    def Copy_to_controller_click_Browse_button(self):
        """
        Click on "Browse Button " button in Preferences window.
        :return: True if succeed
        """
        return self.Copytocontroller.Copy_to_controller_click_Browse_button(
                                                    self.sym_names.copytocontroller_filebrowse_Button)
    def Copy_to_controller_click_Set_As_Fav_button(self):
        """
        Click on "Set As Favourite" button in Preferences window.
        :return: True if succeed
        """
        return self.Copytocontroller.Copy_to_controller_click_Set_As_Fav_button(
                                                    self.sym_names.copytocontroller_SetAsFavourite_Button)

    def Copy_to_controller_click_info_button(self):
        """
        Click on "Project Information(i button)" button in copy to controller window.
        :return: True if succeed
        """
        return self.Copytocontroller.Copy_to_controller_click_info_button(
                                                    self.sym_names.online_controller_deviceinfo_button)
        
    def Copy_to_controller_click_delete_fav_file_button(self):
        """
        Click on "deleting the Fav file" button in copy to controller window.
        :return: True if succeed
        """
        return self.Copytocontroller.Copy_to_controller_click_delete_fav_file_button(
                                                    self.sym_names.copytocontroller_fav_Delete_Button)
        
    def Copy_to_controller_click_single_controller_pgm_button(self):
        """
        Click on "Single Controller Programming" button in copy to controller window.
        :return: True if succeed
        """
        return self.Copytocontroller.Copy_to_controller_click_single_controller_pgm_button(
                                                    self.sym_names.copytocontroller_Single_RadioButton)

    def Copy_to_controller_click_multiple_controller_pgm_button(self):
        """
        Click on "Multiple Controller Programming" button in copy to controller window.
        :return: True if succeed
        """
        return self.Copytocontroller.Copy_to_controller_click_multiple_controller_pgm_button(
                                                    self.sym_names.copytocontroller_Multiple_RadioButton)
        
    def Copy_to_controller_click_count_Up_timer_button(self):
        """
        Click on "Count Up timer" button in copy to controller window.
        :return: True if succeed
        """
        return self.Copytocontroller.Copy_to_controller_click_count_Up_timer_button(
                                                    self.sym_names.copytocontroller_countUp_RadioButton)
        
    def Copy_to_controller_click_count_down_timer_button(self):
        """
        Click on "Count Down timer" button in copy to controller window.
        :return: True if succeed
        """
        return self.Copytocontroller.Copy_to_controller_click_count_down_timer_button(
                                                    self.sym_names.copytocontroller_countDown_RadioButton)

    def Copy_to_controller_click_start_button(self):
        """
        Click on "start" button in copy to controller window.
        :return: True if succeed
        """
        return self.Copytocontroller.Copy_to_controller_click_start_button(
                                                    self.sym_names.copytocontroller_start_Button)

    def Copy_to_controller_click_reset_button(self):
        """
        Click on "reset" button in copy to controller window.
        :return: True if succeed
        """
        return self.Copytocontroller.Copy_to_controller_click_reset_button(
                                                    self.sym_names.copytocontroller_Counter_Reset_Button)

    def Copy_to_controller_enter_set_counter(self, counter):
        """
        Writing the "Set Counter" in Password window.
        :param counter:Desired user to set.
        :return: True if succeed
        """
        return self.Copytocontroller.Copy_to_controller_enter_set_counter(
                                                  self.sym_names.copytocontroller_setcounter_Edit, counter)

    def Copy_to_controller_get_counter_value(self):
        """
        Get "Counter" value from Copy to controller window.
        :return: Password
        """
        return self.Copytocontroller.Copy_to_controller_get_counter_value(
                                                                self.sym_names.copytocontroller_Counter_Number_Label)
        
    def Copy_to_controller_check_default_counter_value(self, Counter):
        """
        Get the default "Counter Value" from Copy to controller window.
        :param Counter:default Counter 
        :return: Counter
        """
        return self.Copytocontroller.Copy_to_controller_check_default_counter_value(
                                                    self.sym_names.copytocontroller_Counter_Number_Label, Counter)

    def Copy_to_controller_check_default_set_counter_value(self, Set_Counter):
        """
        Get the default "Set Counter Value" from Copy to controller window.
        :param Set_Counter:default Set_Counter 
        :return: Set_Counter
        """
        return self.Copytocontroller.Copy_to_controller_check_default_set_counter_value(
                                                    self.sym_names.copytocontroller_setcounter_Edit, Set_Counter)
   
    def Copy_to_controller_select_fav_file_in_fav_table(self, project_name):
        """
        Select the file from the favorite table in Copy to the controller window.
        :param project_name:project name to be selected in favorite grid
        :return: True if success
        """
        return self.Copytocontroller.Copy_to_controller_select_fav_file_in_fav_table(
                                self.sym_names.copytocontroller_fav_Table, project_name)
 
    def Copy_to_controller_delete_fav_file_in_fav_table(self, Project_name):
        """
        Delete file from the favorite table in Copy to controller window. 
        :return: True if success
        """
        return self.Copytocontroller.Copy_to_controller_delete_fav_file_in_fav_table(
                                self.sym_names.copytocontroller_fav_Table, Project_name)


    def Copy_to_controller_check_single_controller_prgmng_Is_Selected(self):
        """
        Check the single programming controller radio button is selected or not
        :return:True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_single_controller_prgmng_Is_Selected(
                                self.sym_names.copytocontroller_Single_RadioButton) 

    def copy_to_controller_get_browsed_project_details(self):
        """
        Verify the Browsed file information in copy to controller window.
        :return: Browsed file information
        """
        controllervariant = self.copy_to_controller_get_variant_name_from_project_details()
        controller_family = KoolProg_verify.GetFamily[controllervariant[:4]]
        return self.CommonFunction.get_UI_information_as_key_value(
            self.sym_names.copy_to_controller_product_details_labels_text_value, controller_family)

    def Copy_to_controller_get_fav_files_list_in_fav_table(self):
        """
        Get favorite files from the favorite table in Copy to controller window.
        :return: True if success
        """
        return self.Copytocontroller.Copy_to_controller_get_fav_files_list_in_fav_table(
                                self.sym_names.copytocontroller_fav_Table) 
        
    def copy_to_controller_get_variant_name_from_project_details(self):
        """
        Get the controller variant name from the project details 
        """
        return self.Copytocontroller.copy_to_controller_get_variant_name_from_project_details(
                                        self.sym_names.copytocontroller_ProductInfoName0_Value)
 
    def Copy_to_controller_get_variant_name(self):
        """
        Get "Variant" name from Copy to controller window.
        :return: variant name
        """
        return self.Copytocontroller.Copy_to_controller_get_variant_name(
                                self.sym_names.copytocontroller_ProductInfoName0_Value)
    
    def Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_is_visible(self,visible=True):
        """
        Check firmwareupdate is password protected label in firmware password of copy to controller window is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_is_visible(self.sym_names.firmwarePassword_Firmware_update_is_password_protected_Label,visible)
    
    def Copy_to_controller_check_firmwarePassword_ok_button_is_visible(self,visible=True):
        """
        Check ok button in firmware password of copy to controller window is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_ok_button_is_visible(self.sym_names.firmwarePassword_OK_Button,visible)
    
    def Copy_to_controller_check_firmwarePassword_X_button_is_visible(self,visible=True):
        """
        Check X button in firmware password of copy to controller window is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_X_button_is_visible(self.sym_names.firmwarePassword_X_Button,visible)
    
    def Copy_to_controller_check_firmwarePassword_cancel_button_is_visible(self,visible=True):
        """
        Check cancel button in firmware password of copy to controller window is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_cancel_button_is_visible(self.sym_names.firmwarePassword_cancel_Button,visible)
    
    def Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_is_visible(self,visible=True):
        """
        Check password is case sensitive label in firmware password of copy to controller window is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_is_visible(self.sym_names.firmwarePassword_Password_is_case_sensitive_Label,visible)
    
    def Copy_to_controller_check_firmwarePassword_header_Label_is_visible(self,visible=True):
        """
        Check header label in firmware password of copy to controller window is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_header_Label_is_visible(self.sym_names.firmwarepassword_header_Label,visible)
    
    def Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_is_visible(self,visible=True):
        """
        Check enter koolprog password label in firmware password of copy to controller window is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_is_visible(self.sym_names.firmwarePassword_Enter_koolprog_password_label,visible)
    
    def Copy_to_controller_check_firmwarePassword_password_Label_is_visible(self,visible=True):
        """
        Check password label in firmware password of copy to controller window is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_password_Label_is_visible(self.sym_names.firmwarePassword_password_Label,visible)
    
    def Copy_to_controller_check_firmwarePassword_password_editbox_is_visible(self,visible=True):
        """
        Check password editbox in firmware password of copy to controller window is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_password_editbox_is_visible(self.sym_names.firmwarePassword_password_Edit,visible)
    
    def Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_is_enabled(self,status=True):
        """
        Check firmwareupdate is password protected label in firmware password of copy to controller window is enabled.
        :param status: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_is_enabled(self.sym_names.firmwarePassword_Firmware_update_is_password_protected_Label,status)
    
    def Copy_to_controller_check_firmwarePassword_ok_button_is_enabled(self,status=True):
        """
        Check ok button in firmware password of copy to controller window is enabled.
        :param status: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_ok_button_is_visible(self.sym_names.firmwarePassword_OK_Button,status)
    
    def Copy_to_controller_check_firmwarePassword_X_button_is_enabled(self,status=True):
        """
        Check X button in firmware password of copy to controller window is enabled.
        :param status: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_X_button_is_enabled(self.sym_names.firmwarePassword_X_Button,status)
    
    def Copy_to_controller_check_firmwarePassword_cancel_button_is_enabled(self,status=True):
        """
        Check cancel button in firmware password of copy to controller window is enabled.
        :param status: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_cancel_button_is_enabled(self.sym_names.firmwarePassword_cancel_Button,status)
    
    def Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_is_enabled(self,status=True):
        """
        Check password is case sensitive label in firmware password of copy to controller window is enabled.
        :param status: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_is_enabled(self.sym_names.firmwarePassword_Password_is_case_sensitive_Label,status)
    
    def Copy_to_controller_check_firmwarePassword_header_Label_is_enabled(self,status=True):
        """
        Check header label in firmware password of copy to controller window is enabled.
        :param status: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_header_Label_is_enabled(self.sym_names.firmwarepassword_header_Label,status)
    
    def Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_is_enabled(self,status=True):
        """
        Check enter koolprog password label in firmware password of copy to controller window is enabled.
        :param status: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_is_enabled(self.sym_names.firmwarePassword_Enter_koolprog_password_label,status)
    
    def Copy_to_controller_check_firmwarePassword_password_Label_is_enabled(self,status=True):
        """
        Check password label in firmware password of copy to controller window is enabled.
        :param status: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_password_Label_is_enabled(self.sym_names.firmwarePassword_password_Label,status)
    
    def Copy_to_controller_check_firmwarePassword_password_editbox_is_enabled(self,status=True):
        """
        Check password editbox in firmware password of copy to controller window is enabled.
        :param status: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_password_editbox_is_enabled(self.sym_names.firmwarePassword_password_Edit,status)
    
    def Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_text(self,text):
        """
        Check text of firmwareupdate is password protected label in firmware password of copy to controller window.
        :param text: testData to compare
        :return: True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_text(self.sym_names.firmwarePassword_Firmware_update_is_password_protected_Label, text)
    
    def Copy_to_controller_check_firmwarePassword_ok_button_text(self,text):
        """
        Check text of ok button in firmware password of copy to controller window.
        :param text: testData to compare
        :return: True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_ok_button_text(self.sym_names.firmwarePassword_OK_Button,text)
    
    def Copy_to_controller_check_firmwarePassword_X_button_text(self,text):
        """
        Check text of X button in firmware password of copy to controller window.
        :param text: testData to compare
        :return: True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_X_button_text(self.sym_names.firmwarePassword_X_Button,text)
    
    def Copy_to_controller_check_firmwarePassword_cancel_button_text(self,text):
        """
        Check text of cancel button in firmware password of copy to controller window.
        :param text: testData to compare
        :return: True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_cancel_button_text(self.sym_names.firmwarePassword_cancel_Button,text)
    
    def Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_text(self,text):
        """
        Check text of password is case sensitive label in firmware password of copy to controller window.
        :param text: testData to compare
        :return: True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_text(self.sym_names.firmwarePassword_Password_is_case_sensitive_Label,text)
    
    def Copy_to_controller_check_firmwarePassword_header_Label_text(self,text):
        """
        Check text of header label in firmware password of copy to controller window.
        :param text: testData to compare
        :return: True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_header_Label_text(self.sym_names.firmwarepassword_header_Label,text)
    
    def Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_text(self,text):
        """
        Check text of enter koolprog password label in firmware password of copy to controller window.
        :param text: testData to compare
        :return: True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_text(self.sym_names.firmwarePassword_Enter_koolprog_password_label,text)
    
    def Copy_to_controller_check_firmwarePassword_password_Label_text(self,text):
        """
        Check text of password label in firmware password of copy to controller window
        :param text: testData to compare
        :return: True if succeeds
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_password_Label_text(self.sym_names.firmwarePassword_password_Label,text)
    
    def Copy_to_controller_firmwarePassword_click_cancel_button(self):
        """
        Click on "Cancel" Button in firmware password of copy to controller window.
        :return: True if button is present and clicked else False
        """
        return self.Copytocontroller.Copy_to_controller_firmwarePassword_click_cancel_button(
                                            self.sym_names.firmwarePassword_cancel_Button)
     
    def Copy_to_controller_firmwarePassword_click_X_button(self):
        """
        Click on "X" Button in firmware password of copy to controller window.
        :return: True if button is present and clicked else False
        """
        return self.Copytocontroller.Copy_to_controller_click_firmwarePassword_X_button(
                                            self.sym_names.firmwarePassword_X_Button)
        
    def Copy_to_controller_firmwarePassword_click_ok_button(self):
        """
        Click on "Ok" Button in firmware password of copy to controller window.
        :return: True if button is present and clicked else False
        """
        return self.Copytocontroller.Copy_to_controller_click_firmwarePassword_ok_button(
                                            self.sym_names.firmwarePassword_OK_Button)   
    
    def Copy_to_controller_check_firmwarePassword_tooltip_of_X_button(self, tooltip):
        """
        In Copy to controller window : Compare tooltip text of X button
        :param tooltip: string to check with tooltip
        :return: True if text is Equal else False.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_tooltip_of_X_button(self.sym_names.firmwarePassword_X_Button, tooltip)
    
    def Copy_to_controller_set_text_in_password_editbox(self, password):
        """
        Set password text in password editbox of copytocontroller window.
        :param password : String of password
        :return: True if succeeds.
        """
        return self.Copytocontroller.Copy_to_controller_set_text_in_password_editbox(self.sym_names.firmwarePassword_password_Edit, password)
    
    def Copy_to_controller_check_firmwarePassword_password(self,password):
        """
        Check the password of firmwarePassword in copy to controller window.
        :param password: Password to compare.
        return: True if succeeds.
        """
        return self.Copytocontroller.Copy_to_controller_check_firmwarePassword_password(self.sym_names.firmwarePassword_password_Edit, password)
    
    def Copy_to_controller_firmwarePassword_validate_special_character(self):
        """
        Check the special characters in password of firmwarePassword in copy to controller window.
        return: True if succeeds.
        """
        return self.Copytocontroller.Copy_to_controller_firmwarePassword_validate_special_character(self.sym_names.firmwarePassword_password_Edit)
    
    def copy_to_controller_check_text_and_checkbox_of_mainswitch_isVisible(self,visible=True):
        
        """
        check if the text and checkbox of set mainswitch off after copying is visible or not.
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.Copytocontroller.copy_to_controller_check_text_and_checkbox_of_mainswitch_isVisible(self.sym_names.koolProg_Set_Main_Switch_ON_after_copying_CheckBox,visible)
    
    def copy_to_controller_check_text_and_checkbox_of_mainswitch_is_enabled(self,status=True):
        
        """
        check if the checkbox of set mainswitch off after copying is enabled or not in Copytocontroller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        
        """
        return self.Copytocontroller.copy_to_controller_check_text_and_checkbox_of_mainswitch_is_enabled(self.sym_names.koolProg_Set_Main_Switch_ON_after_copying_CheckBox,status)
    
    def copy_to_controller_click_mainswitch_checkbox(self):
        
        """
        Click on "Set mainswitch on after copying" checkbox in Copytocontroller window.
        :return: True if succeeds
        """
        return self.Copytocontroller.copy_to_controller_click_mainswitch_checkbox(self.sym_names.koolProg_Set_Main_Switch_ON_after_copying_CheckBox)
    
    def copy_to_controller_mainswitch_checkbox_status(self,checked_status=True):
       
        """
        Check the status of "Set mainswitch on after copying" checkbox in Copytocontroller window.
        :param checked_status: Status of checkbox to be verified.
        :return: True if succeeds
        """
        return self.Copytocontroller.copy_to_controller_mainswitch_checkbox_status(self.sym_names.koolProg_Set_Main_Switch_ON_after_copying_CheckBox,checked_status)
    
    def copy_to_controller_check_mainswitch_checkbox(self,checked=True):
        """
        check or uncheck on "Set mainswitch on after copying" checkbox in Copytocontroller window.
        :param checked:boolean status value True or False.
        :return: True if succeeds
        """
        return self.Copytocontroller.copy_to_controller_check_mainswitch_checkbox(self.sym_names.koolProg_Set_Main_Switch_ON_after_copying_CheckBox,checked)
    
    def copy_to_controller_get_text_mainswitch_label(self):
        
        """
        Get text of mainswitch label in copy to controller window.
        :return: string of mainswitch label.
        """
        return self.Copytocontroller.copy_to_controller_get_text_mainswitch_label(self.sym_names.koolProg_Set_Main_Switch_ON_after_copying_CheckBox)
    
    def copy_to_controller_check_file_image_and_controller_product_image(self,compatible=True):
        """
        Check if the controller image from the cdf file and the controller image from online controller is same in copytocontroller window.
        :param compatible: Compatibility status (True or False)
        :return True: True if images are same,False otherwise.
        """
        return self.Copytocontroller.copy_to_controller_check_file_image_and_controller_product_image(self.sym_names.copytocontroller_Productleft_Image,self.sym_names.online_controller_variant_Product_Image,compatible)
    
    
    def copy_to_controller_check_file_variant_and_controller_variant(self,compatible=True):
        """
        Check if the controller variant from the cdf file and the controller variant from online controller is same in copytocontroller window.
        :param compatible: Compatibility status (True or False)
        :return True: True if string is equal, else False.
        """ 
        return self.Copytocontroller.copy_to_controller_check_file_variant_and_controller_variant(self.sym_names.copytocontroller_ProductInfoName0_Value,self.sym_names.online_controller_variant_name,compatible)
    
    def copy_to_controller_check_file_SW_Version_and_controller_SW_Version(self,compatible=True):
        """
        Check if the controller SW version from the cdf file and the SW version from online controller is same in copytocontroller window.
        :param compatible: Compatibility status (True or False)
        :return True: True if string is equal, else False.
        """
        return self.Copytocontroller.copy_to_controller_check_file_SW_Version_and_controller_SW_Version(self.sym_names.copytocontroller_ProductInfoName2_Value,self.sym_names.online_controller_variant_application_Label,compatible)
    
    def copy_to_controller_check_file_codeNumber_and_controller_codeNumber(self,compatible=True): 
        """
        Check if the controller code number from the cdf file and the code number from online controller is same in copytocontroller window.
        :param compatible: Compatibility status (True or False)
        :return True: True if string is equal, else False.
        """
        return self.Copytocontroller.copy_to_controller_check_file_codeNumber_and_controller_codeNumber(self.sym_names.copytocontroller_ProductInfoName1_Value,self.sym_names.online_controller_variant_CodeNumber_Label,compatible)
    
#########################################PLUG AND PLAY####################################################



    def online_service_window_chk_menu_bar_icons_Enable(self, time=10):
        """
        verify Enabled status of the menu icons in online service window
        :param time: Time to wait until the condition passes.
        :return:True if succeeds
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.project_window_Open_Button)
        sym_names_list.append(self.sym_names.project_window_SaveAs_Button)
        sym_names_list.append(self.sym_names.project_window_Home_Button)
        sym_names_list.append(self.sym_names.project_window_Title_Label)
        sym_names_list.append(self.sym_names.project_window_Printer_Button)
        sym_names_list.append(self.sym_names.homepage_menuHelp_button)
        sym_names_list.append(self.sym_names.project_window_helpexpander_Button)
        return self.OnlineServiceWindow.online_service_window_chk_menu_bar_icons_Enable(sym_names_list, time)
        
    def online_service_window_check_home_button_is_visible(self, visible=True):
        """
        Check if home button is visible in online service window.
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_home_button_is_visible(self.sym_names.project_window_Home_Button, visible)
    
    def online_service_window_check_open_button_is_visible(self, visible=True):
        """
        Check if open button is visible in online service window.
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_open_button_is_visible(self.sym_names.project_window_Open_Button, visible)
    
    def online_service_window_check_saveas_button_is_visible(self, visible=True):
        """
        Check if saveas button is visible in online service window.
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_saveas_button_is_visible(self.sym_names.project_window_SaveAs_Button, visible)
    
    def online_service_window_check_home_button_is_enabled(self, status=True):
        """
        Check if home button is enabled or disabled in online service window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_home_button_is_enabled(self.sym_names.project_window_Home_Button, status)
    
    def online_service_window_check_open_button_is_enabled(self, status=True):
        """
        Check if open button is enabled or disabled in online service window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_open_button_is_enabled(self.sym_names.project_window_Open_Button, status)
    
    def online_service_window_check_saveas_button_is_enabled(self, status=True):
        """
        Check if saveas button is enabled or disabled in online service window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_saveas_button_is_enabled(self.sym_names.project_window_SaveAs_Button, status)
    
    def online_service_window_click_home_button(self):
        """
        Click on home button in online service window.
        :return: True if succeeds.
        """
        return self.OnlineServiceWindow.online_service_window_click_home_button(self.sym_names.project_window_Home_Button)
    
    def online_service_window_click_open_button(self):
        """
        Click on open button in online service window.
        :return: True if succeeds.
        """
        return self.OnlineServiceWindow.online_service_window_click_home_button(self.sym_names.project_window_Open_Button)
    
    def online_service_window_click_saveas_button(self):
        """
        Click on saveas button in online service window.
        :return: True if succeeds.
        """
        return self.OnlineServiceWindow.online_service_window_click_home_button(self.sym_names.project_window_SaveAs_Button)
    
    def online_service_window_check_home_button_tooltip(self, tooltip):
        """
        Check the home button tooltip in online service window.
        :param tooltip: home button tooltip
        :return:True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_home_button_tooltip(self.sym_names.project_window_Home_Button, tooltip)
    
    def online_service_window_check_open_button_tooltip(self, tooltip):
        """
        Check the open button tooltip in online service window.
        :param tooltip: open button tooltip
        :return:True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_open_button_tooltip(self.sym_names.project_window_Open_Button, tooltip)
    
    def online_service_window_check_saveas_button_tooltip(self, tooltip):
        """
        Check the saveas button tooltip in online service window.
        :param tooltip: saveas button tooltip
        :return:True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_saveas_button_tooltip(self.sym_names.project_window_SaveAs_Button, tooltip)
    
    def online_service_check_chart_button_is_enabled(self, status=True):
        """
        verify the chart button is enabled or disabled in Online service window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.OnlineServiceWindow.online_service_check_chart_button_is_enabled(self.sym_names.homepage_ServiceTestMain_Button,status)
    
    def online_service_check_open_home_help_icons_are_enabled(self, time=10):
        """
        verify Enabled status of the open, home, help icons in online service window
        :param time: Time to wait until the condition passes.
        :return:True if succeeds
        
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.project_window_Open_Button)
        sym_names_list.append(self.sym_names.project_window_Home_Button)
        sym_names_list.append(self.sym_names.homepage_menuHelp_button)

        return self.OnlineServiceWindow.online_service_window_chk_menu_bar_icons_Enable(sym_names_list, time)

    def click_on_disable_button_in_KoolProg(self):
        """
        Click on disable button in KoolProg to release the COM Port.
        :return: True if succeeds
        """
        return self.portCommunication.click_on_disable_button_in_KoolProg(self.sym_names.homepage_btnDisconnect_Button)
    
    def click_on_enable_button_in_KoolProg(self):
        """
        Click on enable button in KoolProg to release the COM Port.
        :return: True if succeeds
        """
        return self.portCommunication.click_on_enable_button_in_KoolProg(
                                                self.sym_names.homepage_btnConnect_Button)
    
    def chk_please_connect_controller_label_is_visible(self, visible=True, time=5):
        """
        verify the "Please connect a controller" label is visible.
        :param visible: check visible status(True or False).
        :param time: Time it should take to wait until the condition becomes True.
        :return:True if succeeds
        
        """
        return self.CommonFunction.chk_please_connect_controller_label_is_visible(
                                        self.sym_names.online_service_please_connect_controller_label, visible, time)

    def online_service_window_visible(self, visible=True, time=5):
        """
        Verify the Online Service Window is visible.
        :param visible: check visible status(True or False).
        :param time: Time it should take to wait until the condition becomes True.
        :return:True if succeeds
        
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.homepage_Window)
        sym_names_list.append(self.sym_names.homepage_KPVersion_label)
        sym_names_list.append(self.sym_names.homepage_danfosslink_Label)
        return self.Preferenceswindow.Preferences_window_is_visible(sym_names_list, visible)

    def online_service_window_chk_please_connect_controller_label_text(self, text):
        """
        verify the "Please connect a controller" label text in Online Service Window.
        :param text:text to compare
        :return:True if success
        
        """
        return self.OnlineServiceWindow.online_service_window_chk_please_connect_controller_label_text(
                                                    self.sym_names.online_service_please_connect_controller_label, text)
        

        
    def home_window_click_copy_to_controller_button(self):
        """
        Click on "Copy to controller" Button in Main Window
        :return: True if button is present and clicked else False
        """
        return self.main_window.home_window_click_copy_to_controller_button(
                                            self.sym_names.homepage_Copytocontroller_Button)
    
        
    def check_connected_controller_online_variant_text_is_visible(self, visible=True, time=5):
        """
        Check status of 'connected controller online variant text' is visible.
        :param visible: check visible status(True or False).
        :param time: Time it should take to wait until the condition becomes True.
        :return: True if button is visible value is equal to status else False.
        """
        return self.connected_controller.check_connected_controller_online_variant_text_is_visible(
            self.sym_names.online_controller_variant_name, visible, time)
        
 
        
    def check_the_connected_controller_variant_is_enabled(self, enable=True, time=10):
        """
        check "Connected controller Variant Text" is enabled or not.
        :param enable: boolean True/False enable check value.
        :param time: maximum time to wait for window arrival".
        :return: True if check value is equal else False.
        """
        return self.connected_controller.check_the_connected_controller_variant_is_enabled(
            self.sym_names.online_controller_variant_name, enable, time)
        
    def get_UI_information_as_key_value(self):
        """
        Get connected controller information.
        :return: Connected Controller details
        """
        controllervariant = self.online_get_variant_text()
        controller_family = KoolProg_verify.GetFamily[controllervariant[:4]]
        return self.CommonFunction.get_UI_information_as_key_value(
            self.sym_names.project_window_sym_online_controller_details, controller_family)
    
    def get_UI_information_when_controller_not_connected(self, controller_family):
        """
        Get connected controller information.
        :param controller_family: Controller Family
        :return: Connected Controller details
        """
        return self.CommonFunction.get_UI_information_as_key_value(
            self.sym_names.project_window_sym_online_controller_details, controller_family)
        
    def Import_Setting_controller_model_progress_label_visible(self, visible=True):
        """
        verify the "Import Setting controller progress" label is visible in Import Setting From Controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.ImportSettingModel.Import_Setting_controller_model_progress_label_visible(
                            self.sym_names.import_setting_controller_model_Progress_Label, visible)


    def Connecting_controller_progress_label_visible(self, visible=True):
        """
        verify the "Connect controller progress" label is visible in Import Setting From Controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.ImportSettingModel.Connecting_controller_progress_label_visible(
                            self.sym_names.import_setting_controller_model_Progress_Label, visible)    
        
        
    def Import_Setting_controller_model_progress_label_text(self, text):
        """
        verify the "Import Setting controller progress" text in Import Setting From Controller window
        :param text:text to compare
        :return:True if success
        """
        return self.ImportSettingModel.Import_Setting_controller_model_progress_label_text(
                                self.sym_names.import_setting_controller_model_Progress_Label, text)

    def Connecting_controller_progress_label_text(self, text):
        """
        verify the "Connect controller progress" text in Import Setting From Controller window
        :param text:text to compare
        :return:True if success
        """
        return self.ImportSettingModel.Connecting_controller_progress_label_text(
                                self.sym_names.import_setting_controller_model_Progress_Label, text) 


    def online_service_click_chart_button(self):
        """
        Clicks chart Button in online service Window
        
        """
        self.OnlineServiceWindow.online_service_click_chart_button(self.sym_names.homepage_ServiceTestMain_Button)

    def chartWindow_chk_menu_bar_icons_Enable(self , time=10):
        """
        verify the Enabled status of menu icons  in chart window
        :param time: Time to wait till the condition passes.
        :return:True if succeeds
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.uIChart_back_Button)
        sym_names_list.append(self.sym_names.uIChart_Save_Button)
        sym_names_list.append(self.sym_names.uIChart_Printer_Button)
        sym_names_list.append(self.sym_names.UIChart_mnuHelp_button)
        self.chartWindow.chartWindow_chk_menu_bar_icons_Enable(sym_names_list, time)

    def chartWindow_chk_menu_bar_icons_Disable(self):
        """
        verify the disabled menu icons in chart window
        :return:True if succeeds
        
        """
        sym_names_list = list()
        sym_names_list.append(self.sym_names.uIChart_back_Button)
        sym_names_list.append(self.sym_names.uIChart_Save_Button)
        sym_names_list.append(self.sym_names.uIChart_Printer_Button)
        sym_names_list.append(self.sym_names.UIChart_mnuHelp_button)
        self.chartWindow.chartWindow_chk_menu_bar_icons_Disable(sym_names_list)
        
    def chartWindow_check_stop_is_Enabled(self, status=True):
        """
        Check the "stop" button is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        self.chartWindow.chartWindow_check_stop_is_Enabled(self.sym_names.uIChart_btnStop_Button, status)
        
        
    def chartWindow_check_all_Labels_are_visible(self, visible=True):
        """
        Check all labels are visible in chart Window.
        :param visible: check visible status(True or False).
        :return: True if succeeds
        
        """
        sym = list()
        sym.append(self.sym_names.uIChart_logInterval_Label)
        sym.append(self.sym_names.uIChart_LogPeriod_Label)
        sym.append(self.sym_names.uIChart_Grid_Label)
        sym.append(self.sym_names.uIChart_label_Label)
        sym.append(self.sym_names.uIChart_zoom_Label)
        self.chartWindow.chartWindow_check_all_Labels_are_visible(sym, visible)

    
    def chartWindow_click_back_button(self):
        """
         Clicks back button in Chart Window.
        :return: True if succeed.
        
        """
        return self.chartWindow.chartWindow_click_back_button(self.sym_names.uIChart_back_Button)
        
        
        
    def chartWindow_click_stop_or_start_button(self):
        """
        Clicks start/stop button in Chart Window.
        :return: True if succeed.
        
        """
        return self.chartWindow.chartWindow_click_stop_or_start_button(self.sym_names.uIChart_btnStop_Button)
        
    def check_chartWindow_is_visible(self, visible=True):
        """
        Check if Chart Window is visible or not.
        :param visible: check visible status(True or False).
        :return:True if succeeds
        
        """
        sym_list = list()
        sym_list.append(self.sym_names.uI_ChartWindow)
        sym_list.append(self.sym_names.uIChart_btnStop_Button)
        sym_list.append(self.sym_names.uIChart_logInterval_Label)
        sym_list.append(self.sym_names.uIChart_LogPeriod_Label)
        sym_list.append(self.sym_names.uIChart_logInterval_ComboBox)
        sym_list.append(self.sym_names.uIChart_LogPeriod_ComboBox)
        return self.chartWindow.check_chartWindow_is_visible(sym_list,visible)
    
    def check_open_chartWindow_is_visible(self, visible=True):
        """
        Check if Chart Window is visible or not after opening project from on-line service
        :param visible: check visible status(True or False).
        :return:True if succeeds
        
        """
        sym_list = list()
        sym_list.append(self.sym_names.uIChart_Grid_Label)
        sym_list.append(self.sym_names.uIChart_label_Label)
        sym_list.append(self.sym_names.uIChart_zoom_Label)
        sym_list.append(self.sym_names.uIChart_btnReset_Button)
        sym_list.append(self.sym_names.uIChart_labelInterval_ComboBox)
        sym_list.append(self.sym_names.uIChart_zoomLevel_ComboBox)
        sym_list.append(self.sym_names.uIChart_Grid_CheckBox)
        sym_list.append(self.sym_names.uIChart_dgParametersInfo_Table)
        sym_list.append(self.sym_names.uIChart_Printer_Button)
        return self.chartWindow.check_open_chartWindow_is_visible(sym_list,visible)

    def chartWindow_click_saveAs_button(self):
        """
        Clicks saveAs button in Chart Window.
        :return: True if succeed.
        """
        return self.chartWindow.chartWindow_click_saveAs_button(self.sym_names.uIChart_Save_Button)
    
    def chartWindow_getdisplayValue_of_FileType_in_saveAsDialog(self):
        """
        Get display value of FileType Combobox in saveAs dialog in chart Window.
        :return: String of text displayed in FileType Combobox Combobox.
        
        """
        return self.chartWindow.chartWindow_get_default_comboboxtext(self.sym_names.uIchart_saveAsDialog_FileType_ComboBox)
        
    def chartWindow_check_list_items_in_fileType_listbox(self, list_items):
        """
        Check list of items present in the list box of fileType in saveas dialog in chart Window.
        window.
        :param list_items: list of text to compare in list box.
        :return: True if list is equal else False
        """
        return self.chartWindow.chartWindow_check_list_items_in_fileType_listbox(self.sym_names.uIchart_saveAsDialog_FileType_ComboBox, list_items)
    
    def chartWindow_check_list_items_in_zoom_level_listbox(self, list_items):
        """
        Check list of items present in the list box of zoom level in chart Window.
        window.
        :param list_items: list of text to compare in list box.
        :return: True if list is equal else False
        
        """
        return self.chartWindow.chartWindow_check_list_items_in_zoom_level_listbox(self.sym_names.uIChart_zoomLevel_ComboBox, list_items)
    
    def chartWindow_check_list_items_in_label_listbox(self, list_items):
        """
        Check list of items present in the list box of label in chart Window.
        window.
        :param list_items: list of text to compare in list box.
        :return: True if list is equal else False
        """
        return self.chartWindow.chartWindow_check_list_items_in_label_listbox(self.sym_names.uIChart_labelInterval_ComboBox, list_items)
    
    def chartWindow_check_list_items_in_log_interval_listbox(self, list_items):
        """
        Check list of items present in the list box of log interval in chart Window.
        window.
        :param list_items: list of text to compare in list box.
        :return: True if list is equal else False
        
        """
        return self.chartWindow.chartWindow_check_list_items_in_log_interval_listbox(self.sym_names.uIChart_logInterval_ComboBox, list_items)
    
    def chartWindow_check_grid_checkbox(self):
        """
        Check "Grid" checkbox in chart window.
        :return: True if succeeds
        """
        return self.chartWindow.chartWindow_check_grid_checkbox(self.sym_names.uIChart_Grid_CheckBox)
    
    def chartWindow_check_grid_is_visible_in_graph_view(self, visible=True):
        """
        verify the Grid is visible in the graph in chart window.
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.chartWindow.chartWindow_check_grid_is_visible_in_graph_view(self.sym_names.UIGraph_WindowsFormsAccessibleObject_Grid, visible)

    def chartWindow_check_list_items_in_log_period_listbox(self, list_items):
        """
        Check list of items present in the list box of log period in chart Window.
        window.
        :param list_items: list of text to compare in list box.
        :return: True if list is equal else False
        """   
        return self.chartWindow.chartWindow_check_list_items_in_log_period_listbox(self.sym_names.uIChart_LogPeriod_ComboBox, list_items)
    
    def chartWindow_select_list_item_of_log_period_comboBox(self, name):
        """
        Select a given list item in log period combobox.
        :param name: name of item to be selected.
        :return:True if succeeds.
        
        """
        return self.chartWindow.chartWindow_select_list_item_of_log_period_comboBox(self.sym_names.uIChart_LogPeriod_ComboBox, name)
    
    def chartWindow_select_list_item_of_log_interval_comboBox(self, name):
        """
        Select a given list item in log interval combobox.
        :param name: name of item to be selected.
        :return:True if succeeds.
        
        """
        return self.chartWindow.chartWindow_select_list_item_of_log_period_comboBox(self.sym_names.uIChart_logInterval_ComboBox, name)
    
    def chartWindow_select_list_item_of_label_comboBox(self, name):
        """
        Select a given list item in label combobox.
        :param name: name of item to be selected.
        :return:True if succeeds.
        
        """
        return self.chartWindow.chartWindow_select_list_item_of_log_period_comboBox(self.sym_names.uIChart_labelInterval_ComboBox, name)
    
    def chartWindow_select_list_item_of_zoom_label_comboBox(self, name):
        """
        Select a given list item in zoom label combobox.
        :param name: name of item to be selected.
        :return:True if succeeds.
        
        """
        return self.chartWindow.chartWindow_select_list_item_of_log_period_comboBox(self.sym_names.uIChart_zoomLevel_ComboBox, name)
    
    
    def chartWindow_get_log_period_combobox_text(self):
        """
        Get combobox value for the log period combobox in chartWindow.
        :return: String of text displayed in log period combobox.
        """
        return self.chartWindow.chartWindow_get_log_period_combobox_text(self.sym_names.uIChart_LogPeriod_ComboBox)

    def chartWindow_get_saved_graph_path_info_text(self, text):
        """
        Get the saved graph file information in chartWindow.
        :return: Path Info
        """
        return self.chartWindow.chartWindow_get_saved_graph_path_info_text(
                                    self.sym_names.uI_WindowsFormsAccessibleObject, text)
    

    def chartWindow_get_log_interval_combobox_text(self):
        """
        Get combobox value for the log interval combobox in chartWindow.
        :return: String of text displayed in log interval combobox.
        """
        return self.chartWindow.chartWindow_get_log_interval_combobox_text(self.sym_names.uIChart_logInterval_ComboBox)
    
    
    def chartWindow_get_label_combobox_text(self):
        """
        Get combobox value for the label combobox in chartWindow.
        :return: String of text displayed in label combobox.
        """
        return self.chartWindow.chartWindow_get_label_combobox_text(self.sym_names.uIChart_labelInterval_ComboBox)
    
    
    def chartWindow_get_zoom_level_combobox_text(self):
        """
        Get combobox value for the zoom level combobox in chartWindow.
        :return: String of text displayed in zoom level combobox.
        """
        return self.chartWindow.chartWindow_get_zoom_level_combobox_text(self.sym_names.uIChart_zoomLevel_ComboBox)
    
    def chartWindow_check_save_checkbox_ischecked(self, checked_status=True):
        """
        Verify the status of save checkbox in chart window.
        :param checked_status: Status of checkbox to be verified.
        :return: True if succeeds.  
        
        """
        return self.chartWindow.chartWindow_check_save_checkbox_ischecked(self.sym_names.uIChart_saveChart_CheckBox, checked_status)
    
    def chartWindow_check_grid_checkbox_ischecked(self, checked_status=True):
        """
        Verify the status of grid checkbox in chart window.
        :param checked_status: Status of checkbox to be verified.
        :return: True if succeeds.  
        
        """
        return self.chartWindow.chartWindow_check_grid_checkbox_ischecked(self.sym_names.uIChart_Grid_CheckBox, checked_status)
    
    def chartWindow_check_headers_in_chartdataGrid(self, headers_list):
        """
        Check headers list in chart datagrid.
        :param headers_list: Headers list of chart dataGrid.
        :return: True if succeeds.
        
        """
        return self.chartWindow.chartWindow_check_headers_in_chartdataGrid(self.sym_names.uIChart_dgParametersInfo_Table, headers_list)
    
    
    def chartWindow_check_line_graph_label_is_visible(self, sym_name, visible=True):
        """
        verify the "line graph" label is visible in chart window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        return self.chartWindow.chartWindow_check_line_graph_label_is_visible(self.sym_names.uIChart_LineGraph_Label, visible)
        

    def check_the_checkbox_in_datagrid(self,groupName, parameterName, type="plot"):
        """
        Check The Checkbox in dataGrid.
        :param groupName: Group Name
        :param parameterName: Parameter Name
        :return: True if succeeds.
        """
        return self.OnlineServiceWindow.check_the_checkbox_in_datagrid(self.sym_names.prj_window_datagridParameters_Table, groupName, parameterName, type)
        
    def check_chartWindow_is_Enabled(self, status=True):
        """
        Check if Chart Window is Enabled or not.
        :param visible: check Enable status(True or False).
        :return:True if succeeds
       
        """
        sym_list = list()
        sym_list.append(self.sym_names.uI_ChartWindow)
        sym_list.append(self.sym_names.uIChart_btnStop_Button)
        sym_list.append(self.sym_names.uIChart_logInterval_Label)
        sym_list.append(self.sym_names.uIChart_LogPeriod_Label)
        sym_list.append(self.sym_names.uIChart_logInterval_ComboBox)
        sym_list.append(self.sym_names.uIChart_LogPeriod_ComboBox)
        return self.chartWindow.check_chartWindow_is_Enabled(sym_list,status)
    
    def check_open_chartWindow_is_Enabled(self, status=True):
        """
        Check if Chart Window is Enabled or not after opening chart on-line service
        :param status: check Enable status(True or False).
        :return:True if succeeds
       
        """
        sym_list = list()
        sym_list.append(self.sym_names.uIChart_Grid_Label)
        sym_list.append(self.sym_names.uIChart_label_Label)
        sym_list.append(self.sym_names.uIChart_zoom_Label)
        sym_list.append(self.sym_names.uIChart_btnReset_Button)
        sym_list.append(self.sym_names.uIChart_labelInterval_ComboBox)
        sym_list.append(self.sym_names.uIChart_zoomLevel_ComboBox)
        sym_list.append(self.sym_names.uIChart_Grid_CheckBox)
        sym_list.append(self.sym_names.uIChart_dgParametersInfo_Table)
        sym_list.append(self.sym_names.uIChart_Printer_Button)
        return self.chartWindow.check_open_chartWindow_is_Enabled(sym_list,status)
    
    def online_service_window_chk_chart_button_Enable(self, status=True):
        """
        Check if Chart button is Enabled or not in on-line service
        :param status: check Enable status(True or False).
        :return:True if succeeds
        """
        return self.OnlineServiceWindow.chk_chart_button_Enable(self.sym_names.homepage_ServiceTestMain_Button)

    def copy_to_controller_check_scroll_bar_is_enabled(self, status=True):
        """
        Check scroll bar in favorite table is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.Copytocontroller.copy_to_controller_check_scroll_bar_is_enabled(
            self.sym_names.copytocontroller_FavoriteFiles_Vertical_ScrollBar, status)
    
    def chartwindow_openchart_and_get_parameter_details(self):
        """
        Get the parameter details from the chart dataGrid in the chart window.
        :return: list of dictionaries for parameter with its details.
        """
        return self.chartWindow.chartwindow_openchart_and_get_parameter_details(self.sym_names.uIChart_dgParametersInfo_Table)
       
    def chartWindow_openchart_and_check_controller_details_is_visible(self, visible=True):
        """
        Check the "controller details" labels is visible in chart window.
        :param visible: check visible status(True or False).
        :return: True if succeeds.
        """
        sym_list= list()
        sym_list.append(self.sym_names.uIChart_txtName1_Label)
        sym_list.append(self.sym_names.UIChart_codenumber_Label)
        sym_list.append(self.sym_names.UIChart_sw_version_Label)
        sym_list.append(self.sym_names.uIChart_imgproductright_Image)
        sym_list.append(self.sym_names.koolProg_ServiceTest_i_Button)
        return self.chartWindow.chartWindow_openchart_and_check_controller_details_is_visible(sym_list,visible)
        
    def chartWindow_openchart_and_check_controller_details_is_enabled(self,status=True):
        """
        Check if the "controller details" is enabled/disabled in chart window.
        :param status: boolean status value True or False.
        :return: True if label is enabled value is equal to status else False.
        """ 
        sym_list= list()
        sym_list.append(self.sym_names.uIChart_txtName1_Label)
        sym_list.append(self.sym_names.UIChart_codenumber_Label)
        sym_list.append(self.sym_names.UIChart_sw_version_Label)
        sym_list.append(self.sym_names.koolProg_ServiceTest_i_Button)
        return self.chartWindow.chartWindow_openchart_and_check_controller_details_is_enabled(sym_list,status)
        
    def chartWindow_openchart_and_get_controller_variant(self):
        """
        Get the controller variant from the chart window.
        return: String of controller variant
        """
        return self.chartWindow.chartWindow_openchart_and_get_controller_variant(self.sym_names.uIChart_txtName1_Label)
    
    def chartWindow_openchart_and_get_controller_codeNumber(self):
        """
        Get the controller code number from the chart window.
        return: String of controller code number
        """
        return self.chartWindow.chartWindow_openchart_and_get_controller_codeNumber(self.sym_names.UIChart_codenumber_Label)
    
    def chartWindow_openchart_and_get_controller_sw_version(self):
        """
        Get the controller software version  from the chart window.
        return: String of controller software version.
        """
        return self.chartWindow.chartWindow_openchart_and_get_controller_sw_version(self.sym_names.UIChart_sw_version_Label)
    
    def chartWindow_openchart_and_check_controller_variant_text(self, message):
        """
        check the "controller variant" text in chart window.
        :param message:testData to compare
        :return: True if succeeds
        """
        return self.chartWindow.chartWindow_openchart_and_check_controller_variant_text(self.sym_names.uIChart_txtName1_Label,message)
    
    def chartWindow_openchart_and_check_controller_codeNumber_text(self, message):
        """
        check the "controller code number" text in chart window.
        :param message:testData to compare
        :return: True if succeeds
        """
        return self.chartWindow.chartWindow_openchart_and_check_controller_codeNumber_text(self.sym_names.UIChart_codenumber_Label,message)
    
    def chartWindow_openchart_and_check_controller_sw_version_text(self, message):
        """
        check the "controller software version" text in chart window.
        :param message:testData to compare
        :return: True if succeeds
        """
        return self.chartWindow.chartWindow_openchart_and_check_controller_sw_version_text(self.sym_names.UIChart_sw_version_Label, message)
    
    def chartWindow_openchart_and_check_i_button_text(self, message):
        """
        check the "i" button text in chart window.
        :param message:testData to compare
        :return: True if succeeds
        """
        return self.chartWindow.chartWindow_openchart_and_check_i_button_text(self.sym_names.koolProg_ServiceTest_i_Button,message)
    
    def chartWindow_openchart_and_get_i_button_text(self):
        """
        Get the text of i button in chart Window.
        :return: i button text
        """
        return self.chartWindow.chartWindow_openchart_and_get_i_button_text(self.sym_names.koolProg_ServiceTest_i_Button)
        
    def chartWindow_openchart_and_check_i_button_tooltip(self, tooltip_text):
        """
        Check the i button tooltip in chart window.
        :param tooltip_text: i button tooltip
        :return:True if succeeds
        """
        self.chartWindow.chartWindow_openchart_and_check_i_button_tooltip(self.sym_names.koolProg_ServiceTest_i_Button, tooltip_text)
    
    def chartWindow_openchart_and_click_i_button(self):
        """
        click on the i button in the chart window.
        :return: True if succeeds.
        """
        return self.chartWindow.chartWindow_openchart_and_click_i_button(self.sym_names.koolProg_ServiceTest_i_Button)
    
    def online_service_window_check_parameters_tab_is_visible(self, visible=True):
        """
        Check parameters tab in online service window is visible in online service window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_parameters_tab_is_visible(self.sym_names.koolProg_Parameters_TabItem, visible)
    
    def online_service_window_check_alarms_tab_is_visible(self, visible=True):
        """
        Check alarms tab in online service window is visible in online service window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_alarms_tab_is_visible(self.sym_names.koolProg_Alarms_TabItem, visible)
    
    def online_service_window_check_input_output_tab_is_visible(self, visible=True):
        """
        Check input/output tab in online service window is visible in online service window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_input_output_tab_is_visible(self.sym_names.koolProg_Input_Output_TabItem, visible)
    
    def online_service_window_check_parameters_tab_is_enabled(self, status=True):
        """
        verify the parameters tab label is enabled or disabled in online service window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_parameters_tab_is_enabled(self.sym_names.koolProg_Parameters_TabItem,status)
    
    def online_service_window_check_alarms_tab_is_enabled(self, status=True):
        """
        verify the alarms tab label is enabled or disabled in online service window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_alarms_tab_is_enabled(self.sym_names.koolProg_Alarms_TabItem, status)
    
    def online_service_window_check_input_output_tab_is_enabled(self, status=True):
        """
        verify the input/output tab label is enabled or disabled in online service window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_input_output_tab_is_enabled(self.sym_names.koolProg_Input_Output_TabItem, status)
    
    def online_service_window_check_parameters_tab_text(self, message):
        """
        check the "parameters" tab text in online service window
        :param message:testData to compare
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_parameters_tab_text(self.sym_names.koolProg_Parameters_TabItem, message)
        
    def online_service_window_check_alarms_tab_text(self, message):
        """
        check the "alarms" tab text in online service window
        :param message:testData to compare
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_alarms_tab_text(self.sym_names.koolProg_Alarms_TabItem, message)
    
    def online_service_window_check_input_output_tab_text(self, message):
        """
        check the "input/output" tab text in online service window
        :param message:testData to compare
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_input_output_tab_text(self.sym_names.koolProg_Input_Output_TabItem, message)
    
    def online_service_window_get_parameters_tab_type(self):
        """
        Get "parameters" type from online service window.
        :return: Type of parameters tab
        """
        return self.OnlineServiceWindow.online_service_window_get_parameters_tab_type(self.sym_names.koolProg_Parameters_TabItem)
    
    def online_service_window_get_alarms_tab_type(self):
        """
        Get "alarms" type from online service window.
        :return: Type of alarms tab
        """
        return self.OnlineServiceWindow.online_service_window_get_alarms_tab_type(self.sym_names.koolProg_Alarms_TabItem)
    
    def online_service_window_get_input_output_tab_type(self):
        """
        Get "input/output" type from online service window.
        :return: Type of input output tab
        """
        return self.OnlineServiceWindow.online_service_window_get_input_output_tab_type(self.sym_names.koolProg_Input_Output_TabItem)
    
    def online_service_window_click_parameters_tab(self):
        """
        Click on "parameters" tab in online service window.
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_click_parameters_tab(self.sym_names.koolProg_Parameters_TabItem)
    
    def online_service_window_click_alarms_tab(self):
        """
        Click on "alarms" tab in online service window.
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_click_alarms_tab(self.sym_names.koolProg_Alarms_TabItem)
    
    def online_service_window_click_input_output_tab(self):
        """
        Click on "Input/Output" tab in online service window.
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_click_input_output_tab(self.sym_names.koolProg_Input_Output_TabItem)

    def online_service_window_check_parameters_tab_is_underlined(self,underlined=True):
        """
        Check "parameters" tab is underlined in online service window.
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_parameters_tab_is_underlined(self.sym_names.koolProg_Parameters_TabItem)
    
    def online_service_window_check_alarms_tab_is_underlined(self,underlined=True):
        """
        Check "alarms" tab is underlined in online service window.
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_alarms_tab_is_underlined(self.sym_names.koolProg_Alarms_TabItem)
    
    def online_service_window_check_input_output_tab_is_underlined(self,underlined=True):
        """
        Check "input/output" tab is underlined in online service window.
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_input_output_tab_is_underlined(self.sym_names.koolProg_Input_Output_TabItem)
    
    def online_service_window_check_mainSwitch_label_is_visible(self, visible=True):
        """
        Check "Mainswitch" label is visible in online service window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_mainSwitch_label_is_visible(self.sym_names.input_Output_Main_switch_Label, visible)
    
    def online_service_window_check_manual_radiobutton_is_visible(self, visible=True):
        """
        Check manual radiobutton is visible in online service window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_manual_radiobutton_is_visible(self.sym_names.input_Output_Manual_RadioButton, visible)
    
    def online_service_window_check_start_radiobutton_is_visible(self, visible=True):
        """
        Check start radiobutton is visible in online service window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_start_radiobutton_is_visible(self.sym_names.input_Output_Start_RadioButton, visible)
    
    def online_service_window_check_stop_radiobutton_is_visible(self, visible=True):
        """
        Check stop radiobutton is visible in online service window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_stop_radiobutton_is_visible(self.sym_names.input_Output_Stop_RadioButton, visible)
    
    def online_service_window_check_mainSwitch_label_is_enabled(self, status=True):
        """
        Check "Mainswitch" label is enabled or disabled in online service window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_mainSwitch_label_is_enabled(self.sym_names.input_Output_Main_switch_Label, status)
    
    def online_service_window_check_manual_radiobutton_is_enabled(self, status=True):
        """
        verify the manual radiobutton is enabled or disabled in online service window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_manual_radiobutton_is_enabled(self.sym_names.input_Output_Manual_RadioButton, status)
    
    def online_service_window_check_start_radiobutton_is_enabled(self, status=True):
        """
        verify the start radiobutton is enabled or disabled in online service window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_start_radiobutton_is_enabled(self.sym_names.input_Output_Start_RadioButton, status)
    
    def online_service_window_check_stop_radiobutton_is_enabled(self, status=True):
        """
        verify the stop radiobutton is enabled or disabled in online service window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_stop_radiobutton_is_enabled(self.sym_names.input_Output_Stop_RadioButton, status)
    
    def online_service_window_click_manual_radiobutton(self):
        """
        Click on "manual" radiobutton in online service window.
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_click_manual_radiobutton(self.sym_names.input_Output_Manual_RadioButton)
    
    def online_service_window_click_start_radiobutton(self):
        """
        Click on "start" radiobutton in online service window.
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_click_start_radiobutton(self.sym_names.input_Output_Start_RadioButton)
    
    def online_service_window_click_stop_radiobutton(self):
        """
        Click on "stop" radiobutton in online service window.
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_click_stop_radiobutton(self.sym_names.input_Output_Stop_RadioButton)
    
    def online_service_window_check_mainSwitch_label_text(self, message):
        """
        check the "Mainswitch" label text in online service window
        :param message:string to compare
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_mainSwitch_label_text(self.sym_names.input_Output_Main_switch_Label, message)
        
    def online_service_window_check_manual_radiobutton_text(self, message):
        """
        check the "manual" radiobutton text in online service window
        :param message:testData to compare
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_manual_radiobutton_text(self.sym_names.input_Output_Manual_RadioButton,message)
    
    def online_service_window_check_start_radiobutton_text(self, message):
        """
        check the "start" radiobutton text in online service window
        :param message:testData to compare
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_start_radiobutton_text(self.sym_names.input_Output_Start_RadioButton,message)
    
    def online_service_window_check_stop_radiobutton_text(self,message):
        """
        check the "stop" radiobutton text in online service window
        :param message:testData to compare
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_stop_radiobutton_text(self.sym_names.input_Output_Stop_RadioButton,message)
    
    def online_service_window_get_status_of_manual_radiobutton(self):
        """
        Get the status of the "manual" radiobutton in online service window
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_get_status_of_manual_radiobutton(self.sym_names.input_Output_Manual_RadioButton)
    
    def online_service_window_get_status_of_start_radiobutton(self):
        """
        Get the status of the "start" radiobutton in online service window
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_get_status_of_start_radiobutton(self.sym_names.input_Output_Start_RadioButton)
    
    def online_service_window_get_status_of_stop_radiobutton(self):
        """
        Get the status of the "stop" radiobutton in online service window
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_get_status_of_stop_radiobutton(self.sym_names.input_Output_Stop_RadioButton)
    
    def online_service_window_check_manual_radiobutton_is_selected(self, isSelected=True):
        """
        Check the "manual" radiobutton is selected in online service window
        :param isSelected: boolean status value True or False.
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_manual_radiobutton_is_selected(self.sym_names.input_Output_Manual_RadioButton, isSelected)
    
    def online_service_window_check_start_radiobutton_is_selected(self, isSelected=True):
        """
        Check the "start" radiobutton is selected in online service window
        :param isSelected: boolean status value True or False.
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_start_radiobutton_is_selected(self.sym_names.input_Output_Start_RadioButton, isSelected)
    
    def online_service_window_check_stop_radiobutton_is_selected(self, isSelected=True):
        """
        Check the "stop" radiobutton is selected in online service window
        :param isSelected: boolean status value True or False.
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_stop_radiobutton_is_selected(self.sym_names.input_Output_Stop_RadioButton,isSelected)
    
    def online_service_window_check_manual_label_in_inputOutput_table_is_visible(self, visible=True):
        """
        Check manual label in input output table is visible in online service window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_manual_label_in_inputOutput_table_is_visible(self.sym_names.manual_Label, visible)
    
    def online_service_window_check_manual_label_in_inputOutput_table_is_enabled(self, status=True):
        """
        Verify the manual label in input output table is enabled or disabled in online service window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.OnlineServiceWindow.online_service_window_check_manual_label_in_inputOutput_table_is_enabled(self.sym_names.manual_Label, status)
    
    def online_service_window_check_manual_label_in_inputOutput_table_text(self, message):
        """
        check the "manual" label in input output table text in online service window
        :param message:testData to compare
        :return: True if succeeds
        """
        return self.OnlineServiceWindow.online_service_window_check_manual_label_in_inputOutput_table_text(self.sym_names.manual_Label,message)
    
    def online_service_window_get_column_names_in_inputOutput_table(self):
        """
        Get the column names of input output table in online service window
        return: list of column names.
        """
        return self.OnlineServiceWindow.online_service_window_get_column_names_in_inputOutput_table(self.sym_names.koolProg_Table)
        
########################  C O N V E R T    S E T T I N G S   W I N D O W    ###########################

    def prj_window_check_convert_settings_button_is_visible(self,visible=True):
        """
        Check convert settings button in project window is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        
        return self.convert_settings_window.prj_window_check_convert_settings_button_is_visible(self.sym_names.koolProg_btnConvSetfile_Button,visible)
    
    def prj_window_check_convert_settings_button_is_enabled(self,status=True):
        """
        Check convert settings button in project window is enabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        
        return self.convert_settings_window.prj_window_check_convert_settings_button_is_enabled(self.sym_names.koolProg_btnConvSetfile_Button,status)
    
    def prj_window_compare_convert_settings_tooltip(self, tooltip):
        """
        In Project window  Compare tooltip text of convert settings button
        :param tooltip: testData to check with tooltip
        :return: True if text is Equal else False.
        """
        
        return self.convert_settings_window.prj_window_compare_convert_settings_tooltip(self.sym_names.koolProg_btnConvSetfile_Button,tooltip)
          
    def prj_window_click_convert_settings_button(self):
        
        """
        Click the convert settings button
        """
        return self.convert_settings_window.prj_window_click_convert_settings_button(self.sym_names.koolProg_btnConvSetfile_Button)
    
    def convert_settings_window_is_visible(self, visible=True):
        """
        verify the "Convert Settings" window labels are visible in Convert Setting window
        :param visible: Visible status(True or False).
        :return:True if succeeds
        """
        sym_list = list()
        sym_list.append(self.sym_names.convertSettingFile_Window)
        sym_list.append(self.sym_names.convertSettingFile_New_file_name_Label)
        sym_list.append(self.sym_names.convertSettingFile_Product_name_Label)
        sym_list.append(self.sym_names.convertSettingFile_Code_no_Label)
        sym_list.append(self.sym_names.convertSettingFile_Software_version_Label)
        sym_list.append(self.sym_names.convertSettingFile_CANCEL_Button)
        sym_list.append(self.sym_names.convertSettingFile_CONVERT_FILE_Button)
        sym_list.append(self.sym_names.convertSettingFile_Select_the_setting_file_you_want_to_use_Label)
        sym_list.append(self.sym_names.convertSettingFile_New_file_name_Edit)
        sym_list.append(self.sym_names.convertSettingFile_X_Button)
        sym_list.append(self.sym_names.convertSettingFile_ConvertSettingFile_Label)
        sym_list.append(self.sym_names.convertSettingFile_Image)
        sym_list.append(self.sym_names.convertSettingFile_i_Button)
        self.convert_settings_window.convert_settings_window_is_visible(sym_list, visible)
    
    def convert_settings_window_is_enabled(self, status=True):
        """
        Check the "convert settings" window labels are enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        sym_list = list()
        sym_list.append(self.sym_names.convertSettingFile_Window)
        sym_list.append(self.sym_names.convertSettingFile_New_file_name_Label)
        sym_list.append(self.sym_names.convertSettingFile_Product_name_Label)
        sym_list.append(self.sym_names.convertSettingFile_Code_no_Label)
        sym_list.append(self.sym_names.convertSettingFile_Software_version_Label)
        sym_list.append(self.sym_names.convertSettingFile_CANCEL_Button)
        sym_list.append(self.sym_names.convertSettingFile_Select_the_setting_file_you_want_to_use_Label)
        sym_list.append(self.sym_names.convertSettingFile_New_file_name_Edit)
        sym_list.append(self.sym_names.convertSettingFile_X_Button)
        sym_list.append(self.sym_names.convertSettingFile_ConvertSettingFile_Label)
        sym_list.append(self.sym_names.convertSettingFile_Image)
        sym_list.append(self.sym_names.convertSettingFile_i_Button)
        self.convert_settings_window.convert_settings_window_is_enabled(sym_list, status)
        
    def convert_settings_window_check_convert_setting_file_label_is_visible(self, visible=True):
        """
        Check convert settings file label in convert settings window is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.convert_settings_window.convert_settings_window_check_convert_setting_file_label_is_visible(self.sym_names.convertSettingFile_ConvertSettingFile_Label, visible)
    
    def convert_settings_window_check_convert_setting_file_label_text(self, message):
        """
        check the "convert settings file label" button text in convert settings window
        :param message:testData to compare
        :return: True if succeeds
        """
        return self.convert_settings_window.convert_settings_window_check_convert_setting_file_label_text(self.sym_names.convertSettingFile_ConvertSettingFile_Label, message)
    
    def convert_settings_window_X_button_visible(self,visible=True):
        """
        check the "X " button visible in convert settings window
        :param visible: visibility check of convert setting window(True or False)
        :return: True if succeeds
        """
        return self.convert_settings_window.convert_settings_window_X_button_visible(self.sym_names.convertSettingFile_X_Button, visible)

    def convert_settings_window_X_button_is_enabled(self,status=True):
        """
        check the "X" button enabled/disabled in convert settings window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.convert_settings_window.convert_settings_window_X_button_is_enabled(self.sym_names.convertSettingFile_X_Button, status)

    def convert_settings_window_check_X_button_text(self, message):
        """
        check the "X" button text in convert settings window
        :param message:testData to compare
        :return: True if succeed
        """
        return self.convert_settings_window.convert_settings_window_check_X_button_text(self.sym_names.convertSettingFile_X_Button, message)
    
    def convert_settings_window_check_X_button_tooltip(self, tooltip_text):
        """
        Check the X button window tooltip in convert settings window.
        :param tooltip_text: close button tooltip
        :return:True if succeeds
        """
        return self.convert_settings_window.convert_settings_window_check_X_button_tooltip(self.sym_names.convertSettingFile_X_Button,
                                                                       tooltip_text)
        
    def convert_settings_window_click_X_button(self):
        """
        click on the X button in the convert settings window
        """
        return self.convert_settings_window.convert_settings_window_click_X_button(self.sym_names.convertSettingFile_X_Button)
    
    
    def convert_settings_window_check_select_the_setting_file_you_want_to_use_Label_is_visible(self, visible=True):
        """
        Check setting file you want to use label in convert settings window is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.convert_settings_window.convert_settings_window_check_select_the_setting_file_you_want_to_use_Label_is_visible(self.sym_names.convertSettingFile_Select_the_setting_file_you_want_to_use_Label, visible)
    
    def convert_settings_window_check_select_the_setting_file_you_want_to_use_Label_is_enabled(self, status=True):
        """
        Check setting file you want to use label in convert settings window is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        return self.convert_settings_window.convert_settings_window_check_select_the_setting_file_you_want_to_use_Label_is_enabled(self.sym_names.convertSettingFile_Select_the_setting_file_you_want_to_use_Label, status)
    
    def convert_settings_window_check_select_the_setting_file_you_want_to_use_Label_text(self,text):
        """
        Check text of setting file you want to use label in convert settings window.
        :param text:testData to compare
        :return: True if succeed
        """
        return self.convert_settings_window.convert_settings_window_check_select_the_setting_file_you_want_to_use_Label_text(self.sym_names.convertSettingFile_Select_the_setting_file_you_want_to_use_Label, text)
    
    def convert_settings_window_check_controller_product_image_is_visible(self, visible=True):
        """
        Check controller image in convert settings window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.convert_settings_window.convert_settings_window_check_controller_product_image_is_visible(self.sym_names.convertSettingFile_Image, visible)
        
    def convert_settings_window_validate_controller_product_image(self, prod_image):
        """
        Check controller image in convert settings window.
        :param prod_image: path of the controller image.
        :return: True if image is equal else False.
        """
        sym_prod_image = self.sym_names.convertSettingFile_Image
        self.convert_settings_window.convert_settings_window_validate_controller_product_image(sym_prod_image,prod_image)
        
    def convert_settings_window_check_i_button_is_visible(self, visible=True):
        """
        Check i button in convert settings is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.convert_settings_window.convert_settings_window_check_i_button_is_visible(self.sym_names.convertSettingFile_i_Button, visible)
    
    def convert_settings_window_check_i_button_is_enabled(self, status=True):
        """
        Check i button in convert settings is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        return self.convert_settings_window.convert_settings_window_check_i_button_is_enabled(self.sym_names.convertSettingFile_i_Button, status)
    
    def convert_settings_window_get_i_button_text(self):
        """
        Get the text of i button in convert settings window.
        :return: i button text
        """
        return self.convert_settings_window.convert_settings_window_get_i_button_text(self.sym_names.convertSettingFile_i_Button)
    
    def convert_settings_window_check_i_button_text(self, text):
        """
        Check "i" button text in convert settings window
        :param text:testData to compare
        :return: True if succeeds
        """
        return self.convert_settings_window.convert_settings_window_check_i_button_text(self.sym_names.convertSettingFile_i_Button, text)
       
    def convert_settings_window_check_i_button_tooltip(self, tooltip_text):
        """
        Check the i button tooltip in convert settings window.
        :param tooltip_text: close button tooltip
        :return:True if succeeds
        """
        self.convert_settings_window.convert_settings_window_check_i_button_tooltip(self.sym_names.convertSettingFile_i_Button, tooltip_text)
    
    def convert_settings_window_click_i_button(self):
        """
        click on the i button in the convert settings window
        """
        return self.convert_settings_window.convert_settings_window_click_i_button(self.sym_names.convertSettingFile_i_Button)
    
    def convert_settings_window_check_new_file_name_label_isVisible(self, visible=True):
        """
        Check new file name in convert settings is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.convert_settings_window.convert_settings_window_check_new_file_name_label_isVisible(self.sym_names.convertSettingFile_New_file_name_Label, visible)
    
    def convert_settings_window_check_new_file_name_label_is_enabled(self, status=True):
        """
        Check new file name in convert settings is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        return self.convert_settings_window.convert_settings_window_check_new_file_name_label_is_enabled(self.sym_names.convertSettingFile_New_file_name_Label, status)
    
    def convert_settings_window_get_text_of_new_file_name_label(self):
        """
        Check the new file name text in the convert settings window.
        :return: new file name label
        """
        return self.convert_settings_window.convert_settings_window_get_text_of_new_file_name_label(self.sym_names.convertSettingFile_New_file_name_Label)
    
    def convert_settings_window_check_new_file_name_label_text(self, text):
        """
        Check the "new file name" label text in convert settings window
        :param text :testData to compare
        :return: True if succeeds
        """
        return self.convert_settings_window.convert_settings_window_check_new_file_name_label_text(self.sym_names.convertSettingFile_New_file_name_Label, text)
    
    def convert_settings_window_check_edit_box_of_new_file_name_label_is_visible(self, visible=True):
        """
        Check edit box of new file in convert settings is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.convert_settings_window.convert_settings_window_check_edit_box_of_new_file_name_label_is_visible(self.sym_names.convertSettingFile_New_file_name_Edit, visible)
    
    def convert_settings_window_check_edit_box_of_new_file_name_label_is_enabled(self, status=True):
        """
        Check edit box of new file in convert settings is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        return self.convert_settings_window.convert_settings_window_check_edit_box_of_new_file_name_label_is_enabled(self.sym_names.convertSettingFile_New_file_name_Edit, status)
        
    def convert_settings_window_get_text_from_new_file_name_edit_box(self):
        """
        Get text of new file name editbox in the convert settings window.
        :return: text in new filename editbox
        """
        return self.convert_settings_window.convert_settings_window_get_text_from_new_file_name_edit_box(self.sym_names.convertSettingFile_New_file_name_Edit)
    
    def convert_settings_window_get_label_of_product_name(self):
        
        """
        Check the label of product name in the convert settings window.
        :return: product name label
        """
        return self.convert_settings_window.convert_settings_window_get_label_of_product_name(self.sym_names.convertSettingFile_Product_name_Label)
    
    def convert_settings_window_check_label_of_product_name_is_visible(self, visible=True):
        """
        Check label of product name in convert settings is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.convert_settings_window.convert_settings_window_check_label_of_product_name_is_visible(self.sym_names.convertSettingFile_Product_name_Label, visible)
        
    def convert_settings_window_check_label_of_product_name_is_enabled(self, status=True):
        
        """
        Check label of product name in convert settings is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        return self.convert_settings_window.convert_settings_window_check_label_of_product_name_is_enabled(self.sym_names.convertSettingFile_Product_name_Label, status)
    
    def convert_settings_window_check_product_name_label_text(self, text):
        """
        check the "product name" label text in convert settings window
        :param text :testData to compare
        :return: True if succeeds
        """
        return self.convert_settings_window.convert_settings_window_check_product_name_label_text(self.sym_names.convertSettingFile_Product_name_Label, text)
    
    def convert_settings_window_get_label_of_code_number(self):
        
        """
        Get the label of code number in the convert settings window.
        :return: codenumber label
        """
        return self.convert_settings_window.convert_settings_window_get_label_of_code_number(self.sym_names.convertSettingFile_Code_no_Label)
    
    def convert_settings_window_check_label_of_code_number_is_visible(self, visible=True):
        """
        Check label of code number in convert settings is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.convert_settings_window.convert_settings_window_check_label_of_code_number_is_visible(self.sym_names.convertSettingFile_Code_no_Label,visible)
    
    def convert_settings_window_check_label_of_code_number_is_enabled(self, status=True):
        """
        Check label of code number in convert settings is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        
        return self.convert_settings_window.convert_settings_window_check_label_of_code_number_is_enabled(self.sym_names.convertSettingFile_Code_no_Label, status)
    
    def convert_settings_window_check_code_number_label_text(self, text):
        """
        Check the "code number" label text in convert settings window
        :param text:testData to compare
        :return: True if succeeds
        """
        return self.convert_settings_window.convert_settings_window_check_code_number_label_text(self.sym_names.convertSettingFile_Code_no_Label, text)
        
    def convert_settings_window_check_list_of_code_number_combobox_is_visible(self, visible=True):
        """
        Check code number combobox in convert settings is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.convert_settings_window.convert_settings_window_check_list_of_code_number_combobox_is_visible(self.sym_names.convertSettingFile_Code_no_ComboBox, visible)
        
    def convert_settings_window_check_list_of_code_number_combobox_is_enabled(self, status=True):
        
        """
        Check label of product name in convert settings is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        return self.convert_settings_window.convert_settings_window_check_list_of_code_number_combobox_is_enabled(self.sym_names.convertSettingFile_Code_no_ComboBox, status)
    
    def convert_settings_window_select_code_number_from_combobox(self, code_number):
        """
        Select given code number in code number listbox in convert settings window.
        :param code_num: string code number.
        :return: boolean True if code number has selected successfully else False.
        """
        return self.convert_settings_window.convert_settings_window_select_code_number_from_combobox(self.sym_names.convertSettingFile_Code_no_ComboBox,code_number)

    def convert_settings_window_get_list_of_code_number(self):
        """
        Get list of the code number in the convert settings window.
        :return: list of items in combobox.
        """
        
        return self.convert_settings_window.convert_settings_window_get_list_of_code_number(self.sym_names.convertSettingFile_Code_no_ComboBox)
    
    def convert_settings_window_get_label_of_SW_Version(self):
        
        """
        Check the label of software version in the convert settings window.
        :return: SW version label
        """
        return self.convert_settings_window.convert_settings_window_get_label_of_SW_Version(self.sym_names.convertSettingFile_Software_version_Label)
    
    def convert_settings_window_check_label_of_SW_version_is_visible(self, visible=True):
        """
        Check label of software version in convert settings is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.convert_settings_window.convert_settings_window_check_label_of_SW_version_is_visible(self.sym_names.convertSettingFile_Software_version_Label,visible)
    
    def convert_settings_window_check_label_of_SW_version_is_enabled(self, status=True):
        """
        Check label of software version in convert settings is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        
        return self.convert_settings_window.convert_settings_window_check_label_of_SW_version_is_enabled(self.sym_names.convertSettingFile_Software_version_Label, status)
    
    def convert_settings_window_check_SW_version_label_text(self, text):
        """
        Check "software version" label text in convert settings window
        :param text:testData to compare
        :return: True if succeeds
        """
        return self.convert_settings_window.convert_settings_window_check_SW_version_label_text(self.sym_names.convertSettingFile_Software_version_Label, text)
    
    def convert_settings_window_check_list_of_software_version_combobox_is_visible(self, visible=True):
        """
        Check software version combobox in convert settings is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.convert_settings_window.convert_settings_window_check_list_of_software_version_combobox_is_visible(self.sym_names.convertSettingFile_Software_version_ComboBox, visible)
        
    def convert_settings_window_check_list_of_software_version_combobox_is_enabled(self, status=True):
        
        """
        Check label of product name in convert settings is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        return self.convert_settings_window.convert_settings_window_check_list_of_software_version_combobox_is_enabled(self.sym_names.convertSettingFile_Software_version_ComboBox, status)
    
    def convert_settings_window_select_software_version_from_combobox(self, sw_version):
        """
        Select given software version in software version combobox in convert settings window.
        :param sw_version: string software version.
        :return: boolean True if software version has selected successfully else False.
        """
        return self.convert_settings_window.convert_settings_window_select_software_version_from_combobox(self.sym_names.convertSettingFile_Software_version_ComboBox,sw_version)

    def convert_settings_window_get_list_of_software_version(self):
        """
        Get list of the software versions in the convert settings window.
        :return: list of items in combobox.
        """
        return self.convert_settings_window.convert_settings_window_get_list_of_software_version(self.sym_names.convertSettingFile_Software_version_ComboBox)
    
    
    def convert_settings_window_check_convert_file_button_is_visible(self,visible=True):
        """
        Check convert file button in convert settings window is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        
        return self.convert_settings_window.convert_settings_window_check_convert_file_button_is_visible(self.sym_names.convertSettingFile_CONVERT_FILE_Button,visible)
    
    def convert_settings_window_check_convert_file_button_is_enabled(self,status=True):
        """
        Check convert file button in convert settings window is enabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        
        return self.convert_settings_window.convert_settings_window_check_convert_file_button_is_enabled(self.sym_names.convertSettingFile_CONVERT_FILE_Button,status)
    
    def convert_settings_window_get_text_of_convert_file_button(self):
        """
        Get text of convert file button in the convert settings window.
        :return: text of convert file button
        """
        return self.convert_settings_window.convert_settings_window_get_text_of_convert_file_button(self.sym_names.convertSettingFile_CONVERT_FILE_Button)
        
    def convert_settings_window_check_convert_file_button_text(self, text):
        """
        Check "convert file" button text in convert settings window
        :param text:testData to compare
        :return: True if succeeds
        """
        return self.convert_settings_window.convert_settings_window_check_convert_file_button_text(self.sym_names.convertSettingFile_CONVERT_FILE_Button, text)
        
    def convert_settings_window_click_convert_file_button(self):
        
        """
        click on the convert file in the convert settings window
        """
        return self.convert_settings_window.convert_settings_window_click_convert_file_button(self.sym_names.convertSettingFile_CONVERT_FILE_Button)
    
    def convert_settings_window_check_cancel_button_is_visible(self, visible=True):
        """
        check cancel button in the convert settings window is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.convert_settings_window.convert_settings_window_check_cancel_button_is_visible(self.sym_names.convertSettingFile_CANCEL_Button, visible)
    
    def convert_settings_window_check_cancel_button_is_enabled(self, status=True):
        """
        check cancel button in the convert settings window  is enabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.convert_settings_window.convert_settings_window_check_cancel_button_is_enabled(self.sym_names.convertSettingFile_CANCEL_Button, status)
    
    def convert_settings_window_get_text_of_cancel_button(self):
        """
        Get text of cancel button in the convert settings window.
        :return: text of cancel button
        """
        return self.convert_settings_window.convert_settings_window_get_text_of_cancel_button(self.sym_names.convertSettingFile_CANCEL_Button)
    
    def convert_settings_window_check_cancel_button_text(self, text):
        """
        Check "cancel" button text in convert settings window
        :param text:testData to compare
        :return: True if succeeds
        """
        return self.convert_settings_window.convert_settings_window_check_cancel_button_text(self.sym_names.convertSettingFile_CANCEL_Button, text)
        
    def convert_settings_window_click_cancel_button(self):
        """
        click on the cancel button in the convert settings window
        """
        return self.convert_settings_window.convert_settings_window_click_cancel_button(self.sym_names.convertSettingFile_CANCEL_Button)
     
    def convert_settings_window_get_label_of_select_different_SW_Version(self):
        
        """
        Check the label of select different software version or file name can't be empty in the convert settings window.
        :return: text of select different SW version or file name can't be empty label
        """
        return self.convert_settings_window.convert_settings_window_get_label_of_select_different_SW_Version(self.sym_names.convertSettingFile_Select_different_Software_version_or_file_name_can_t_be_empty_Label)
    
    def convert_settings_window_check_label_of_select_different_SW_version_is_visible(self, visible=True):
        """
        Check label of select different software version or file name can't be empty in convert settings is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.convert_settings_window.convert_settings_window_check_label_of_select_different_SW_version_is_visible(self.sym_names.convertSettingFile_Select_different_Software_version_or_file_name_can_t_be_empty_Label,visible)
    
    def convert_settings_window_check_label_of_select_different_SW_version_is_enabled(self, status=True):
        """
        Check label of select different software version or file name can't be empty in convert settings is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        
        return self.convert_settings_window.convert_settings_window_check_label_of_select_different_SW_version_is_enabled(self.sym_names.convertSettingFile_Select_different_Software_version_or_file_name_can_t_be_empty_Label, status)
    
    def convert_settings_window_check_select_different_SW_version_label_text(self, text):
        """
        Check label of "select different software version or file name can't be empty" text in convert settings window
        :param text:testData to compare
        :return: True if succeeds
        """
        return self.convert_settings_window.convert_settings_window_check_select_different_SW_version_label_text(self.sym_names.convertSettingFile_Select_different_Software_version_or_file_name_can_t_be_empty_Label, text)
    
    def convert_settings_window_check_the_text_color_of_select_different_SW_version(self):
        """
        Check the text color of select different software version or file name can't be empty in convert settings
        return: list of rgb colors for the label of select different SW version
        """
        return self.convert_settings_window.convert_settings_window_check_the_text_color_of_select_different_SW_version(self.sym_names.convertSettingFile_Select_different_Software_version_or_file_name_can_t_be_empty_Label)
    
    def connected_controller_check_SW_version_mismatch_label_is_visible(self, visible=True):
        """
        check the "SW Version mismatch" text is visible in the Connected Controller Window.
        :param visible: visible status(True or False).
        :return: True if visible else False.
        """
        return self.convert_settings_window.connected_controller_check_SW_version_mismatch_label_is_visible(self.sym_names.online_controller_txtstatus_Label, visible)
    
    def connected_controller_check_SW_version_mismatch_label_is_enabled(self, status=True):
        """
        check the "SW Version mismatch" text in Connected Controller Window is enabled.
        :param status: boolean status value True or False.
        :return: True if label is enabled value is equal to status else False.
        """
        return self.convert_settings_window.connected_controller_check_SW_version_mismatch_label_is_enabled(self.sym_names.online_controller_txtstatus_Label,status)
    
    def connected_controller_check_SW_version_mismatch_label_text(self, message):
        """
        check the "SW Version mismatch" text in Connected Controller Window.
        :param message:testData to compare
        :return: True if succeeds
        """
        return self.convert_settings_window.connected_controller_check_SW_version_mismatch_label_text(self.sym_names.online_controller_txtstatus_Label, message)
    
    def connected_controller_get_color_of_SW_version_mismatch_label(self):
        """
        check the "SW Version mismatch" text color in Connected Controller Window.
        :return: List of rgb colors of SW version mismatch label.
        """
        return self.convert_settings_window.connected_controller_get_color_of_SW_version_mismatch_label(self.sym_names.online_controller_txtstatus_Label)
    
    def convert_settings_window_set_file_name(self, fileName):
        """
        Set the filename in the fileName editbox in the Convert Settings Window.
        :param fileName: fileName to be given in the fileName editobx in the Convert Settings Window.
        :return: True if text set successfully else False.
        """
        return self.convert_settings_window.convert_settings_window_set_file_name(self.sym_names.convertSettingFile_New_file_name_Edit,fileName)
    
    def convert_settings_window_check_file_name_length(self, len):
        """
        Check new file name in convert settings window should be equal to len
        :param  len : int length of text in new file name.
        """
        self.convert_settings_window.convert_settings_window_check_file_name_length(self.sym_names.convertSettingFile_New_file_name_Edit, len)
        
    def convert_settings_window_check_new_file_name_is_empty(self):
        """
        Checks if new filename is empty in convert settings window.
        """
        message = ""
        self.convert_settings_window.convert_settings_window_check_new_file_name_is_empty(self.sym_names.convertSettingFile_New_file_name_Edit, message)
        
    def convert_settings_window_check_product_name_is_visible(self, visible=True):
        """
        check the "product name" text is visible in the Convert Settings Window.
        :param visible: visible status(True or False).
        :return: True if visible else False.
        """
        return self.convert_settings_window.convert_settings_window_check_product_name_is_visible(self.sym_names.convertSettingFile_Product_info_value_Label,visible)
    
    def convert_settings_window_check_product_name_is_enabled(self, status=True):
        """
        check the "product name" text in convert settings window is enabled.
        :param status: boolean status value True or False.
        :return: True if label is enabled value is equal to status else False.
        """
        return self.convert_settings_window.convert_settings_window_check_product_name_is_enabled(self.sym_names.convertSettingFile_Product_info_value_Label,status)
    
    def convert_settings_window_check_product_name_text(self, message):
        """
        check the "product name" text in convert settings window.
        :param message:testData to compare
        :return: True if succeeds
        """
        return self.convert_settings_window.convert_settings_window_check_product_name_text(self.sym_names.convertSettingFile_Product_info_value_Label, message)
    
    def convert_settings_window_check_close_button_in_converted_settings_report_is_visible(self, visible=True):
        """
        Check 'Close' button in converted settings report window is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.convert_settings_window.convert_settings_window_check_close_button_in_converted_settings_report_is_visible(self.sym_names.converted_Settings_Report_Close_Button,visible)
    
    def convert_settings_window_check_close_button_in_converted_settings_report_is_enabled(self, status=True):
        """
        Check 'Close' button in converted settings report window is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        
        return self.convert_settings_window.convert_settings_window_check_close_button_in_converted_settings_report_is_enabled(self.sym_names.converted_Settings_Report_Close_Button, status)
    
    def convert_settings_window_check_close_button_in_converted_settings_report_text(self, message):
        """
        Check text of 'Close' button in converted settings report window.
        :param message:testData to compare
        :return: True if succeeds.
        """
        return self.convert_settings_window.convert_settings_window_check_close_button_in_converted_settings_report_text(self.sym_names.converted_Settings_Report_Close_Button, message)
    
    def convert_settings_window_click_close_button_in_converted_settings_report(self):
        """
        Click 'Close' button in converted settings report window.
        return: True if succeeds.
        """
        return self.convert_settings_window.convert_settings_window_click_close_button_in_converted_settings_report(self.sym_names.converted_Settings_Report_Close_Button)
    
    def convert_settings_window_check_X_button_in_converted_settings_report_is_visible(self, visible=True):
        """
        Check 'X' button in converted settings report window is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.convert_settings_window.convert_settings_window_check_X_button_in_converted_settings_report_is_visible(self.sym_names.converted_Settings_Report_X_Button,visible)
    
    def convert_settings_window_check_X_button_in_converted_settings_report_is_enabled(self, status=True):
        """
        Check label of 'X' button in converted settings report window is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        
        return self.convert_settings_window.convert_settings_window_check_X_button_in_converted_settings_report_is_enabled(self.sym_names.converted_Settings_Report_X_Button, status)
    
    def convert_settings_window_click_X_button_in_converted_settings_report(self):
        """
        Click 'X' button in converted settings report window.
        return: True if succeeds.
        """
        return self.convert_settings_window.convert_settings_window_click_X_button_in_converted_settings_report(self.sym_names.converted_Settings_Report_X_Button)
    
    def convert_settings_window_check_X_button_in_converted_Settings_report_tooltip(self, tooltip_text):
        """
        Check the 'X' button tooltip in converted settings report window.
        :param tooltip_text: close button tooltip
        :return:True if succeeds
        """
        self.convert_settings_window.convert_settings_window_check_X_button_in_converted_Settings_report_tooltip(self.sym_names.converted_Settings_Report_X_Button, tooltip_text)
    
    def convert_settings_window_check_X_button_in_converted_settings_report_text(self, message):
        """
        Check text of 'X' button in converted settings report window.
        :param message:testData to compare
        :return: True if succeeds.
        """
        return self.convert_settings_window.convert_settings_window_check_X_button_in_converted_settings_report_text(self.sym_names.converted_Settings_Report_X_Button, message)
    
    def convert_settings_window_check_converted_settings_file_report_label_in_converted_settings_report_is_visible(self, visible=True):
        """
        Check 'Converted Settings File Report' label in converted settings report window is visible.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        return self.convert_settings_window.convert_settings_window_check_converted_settings_file_report_label_in_converted_Settings_report_is_visible(self.sym_names.converted_Settings_Report_Converted_Settings_File_Report_Label,visible)
    
    def convert_settings_window_check_converted_settings_file_report_label_in_converted_settings_report_is_enabled(self, status=True):
        """
        Check label of 'Converted Settings File Report' in converted settings report window is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        
        return self.convert_settings_window.convert_settings_window_check_converted_settings_file_report_label_in_converted_Settings_report_is_enabled(self.sym_names.converted_Settings_Report_Converted_Settings_File_Report_Label, status)
    
    def convert_settings_window_check_converted_settings_file_report_label_in_converted_settings_report_text(self, message):
        """
        Check text of 'Converted Settings File Report' label in converted settings report window.
        :param message:testData to compare
        :return: True if succeeds.
        """
        return self.convert_settings_window.convert_settings_window_check_converted_settings_file_report_label_in_converted_settings_report_text(self.sym_names.converted_Settings_Report_Converted_Settings_File_Report_Label, message)
    
    def convert_settings_window_verify_list_of_code_number(self, code_number_list_in_prj_description_window):
        """
        Verify the list of code numbers in convert settings window.
        :param code_number_list_in_prj_description_window : Code number list in project description window
        :return: True if succeeds.
        """
        return self.convert_settings_window.convert_settings_window_verify_list_of_code_number(self.sym_names.convertSettingFile_Code_no_ComboBox, code_number_list_in_prj_description_window)
    
    def convert_settings_window_verify_list_of_sw_version(self, sw_version_list_in_prj_description_window):
        """
        Verify the list of software versions in convert settings window.
        :param sw_version_list_in_prj_description_window : Software versions list in project description window
        :return: True if succeeds.
        """
        return self.convert_settings_window.convert_settings_window_verify_list_of_sw_version(self.sym_names.convertSettingFile_Software_version_ComboBox, sw_version_list_in_prj_description_window)
    
    
######################  E N D    C O N V E R T    S E T T I N G S   W I N D O W    ###########################

######################  Q U I  C K   S E T T I N G S   W I N D O W    ###########################

    def prj_window_check_if_quick_setting_icon_is_visible(self, visible=True):
        """
        Check if the quick settings icon in the project window is visible.
        :param visible: Visibility status(True or False).
        :return: True if visible else False.
        """
        return self.quick_settings_window.prj_window_check_if_quick_setting_icon_is_visible(self.sym_names.koolProg_btnQuickSetting_Button,visible)
    
    def prj_window_check_if_quick_setting_icon_is_enabled(self, status=True):
        """
        Check if the quick settings icon is enabled/disabled in Project window
        :param status: boolean status value True or False.
        :return: True if label is enabled value is equal to status else False.
        """
        return self.quick_settings_window.prj_window_check_if_quick_setting_icon_is_enabled(self.sym_names.koolProg_btnQuickSetting_Button, status)
    
    def prj_window_compare_tooltip_of_quick_setting_icon(self, tooltip):
        """
        In Project window  Compare tooltip text of quick settings button
        :param tooltip: testData to check with tooltip
        :return: True if text is Equal else False.
        """
        return self.quick_settings_window.prj_window_compare_tooltip_of_quick_setting_icon(self.sym_names.koolProg_btnQuickSetting_Button, tooltip)
        
    def prj_window_click_quick_settings_button(self):
        
        """
        In project window click quick settings button.
        :return:True if succeeds.
        """
        return self.quick_settings_window.prj_window_click_quick_settings_button(self.sym_names.koolProg_btnQuickSetting_Button)
    
    def quick_settings_window_is_visible(self, visible=True):
        """
        verify the "Quick Settings" window UI objects are visible in quick Setting window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        sym_list = list()
        sym_list.append(self.sym_names.newWizard_Window)
        sym_list.append(self.sym_names.quick_setup_Label)
        sym_list.append(self.sym_names.newWizard_title_template_label)
        sym_list.append(self.sym_names.newWizard_menuCode_Label)
        sym_list.append(self.sym_names.newWizard_parameterName_Label)
        sym_list.append(self.sym_names.newWizard_Quick_Setting_Parameters_Label)
        sym_list.append(self.sym_names.newWizard_SW_Version_Label)
        sym_list.append(self.sym_names.newWizard_Variant_Label)
        sym_list.append(self.sym_names.newWizard_CodeNumber_Label)
        sym_list.append(self.sym_names.newWizard_X_Button)
        sym_list.append(self.sym_names.newWizard_FINISH_Button)
        self.quick_settings_window.quick_settings_window_is_visible(sym_list, visible)
    
    def quick_settings_window_is_enabled(self, status=True):
        """
        Check the "quick settings" window UI objects are enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        sym_list = list()
        sym_list.append(self.sym_names.newWizard_Window)
        sym_list.append(self.sym_names.quick_setup_Label)
        sym_list.append(self.sym_names.newWizard_title_template_label)
        sym_list.append(self.sym_names.newWizard_menuCode_Label)
        sym_list.append(self.sym_names.newWizard_parameterName_Label)
        sym_list.append(self.sym_names.newWizard_Quick_Setting_Parameters_Label)
        sym_list.append(self.sym_names.newWizard_SW_Version_Label)
        sym_list.append(self.sym_names.newWizard_Variant_Label)
        sym_list.append(self.sym_names.newWizard_CodeNumber_Label)
        sym_list.append(self.sym_names.newWizard_X_Button)
        sym_list.append(self.sym_names.newWizard_FINISH_Button)
        self.quick_settings_window.quick_settings_window_is_enabled(sym_list, status)
    
    def quick_settings_window_check_quick_setup_label_is_visible(self, visible=True):
        """
        Check quick setup label in quick settings window is visible.
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        return self.quick_settings_window.quick_settings_window_check_quick_setup_label_is_visible(self.sym_names.quick_setup_Label,visible) 
    
    def quick_settings_window_check_quick_setup_label_text(self,text):
        """
        verify the "Quick setup" label text in Quick Settings window
        :param text:testData to compare
        :return:True if succeeds
        """
        return self.quick_settings_window.quick_settings_window_check_quick_setup_label_text(self.sym_names.quick_setup_Label,text)
    
    def quick_settings_window_check_quick_setup_label_is_enabled(self, status=True):
        """
        Check quick setup label in quick settings window is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        return self.quick_settings_window.quick_settings_window_check_quick_setup_label_is_enabled(self.sym_names.quick_setup_Label,status) 
    
    def quick_settings_window_check_application_mode_selected_label_is_visible(self, visible=True):
        """
        Check application mode selected label in quick settings window is visible.
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        return self.quick_settings_window.quick_settings_window_check_application_mode_selected_label_is_visible(self.sym_names.newWizard_title_template_label,visible) 
    
    def quick_settings_window_get_application_mode_selected_label_text(self):
        """
        Get the "application mode selected" label text in Quick Settings window
        :return:String of Application mode selected.
        """
        return self.quick_settings_window.quick_settings_window_get_application_mode_selected_label_text(self.sym_names.newWizard_title_template_label)
    
    def quick_settings_window_check_application_mode_selected_label_is_enabled(self, status=True):
        """
        Check application mode selected label in quick settings window is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        return self.quick_settings_window.quick_settings_window_check_application_mode_selected_label_is_enabled(self.sym_names.newWizard_title_template_label,status) 
    
    def quick_settings_window_check_menuCode_label_is_visible(self, visible=True):
        """
        Check menu code label in quick settings window is visible.
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        return self.quick_settings_window.quick_settings_window_check_menuCode_label_is_visible(self.sym_names.newWizard_menuCode_Label,visible) 
    
    def quick_settings_window_get_menuCode_label_text(self):
        """
        verify the "menu code" label text in Quick Settings window
        :return:String of menuCode
        """
        return self.quick_settings_window.quick_settings_window_get_menuCode_label_text(self.sym_names.newWizard_menuCode_Label)
    
    def quick_settings_window_check_menuCode_label_is_enabled(self, status=True):
        """
        Check menu code label in quick settings window is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        return self.quick_settings_window.quick_settings_window_check_menuCode_label_is_enabled(self.sym_names.newWizard_menuCode_Label,status) 
    
    def quick_settings_window_check_parameter_description_label_is_visible(self, visible=True):
        """
        Check parameter description label in quick settings window is visible.
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        return self.quick_settings_window.quick_settings_window_check_parameter_description_label_is_visible(self.sym_names.newWizard_parameter_description,visible) 
    
    def quick_settings_window_get_parameter_description_label_text(self):
        """
        Get the "parameter description" label text in Quick Settings window
        :return:String of Parameter Description.
        """
        return self.quick_settings_window.quick_settings_window_get_parameter_description_label_text(self.sym_names.newWizard_parameter_description)
    
    def quick_settings_window_check_parameter_description_label_is_enabled(self, status=True):
        """
        Check parameter description label in quick settings window is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        return self.quick_settings_window.quick_settings_window_check_parameter_description_label_is_enabled(self.sym_names.newWizard_parameter_description,status) 
    
    def quick_settings_window_check_parameter_label_is_visible(self, visible=True):
        """
        Check parameter label in quick settings window is visible.
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        return self.quick_settings_window.quick_settings_window_check_parameter_label_is_visible(self.sym_names.newWizard_parameterName_Label,visible) 
    
    def quick_settings_window_get_parameter_label_text(self):
        """
        verify the "parameter" label text in Quick Settings window
        :return:String of parameter selected.
        """
        return self.quick_settings_window.quick_settings_window_get_parameter_label_text(self.sym_names.newWizard_parameterName_Label)
    
    def quick_settings_window_check_parameter_label_is_enabled(self, status=True):
        """
        Check parameter label in quick settings window is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        return self.quick_settings_window.quick_settings_window_check_parameter_label_is_enabled(self.sym_names.newWizard_parameterName_Label,status) 
    
    def quick_settings_window_check_controller_variant_label_is_visible(self, visible=True):
        """
        Check controller variant label in quick settings window is visible.
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        return self.quick_settings_window.quick_settings_window_check_controller_variant_label_is_visible(self.sym_names.newWizard_Variant_Label,visible)
    
    def quick_settings_window_check_controller_variant_label_is_enabled(self, status=True):
        
        """
        check the "controller variant" label enabled/disabled in quick settings window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.quick_settings_window.quick_settings_window_check_controller_variant_label_is_enabled(self.sym_names.newWizard_Variant_Label,status)
    
    def quick_settings_window_check_controller_variant_label_text(self,text):
        """
        verify the "controller variant" label text in Quick Settings window
        :param text:testData to compare
        :return:True if succeeds
        """
        return self.quick_settings_window.quick_settings_window_check_controller_variant_label_text(self.sym_names.newWizard_Variant_Label,text)
    
    def quick_settings_window_check_controller_codeNumber_label_is_visible(self, visible=True):
        """
        Check controller codenumber label in quick settings window is visible.
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        return self.quick_settings_window.quick_settings_window_check_controller_codeNumber_label_is_visible(self.sym_names.newWizard_CodeNumber_Label,visible)
    
    def quick_settings_window_check_controller_codeNumber_label_is_enabled(self, status=True):
        
        """
        check the "controller codenumber" label enabled/disabled in quick settings window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.quick_settings_window.quick_settings_window_check_controller_codeNumber_label_is_enabled(self.sym_names.newWizard_CodeNumber_Label,status)
    
    def quick_settings_window_check_controller_codeNumber_label_text(self,text):
        """
        verify the "controller codenumber" label text in Quick Settings window
        :param text:testData to compare
        :return:True if succeeds
        """
        return self.quick_settings_window.quick_settings_window_check_controller_codeNumber_label_text(self.sym_names.newWizard_CodeNumber_Label,text)
    
    def quick_settings_window_check_controller_SW_Version_label_is_visible(self, visible=True):
        """
        Check SW Version label in quick settings window is visible.
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        return self.quick_settings_window.quick_settings_window_check_controller_SW_Version_label_is_visible(self.sym_names.newWizard_SW_Version_Label,visible)
    
    def quick_settings_window_check_controller_SW_Version_label_is_enabled(self, status=True):
        
        """
        check the "SW Version" label enabled/disabled in quick settings window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.quick_settings_window.quick_settings_window_check_controller_SW_Version_label_is_enabled(self.sym_names.newWizard_SW_Version_Label,status)
    
    def quick_settings_window_check_controller_SW_Version_label_text(self, text):
        """
        verify the "SW Version" label text in Quick Settings window
        :param text:testData to compare
        :return:True if success
        """
        return self.quick_settings_window.quick_settings_window_check_controller_SW_Version_label_text(self.sym_names.newWizard_SW_Version_Label,text)
    
    def quick_settings_window_check_quick_setting_parameters_label_is_visible(self,visible=True):
        """
        Check quick setup label in quick settings window is visible.
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        return self.quick_settings_window.quick_settings_window_check_quick_setting_parameters_label_is_visible(self.sym_names.newWizard_Quick_Setting_Parameters_Label,visible)
    
    def quick_settings_window_check_quick_setting_parameters_label_is_enabled(self,status=True):
        """
        Check quick setup label in quick settings window is enabled.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        return self.quick_settings_window.quick_settings_window_check_quick_setting_parameters_label_is_enabled(self.sym_names.newWizard_Quick_Setting_Parameters_Label,status)
    
    def quick_settings_window_check_quick_setting_parameters_label_text(self, text):
        """
        verify the "Quick setting parameters" label text in Quick Settings window
        :param text:testData to compare
        :return:True if success
        """
        return self.quick_settings_window.quick_settings_window_check_quick_setting_parameters_label_text(self.sym_names.newWizard_Quick_Setting_Parameters_Label,text)
    
    def quick_settings_window_X_button_visible(self,visible=True):
        """
        check the "X " button visible in quick settings window
        :param visible: check visible status(True or False).
        :return: True if succeeds
        """
        return self.quick_settings_window.quick_settings_window_X_button_visible(self.sym_names.newWizard_X_Button, visible)

    def quick_settings_window_X_button_is_enabled(self,status=True):
        """
        check the "X" button enabled/disabled in quick settings window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.quick_settings_window.quick_settings_window_X_button_is_enabled(self.sym_names.newWizard_X_Button, status)

    def quick_settings_window_check_X_button_text(self, message):
        """
        check the "X" button text in quick settings window
        :param message:testData to compare
        :return: True if succeeds.
        """
        return self.quick_settings_window.quick_settings_window_check_X_button_text(self.sym_names.newWizard_X_Button, message)
    
    def quick_settings_window_check_X_button_tooltip(self, tooltip_text):
        """
        Check the X button window tooltip in quick settings window.
        :param tooltip_text: close button tooltip
        :return:True if succeeds
        """
        return self.quick_settings_window.quick_settings_window_check_X_button_tooltip(self.sym_names.newWizard_X_Button,tooltip_text)
    
    def quick_settings_window_finish_button_visible(self,visible=True):
        """
        check the "finish " button visible in quick settings window
        :param visible: check visible status(True or False).
        :return: True if succeeds
        """
        return self.quick_settings_window.quick_settings_window_finish_button_visible(self.sym_names.newWizard_FINISH_Button, visible)

    def quick_settings_window_finish_button_is_enabled(self,status=True):
        """
        check the "finish" button enabled/disabled in quick settings window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.quick_settings_window.quick_settings_window_finish_button_is_enabled(self.sym_names.newWizard_FINISH_Button, status)

    def quick_settings_window_check_finish_button_text(self, message):
        """
        check the "finish" button text in quick settings window
        :param message:testData to compare
        :return: True if succeeds
        """
        return self.quick_settings_window.quick_settings_window_check_finish_button_text(self.sym_names.newWizard_FINISH_Button, message)
    
    def quick_settings_window_check_parameter_scrollbar_is_visible(self ,visible=True):
        """
        Check scrollbar for parameters in quick settings window is visible.
        :param visible:check visible status(True or False).
        :return: True if visible else False.
        """
        return self.quick_settings_window.quick_settings_window_check_parameter_scrollbar_is_visible(self.sym_names.newWizard_ScrollBar, visible)
    
    def quick_settings_window_check_parameter_scrollbar_is_enabled(self, status=True):
        """
        Check scrollbar for parameters  in quick settings window is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.quick_settings_window.quick_settings_window_check_parameter_scrollbar_is_enabled(self.sym_names.newWizard_ScrollBar, status)
    
    def quick_settings_window_click_on_parameter_scrollbar(self):
        """
        Click 'scroll bar'for parameters  in quick settings window_
        :return: True if click is successful else False.
        """
        return self.quick_settings_window.quick_settings_window_click_on_parameter_scrollbar(self.sym_names.newWizard_ScrollBar)
    
    def quick_settings_window_check_wired_image_scrollbar_is_visible(self ,visible=True):
        """
        Check scrollbar for wired image in quick settings window is visible.
        :param visible:check visible status(True or False).
        :return: True if visible else False.
        """
        return self.quick_settings_window.quick_settings_window_check_wired_image_scrollbar_is_visible(self.sym_names.newWizard_ScrollBar_2, visible)
    
    def quick_settings_window_check_wired_image_scrollbar_is_enabled(self, status=True):
        """
        Check scrollbar for wired image  in quick settings window is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.quick_settings_window.quick_settings_window_check_wired_image_scrollbar_is_enabled(self.sym_names.newWizard_ScrollBar_2, status)
    
    def quick_settings_window_click_on_wired_image_scrollbar(self):
        """
        Click 'scroll bar'for wired image in quick settings window_
        :return: True if click is successful else False.
        """
        return self.quick_settings_window.quick_settings_window_click_on_wired_image_scrollbar(self.sym_names.newWizard_ScrollBar_2)
    
    def quick_settings_window_check_wiring_image_is_visible(self ,visible=True):
        """
        Check wiring image in quick settings window is visible.
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        return self.quick_settings_window.quick_settings_window_check_wiring_image_is_visible(self.sym_names.newWizard_Image, visible)
    
    def quick_settings_window_check_wiring_image_is_enabled(self ,status=True):
        """
        Check wiring image in quick settings window is enabled or disabled in quick settings window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.quick_settings_window.quick_settings_window_check_wiring_image_is_enabled(self.sym_names.newWizard_Image, status)
    
    def quick_settings_window_validate_controller_wiring_diagram(self,wiring_diagram):
        """
        Check wiring diagram in the quick settings window.
        :param wiring_diagram : path of the wiring diagram.
        :return: True if images are same,False otherwise.
        """
        sym_wiring_diagram = self.sym_names.newWizard_Image
        return self.quick_settings_window.quick_settings_window_validate_controller_wiring_diagram(sym_wiring_diagram,wiring_diagram)
    
    def quick_settings_window_get_parameter_details(self):
        """
        Get the parameter details from the quick settings window.
        :return: list of dictionaries for parameter with its details.
        """
        menucode_sym_name = self.sym_names.newWizard_menuCode_Label
        param_sym_name = self.sym_names.newWizard_parameterName_Label
        help_sym_name = self.sym_names.newWizard_parameter_description
        return self.quick_settings_window.quick_settings_window_get_parameter_details(self.sym_names.newWizard_ListView,self.sym_names.Common_KoolProg_PopUp_OK_Button,menucode_sym_name,param_sym_name,help_sym_name)
    
    def quick_settings_window_click_finish_button(self):
        """
        Click on 'FINISH' button in quick settings window_
        :return: True if click is successful else False.
        """
        return self.quick_settings_window.quick_settings_window_click_finish_button(self.sym_names.newWizard_FINISH_Button)
    
    def quick_settings_window_click_X_button(self):
        """
        Click 'X' button in quick settings window_
        :return: True if click is successful else False.
        """
        return self.quick_settings_window.quick_settings_window_click_X_button(self.sym_names.newWizard_X_Button)
    
# ######################## Firmware Upgrade start ######################################################
    
    def firmware_upgrade_get_progress_label_text(self):
        """
        Get the progress label text from the firmware upgrade window..
        :return: String of progress label text.
        """
        return self.firmwareUpgrade.firmware_upgrade_get_progress_label_text(self.sym_names.copytocontroller_copying_Status_Label)
        
    def firmware_upgrade_check_progress_bar_is_visible(self, visible=True):
        """
        verify the "progress bar" is visible in firmware upgrade window.
        :param visible: check visible status(True or False).
        :return:True if visible else False.
        """
        return self.firmwareUpgrade.firmware_upgrade_check_progress_bar_is_visible(self.sym_names.copytocontroller_copying_ProgressBar, visible)
    
    def firmware_upgrade_check_progress_bar_is_enabled(self, status=True):
        """
        verify the "progress bar" is enabled or disabled in firmware upgrade window.
        :param status: boolean status value True or False.
        :return: True if progress bar is enabled value is equal to status else False.
        """
        return self.firmwareUpgrade.firmware_upgrade_check_progress_bar_is_enabled(self.sym_names.copytocontroller_copying_ProgressBar,status)
    
    def firmware_upgrade_check_firmware_update_failed_progress_bar_is_visible(self, visible=True):
        """
        verify the firmware update failed "progress bar" is visible in firmware upgrade window.
        :param visible: check visible status(True or False).
        :return:True if visible else False.
        """
        return self.firmwareUpgrade.firmware_upgrade_check_firmware_update_failed_progress_bar_is_visible(self.sym_names.copytocontroller_copying_ProgressBar_red, visible)
    
    def firmware_upgrade_check_firmware_update_failed_progress_bar_is_enabled(self, status=True):
        """
        verify the firmware update failed "progress bar" is enabled or disabled in firmware upgrade window.
        :param status: boolean status value True or False.
        :return: True if progress bar is enabled value is equal to status else False.
        """
        return self.firmwareUpgrade.firmware_upgrade_check_firmware_update_failed_progress_bar_is_enabled(self.sym_names.copytocontroller_copying_ProgressBar_red,status)
    
    def firmware_upgrade_get_color_of_firmware_update_failed_progress_bar(self):
        """
        Get color from firmware update failed "progress bar" in firmware upgrade window.
        :return: list of rgb colors of firmware update failed "progress bar".
        """
        return self.firmwareUpgrade.firmware_upgrade_get_color_of_firmware_update_failed_progress_bar(self.sym_names.copytocontroller_copying_ProgressBar_red)
        
    def firmware_upgrade_check_progress_percentage_is_visible(self, visible=True):
        """
        verify the "progress percentage" label is visible in firmware upgrade window.
        :param visible: check visible status(True or False).
        :return:True if visible else False.
        """
        return self.firmwareUpgrade.firmware_upgrade_check_progress_percentage_is_visible(self.sym_names.copytocontroller_copying_Progress_percentage, visible)
    
    def firmware_upgrade_check_progress_percentage_is_enabled(self, status=True):
        """
        verify the "progress percentage" label is enabled or disabled in firmware upgrade window.
        :param status: boolean status value True or False.
        :return: True if label is enabled value is equal to status else False.
        """
        return self.firmwareUpgrade.firmware_upgrade_check_progress_percentage_is_enabled(self.sym_names.copytocontroller_copying_Progress_percentage,status)
    
    def firmware_upgrade_get_progress_percentage_text(self):
        """
        Get the "progress percentage" label text in firmware upgrade window.
        :return: String of Progress percentage.
        """
        return self.firmwareUpgrade.firmware_upgrade_get_progress_percentage_text(self.sym_names.copytocontroller_copying_Progress_percentage)
    
    def firmware_upgrade_check_progress_percentage_text(self, text):
        """
        verify the "progress percentage" label text in firmware upgrade window.
        :param text: testData to compare.
        :return: True if succeeds.
        """
        return self.firmwareUpgrade.firmware_upgrade_check_progress_percentage_text(self.sym_names.copytocontroller_copying_Progress_percentage,text)
    
    def firmware_upgrade_verify_color_of_firmware_updated_failed_progress_bar(self,color_to_compare):
        """
        Verify the color of firmware updated failed progress bar in firmware upgrade window.
        :param color_to_compare: Color to compare.
        :return: True if succeeds.
        """
        return self.firmwareUpgrade.firmware_upgrade_verify_color_of_firmware_updated_failed_progress_bar(self.sym_names.copytocontroller_copying_ProgressBar_red, color_to_compare)
    
######################### Firmware Upgrade end ######################################################


    def popup_messagebox_window_check_message_text_after_stripping_newlines(self, message, window=None):
        """
        Verify message in popup window after stripping off newlines.
        :param sym:Symbolic name of popup message window text label.
        :param message:string to compare
        :return: True if succeed
        """
        if window == "PROJECT_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Msg_Label
        elif window == "PRINT_WINDOW":
            sym = self.sym_names.print_popup_Msg_Label
        elif window == "CONVERTSETTINGS_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Msg_Label
        elif window == "HOME_WINDOW":
            sym = self.sym_names.Common_KoolProg_PopUp_Msg_Label
        else:
            sym = self.sym_names.Common_KoolProg_PopUp_Msg_Label

        return self.popup_message.popup_messagebox_window_check_message_text_after_stripping_newlines(sym, message)
    
    
    def quick_settings_window_set_value_in_quick_wizard_listView(self, parameterName, setValue):
        
        """
        Sets value of provided parameter in quick setting window.
        :param parameterName: Parameter Name
        :param setValue: Set value 
        
        """
        return self.quick_settings_window.quick_settings_window_set_value_in_quick_wizard_listView(self.sym_names.Common_KoolProg_PopUp_OK_Button,self.sym_names.newWizard_ListView, parameterName, setValue)
    
    def online_service_window_click_resetAlarms_button(self):
        """
        Click on reset Alarms button in online service window-alarm tab.
        :return: True if succeeds.
        
        """
        self.OnlineServiceWindow.online_service_window_click_resetAlarms_button(self.sym_names.onlineService_Alarm_ResetAlarm_Button)

    def online_window_parse_the_alarm_datagrid(self):
        """
        Gets the alarm datagrid information.
        :return: datagrid Information will be returned
        
        """
        return self.OnlineServiceWindow.online_window_parse_the_alarm_datagrid(self.sym_names.onlineService_Alarm_Window_Alarms_Table)
    
    def online_service_window_get_headersList_in_alarm_dataGrid(self):
        """
        Gets the header List information from alarm DataGrid.
        :return: Header List information from alarm DataGrid.
        
        """
        return self.OnlineServiceWindow.online_service_window_get_headersList_in_alarm_dataGrid(self.sym_names.onlineService_Alarm_Window_Alarms_Table)
    
    def onlineService_Alarm_tree_click_item(self, tree_item_name):
        """
        Click tree item.
        :param tree_item_name: name of tree item.
        :return: Boolean True - it item is found and click.
        """
        sym_treeview = self.sym_names.onlineService_Alarm_Window_treeView
        return self.OnlineServiceWindow.online_window_alarmTab_tree_click_item(sym_treeview, tree_item_name)
    
    def online_window_parse_the_activeAlarm_datagrid(self):
        """
        Gets the active alarm datagrid information.
        :return: datagrid Information will be returned
        
        """
        return  self.OnlineServiceWindow.online_window_parse_the_activeAlarm_datagrid(self.sym_names.onlineService_Alarm_dataGridActiveAlarm_Table)
    
    def online_window_get_readOutsList_from_dataGrid(self):
        """
        Gets the readouts List information from DataGrid.
        :return: Readouts List information from DataGrid.
        
        """
        return  self.OnlineServiceWindow.online_window_get_readOutsList_from_dataGrid(self.sym_names.onlineService_Readouts_Table)
    
    def online_window_get_interLockList_from_alarmTab(self):
        """
        Gets the interLock List information.
        :return: InterLock List information.
        
        """
        return  self.OnlineServiceWindow.online_window_get_interLockList_from_alarmTab(self.sym_names.onlineService__AlarmTab_ReadOuts)
    
    def online_window_click_onAlarm_in_alarm_dataGrid(self,alarmName):
        """
        Clicks on the specified alarm row.
        :param alarmName: Alarm name.
        :return: True if succeeds, False otherwise.
        
        """
        return  self.OnlineServiceWindow.online_window_click_onAlarm_in_alarm_dataGrid(self.sym_names.onlineService_Alarm_Window_Alarms_Table,alarmName)
    
    def project_window_check_treeView_scrollBar_is_visible(self, status=True):
        """
        Check status of 'tree view scrollbar' is visible.
        :param sym: symbolic name of 'tree view scrollbar' in project window.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        return self.project_win.project_window_check_treeView_scrollBar_is_visible(self.sym_names.horizontal_ScrollBar_treeView,status)
    
    def project_window_check_treeView_scrollBar_is_enabled(self, status=True):
        """
        Check status of 'tree view scrollbar' is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        return self.project_win.project_window_check_treeView_scrollBar_is_enabled(self.sym_names.horizontal_ScrollBar_treeView, status)
    
