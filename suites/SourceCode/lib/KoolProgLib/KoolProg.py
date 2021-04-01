# -*- coding: utf-8 -*-

import common
import databaseConfig
import inputConfig
import winappApi
from testInput import Database
import time

class MainWindow:

    def __init__(self):
        """
        """
        self.winapp = winappApi.WinappLibAPI()
       
    def home_window_click_copy_to_controller_button(self, sym_name):
        """
        Clicks copy to controller Button in Main Window
        :param sym_name: Symbolic name of copy to controller Button in Main Window
        :return: True if succeed.
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("home_window_click_copy_to_controller_button failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.log("home_window_click_copy_to_controller_button is passed.", " click event symbolic name ={}".format(sym_name))
        return True

    def check_main_window_visible(self, sym_name_list):
        """
        """
        for sym in sym_name_list:
            if self.winapp.wait_until_object_visible(sym) is None:
                self.winapp.fail("check_main_window_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym))
                return None
            self.winapp.log("check_main_window_visible is passed",
                            "check list of sym sym_name_list='{}' is visible".format(sym_name_list))
        return True

    def Home_window_is_Enable(self, sym_names_list, visible=True):
        """
        verify the "Home" window labels are visible
        :param visible: check visible status(True or False).
        :param sym_names_list: symbolic names of Home window labels
        :return:True if succeeds
        """
        for sym_name in sym_names_list:
            if self.winapp.visible(sym_name) != visible:
                self.winapp.fail("Home_window_is_Enable is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("Home_window_is_Enable is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True
    
    def Home_window_check_buttons_and_labels_is_visible(self, sym_names_list, visible = True):
        """
        check the Home window lable, logo, buttons are visible.
        :param sym_names_list: symbolic names of Home window labels
        :param visible: Visibility Status(True or False)
        :return: True if succeeds.
        """
        for sym_name in sym_names_list:
            if self.winapp.visible(sym_name) != visible:
                self.winapp.fail("Home_window_check_buttons_and_labels_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("Home_window_check_buttons_and_labels_is_visible is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True
    
    def Home_window_check_Setparameter_button_text(self, sym_name, text):
        """
        Check the "Set Parameters" button text in Home window
        :param sym:symbolic name of Set Parameters button
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.log("Home_window_check_Setparameter_button_text is passed", text)
        else:
            self.winapp.fail("Home_window_check_Setparameter_button_text is failed", text)

    def Home_window_check_copytocontroller_button_text(self, sym_name, text):
        """
        Check the "Copy To Controller" button text in Home window
        :param sym_name:symbolic name of Copy To Controller button
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.log("Home_window_check_copytocontroller_button_text is passed", text)
        else:
            self.winapp.fail("Home_window_check_copytocontroller_button_text is failed", text)

    def Home_window_check_onlineservice_button_text(self, sym_name, text):
        """
        Check the "On-Line Service" button text in Home window
        :param sym_name:symbolic name of Copy To Controller button
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.log("Home_window_check_onlineservice_button_text is passed", text)
        else:
            self.winapp.fail("Home_window_check_onlineservice_button_text is failed", text)

    def click_settings_icon_in_homepage_window(self, sym_name):
        """
        Clicks settings Button in Main Window
        :param sym_name: Symbolic name of settings Button in Main Window
        :return: True if succeed.
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("click_settings_icon_in_homepage_window failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.log("click_settings_icon_in_homepage_window is passed.",
                        " click event symbolic name ={}".format(sym_name))
        return True

    def preference_window_click_save_button(self, sym_name):
        """
        Click save button in preference window.
        :param path: symbolic name of save button in preference window.
        :return: True if click succeed else False.
        """
        return self.winapp.ClickButton(sym_name)
    
    def get_koolprog_version(self, sym):
        """
        Get the KoolProg version from the main window.
        :param sym: Symbolic name of the KoolProg version in Main window.
        """
        text = self.winapp.get_text(sym)
        if not text:
            self.winapp.fail("get_koolprog_version is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("get_koolprog_version is passed ...",
                        "sym = '{}'  ...".format(sym))
        return text

    def check_koolprog_version(self, sym_name, version_string):
        """
        validate koolprog version
        """
        txt=self.winapp.get_text(sym_name)[:-6]
        if common.compare_uincode_lines(txt,version_string):
            self.winapp.log("check_koolprog_version is passed", version_string)
        else:
            self.winapp.fail("check_koolprog_version is failed", version_string)

    def click_set_parameter_button(self, sym_name):
        """
        Clicks set Parameter Button in Main Window
        :param sym_name: Symbolic name of Set Parameter Button in Main Window
        :return: True if succeed.
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("click_set_parameter_button failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.log("click_set_parameter_button is passed.", " click event symbolic name ={}".format(sym_name))
        return True

    def click_online_service_button(self, sym_name):
        """
        Click on "Online Servie " button in Home window
        :param sym_name: symbolic name of "Online Service" button
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("click_online_service_button is failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("click_online_service_button is passed..",
                             " click event symbolic name ={}".format(sym_name))
        return True

    def Home_window_check_change_user_tooltip(self, sym, tooltip_text):
        """
        verify the "change user" label tooltip in Home window
        :param sym: symbolic name of change user
        :param tooltip_text: change user tooltip text
        :return:True if succeeds
        """
        ui_tooltip = self.winapp.tooltip(sym)
        if ui_tooltip != tooltip_text:
            self.winapp.fail("Home_window_check_change_user_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip_text))
            return False
        self.winapp.log("Home_window_check_change_user_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip_text))
        return True
    
    def Home_window_check_change_user_is_visible(self, sym_name, visible=True):
        """
        verify the "change user" label is visible in Home window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic names of change user.
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            elf.winapp.fail("Home_window_check_change_user_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Home_window_check_change_user_is_visible is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True

    def Home_window_check_User_label_text(self, sym_name, text):
        """
        verify the "User" label text in Home window
        :param sym_name: symbolic name of User label 
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Home_window_check_User_label_text is passed", text)
        else:
            self.winapp.fail("Home_window_check_User_label_text is failed", text)
            
    def Home_window_check_set_parameter_is_visible(self, sym_name, visible=False):
        """
        verify the "Set Parameter" label is visible in Home window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic names of Set Parameter label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Home_window_check_set_parameter_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Home_window_check_set_parameter_is_visible is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True        
            
    def Home_window_check_Online_service_is_visible(self, sym_name, visible=True):
        """
        verify the "On-Line service" label is visible in Home window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic names of On-Line service label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            elf.winapp.fail("Home_window_check_Online_service_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Home_window_check_Online_service_is_visible is passed ..",
                        "sym_name_list = {}".format(sym_name))          
            
    def Home_window_check_help_is_Enabled(self, sym_name, status=True):
        """
        Check the "Help" button is enabled or disabled.
        :param sym_name: symbolic names of Help button
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Home_window_check_help_is_Enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Home_window_check_help_is_Enabled is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True           
            
    def Home_window_check_change_user_is_Enabled(self, sym_name, status=True):
        """
        Check the "Change User" button is enabled or disabled.
        :param sym_name: symbolic names of Change User button
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Home_window_check_change_user_is_Enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Home_window_check_change_user_is_Enabled is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True   

    def Home_window_check_Online_service_is_Enabled(self, sym_name, status=True):
        """
        verify the "On-Line service" label is Enable in Home window
        :param status: check Enable status(True or False).
        :param sym_name: symbolic names of On-Line service label
        :return:True if succeeds
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Home_window_check_Online_service_is_Enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Home_window_check_Online_service_is_Enabled is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True            

    def Home_window_check_set_parameter_is_Enabled(self, sym_name, status=True):
        """
        verify the "Set Parameter" label is Enabled in Home window
        :param status: check Enabled status(True or False).
        :param sym_name: symbolic names of Set Parameter label
        :return:True if succeeds
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Home_window_check_set_parameter_is_Enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Home_window_check_set_parameter_is_Enabled is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True

    def Home_window_check_copy_to_controller_is_Enabled(self, sym_name, status=True):
        """
        verify the "Copy to controller" label is Enabled in Home window
        :param status: check Enabled status(True or False).
        :param sym_name: symbolic names of Copy to controller label
        :return:True if succeeds
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Home_window_check_copy_to_controller_is_Enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Home_window_check_copy_to_controller_is_Enabled is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True

    def Home_window_check_setting_button_is_Enabled(self, sym_name, status=True):
        """
        verify the "Setting" button is Enabled in Home window
        :param status: check Enabled status(True or False).
        :param sym_name: symbolic names of Setting button
        :return:True if succeeds
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Home_window_check_setting_button_is_Enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Home_window_check_setting_button_is_Enabled is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True

    def Home_window_click_change_user_button(self, sym_name):
        """
        Click on the "Change User" Button
        :param sym_name: Symbolic name of "Change User" Button
        :return: True if succeed.
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("Home_window_click_change_user_button failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.log("Home_window_click_change_user_button is passed.", " click event symbolic name ={}".format(sym_name))
        return True
             
class SetparamWindow:
    """
    """

    def __init__(self, *args, **kwargs):
        self.winapp = winappApi.WinappLibAPI()

    def set_param_window_is_visible(self, sym_name_list, visible=True):
        """
        Check visiblity of setparameter window
        :param visible: check visible status(True or False).
        :param sym_name_list: list of symbolic names present in setparameter window.
        :return: True if visible is Equal else False.
        """
        for sym in sym_name_list:
            if self.winapp.visible(sym) != visible:
                self.winapp.fail("set_param_window_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym))
                return False
        self.winapp.pass_log("set_param_window_is_visible is passed ..",
                             "sym_name_list = {}".format(sym_name_list))
        return True

    def set_param_window_check_close_button_is_visible(self, sym_name, visible=True):
        """
        Check close button in setparameter window is visible
        :param sym_name: symbolic name of close button.
        :param visible: check visible status(True or False).
        :return: True if visible is Equal else False.
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail(" set_param_window_check_close_button_is_visible is failed..",
                             " check event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("set_param_window_check_close_button_is_visible is passed ..",
                             "sym_name = {}".format(sym_name))
        return True

    def set_param_window_check_open_button_is_visible(self, sym_name, visible=True):
        """
        Check open button visible.
        :param sym_name: symbolic name of open button.
        :param visible: check visible status(True or False).
        :return: True if visible is Equal else False.
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail(" set_param_window_check_open_button_is_visible is failed..",
                             " check event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("set_param_window_check_open_button_is_visible is passed ..",
                             "sym_name = {}".format(sym_name))
        return True

    def set_param_window_check_new_button_is_visible(self, sym_name, visible=True):
        """
        Check new button visible.
        :param sym_name: symbolic name of new button.
        :param visible: check visible status(True or False).
        :return: True if visible is Equal else False.
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("set_param_window_check_new_button_is_visible is failed..",
                             " check event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("set_param_window_check_new_button_is_visible is passed ..",
                             "sym_name = {}".format(sym_name))
        return True

    def set_param_window_check_import_settings_from_controller_button_is_visible(self, sym_name, visible=True):
        """
        Check import settings from controller button is visible.
        :param sym_name: symbolic name of import settings from controller button.
        :param visible: check visible status(True or False).
        :return: True if visible is Equal else False.
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("set_param_window_check_import_settings_from_controller_button_is_visible is failed..",
                             " check event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("set_param_window_check_import_settings_from_controller_button_is_visible is passed ..",
                             "sym_name = {}".format(sym_name))
        return True

    def set_param_window_check_import_controller_model_button_is_visible(self, sym_name, visible=True):
        """
        Check import controller model button visible.
        :param sym_name: symbolic name of import controller model button.
        :param visible: check visible status(True or False).
        :return: True if visible is Equal else False.
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("set_param_window_check_import_controller_model_button_is_visible is failed..",
                             " check event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("set_param_window_check_import_controller_model_button_is_visible is passed ..",
                             "sym_name = {}".format(sym_name))
        return True

    def set_param_window_click_close_button(self, sym_name):
        """
        Click close button in setparameter window
        :param sym_name: symbolic name of close button.
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("set_param_window_click_close_button is failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("set_param_window_click_close_button is passed..",
                             " click event symbolic name ={}".format(sym_name))
        return True

    def set_param_window_click_new_button(self, sym_name):
        """
        Click "new" button in setparameter window
        :param sym_name: symbolic name of "new" button.
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("set_param_window_click_new_button is failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("set_param_window_click_new_button is passed..",
                             " click event symbolic name ={}".format(sym_name))
        return True

    def set_param_window_click_open_button(self, sym_name):
        """
        Click "open" button in setparameter window
        :param sym_name: symbolic name of "open" button.
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("set_param_window_click_open_button is failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("set_param_window_click_open_button is passed..",
                             " click event symbolic name ={}".format(sym_name))

        return True

    def set_param_window_click_import_setting_from_controller_button(self, sym_name):
        """
        Click "import setting from controller" button in setparameter window
        :param sym_name: symbolic name of "import setting from controller" button.
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("set_param_window_click_import_setting_from_controller_button is failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("set_param_window_click_import_setting_from_controller_button is passed..",
                             " click event symbolic name ={}".format(sym_name))
        return True

    def set_param_window_click_import_controller_model(self, sym_name):
        """
        Click "import controller model" button in setparameter window
        :param sym_name: symbolic name of "import controller model" button.
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("set_param_window_click_import_controller_model is failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("set_param_window_click_import_controller_model is passed..",
                             " click event symbolic name ={}".format(sym_name))
        return True

    def set_param_window_open_recent_project(self, sym, projectname):
        """
        Open a recent given project in set parameter window .
        :param sym: symbolic name of recent listbox.
        :param projectname: project name to select from list.
        :return: Boolean if project selected successfully.
        """
        return self.winapp.select_item_in_list_box(sym, projectname)

    def set_param_window_get_open_recent_project_files_list(self, sym, tooltip=False):
        """
        Get list of recent files in setparameter window.
        :param sym:symbolic name of recent listbox.
        :param tooltip: True - To get tooltip with list of recent files, False - List of recent files only.
        :return:list of recent files
        """
        return self.winapp.get_list_box_items(sym, tooltip)

    def set_param_window_compare_new_button_tooltip(self, sym_name, tooltip):
        """
        In setparamter window  Compare tooltip text of new button tooltip
        :param sym_name: symbolic name of new button
        :param tooltip: string to check with tooltip
        :return: True if visible is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("set_param_window_compare_new_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("set_param_window_compare_new_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True

    def set_param_window_compare_close_button_tooltip(self, sym_name, tooltip):
        """
         In setparamter window Compare tooltip text of close button tooltip
        :param sym_name: symbolic name of close button
        :param tooltip: string to check with tooltip
        :return: True if visible is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("set_param_window_compare_close_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("set_param_window_compare_close_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True

    def set_param_window_compare_open_button_tooltip(self, sym_name, tooltip):
        """
         In setparamter window Compare tooltip text of open button tooltip
        :param sym_name: symbolic name of open button
        :param tooltip: string to check with tooltip
        :return: True if visible is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("set_param_window_compare_open_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("set_param_window_compare_open_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True

    def set_param_window_compare_import_controller_model_button_tooltip(self, sym_name, tooltip):
        """
         In setparamter window Compare tooltip text of "import controller model" button tooltip
        :param sym_name: symbolic name of "import controller model" button
        :param tooltip: string to check with tooltip
        :return: True if visible is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("set_param_window_compare_import_controller_model_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("set_param_window_compare_import_controller_model_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True

    def set_param_window_compare_import_setting_from_controller_button_tooltip(self, sym_name, tooltip):
        """
         In setparamter window Compare tooltip text of "import setting from controller" button tooltip
        :param sym_name: symbolic name of "import setting from controller" button
        :param tooltip: string to check with tooltip
        :return: True if visible is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("set_param_window_compare_import_setting_from_controller_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("set_param_window_compare_import_setting_from_controller_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True

    def set_param_window_check_text_label_setparameter(self, sym, text):
        """
        Set parameter window check "label" text of "Setparameter".
        :param sym:symbolic name of "label"
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("set_param_window_check_text_label_setparameter is failed ...",
                             "sym ='{}', text='{}'".format(sym, text))
            return False
        self.winapp.pass_log("set_param_window_check_text_label_setparameter is passed ...")
        return True

    def set_param_window_check_text_label_open_a_recent_setting_file(self, sym, text):
        """
        Set parameter window check "label" text of "open a recent setting file".
        :param sym:symbolic name of "label"
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("set_param_window_check_text_label_open_a_recent_setting_file is failed ...",
                             "sym ='{}', text='{}'".format(sym, text))
            return False
        self.winapp.pass_log("set_param_window_check_text_label_open_a_recent_setting_file is passed ...")
        return True

    def set_param_window_check_text_label_setting_files(self, sym, text):
        """
        Set parameter window check "label" text of "setting files".
        :param sym:symbolic name of "label"
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("set_param_window_check_text_label_setting_files is failed ...",
                             "sym ='{}', text='{}'".format(sym, text))
            return False
        self.winapp.pass_log("set_param_window_check_text_label_setting_files is passed ...")
        return False

    def set_param_window_check_text_label_controller_model(self, sym, text):
        """
        Set parameter window check "label" text of "controller model".
        :param sym:symbolic name of "label"
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("set_param_window_check_text_label_controller_model is failed ...",
                             "sym ='{}', text='{}'".format(sym, text))
            return False
        self.winapp.pass_log("set_param_window_check_text_label_controller_model is passed ...")
        return True

    def set_param_window_check_text_label_new_button(self, sym, text):
        """
        Set parameter window check "label" text of "new button "
        :param sym:symbolic name of "label"
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("set_param_window_check_text_label_new_button is failed ...",
                             "sym ='{}', text='{}'".format(sym, text))
            return False
        self.winapp.pass_log("set_param_window_check_text_label_new_button is passed ...")
        return True

    def set_param_window_check_text_label_open_button(self, sym, text):
        """
        Set parameter window check "label" text of "open button "
        :param sym:symbolic name of "label"
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("set_param_window_check_text_label_open_button is failed ...",
                             "sym ='{}', text='{}'".format(sym, text))
            return False
        self.winapp.pass_log("set_param_window_check_text_label_open_button is passed ...")
        return True

    def set_param_window_check_text_label_import_controller_model_button(self, sym, text):
        """
        Set parameter window check "label" text of "import controller model button"
        :param sym:symbolic name of "label"
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("set_param_window_check_text_label_import_controller_model_button_button is failed ...",
                             "sym ='{}', text='{}'".format(sym, text))
            return False
        self.winapp.pass_log("set_param_window_check_text_label_import_controller_model_button_button is passed ...")
        return True

    def set_param_window_check_text_label_import_settings_from_controller_button(self, sym, text):
        """
        Set parameter window check "label" text of "import settings from controller button"
        :param sym:symbolic name of "label"
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("set_param_window_check_text_label_import_settings_from_controller_button is failed ...",
                             "sym ='{}', text='{}'".format(sym, text))
            return False
        self.winapp.pass_log("set_param_window_check_text_label_import_settings_from_controller_button is passed ...")
        return True

    def set_param_window_check_text_label_new_button(self, sym, text):
        """
        Set parameter window check "label" text of "new button "
        :param sym:symbolic name of "label"
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("set_param_window_check_text_label_new_button is failed ...",
                             "sym ='{}', text='{}'".format(sym, text))
            return False
        self.winapp.pass_log("set_param_window_check_text_label_new_button is passed ...")
        return True

    def set_param_window_check_text_label_open_button(self, sym, text):
        """
        Set parameter window check "label" text of "open button "
        :param sym:symbolic name of "label"
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("set_param_window_check_text_label_open_button is failed ...",
                             "sym ='{}', text='{}'".format(sym, text))
            return False
        self.winapp.pass_log("set_param_window_check_text_label_open_button is passed ...")
        return True

    def set_param_window_check_text_label_import_controller_model_button(self, sym, text):
        """
        Set parameter window check "label" text of "import controller model button"
        :param sym:symbolic name of "label"
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("set_param_window_check_text_label_import_controller_model_button_button is failed ...",
                             "sym ='{}', text='{}'".format(sym, text))
            return False
        self.winapp.pass_log("set_param_window_check_text_label_import_controller_model_button_button is passed ...")
        return True

    def set_param_window_check_text_label_import_settings_from_controller_button(self, sym, text):
        """
        Set parameter window check "label" text of "import settings from controller button"
        :param sym:symbolic name of "label"
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("set_param_window_check_text_label_import_settings_from_controller_button is failed ...",
                             "sym ='{}', text='{}'".format(sym, text))
            return False
        self.winapp.pass_log("set_param_window_check_text_label_import_settings_from_controller_button is passed ...")
        return True
    
class WindowDialog:
    """

    """

    def __init__(self, *args, **kwargs):
        self.winapp = winappApi.WinappLibAPI()

    def Window_Dialog_is_enabled(self, sym_name_list, enable=True):
        """
        Checks window dialog is enabled.
        :param enable:default window is enable
        :param sym_name_list:Symbolic names of objects in window dialog.
        :return: True if succeeds.
        """
        for sym in sym_name_list:
            ui_enabled = self.winapp.Enable(sym)
            if ui_enabled != enable:
                self.winapp.fail("Window_Dialog_is_enabled is failed ..",
                                 "couldn't able to found symbolic name = {} enabled ={} ui_enabled ={}".
                                 format(sym, enable, ui_enabled))
                return None
        self.winapp.log("Window_Dialog_is_enabled is passed ..",
                        "sym_name_list = {}  enabled ={}".format(sym_name_list, enable))
        return True

    def Window_Dialog_click_open_window_cancel_button(self, syn_name):
        """
        check open dialogue window is Enable in project window
        :param syn_name: symbolic name of window dialogue cancel button
        """
        if not self.winapp.ClickButton(syn_name):
            self.winapp.fail("Window_Dialog_click_open_window_cancel_button is failed",
                             " check event symbolic name ={}".format(syn_name))
            return False
        return True

    def Window_Dialog_click_open_button(self, sym_name):
        """
        Clicks open button in open dialog window.
        :param sym_name: Symbolic name of open button.
        :return: True if succeeds.

        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("Window_Dialog_click_open_button failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.log("Window_Dialog_click_open_button is passed.",
                        " click event symbolic name ={}".format(sym_name))
        return True

    def Window_Dialog_check_unavailable_file_pop_up(self, sym_name_list, enable=True):
        """
        Checks open window popup dialog is enabled for unavailable file.
        :param sym_name_list: Symbolic names of window popup dialog.
        :param enable:by default window will be enable
        :return: True if succeeds.
        """
        for sym in sym_name_list:
            ui_enabled = self.winapp.Enable(sym)
            if ui_enabled != enable:
                self.winapp.fail("Window_Dialog_check_unavailable_file_pop_up is failed ..",
                                 "couldn't able to found symbolic name = {} enabled ={} ui_enabled ={}".
                                 format(sym, enable, ui_enabled))
                return None
        self.winapp.log("Window_Dialog_check_unavailable_file_pop_up is passed ..",
                        "sym_name_list = {}  enabled ={}".format(sym_name_list, enable))
        return True

    def Window_Dialog_click_save_button(self, sym):
        """
        Click save button in open dialog window.
        :param sym: symbolic name of window dialog save button.
        :return: True if succeeds.

        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Window_Dialog_click_save_button is failed..",
                             " click event symbolic name ={}".format(sym))
            return False
        self.winapp.pass_log("Window_Dialog_click_save_button is passed.",
                             " click event symbolic name ={}".format(sym))
        return True

    def Window_Dialog_select_filter(self, sym, name):
        """
        Open window add filters by given name.
        :param sym: symbolic name of filter combo box.
        :param name: name of filter to selected.
        :return: True if succeed
        """
        return self.winapp.select_item_in_list_box(sym, name)

    def Window_Dialog_get_filter_text(self, sym, dialog="OPEN"):
        """
        Window dialog add filters by given name.
        :param sym: symbolic name of filter combo box.
        :param dialog: window dialog OPEN or SAVEAS.
        :return: String of text selected in filter combobox.
        """
        return self.winapp.get_select_list_Box_text(sym)

    def Window_Dialog_get_list_of_files(self, sym):
        """
        Open window add filters by given name.
        :param sym: symbolic name of filter combo box.
        :return: True if succeed
        """
        return self.winapp.get_list_of_files_from_open_dialog(sym)

    def Window_Dialog_select_file_from_list_of_files_in_window(self, sym, filename):
        """
        Select file from the list of files from the open window.
        :param sym: symbolic name of list of filter.
        :param filename:filename to open
        :return: True if succeed
        """
        return self.winapp.select_file_from_list_of_files_from_window_dialog(sym, filename)

    def Window_Dialog_go_to_given_location(self, sym_name, path):
        """
        Writes explorer path to go given location.
        :param path: path to explorer to move.
        :return: True if succeed
        """
        self.Window_Dialog_write_project_path(sym_name, path)
        self.winapp.press_Enter_in_keyBoard()
        return True

    def Window_Dialog_get_explorer_path(self, syn_name):
        """
        get the file path from the open window toolbar 
        :param syn_name:symbolics name of the open window toolbar
        :return: Path
        """
        text = self.winapp.opendialog_get_current_explorer_path(syn_name)
        if not text:
            self.winapp.fail("Window_Dialog_get_explorer_path is failed ...",
                             "sym = '{}' ".format(syn_name))
            return False

        self.winapp.log("Window_Dialog_get_explorer_path is passed ...",
                        "sym = '{}'  ...".format(syn_name))
        return text

    def Window_Dialog_write_project_path(self, sym_name, project_file):
        """
        Set project path in selected window(Open or Save As) and enter the file name.
        :param sym_name : symbolic name of edit in open window
        :param project_file : project file name along with the path.
        :return: True if succeed
        """
        if not self.winapp.set_text(sym_name, project_file):
            self.winapp.fail("Window_Dialog_write_project_path is failed",
                             " sym_name ={} expected text ={} ".format(sym_name, project_file))
            return False
        self.winapp.pass_log("Window_Dialog_write_project_path is passed...",
                             " sym_name ={} expected text ={} ".format(sym_name, project_file))
        return True

    def Window_Dialog_click_cancel_button(self, sym_name):
        """
        Click on "Cancel" button in window dialog
        :param sym_name: symbolic name of open dialogue window cancel button
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("Window_Dialog_click_cancel_button is failed",
                             " check event symbolic name ={}".format(sym_name))
            return False
        
        self.winapp.pass_log("Window_Dialog_click_cancel_button is passed...",
                             " sym_name ={}".format(sym_name))
        return True

    def Window_Dialog_check_cancel_button_text(self, sym_name, text):
        """
        check the text of cancel button on window dialog
        :param sym_name: symbolic name of window dialog cancel button
        :param text:button text to compare
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym_name, text):
            self.winapp.fail("Window_Dialog_check_cancel_button_text is failed",
                             " check event symbolic name ={}".format(sym_name))
            return False
        
        self.winapp.pass_log("Window_Dialog_check_cancel_button_text is passed...",
                             " sym_name ={}".format(sym_name))
        return True


    def Window_Dialog_check_make_new_folder_button_text(self, sym_name, text):
        """
        Check the New Folder Button Text in Window Dialog. 
        :param sym_name: symbolic name of Make New Folder button in window dialogue
        :param text:button text to compare
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym_name, text):
            self.winapp.fail("Window_Dialog_check_make_new_folder_button_text is failed",
                             " check event symbolic name ={}".format(sym_name))
            return False
        
        self.winapp.pass_log("Window_Dialog_check_make_new_folder_button_text is passed...",
                             " sym_name ={}".format(sym_name))
        return True
    
    def Window_Dialog_check_OK_button_text(self, sym_name, text):
        """
        Check the text of ok button in window dialog
        :param sym_name: Symbolic name of OK button in window dialogue
        :param text:button text to compare
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym_name, text):
            self.winapp.fail("Window_Dialog_check_OK_button_text is failed",
                             " check event symbolic name ={}".format(sym_name))
            return False
        
        self.winapp.pass_log("Window_Dialog_check_OK_button_text is passed...",
                             " sym_name ={}".format(sym_name))
        return True

    def Window_Dialog_get_file_name(self, sym_name):
        """
        get the project name from the dialog window
        :param sym:symbolic name of the dialog edit
        :return: True if succeed
        """
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("Window_Dialog_get_file_name(self,sym_name): is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("Window_Dialog_get_file_name is passed ...",
                        "sym = '{}'  ...".format(sym_name))
        return text
    
    def Window_Dialog_check_file_name_text(self, sym_name, text):
        """
        Check the file_name in Window Dialog. 
        :param sym_name: symbolic name of file name editbox in dialog
        :param text:text to compare
        :return: True if succeeds.
        """
        ui_text = self.winapp.get_text(sym_name)
        if not common.compare_text(ui_text, text):
            self.winapp.fail("Window_Dialog_check_file_name_text is failed",
                             " ui text ={} and text = {}".format(ui_text,text))
            return False
        
        self.winapp.pass_log("Window_Dialog_check_file_name_text is passed...",
                             " ui text ={} and text = {}".format(ui_text,text))
        return True
    
    def Window_Dialog_click_OK_button(self, sym_name):
        """
        Click on "OK" button in browse window dialog
        :param sym_name: symbolic name of OK button in browse window dialog
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("Window_Dialog_click_OK_button is failed",
                             " check event symbolic name ={}".format(sym_name))
            return False
        
        self.winapp.log("Window_Dialog_click_OK_button is passed ...",
                        "sym = '{}'  ...".format(sym_name))
        return True

    def Window_Dialog_click_New_Folder_button(self, sym_name):
        """
        Click on "New Folder" button in browse window dialog
        :param sym_name: symbolic name of OK button in browse window dialog
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("Window_Dialog_click_New_Folder_button is failed",
                             " check event symbolic name ={}".format(sym_name))
            return False
        
        self.winapp.log("Window_Dialog_click_New_Folder_button is passed ...",
                        "sym = '{}'  ...".format(sym_name))
        return True

    def Window_Dialog_check_supporting_filters(self,sym_name, tooltip=False):
        """
        Check the window dialog shows all the supporting filters.
        :param sym_name:symbolic name of the filter combobox
        :param dialog:dialog to validate
        :return: True if succeed
        """
        ui_open_filter_text = self.winapp.get_list_box_items(sym_name, tooltip)
        if not ui_open_filter_text :
            self.winapp.fail("Window_Dialog_check_supporting_filters is failed",
                             " check event symbolic name ={}".format(sym_name))
            return False
        
        self.winapp.log("Window_Dialog_check_supporting_filters is passed ...",
                        "sym = '{}'  ...".format(sym_name))
        return ui_open_filter_text
            
class WindowDialogPopUp:
    """
    """

    def __init__(self):
        """

        """
        self.winapp = winappApi.WinappLibAPI()

    def Window_Dialog_PopUp_visible(self, sym_name, visible=True):
        """
        window dialog pop-up is visible
        :param sym_name: list of symbolic names check visiblity.
        :param visible: visiblity check of dialog(True or False).
        :return: True if visiblity is equal.
        """
        for sym in sym_name:
            ui_enabled = self.winapp.visible(sym)
            if ui_enabled != visible:
                self.winapp.fail("Window_Dialog_PopUp_visible is failed ..",
                                 "couldn't able to found symbolic name = {} enabled ={} ui_enabled ={}".
                                 format(sym, visible, ui_enabled))
                return None
        self.winapp.pass_log("Window_Dialog_PopUp_visible is passed ..",
                             "sym_name_list = {}  enabled ={}".format(sym_name, visible))
        return True

    def Window_Dialog_PopUp_Click_Yes(self, sym_name):
        """
        window dialog popup click yes button.
        :param sym_name:symbolic name of yes button.
        :return:True if button is present else False.
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("Window_Dialog_PopUp_Click_Yes is failed ...", "sym = '{}' ".format(sym_name))
            return False

        self.winapp.pass_log("Window_Dialog_PopUp_Click_Yes is passed ...", "sym = '{}' ".format(sym_name))
        return True

    def Window_Dialog_PopUp_Click_No(self, sym_name):
        """
        Window dialog popup click no button.
        :param sym_name:symbolic name of no button.
        :return:True if button is present else False.
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("Window_Dialog_PopUp_Click_No is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.pass_log("Window_Dialog_PopUp_Click_No is passed ...",
                             "sym = '{}' ".format(sym_name))
        return True

    def Window_Dialog_PopUp_Click_Ok(self, sym_name):
        """
        Window dialog popup click ok button.
        :param sym_name:symbolic name of ok button.
        :return:True if button is present else False.
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("Window_Dialog_PopUp_Click_Ok is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.pass_log("Window_Dialog_PopUp_Click_Ok is passed ...",
                             "sym = '{}' ".format(sym_name))
        return True

    def Window_Dialog_PopUp_Check_Text(self, sym_name, message):
        """
        Window dialog popup check text.
        :param sym_name:symbolic name message.
        :param message: message string to compare.
        :return:True if text message is equal else False.
        """
        if not self.winapp.compare_text(sym_name, message):
            self.winapp.fail("Window_Dialog_PopUp_Check_Text is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.pass_log("Window_Dialog_PopUp_Check_Text is passed ...",
                             "sym = '{}' ".format(sym_name))
        return True

class NewProjectWindow:
    """
    """

    ONE_SECOND = 1

    def __init__(self, *args, **kwargs):
        self.winapp = winappApi.WinappLibAPI()
        self.commonfunction = CommonFunction()

    def new_project_window_is_visible(self, sym_name_list, visible=True):
        """
        """
        for sym in sym_name_list:
            ui_visible = self.winapp.visible(sym)
            if ui_visible != visible:
                self.winapp.fail("new_project_window_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {} visible ={} ui_visible ={}".
                                 format(sym, visible, ui_visible))
                return None
        self.winapp.log("new_project_window_is_visible is passed ..",
                        "sym_name_list = {}  visible ={}".format(sym_name_list, visible))
        return True

    def select_controller_in_new_project_window(self, sym, fam, variant):
        """
        """
        self.winapp.select_tab_and_click_child(sym, fam, variant)
    
    def new_prj_window_select_controller_family(self, sym, fam):
        """
        Select controller family in the new project window
        :param sym: symbolic name of controller family tree items
        :param fam: controller family
        :return: True if succeeds.
        """
        if not self.winapp.select_Expander(sym, fam):
            self.winapp.fail("new_prj_window_select_controller_family is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.pass_log("new_prj_window_select_controller_family is passed ...",
                             "sym = '{}' ".format(sym))
        return True
    
    def select_controller_family_in_new_project_window(self, sym, fam, val):
        """
        Select controller family from new project window
        :param sym: symbolic name of controller family tree items
        :param fam: controller family
        :param val: controller variant
        """
        self.winapp.select_tab(sym, fam, val)

    def compare_titile_text_in_new_project_window(self, sym_name, text_compare):
        """
        """
        if not self.winapp.compare_text(sym_name, text_compare):
            self.winapp.fail("compare_titile_text_in_new_project_window is failed")
        self.winapp.log("compare_titile_text_in_new_project_window is passed...")

    def new_prj_validate_prodImage_wiringDiagram(self, sym_prod_image,
                                                 sym_wiring_diagram, sym_prod_details, prod_image, wiring_diagram,
                                                 product_details):
        """
        """
        if self.new_prj_window_validate_controller_product_image(sym_prod_image, prod_image):
            if self.new_prj_window_validate_controller_wiring_diagram(sym_wiring_diagram, wiring_diagram):
                if self.new_prj_window_validate_controller_description(sym_prod_details, product_details):
                    return True
        return False

    def new_prj_window_validate_controller_product_image(self, sym_prod_image, prod_image):
        """
        Check wiring diagram in new project window.
        :param sym_prod_image: symbolic name of product image.
        :param prod_image: path of product image.
        :return: True if image is equal else False.
        """
        if not self.commonfunction.get_image_by_sym_and_compare_images(sym_prod_image, prod_image):
            self.winapp.fail("new_prj_validate_prodImage_wiringDiagram is failed",
                             "get_image_by_sym_and_compare_images for symbolic name ={} prod image ={}".format(
                                 sym_prod_image, prod_image))
            return False
        return True

    def new_prj_window_validate_controller_wiring_diagram(self, sym_wiring_diagram, wiring_diagram):
        """
        Check wiring diagram in new project window.
        :param sym_wiring_diagram: symbolic name of wiring image.
        :param wiring_diagram: path of wiring diagram.
        :return: True if image is equal else False.
        """
        if not self.commonfunction.get_image_by_sym_and_compare_images(sym_wiring_diagram, wiring_diagram):
            self.winapp.fail("new_prj_validate_prodImage_wiringDiagram is failed",
                             "get_image_by_sym_and_compare_images for symbolic name ={} wiring_diagram={}".format(
                                 sym_wiring_diagram, wiring_diagram))
            return False
        return True

    def new_prj_window_validate_controller_description(self, sym_prod_details, product_details):
        """
        Check description text in new project window.
        :param sym_prod_details: symbolic name of description text box.
        :param product_details: string text to compare text in textbox.
        :return: True if text is equal . False if unequal.
        """
        ui_text = self.winapp.get_text(sym_prod_details)
        if not common.compare_text_without_newlines(ui_text, product_details):
            self.winapp.fail("new_prj_window_validate_controller_description is failed",
                             "get_text_by_sym_compare for symbolic name ={} text to compare ={}".format(
                                 sym_prod_details, product_details))
            return False
        self.winapp.pass_log("new_prj_window_validate_controller_description is passed",
                             "get_text_by_sym_compare for symbolic name ={} text to compare ={}".format(
                                 sym_prod_details, product_details))
        return True

    def new_prj_window_ETC1Hx_app_selection(self, sym_select_app,
                                            sym_pwr_suply, sym_spindle, select_app, pwr_supply, spindle):
        """
        """
        if not self.winapp.click_and_select_list_Box(sym_select_app, select_app):
            self.winapp.fail("new_prj_window_ETC1Hx_app_selection is failed",
                             "sym_select_app  ={} expected text ={}".format(sym_select_app, select_app))

        if not self.winapp.click_and_select_list_Box(sym_pwr_suply, pwr_supply):
            self.winapp.fail("new_prj_window_ETC1Hx_app_selection, click_and_select_list_Box is failed",
                             " sym_pwr_suply ={} expected text ={} ".format(sym_pwr_suply, pwr_supply))

        if not self.winapp.click_and_select_list_Box(sym_spindle, spindle):
            self.winapp.fail("new_prj_window_ETC1Hx_app_selection, click_and_select_list_Box is failed",
                             " sym_spindle ={} expected text ={} ".format(sym_spindle, spindle))

    def new_prj_window_EET_app_selection(self, sym_code_num, sym_prod_version, code_num, prod_version):
        """
        """
        if not self.winapp.click_and_select_list_Box(sym_code_num, code_num):
            self.winapp.fail("new_prj_window_EET_app_selection, click_and_select_list_Box is failed",
                             " sym_code_num ={} expected text ={} ".format(sym_code_num, code_num))

        if not self.winapp.click_and_select_list_Box(sym_prod_version, prod_version):
            self.winapp.fail("new_prj_window_EET_app_selection, click_and_select_list_Box is failed",
                             " sym_prod_version ={} expected text ={} ".format(sym_prod_version, prod_version))

    def new_prj_window_ERC_app_selection(self, sym_code_num, sym_app, code_num, app):
        """
        """
        if not self.winapp.click_and_select_list_Box(sym_app, app):
            self.winapp.fail("new_prj_window_ERC_app_selection, click_and_select_list_Box is failed",
                                  " sym_app ={} expected text ={} ".format(sym_app, app))

        if not self.winapp.click_and_select_list_Box(sym_code_num, code_num):
            self.winapp.fail("new_prj_window_ERC_app_selection, click_and_select_list_Box is failed",
                             " sym_code_num ={} expected text ={} ".format(sym_code_num, sym_app))

    def new_prj_window_EKE1x_app_selection(self, sym_code_num, sym_prod_version, code_num, prod_version):
        """
        """
        if not self.winapp.click_and_select_list_Box(sym_code_num, code_num):
            self.winapp.fail("new_prj_window_EKE1x_app_selection, click_and_select_list_Box is failed",
                             " sym_code_num ={} expected text ={} ".format(sym_code_num, code_num))

        if not self.winapp.click_and_select_list_Box(sym_prod_version, prod_version):
            self.winapp.fail("new_prj_window_EKE1x_app_selection, click_and_select_list_Box is failed",
                             " sym_prod_version ={} expected text ={} ".format(sym_prod_version, prod_version))

    def new_prj_window_AKCC55_app_selection(self, sym_code_num, sym_soft_version, code_num, soft_version):
        """
        """
        if not self.winapp.click_and_select_list_Box(sym_code_num, code_num):
            self.winapp.fail("new_prj_window_AKCC55_app_selection, click_and_select_list_Box is failed",
                             " sym_code_num ={} expected text ={} ".format(sym_code_num, code_num))

        if not self.winapp.click_and_select_list_Box(sym_soft_version, soft_version):
            self.winapp.fail("new_prj_window_AKCC55_app_selection, click_and_select_list_Box is failed",
                             " sym_soft_version ={} expected text ={} ".format(sym_soft_version, soft_version))

    def new_prj_window_AKCC55_codeNumber_selection(self, sym_code_num, code_num):
        """
        Selects code Number for AKCC Project Creation.
        :param sym_code_num: Symbolic name of code number combobox
        :param code_num: Code number to be selected.
        :return: True if succeeds, False Otherwise.
        
        """
        if not self.winapp.click_and_select_list_Box(sym_code_num, code_num):
            self.winapp.fail("new_prj_window_AKCC55_codeNumber_selection, click_and_select_list_Box is failed",
                             " sym_code_num ={} expected text ={} ".format(sym_code_num, code_num))
            return False
        return True   
    def new_prj_window_prj_name(self, sym_name, prj_name):
        """
        """
        if not self.winapp.set_text(sym_name, prj_name):
            self.winapp.fail("new_prj_window_prj_name, set_text is failed",
                             " sym_name ={} expected text ={} ".format(sym_name, prj_name))
            return False
        self.winapp.log("new_prj_window_prj_name, set_text is passed...",
                        " sym_name ={} expected text ={} ".format(sym_name, prj_name))
        return True

    def new_prj_window_prj_description(self, sym_name, description):
        """
        """
        if not self.winapp.set_text(sym_name, description):
            self.winapp.fail("new_prj_window_prj_description, set_text is failed",
                             " sym_name ={} expected text ={} ".format(sym_name, description))
            return False

        self.winapp.log("new_prj_window_prj_description, set_text is Passed",
                        " sym_name ={} expected text ={} ".format(sym_name, description))
        return True

    def new_prj_window_ERC11x_app_selection(self, sym_code_num, sym_prod_version, code_num, prod_version):
        """
        """
        if not self.winapp.click_and_select_list_Box(sym_code_num, code_num):
            self.winapp.fail("new_prj_window_ERC11x_app_selection, click_and_select_list_Box is failed",
                             " sym_code_num ={} expected text ={} ".format(sym_code_num, code_num))

 

        if not self.winapp.click_and_select_list_Box(sym_prod_version, prod_version):
            self.winapp.fail("new_prj_window_ERC11x_app_selection, click_and_select_list_Box is failed",
                             " sym_prod_version ={} expected text ={} ".format(sym_prod_version, prod_version))
        
        self.winapp.log("new_prj_window_ERC11x_app_selection, click_and_select_list_Box is Passed",
                        " sym_code_num ={} expected text ={} sym_prod_version ={} expected text ={} ".format(sym_code_num, code_num,sym_prod_version,prod_version))
        
        return True

    def new_prj_window_click_next_button(self, sym):
        """
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("new_prj_window_click_next_button  failed..",
                             " click event symbolic name ={}".format(sym))
            return False

        self.winapp.log("new_prj_window_click_next_button is passed..",
                        " click event symbolic name ={}".format(sym))
        return True

    def new_prj_window_next_button_is_visible(self, sym, visible=True):
        """
        Check Next button is visible in new project window.
        :param sym:symbolic name of next button.
        :param visible: visible= True checks button presence ,False - window absense.
        :return: True if succeed
         """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("new_prj_window_click_next_button_is_visible is  failed..",
                             " click event symbolic name ={}".format(sym))
            return False

        self.winapp.log("new_prj_window_click_next_button_is_visible is  passed..",
                        " click event symbolic name ='{}' visibility ='{}'".format(sym, visible))
        return True

    def new_prj_window_finish_button_is_visible(self, sym, visible=True):
        """
        Check Finish button is visible in new project window.
        :param sym:symbolic name of finish button.
        :param visible: visible= True checks button presence ,False - window absense.
        :return: True if succeed
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("new_prj_window_finish_button_is_visible is  failed..",
                             " click event symbolic name ={}".format(sym))
            return False

        self.winapp.log("new_prj_window_finish_button_is_visible is  passed..",
                        " click event symbolic name ='{}' visibility ='{}'".format(sym, visible))
        return True

    def new_prj_window_cancel_button_is_visible(self, sym, visible=True):
        """
        Check Cancel button is visible in new project window.
        :param sym:symbolic name of cancel button.
        :param visible: visible= True checks button presence ,False - window absense.
        :return: True if succeed
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("new_prj_window_cancel_button_is_visible is  failed..",
                             " click event symbolic name ={}".format(sym))
            return False

        self.winapp.log("new_prj_window_cancel_button_is_visible is  passed..",
                        " click event symbolic name ='{}' visibility ='{}'".format(sym, visible))
        return True

    def new_prj_window_back_button_is_visible(self, sym, visible=True):
        """
        Check Back button is visible in new project window.
        :param sym:symbolic name of back button.
        :param visible: visible= True checks button presence ,False - window absense.
        :return: True if succeed
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("new_prj_window_back_button_is_visible is  failed..",
                             " click event symbolic name ={}".format(sym))
            return False

        self.winapp.log("new_prj_window_back_button_is_visible is  passed..",
                        " click event symbolic name ='{}' visibility ='{}'".format(sym, visible))
        return True

    def new_prj_window_click_back_button(self, sym):
        """
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("new_prj_window_click_back_button  failed..",
                             " click event symbolic name ={}".format(sym))
            return False

        self.winapp.log("new_prj_window_click_back_button is passed...",
                        " click event symbolic name ={}".format(sym))
        return True

    def new_prj_window_click_cancel_button(self, sym):
        """
        Click cancel button in new project window.
        :param sym: Symbolic name of cancel button in new project window.
        :return: True if succeed.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("new_prj_window_click_cancel_button  failed..",
                             " click event symbolic name ={}".format(sym))
            return False

        self.winapp.log("new_prj_window_click_cancel_button is passed...",
                        " click event symbolic name ={}".format(sym))
        return True

    def new_prj_window_click_finish_button(self, sym):
        """
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("new_prj_window_click_finish_button  failed..",
                             " click event symbolic name ={}".format(sym))
            return False

        self.winapp.log("new_prj_window_click_finish_button is passed ...",
                        " click event symbolic name ={}".format(sym))
        return True

    def create_new_project_get_product_details_from_key(self, key_list,
                                                        sym_code_num,
                                                        sym_soft_version,
                                                        sym_prod_version,
                                                        sym_select_app,
                                                        sym_your_part_num,
                                                        sym_pwr_suply,
                                                        sym_spindle):
        """
        key list is [controllerApplication , power ,spindle ,partnum,controllerCodeNo ,softwareVersion , controllerPV,]
        """
        result = dict()
        for k in key_list:
            if k == "controllerApplication":
                result[k] = self.winapp.get_select_list_Box_text(sym_select_app)
            elif k == "power":
                result[k] = self.winapp.get_select_list_Box_text(sym_pwr_suply)
            elif k == "spindle":
                result[k] = self.winapp.get_select_list_Box_text(sym_spindle)
            elif k == "partnum":
                result[k] = self.winapp.get_text(sym_your_part_num)
            elif k == "controllerCodeNo":
                result[k] = self.winapp.get_select_list_Box_text(sym_code_num)
            elif k == "softwareVersion":
                result[k] = self.winapp.get_select_list_Box_text(sym_soft_version)
            elif k == "controllerPV":
                result[k] = self.winapp.get_select_list_Box_text(sym_prod_version)
            else:
                self.winapp.fail(
                    "create_new_project_get_product_details_from_key is used a undefined key = '{}'".format(k))
                return None
        return result

    def create_new_project_set_product_details_from_dict(self, _dict, sym_name_dict, product_details_dict,
                                                         product_details_order):
        """
        select the values in controller details selection window for create project
        :param  _dict : it is dict which has keys:
                        ["controllerFamily","controllerVariant","controllerCodeNo","softwareVersion",
                                    "controllerPV","controllerApplication", "PortNumber"]
        :param  sym_name_dict: it is dict which have symbolic name of code number, application, software version, product version, application, power supply,spindle
        :param product_details_dict: dict of controller details keys
        :param product_details_order: list of controller details keys
        :return: True if succeed
        """
        for i in product_details_order:
            if i in sym_name_dict:
                if product_details_dict[i] == "ComboBox":
                    if not self.winapp.click_and_select_list_Box(sym_name_dict[i], _dict[i]):
                        self.winapp.fail("create_new_project_set_product_details_from_dict is failed ...",
                                         "sym = '{}'".format(sym_name_dict[i]))
                        return False
        self.winapp.log("create_new_project_set_product_details_from_dict is passed ...",
                        "sym = '{}'".format(sym_name_dict))
        return True

    def create_new_project_set_text_in_project_name_txt_box(self, sym, text):
        """
        Set text in project name textbox.
        """
        if not self.winapp.set_text(sym, text):
            self.winapp.fail("create_new_project_set_text_in_project_name_txt_box is failed ...",
                             "sym = '{}' and failed to set text ='{}' ".format(sym, text))
            return False

        self.winapp.log("create_new_project_set_text_in_project_name_txt_box is passed ...",
                        "sym = '{}' and failed to set text ='{}' ".format(sym, text))
        return True

    def create_new_project_get_text_from_project_name_txt_box(self, sym):
        """
        Get text in project name textbox.
        :param sym: symbolic name of textbox
        :return: string
        """
        text = self.winapp.get_text(sym)
        if not text:
            self.winapp.fail("create_new_project_get_text_from_project_name_txt_box is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("create_new_project_get_text_from_project_name_txt_box is passed ...",
                        "sym = '{}'  ...".format(sym))
        return text

    def create_new_project_verify_text_in_project_name_edit_box(self, sym, projectName):
        """
        Verify text in project name textbox.
        :param sym: symbolic name of textbox
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym, projectName):
            self.winapp.fail("create_new_project_verify_text_in_project_name_edit_box is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("create_new_project_verify_text_in_project_name_edit_box is passed ...",
                        "sym = '{}'  ...".format(sym))
        return True

    def create_new_project_verify_text_in_project_description_edit_box(self, sym, projectDescription):
        """
        Verify text in project description textbox.
        :param sym: symbolic name of textbox
        :return: True if succeed
        """

        if not self.winapp.compare_text(sym, projectDescription):
            self.winapp.fail("create_new_project_verify_text_in_project_description_edit_box is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("create_new_project_verify_text_in_project_description_edit_box is passed ...",
                        "sym = '{}'  ...".format(sym))
        return True

    def create_new_project_get_text_from_project_description_txt_box(self, sym):
        """
        Get text in project description textbox.
        :param sym: symbolic name of textbox
        :return: string
        """
        text = self.winapp.get_text(sym)
        if not text:
            self.winapp.fail("create_new_project_get_text_from_project_description_txt_box is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("create_new_project_get_text_from_project_description_txt_box is passed ...",
                        "sym = '{}'  ...".format(sym))
        return text

    def create_new_project_set_text_in_project_description(self, sym, text):
        """
        Set text in project name textbox.
        """
        if not self.winapp.set_text(sym, text):
            self.winapp.fail("create_new_project_set_text_in_project_description is failed ...",
                             "sym = '{}' and failed to set text ='{}' ".format(sym, text))
            return False

        self.winapp.log("create_new_project_set_text_in_project_description is passed ...",
                        "sym = '{}' and failed to set text ='{}' ".format(sym, text))
        return True

    def check_text_of_project_name_and_description_title(self, sym_name, label_text):
        """
        Check text in new project window title label.
        :param sym_name symbolic name of label.
        :param label_text: text to compare in label
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym_name, label_text):
            self.winapp.fail("check_text_of_project_name_and_description_title is  failed..",
                             " check event symbolic name ={}".format(sym_name))
            return False
        return True
    
    def new_prj_window_check_text_of_code_number_label(self, sym_name, text):
        """
        Check text of code number label in new project window.
        :param sym_name: Symbolic name of code number label in new project window.
        :param text: testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym_name, text):
            self.winapp.fail("new_prj_window_check_text_of_code_number_label is  failed..",
                             " check event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("new_prj_window_check_text_of_code_number_label is  passed..",
                             " check event symbolic name ={}".format(sym_name))
        return True
    
    def new_prj_window_check_text_of_sw_version_label(self, sym_name, text):
        """
        Check text of software version label in new project window.
        :param sym_name: Symbolic name of software version label in new project window.
        :param text: testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym_name, text):
            self.winapp.fail("new_prj_window_check_text_of_sw_version_label is  failed..",
                             " check event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("new_prj_window_check_text_of_sw_version_label is  passed..",
                             " check event symbolic name ={}".format(sym_name))
        return True

    def new_prj_window_check_text_of_select_controller_code_number_and_sw_version_label(self, sym_name, text):
        """
        Check text of select controller code number and software version label in new project window.
        :param sym_name: Symbolic name of select controller code number and software version label in new project window.
        :param text: testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym_name, text):
            self.winapp.fail("new_prj_window_check_text_of_select_controller_code_number_and_sw_version_label is  failed..",
                             " check event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("new_prj_window_check_text_of_select_controller_code_number_and_sw_version_label is  passed..",
                             " check event symbolic name ={}".format(sym_name))
        return True


    def check_text_of_project_name_label(self, sym_name, label_text):
        """
        Check text in new project name label.
        :param sym_name symbolic name of label.
        :param label_text: text to compare in label
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym_name, label_text):
            self.winapp.fail("check_text_of_project_name_label is  failed..",
                             " check event symbolic name ={}".format(sym_name))
            return False
        return True

    def new_prj_window_Chk_project_name_is_empty(self, sym_name):
        """
        Check text in new project name is empty.
        :param sym_name: symbolic name of project name.
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym_name, ""):
            self.winapp.fail("check_text_of_project_name_label is  failed..",
                             " check event symbolic name ={}".format(sym_name))
            return False
        return True

    def project_name_textbox_visible(self, sym_name):
        """
        Check new project window project name text box is visible.
        :param sym_name symbolic name of label.
        :return: True if succeed
        """
        if not self.winapp.visible(sym_name):
            self.winapp.fail("project_name_textbox_visible is  failed..",
                             " check event symbolic name ={}".format(sym_name))
            return False
        return True

    def create_new_project_win_check_project_name_length(self, sym, length):
        """
        Check project name in new project window should be equal to len
        :param  len : int length of text in project name.
        """
        name = self.create_new_project_get_text_from_project_name_txt_box(sym)
        if len(name) != length:
            self.winapp.fail("create_new_project_win_check_project_name_length is failed ",
                             "while comparing text len ='{}' for name ='{}'".format(length, name))
            return False

        self.winapp.log("create_new_project_win_check_project_name_length is Passed ",
                        "while comparing text len ='{}' for name ='{}'".format(length, name))
        return True

    def create_new_project_win_check_project_description_length(self, sym, length):
        """
        Check project name in new project window should be equal to len
        :param  len : int length of text in project name.
        """
        name = self.create_new_project_get_text_from_project_description_txt_box(sym)
        if len(name) != length:
            self.winapp.fail("create_new_project_win_check_project_description_length is failed ",
                             "while comparing text len ='{}' for name ='{}'".format(length, name))
            return False

        self.winapp.log("create_new_project_win_check_project_description_length is Passed ",
                        "while comparing text len ='{}' for name ='{}'".format(length, name))
        return True

    def check_text_of_project_description_label(self, sym_name, label_text):
        """
        Check text in new project description label.
        :param sym_name symbolic name of label.
        :param label_text: text to compare in label
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym_name, label_text):
            self.winapp.fail("check_text_of_project_description_label is failed..",
                             " check event symbolic name ={}".format(sym_name))
            return False
        return True

    def project_description_textbox_visible(self, sym_name):
        """
        Project description textbox visible.
        :param sym_name: symbolic name of Project description textbox
        """
        if not self.winapp.visible(sym_name):
            self.winapp.fail("project_description_textbox_visible is  failed..",
                             " check event symbolic name ={}".format(sym_name))
            return False
        return True

    def check_close_button_is_visible(self, sym_name):
        """
        Check close button is visible.
        :param sym_name: Close button symbolic name
          
        """
        if not self.winapp.visible(sym_name):
            self.winapp.fail("check_close_button_on_new_project_window_visible  failed..",
                             " check event symbolic name ={}".format(sym_name))
            return False
        return True

    def check_close_button_tooltip(self, sym_name, tooltip):
        """
        Check close button tooltip text.
        :param sym_name: Close button symbolic name
        :param tooltip: tooltip text to compare.
        :return: True if tooltip text is equal.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("new project window check_close_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("new project window check_close_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True

    def new_prj_window_click_close_button(self, sym_name):
        """
        Click close button in new project window
        :param  sym_name:close button sym
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("new project window new_prj_window_click_close_button  failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        return True

    def new_project_win_compare_close_button_tooltip(self, sym_name, tooltip):
        """
        Check close button tooltip text
        :param sym_name: close button symbolic name.
        :param tooltip: tooltip text to compare.
        :return True if tooltip succeed else False
        """
        text = self.winapp.tooltip(sym_name)
        if text != tooltip:
            self.winapp.fail("set_param_window_compare_close_button_tooltip is failed..",
                             " check event symbolic name ={} ui tooltip = '{}' and tooltip = '{}'".format(sym_name,
                                                                                                          text,
                                                                                                          tooltip))
            return False
        return True
    
    def new_prj_product_description_window_check_text_of_next_button(self, sym_name, value):
        """        
        Check text of next button.
        :param sym_names:symbolic name of next button
        :param value: Test Data value of next button.
        :return: True if succeed
        
        """
        if not self.winapp.compare_text(sym_name, value):
            self.winapp.fail("new_prj_product_description_window_check_text_of_next_button is failed ..",
                             " symbolic name = {}".format(sym_name))
            return False
        return True

    def new_prj_controller_selection_window_check_text_of_next_button(self, sym_name, value):
        """        
        Check text of next button.
        :param sym_names:symbolic name of next button
        :param value: Test Data value of next button.
        :return: True if succeed
        
        """
        if not self.winapp.compare_text(sym_name, value):
            self.winapp.fail("new_prj_controller_selection_window_check_text_of_next_button is failed ..",
                             " symbolic name = {}".format(sym_name))
            return False
        self.winapp.pass_log("new_prj_controller_selection_window_check_text_of_next_button is failed ..",
                             " symbolic name = {}".format(sym_name))
        return True

    def new_prj_window_check_text_of_cancel_button(self, sym_name, value):
        """        
        Check text of cancel button.
        :param sym_names:symbolic name of cancel button
        :param  value: Test Data value of cancel button.
        :return: True if succeed
        
        """
        if not self.winapp.compare_text(sym_name, value):
            self.winapp.fail("new_prj_window_check_text_of_cancel_button is failed ..",
                             " symbolic name = {}".format(sym_name))
            return False
        return True

    def new_prj_window_check_text_of_back_button(self, sym_name, value):
        """        
        Check text of back button.
        :param sym_names:symbolic name of back button
        :param value: Test Data value of back button.
        :return: True if succeed
        
        
        """
        if not self.winapp.compare_text(sym_name, value):
            self.winapp.fail("new_prj_window_check_text_of_back_button is failed ..",
                             " symbolic name = {}".format(sym_name))
            return False
        return True

    def new_prj_window_check_text_of_finish_button(self, sym_name, value):
        """        
        Check text of finish button.
        :param sym_names:symbolic name of finish button
        :param value: Test Data value of finish button.
        :return: True if succeed
        
        """
        if not self.winapp.compare_text(sym_name, value):
            self.winapp.fail("new_prj_window_check_text_of_finish_button is failed ..",
                             " symbolic name = {}".format(sym_name))
            return False
        return True

    def new_project_window_check_header_text(self, sym_name, value):
        """        
        Check text of header in new project window.
        :param sym_names:symbolic name of header in new project window.
        :param value: text to compare
        :return: True if succeed
        
        """
        if not self.winapp.compare_text(sym_name, value):
            self.winapp.fail("new_project_window_check_header_text is failed ..",
                             " symbolic name = {}".format(sym_name))
            return False
        return True

    def new_project_window_check_select_controller_model_label_text(self, sym_name, value):
        """        
        Check text of select_controller_model label in new project window.
        :param sym_names:symbolic name of select_controller_model label.
        :param value: text to compare
        :return: True if succeed
        
        """
        if not self.winapp.compare_text(sym_name, value):
            self.winapp.fail("new_project_window_check_select_controller_model_label_text is failed ..",
                             " symbolic name = {}".format(sym_name))
            return False
        return True

    def new_project_window_chk_controllerFamily_List(self, sym_name, controllerFamily_List):
        """
        Check the controller Family list in new project window.
        :param sym_name:symbolic name of tabFolder that has expanders as its child.
        :param controllerFamily_List: list of controller family names to compare
        :return: True if succeed
        """
        ui_list = self.winapp.getExpanderNames(sym_name)

        if common.compare_list(ui_list, controllerFamily_List):
            self.winapp.log("check_new_project_window_controllerFamily_List is passed",
                            "ui list = {} Input sheet list= {}".format(ui_list,controllerFamily_List))
            return True
        else:
            self.winapp.fail("check_new_project_window_controllerFamily_List is failed",
                             "ui list = {} Input sheet list= {}".format(ui_list,controllerFamily_List))
            return False

    def new_project_window_chk_controllerVariant_List(self, sym_name, controllerFamilyVariantDict):

        """
        Check the controller variant list for all controller family in new project window.
        :param sym_name:symbolic name of tabFolder that has expanders as its child.
        :param controllerFamilyVariantDict: dictionary of controller family and its corresponding controller variants.
        :return: True if succeed
        """

        for controllerFamily, variantList in controllerFamilyVariantDict.items():
            if not common.compare_list(variantList, self.winapp.get_Expander_Children_List(sym_name, controllerFamily)):
                self.winapp.fail("check_new_project_window_controllerVariant_List is failed")
                return False
            self.winapp.log("check_new_project_window_controllerVariant_List is passed")

        return True

    def new_prj_window_verify_given_controller_family_with_variant_is_selected(self, sym_name, family, variant):
        """
        Verify controller family will be expanded and the respective controller variant 
        is selected after clicking on back button
        :param sym_name:symbolic name of tabFolder that has expanders as its child.
        :param family: Controller family name
        :param variant: Controller variant name
        :return: True if succeed
        
        """

        if not self.winapp.check_Expander_isExpanded(sym_name, family):
            self.winapp.fail("new_prj_window_verify_expanded_products Expander:ControllerFamily failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        if not self.winapp.check_Expander_Child_IsSelected(sym_name, family, variant):
            self.winapp.fail("new_prj_window_verify_expanded_products ExpanderFocus:ControllerVariant failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        return True

    def new_project_details_selection_window_cursor_in_text_box_of_project_name_should_blink(self, sym_name):
        """
        Verify, cursor in text box of project name should blink in new project details selection window.
        :param sym_name: symbolic name of project name edit box.
        :return: True if succeed
        """
        if not self.winapp.check_cursor_focused(sym_name):
            self.winapp.fail(
                "new_project_details_selection_window_curse_in_text_box_of_project_name_should_blink failed..",
                " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.log(
            "new_project_details_selection_window_curse_in_text_box_of_project_name_should_blink is passed.",
            " click event symbolic name ={}".format(sym_name))
        return True
    
    def new_prj_window_check_quick_wizard_option_is_visible(self, sym_name, visible=True):
        """
        Check quick wizard option in new project window is visible.
        :param sym_name: Symbolic name of the quick wizard option in new project window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("new_prj_window_check_quick_wizard_option_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym_name, visible))

        self.winapp.pass_log("new_prj_window_check_quick_wizard_option_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym_name, visible))
        return True
    
    def new_prj_window_check_quick_wizard_option_is_enabled(self, sym_name, status=True):
        """
        Check quick wizard option in new project window is enabled.
        :param sym_name: Symbolic name of the quick wizard option in new project window.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("convert_settings_window_check_label_of_product_name_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym_name, status))

        self.winapp.pass_log("convert_settings_window_check_label_of_product_name_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym_name, status))
        return True
    
    def new_prj_window_uncheck_quick_wizard_option(self, sym_name):
        """
        Uncheck  quick wizard option for AKCC and EKE controller
        :param sym_name: symbolic name of quick wizard option
        :return: True if passed else failed.
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("uncheck_quick_wizard_option is failed.",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.log("uncheck_quick_wizard_option is passed.",
                        " click event symbolic name ={}".format(sym_name))
        return True
    
    def new_prj_window_check_quick_wizard_option(self, sym_name):
        """
        check  quick wizard option in Project description window.
        :param sym_name: symbolic name of quick wizard option
        :return: True if passed else failed.
        """
        if not self.winapp.check_checkbox(sym_name):
            self.winapp.fail("new_prj_window_uncheck_quick_wizard_option is failed.",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.log("new_prj_window_uncheck_quick_wizard_option is passed.",
                        " click event symbolic name ={}".format(sym_name))
        return True
    
    def new_prj_window_check_text_of_quick_wizard_option_label(self, sym_name, text):
        """
        Check text of quick wizard option label in new project description window.
        :param sym_name: symbolic name of quick wizard option
        :param text: testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym_name, text):
            self.winapp.fail("new_prj_window_check_text_of_quick_wizard_option_label is failed ..",
                             " symbolic name = {}".format(sym_name))
            return False
        self.winapp.pass_log("new_prj_window_check_text_of_quick_wizard_option_label is passed ..",
                             " symbolic name = {}".format(sym_name))
        return True

    def check_project_description_textbox_empty(self, sym_name):
        """
        Verify project description is empty
        :param sym_name: symbolic name of textbox of project description
        :return: True if succeed
        """
        if self.winapp.get_text(sym_name) != "":
            self.winapp.fail("check_project_description_textbox_empty is failed.",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.log("check_project_description_textbox_empty is passed.",
                        " click event symbolic name ={}".format(sym_name))
        return True

    def new_prj_window_check_list_items_in_listbox(self, sym_listbox, list_items):
        """
        Check list of items present in the list box of new project details selection.
        window.
        :param sym_listbox: symbolic name of listbox
        :param list_items: list of text to compare in list box.
        :return: True if list is equal else False
        """
        ui_list = self.winapp.get_list_box_items(sym_listbox)
        self.winapp.log(
            "new_prj_window_check_list_items_in_listbox comparing lists UI LIST ={} app list = {} ".format(ui_list,
                                                                                                           list_items))
        if not common.compare_list(ui_list, list_items):
            self.winapp.fail("new_prj_window_check_list_items_in_listbox is failed ...",
                             "sym = '{}' UI LIST ={} app list = {}  ".format(sym_listbox, ui_list, list_items))
            return False
        self.winapp.log("new_prj_window_check_list_items_in_listbox is passed ...",
                        "sym = '{}' UI LIST ={} app list = {}  ".format(sym_listbox, ui_list, list_items))
        return True

    def new_prj_window_check_application_list(self, sym_name, app_list):
        """
        Check list of controller application present in the list box of new project details selection window.
        :param sym_name: symbolic name of listbox
        :param app_list: list of text to compare in list box.
        :return: True if list is equal else False
        """
        if not self.new_prj_window_check_list_items_in_listbox(sym_name, app_list):
            self.winapp.fail("new_prj_window_check_application_list is failed ...",
                             "sym = '{}' app_list = '{}' ".format(sym_name, app_list))
            return False

        self.winapp.log("new_prj_window_check_application_list is passed ...",
                        "sym = '{}' app_list = '{}' ".format(sym_name, app_list))
        return True
    
    def new_prj_window_get_list_of_software_version(self, sym_name):
        """
        Get list of the software versions in the controller detail selection window..
        :param sym_name: Symbolic name of software version combobox in new project details selection window.
        :return: list of items in combobox.
        """
        list_items = self.winapp.get_list_box_items(sym_name)
        if not list_items:
            self.winapp.fail("new_prj_window_get_list_of_software_version is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("new_prj_window_get_list_of_software_version is passed ...", "sym = '{}'  ...".format(sym_name))
        return list_items
    
    def new_prj_window_get_list_of_code_number(self, sym_name):
        """
        Get list of the codenumber in the controller detail selection window..
        :param sym_name: Symbolic name of codenumber combobox in new project details selection window.
        :return: list of items in combobox.
        """
        list_items = self.winapp.get_list_box_items(sym_name)
        if not list_items:
            self.winapp.fail("new_prj_window_get_list_of_code_number is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("new_prj_window_get_list_of_code_number is passed ...", "sym = '{}'  ...".format(sym_name))
        return list_items

    def new_prj_window_check_powersupply_list(self, sym_name, pwr_list):
        """
        Check list of controller supported power supply present in the list box of new project details selection window.
        :param sym_name: symbolic name of listbox
        :param pwr_list: list of text to compare in list box.
        :return: True if list is equal else False
        """
        if not self.new_prj_window_check_list_items_in_listbox(sym_name, pwr_list):
            self.winapp.fail("new_prj_window_check_powersupply_list is failed ...",
                             "sym = '{}' pwr_list = '{}' ".format(sym_name, pwr_list))
            return False

        self.winapp.log("new_prj_window_check_application_list is passed ...",
                        "sym = '{}' pwr_list = '{}' ".format(sym_name, pwr_list))
        return True

    def new_prj_window_check_spindle_list(self, sym_name, spindle_list):
        """
        Check list of controller supported spindle types present in the list box of new project details selection
        window.
        :param sym_name: symbolic name of listbox
        :param spindle_list: list of text to compare in list box.
        :return: True if list is equal else False
        """
        if not self.new_prj_window_check_list_items_in_listbox(sym_name, spindle_list):
            self.winapp.fail("new_prj_window_check_spindle_list is failed ...",
                             "sym = '{}' pwr_list = '{}' ".format(sym_name, spindle_list))
            return False
        self.winapp.log("new_prj_window_check_spindle_list is passed ...",
                        "sym = '{}' pwr_list = '{}' ".format(sym_name, spindle_list))
        return True

    def new_prj_window_select_code_number_in_controller_details_selection_window(self, sym_code_num, code_num):
        """
        Select given code number in code number listbox in controller detail selection window.
        :param sym_code_num: symbolic name of product version list box.
        :param code_num: string code number.
        :return: boolean True if code number has selected successfully else False.
        """
        if not self.winapp.click_and_select_list_Box(sym_code_num, code_num):
            self.winapp.fail("new_prj_window_select_code_number_in_controller_details_selection_window is failed",
                             " sym_code_num ={} expected text ={} ".format(sym_code_num, code_num))
            return False
        return True

    def new_prj_window_select_application_in_controller_details_selection_window(self, sym_app, app):
        """
        Select given application in listbox in controller detail selection window.
        :param sym_app: symbolic name of app list box.
        :param app: string application.
        :return: boolean True if application has selected successfully else False.
        """
        if not self.winapp.click_and_select_list_Box(sym_app, app):
            self.winapp.fail("new_prj_window_select_application_in_controller_details_selection_window is failed",
                             " sym_code_num ={} expected text ={} ".format(sym_app, app))
            return False
        return True

    def new_prj_window_check_selected_code_num_has_product_version_list(self, sym_code_num, sym_prod_version_list,
                                                                        code_num, prod_version_list):
        """
        Select given code number in code number listbox in controller detail selection window,
        and check the list of product version present in it.
        :param sym_code_num : symbolic name of code number list box.
        :param sym_prod_version_list: symbolic name of product version list box.
        :param code_num: string code number.
        :param prod_version_list: list of product version string.
        :return: boolean True if code number has that list of product versions.
        """
        if not self.new_prj_window_select_code_number_in_controller_details_selection_window(sym_code_num, code_num):
            self.winapp.fail("new_prj_window_check_selected_code_num_has_product_version is failed",
                             "code number selection ={}".format(code_num))
            return False
        ui_prod_ver_list = self.winapp.get_list_box_items(sym_prod_version_list)
        if not common.compare_list(prod_version_list, ui_prod_ver_list):
            self.winapp.fail("new_prj_window_check_selected_code_num_has_product_version is failed",
                             "product version list while compare_list prod_version_list ='{}',\
                              ui_prod_ver_list='{}'".format(prod_version_list, ui_prod_ver_list))
            return False
        self.winapp.log("new_prj_window_check_selected_code_num_has_product_version is passed ...")
        return True

    def new_prj_window_check_selected_application_has_code_number_list(self, sym_app, sym_code_num_list, app,
                                                                       code_num_list):
        """
        Select given application in application listbox in controller detail selection window,
        and check the list of code number present in it.
        :param sym_app : symbolic name of application list box.
        :param sym_code_num_list: symbolic name of code number list box.
        :param app: string -> application.
        :param code_num_list: list of code number string.
        :return: boolean True if application has that list of code number.
        """
        if not self.new_prj_window_select_application_in_controller_details_selection_window(sym_app, app):
            self.winapp.fail("new_prj_window_check_selected_application_has_code_number_list is failed",
                             "application selection ={}".format(app))
            return False
        ui_list = self.winapp.get_list_box_items(sym_code_num_list)
        if not common.compare_list(code_num_list, ui_list):
            self.winapp.fail("new_prj_window_check_selected_application_has_code_number_list is failed",
                             "code number list while compare_list code_num_list ='{}',\
                              ui_list ='{}'".format(code_num_list, ui_list))
            return False
        self.winapp.log("new_prj_window_check_selected_application_has_code_number_list is passed ...")
        return True

    def new_prj_window_check_selected_code_num_has_software_version_list(self, sym_code_num, sym_software_list,
                                                                         code_num, software_list):
        """
        Select given code number in code number listbox in controller detail selection window,
        and check the list of product version present in it.
        :param sym_code_num : symbolic name of code number list box.
        :param sym_software_list: symbolic name of software version list box.
        :param code_num: string code number.
        :param software_list: list of software version string.
        :return: boolean True if code number has that list of product versions.
        """
        if not self.new_prj_window_select_code_number_in_controller_details_selection_window(sym_code_num, code_num):
            self.winapp.fail("new_prj_window_check_selected_code_num_has_software_version_list is failed",
                             "code number selection ={}".format(code_num))
            return False
        ui_list = self.winapp.get_list_box_items(sym_software_list)
        if not common.compare_list(software_list, ui_list):
            self.winapp.fail("new_prj_window_check_selected_code_num_has_software_version_list is failed",
                             "product version list while compare_list software_list ='{}',\
                              ui software_list ='{}'".format(software_list, ui_list))
            return False
        self.winapp.log("new_prj_window_check_selected_code_num_has_product_version is passed ...")
        return True

    def new_prj_window_check_project_name_label_is_visible(self, sym, visible=True):
        """
        Check "Project Name" Label is visible in new project window.
        :param sym:symbolic name of Project Name Label.
        :param visible: visible= True checks Label is visible ,False - Label is not visible.
        :return: True if succeed
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("new_prj_window_check_project_name_label_is_visible is  failed..",
                             " click event symbolic name ={}".format(sym))
            return False

        self.winapp.log("new_prj_window_check_project_name_label_is_visible is  passed..",
                        " click event symbolic name ='{}' visibility ='{}'".format(sym, visible))
        return True

    def new_prj_window_check_project_description_label_is_visible(self, sym, visible=True):
        """
        Check "Project description" Label is visible in new project window.
        :param sym:symbolic name of Project description Label.
        :param visible: visible= True checks Label is visible ,False - Label is not visible.
        :return: True if succeed
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("new_prj_window_check_project_description_label_is_visible is  failed..",
                             " click event symbolic name ={}".format(sym))
            return False

        self.winapp.log("new_prj_window_check_project_description_label_is_visible is  passed..",
                        " click event symbolic name ='{}' visibility ='{}'".format(sym, visible))
        return True

    def new_prj_window_check_project_description_Max_250_characters_Label_is_visible(self, sym, visible=True):
        """
        Check "Project description with Max 250 characters" Label is visible in new project window.
        :param sym:symbolic name of Project description with Max 250 Charcters label.
        :param visible: visible= True checks Label is visible ,False - Label is not visible.
        :return: True if succeed
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail(
                "new_prj_window_check_project_description_Max_250_characters_Label_is_visible is  failed..",
                " click event symbolic name ={}".format(sym))
            return False

        self.winapp.log("new_prj_window_check_project_description_Max_250_characters_Label_is_visible is  passed..",
                        " click event symbolic name ='{}' visibility ='{}'".format(sym, visible))
        return True
    
    def new_prj_window_get_variant_list_for_specific_controller_family(self,sym,fam):
        """
        Get the controller variants for the specific controller family in new project window.
        :param sym: symbolic name of the tab container in new project window
        :param fam: controller family
        :return: controller variant list for the controller family given.
        """
        controller_variant = self.winapp.get_child_list_from_tab(sym,fam)
        if not controller_variant:
            self.winapp.fail("new_prj_window_get_variant_list_for_specific_controller_family is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("new_prj_window_get_variant_list_for_specific_controller_family is passed ...",
                        "sym = '{}' ".format(sym))
        return controller_variant

class PopupMessageBox:
    """
    """
    ONE_SECOND = 1
    TEN_SECOND = 10
    EIGHTY_SECOND = 80

    def __init__(self):
        """
        """
        self.winapp = winappApi.WinappLibAPI()

    def popup_messagebox_window_click_ok_button(self, sym):
        """
        Click Ok button in pop window
        :param sym:Symbolic name of popup message window Ok button.
        :return: True if succeed.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("popup_messagebox_window_click_ok_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("popup_messagebox_window_click_ok_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True

    def popup_messagebox_window_click_no_button(self, sym):
        """
        Click no button in pop window
        :param sym:Symbolic name of popup message window No button.
        :return: True if succeed.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("popup_messagebox_window_click_no_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("popup_messagebox_window_click_no_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True

    def popup_messagebox_window_click_yes_button(self, sym):
        """
        Click yes button in pop window
        :param sym:Symbolic name of popup message window Yes button.
        :return: True if succeed.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("popup_messagebox_window_click_yes_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("popup_messagebox_window_click_yes_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True

    def popup_messagebox_window_check_message_text(self, sym, message):
        """
        Check message in popup window  
        :param sym:Symbolic name of popup message window text label.
        :param message:string to compare
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("popup_messagebox_window_check_message_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("popup_messagebox_window_check_message_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def popup_messagebox_window_check_message_text_after_stripping_newlines(self, sym, message):
        """
        Verify message in popup window after stripping off newlines.
        :param sym:Symbolic name of popup message window text label.
        :param message:string to compare
        :return: True if succeed
        """
        ui_text = self.winapp.get_text(sym)
        if not common.compare_text_without_newlines(ui_text, message):
            self.winapp.fail("popup_messagebox_window_check_message_text_after_stripping_newlines is failed ",
                             "while comparing text ='{}' and ui Text = '{}'".format(message, ui_text))
            return False
        self.winapp.log("popup_messagebox_window_check_message_text_after_stripping_newlines is passed ",
                        "while comparing text ='{}' and ui Text = '{}'".format(message, ui_text))
        return True

    def popup_messagebox_window_check_YES_button_text(self, sym, message):
        """
        check the "Yes" button text in pop-up window 
        :param sym:Symbolic name of popup message Yes button text .
        :param message:string to compare
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("popup_messagebox_window_check_YES_button_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("popup_messagebox_window_check_message_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True

    def popup_messagebox_window_check_NO_button_text(self, sym, message):
        """
        check the "No" button text in pop-up window 
        :param sym:Symbolic name of popup message No button text .
        :param message:string to compare
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("popup_messagebox_window_check_NO_button_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("popup_messagebox_window_check_message_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True

    def popup_messagebox_window_check_CANCEL_button_text(self, sym, message):
        """
        check the "Cancel" button text in pop-up window 
        :param sym:Symbolic name of popup message cancel button text.
        :param message:string to compare
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("popup_messagebox_window_check_CANCEL_button_text is failed ",
                             "while comparing text ='{}' for Symbolic name".format(message, sym))
            return False
        self.winapp.log("popup_messagebox_window_check_message_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True

    def popup_messagebox_window_NO_button_visible(self, sym, visible=True):
        """
        check the "No" button visible in pop-up window 
        :param sym:Symbolic name of popup message NO button.
        :param visible: visiblity check of dialog(True or False)
        :return: True if succeed
        """
        if visible != self.winapp.visible(sym, self.TEN_SECOND):
            self.winapp.fail("popup_messagebox_window_NO_button_visible is failed ",
                             "The symbolic name not visible is ='{}'".format(sym))
            return False

        self.winapp.log("popup_messagebox_window_NO_button_visible is passed ",
                        "sym_names_list is ='{}' and visible = '{}'".format(sym, visible))
        return True

    def popup_messagebox_window_CANCEL_button_visible(self, sym, visible=True):
        """
        check the "Cancel" button visible in pop-up window 
        :param sym:Symbolic name of popup message Cancel button.
        :param visible: visiblity check of dialog(True or False)
        :return: True if succeed
        """
        if visible != self.winapp.visible(sym, self.TEN_SECOND):
            self.winapp.fail("popup_messagebox_window_CANCEL_button_visible is failed ",
                             "The symbolic name not visible is ='{}'".format(sym))
            return False

        self.winapp.log("popup_messagebox_window_CANCEL_button_visible is passed ",
                        "sym is ='{}' and visible = '{}'".format(sym, visible))
        return True

    def popup_messagebox_window_YES_button_visible(self, sym, visible=True):
        """
        check the "Yes" button visible in pop-up window 
        :param sym:Symbolic name of popup message Yes button.
        :param visible: visiblity check of dialog(True or False)
        :return: True if succeed
        """
        if visible != self.winapp.visible(sym, self.TEN_SECOND):
            self.winapp.fail("popup_messagebox_window_YES_button_visible is failed ",
                             "The symbolic name not visible is ='{}'".format(sym))
            return False

        self.winapp.log("popup_messagebox_window_YES_button_visible is passed ",
                        "sym_names_list is ='{}' and visible = '{}'".format(sym, visible))
        return True

    def popup_messagebox_window_YES_button_Enabled(self, sym, status=True):
        """
        check the "Yes" button enabled/disabled in pop-up window
        :param sym:Symbolic name of popup message Yes button.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("popup_messagebox_window_YES_button_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("popup_messagebox_window_YES_button_Enabled is passed ..",
                        "sym_name_list = {}".format(sym))
        return True

    def popup_messagebox_window_NO_button_Enabled(self, sym, status=True):
        """
        check the "No" button enabled/disabled in pop-up window
        :param sym:Symbolic name of popup message No button.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("popup_messagebox_window_NO_button_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("popup_messagebox_window_NO_button_Enabled is passed ..",
                        "sym_name_list = {}".format(sym))
        return True

    def popup_messagebox_window_CANCEL_button_Enabled(self, sym, status=True):
        """
        check the "Cancel" button enabled/disabled in pop-up window
        :param sym:Symbolic name of popup message Cancel button.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("popup_messagebox_window_CANCEL_button_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("popup_messagebox_window_CANCEL_button_Enabled is passed ..",
                        "sym_name_list = {}".format(sym))
        return True

    def popup_messagebox_window_OK_button_Enabled(self, sym, status=True):
        """
        check the "OK" button enabled/disabled in popup window
        :param sym:Symbolic name of popup message OK button.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("popup_messagebox_window_OK_button_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("popup_messagebox_window_OK_button_Enabled is passed ..",
                        "sym_name_list = {}".format(sym))
        return True

    def popup_messagebox_window_OK_button_visible(self, sym, visible=True):
        """
        check the "OK" button visible in popup window
        :param sym:Symbolic name of popup message OK button.
        :param visible: visiblity check of dialog(True or False)
        :return: True if succeed
        """
        if visible != self.winapp.visible(sym, self.TEN_SECOND):
            self.winapp.fail("popup_messagebox_window_OK_button_visible is failed ",
                             "The symbolic name not visible is ='{}'".format(sym))
            return False

        self.winapp.log("popup_messagebox_window_OK_button_visible is passed ",
                        "sym_names_list is ='{}' and visible = '{}'".format(sym, visible))
        return True
    
    
    def popup_messagebox_window_OK_button_visibleStatus(self, sym):
        """
        Return the "OK" button visible status in popup window
        :param sym:Symbolic name of popup message OK button.
        :return: Status of OK Button
        
        """
        return self.winapp.visible(sym)

    def popup_messagebox_window_check_OK_button_text(self, sym, message):
        """
        Check the "OK" button text in pop-up window 
        :param sym:Symbolic name of popup message OK button text.
        :param message:string to compare
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("popup_messagebox_window_check_OK_button_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("popup_messagebox_window_check_message_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True

    def popup_messagebox_window_is_visible(self, sym_names_list, visible=True):
        """
        Check popup window is visible
        :param sym_names_list: list of symbolic name are present in popup window.
        :param visible: visiblity check of dialog(True or False)
        :return: True if succeed
        """
        for sym in sym_names_list:
            if visible != self.winapp.visible(sym, self.EIGHTY_SECOND):
                self.winapp.fail("popup_messagebox_window_is_visible is failed ",
                                 "The symbolic name not visible is ='{}'".format(sym))
                return False

        self.winapp.log("popup_messagebox_window_is_visible is passed ",
                        "sym_names_list is ='{}' and visible = '{}'".format(sym_names_list, visible))

        return True
    
    def popup_messagebox_window_return_existence_of_window(self,sym_name):
        """
        Return the existence of popup_messagebox_window.
        :param sym_name: symbolic name of popup_messagebox_window
        :return: True if exists or False Otherwise.
        
        """
        return self.winapp.visible(sym_name)
    
    def popup_messagebox_window_is_enabled(self, sym_names_list, status=True):
        """
        Check popup window is enabled or disabled.
        :param sym_names_list: list of symbolic name are present in popup window.
        :param status: boolean status value True or False.
        :return: True if succeeds
        """
        for sym_name in sym_names_list:
            if self.winapp.Enable(sym_name) != status:
                self.winapp.fail("popup_messagebox_window_is_enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("popup_messagebox_window_is_enabled is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True

    def popup_messagebox_window_click_Cancel_button(self, sym):
        """
        Click on close button(X mark button) in popup window.
        :param sym: symbolic name of ok button.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("popup_messagebox_window_click_Cancel_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("popup_messagebox_window_click_Cancel_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True

    def popup_messagebox_window_click_Close_button(self, sym):
        """
        Click Close button in  popup window.
        :param sym: symbolic name of popup message window close button.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("popup_messagebox_window_click_Close_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("popup_messagebox_window_click_Close_button is passed ...",
                        "sym = '{}' ".format(sym))

        return True

    def popup_messagebox_window_X_button_visible(self, sym, visible=True):
        """
        check the "X" button visible in pop-up window 
        :param sym:Symbolic name of popup message X button.
        :param visible: visiblity check of dialog(True or False)
        :return: True if succeed
        """
        if visible != self.winapp.visible(sym, self.TEN_SECOND):
            self.winapp.fail("popup_messagebox_window_X_button_visible is failed ",
                             "The symbolic name not visible is ='{}'".format(sym))
            return False

        self.winapp.log("popup_messagebox_window_X_button_visible is passed ",
                        "sym_names_list is ='{}' and visible = '{}'".format(sym, visible))
        return True

    def popup_messagebox_window_X_button_Enabled(self, sym, status=True):
        """
        check the "X" button enabled/disabled in popup window
        :param sym:Symbolic name of popup message X button.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("popup_messagebox_window_X_button_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("popup_messagebox_window_X_button_Enabled is passed ..",
                        "sym_name_list = {}".format(sym))
        return True

    def popup_messagebox_window_check_KoolProg_label_text(self, sym_name, text):
        
        """
        Check the "KoolProg" label text in pop-up window 
        :param sym_name:Symbolic name of "KoolProg" label.
        :param text:text to compare
        :return: True if succeed
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("popup_messagebox_window_check_KoolProg_label_text is passed", text)
        else:
            self.winapp.fail("popup_messagebox_window_check_KoolProg_label_text is failed", text)

    def popup_messagebox_window_check_X_button_text(self, sym, message):
        """
        Check the "X" button text in pop-up window 
        :param sym:Symbolic name of popup message X button text.
        :param message:string to compare
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("popup_messagebox_window_check_X_button_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("popup_messagebox_window_check_X_button_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True

    def popup_messagebox_window_click_Parameter_sheet_button(self, sym):
        """
        Click "Parameter Sheet" button in Print popup window.
        :param sym: symbolic name of Parameter Sheet button in popup message.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("popup_messagebox_window_click_Parameter_sheet_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("popup_messagebox_window_click_Parameter_sheet_button is passed ...",
                        "sym = '{}' ".format(sym))

        return True

    def popup_messagebox_window_click_Engineering_sheet_button(self, sym):
        """
        Click "Engineering Sheet" button in Print popup window.
        :param sym: symbolic name of 'Engineering Sheet' button in popup window.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("popup_messagebox_window_click_Engineering_sheet_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("popup_messagebox_window_click_Engineering_sheet_button is passed ...",
                        "sym = '{}' ".format(sym))

        return True

    def popup_messagebox_window_check_Engineering_sheet_button_text(self, sym, message):
        """
        Check the "Engineering sheet" button text in pop-up window 
        :param sym:Symbolic name of  'Engineering sheet' button in popup window.
        :param message:string to compare
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("popup_messagebox_window_check_Engineering_sheet_button_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("popup_messagebox_window_check_Engineering_sheet_button_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True

    def popup_messagebox_window_check_Parameter_sheet_button_text(self, sym, message):
        """
        Check the "Parameter sheet" button text in pop-up window 
        :param sym:Symbolic name of  'Parameter sheet' button in popup window.
        :param message:string to compare
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("popup_messagebox_window_check_Parameter_sheet_button_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("popup_messagebox_window_check_Parameter_sheet_button_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def popup_messagebox_window_click_InController_button(self, sym):
        """
        Click on "InController" button in Factory reset popup window
        :param sym:Symbolic name of popup message window InController button.
        :return: True if succeed.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("popup_messagebox_window_click_InController_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

 

        self.winapp.log("popup_messagebox_window_click_InController_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True

    def popup_messagebox_window_click_InProject_button(self, sym):
        """
        Click on "InProject" button in Factory reset popup window
        :param sym:Symbolic name of popup message window InProject button.
        :return: True if succeed.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("popup_messagebox_window_click_InProject_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False
        self.winapp.log("popup_messagebox_window_click_InProject_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def popup_messagebox_window_check_InProject_button_isEnabled(self, sym, status=True ):
        """
        check the "InProject" button enabled/disabled in popup window
        :param sym:Symbolic name of popup message X button.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("popup_messagebox_window_check_InProject_button_isEnabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("popup_messagebox_window_check_InProject_button_isEnabled is passed ..",
                        "sym_name_list = {}".format(sym))
        return True
    
    
    def popup_messagebox_window_check_InController_button_isEnabled(self, sym, status=True ):
        """
        check the "InController" button enabled/disabled in popup window
        :param sym:Symbolic name of InController button.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("popup_messagebox_window_check_InController_button_isEnabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("popup_messagebox_window_check_InController_button_isEnabled is passed ..",
                        "sym_name_list = {}".format(sym))
        return True

class ProjectWindow(Database):
    """
    """

    def __init__(self, *args, **kwargs):
        self.winapp = winappApi.WinappLibAPI()
        self.commonfunction = CommonFunction()
        Database.__init__(self)
        
    def project_window_check_treeView_scrollBar_is_enabled(self, sym, status=True):
        """
        Check status of 'tree view scrollbar' is enabled or disabled.
        :param sym: symbolic name of 'tree view scrollbar' in project window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("project_window_check_treeView_scrollBar_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
 
        self.winapp.pass_log("project_window_check_treeView_scrollBar_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
        
    def project_window_check_treeView_scrollBar_is_visible(self, sym, status=True):
        """
        Check status of 'tree view scrollbar' is visible.
        :param sym: symbolic name of 'tree view scrollbar' in project window.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != status:
            self.winapp.fail("project_window_check_treeView_scrollBar_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
 
        self.winapp.pass_log("project_window_check_treeView_scrollBar_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def project_window_visible(self, sym_name_list, time=0):
        """
        Verify the project window is visible
        :param sym_name_list: symbolic name of project window
        :return: True if succeed
        """
        for sym in sym_name_list:
            if self.winapp.visible(sym, time) is None:
                self.winapp.fail("created_project_window_visibility is failed ..",
                                 "couldn't be able to find symbolic name = {}".format(sym))
                return None
        self.winapp.log("created_project_window_visibility is passed ..",
                        "sym_name_list = {}".format(sym_name_list))
        return True

    def prj_window_chk_menu_bar_icons_Enable(self, sym_names_list ,time=10):
        """
        verify the Enabled status of menu icons  in project window
        :param sym_names_list: symbolic name of menu icons in project window 
        :param time: Time to wait till the condition passes.
        :return:True if succeeds
        """
        for sym_name in sym_names_list:
            if self.winapp.Enable(sym_name , time) is False:
                self.winapp.fail("prj_window_chk_menu_bar_icons_enable is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("prj_window_chk_menu_bar_icons_enable is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True

    def prj_window_chk_menu_bar_icons_Disable(self, sym_names_list):
        """
        verify the disabled menu icons in project window
        :param sym_names_list: symbolic name of menu icons in project window
        :return:True if succeeds
        """
        for sym_name in sym_names_list:
            if self.winapp.Enable(sym_name) is True:
                self.winapp.fail("prj_window_chk_menu_bar_icons_disable is failed ..",
                                 "sym_name_list = {}".format(sym_name))
                return False
        self.winapp.log("prj_window_chk_menu_bar_icons_disable is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True

    def prj_window_chk_grid_icons_enable(self, sym_names_list):
        """
        Verify,grid icons in the  project window are enable.
        :param sym_names_list: symbolic names of grid icons in project window
        :return:True if succeeds
        """
        for sym_name in sym_names_list:
            if self.winapp.Enable(sym_name) is False:
                self.winapp.fail("prj_window_chk_grid_icons_enable is failed ..",
                                 "sym_name_list = {}".format(sym_name))
                return False
        self.winapp.log("prj_window_chk_grid_icons_enable is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True

    def project_window_check_controller_details_label_text(self, sym_names_dic, label_text_dic):
        """
        Verify text of labels for Product Name,Power Supply, SW Verison, PV Version, Code Number or Application for created project
        :param  sym_names_dic : list for symbolic name of label for created project details
        :param  label_text_dic : list of label text for created project from input config file
        :return: True if succeed
        """
        for key, sym_name in sym_names_dic.items():
            if not self.winapp.compare_text(sym_name, label_text_dic[key]):
                self.winapp.fail("project_window_check_controller_details_label_text is failed ..",
                                 "couldn't able to match= {}".format(sym_name))
                return False

        self.winapp.log("project_window_check_controller_details_label_text is passed ..")
        return True

    def project_window_check_controller_details_label_value(self, sym_names_dic, controller_details):
        """
        Verify text of labels for Product Name,Power Supply, SW Verison, PV Version, Code Number or Application for created project
        :param  sym_names_dic : list for symbolic name of label for created project details
        :param  controller_details: selected controller details i.e. Product Name, Power Supply, SW Version, PV Version, Code Number or Application
        :return: True if succeed
        """
        for key, sym_name in sym_names_dic.items():
            if not self.winapp.compare_text(sym_name, controller_details[key]):
                self.winapp.fail("project_window_check_controller_details_label_value_text is failed ..",
                                 "couldn't able to match= {}".format(sym_name))
                return False

        self.winapp.log("project_window_check_controller_details_label_value_text is passed ..")
        return True

    def project_window_get_tree_view_list(self, sym):
        """
        Get tree view list from given tree object.
        :param sym: symbolic name of tree.
        :return: list of tree view contains parent child details.
        """
        return self.winapp.get_tree_parent_child_list(sym)

    def project_window_tree_check_item_is_expanded(self, sym_treeview, tree_item_name_list, expand=True):
        """
        Check tree item is expanded in tree.
        :param sym_treeview: symbolic name of tree.
        :param tree_item_name_list: list of items check to be expanded.
        :param expand: expansion check , true or false.
        :return: Boolean True - if list of items are expanded in tree.
        """
        return self.winapp.tree_view_check_item_is_expanded(sym_treeview, tree_item_name_list, expand)

    def project_window_tree_click_item(self, sym_treeview, tree_item_name):
        """
        Click tree item.
        :param sym_treeview: symbolic name of tree.
        :param tree_item_name: name of tree item.
        :return: Boolean True - it item is found and click.
        """
        return self.winapp.tree_view_click_item(sym_treeview, tree_item_name)

    def prj_window_chk_prj_desc_text_in_project_desc_edit_box(self, sym, projectDesc):
        """
        Verify project name  text in project window textbox
        :param sym: symbolic name of projectDesc textbox
        :param projectDesc:projectDesc entered in the project description window
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym, projectDesc):
            self.winapp.fail("prj_window_chk_prj_desc_text_in_project_desc_edit_box is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("prj_window_chk_prj_desc_text_in_project_desc_edit_box is passed ...",
                        "sym = '{}'  ...".format(sym))
        return True

    def prj_window_chk_prj_name_text_in_project_name_edit_box(self, sym, projectName):
        """
        Verify project name  text in project window textbox
        :param sym: symbolic name of project_name textbox
        :param projectname:projectName entered in the project description window
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym, projectName):
            self.winapp.fail("prj_window_chk_prj_name_text_in_project_name_edit_box is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("prj_window_chk_prj_name_text_in_project_name_edit_box is passed ...",
                        "sym = '{}'  ...".format(sym))
        return True

    def project_window_expand_tree_view_item(self, sym_treeview, tree_item_name, expand=True):
        """
        Set tree item as "expand" option is given.
        :param sym_treeview: symbolic name of tree.
        :param tree_item_name: name of tree item
        :return: True if expand successfully, False if already expanded or unable to expand.
        """
        if not self.winapp.expand_tree_view_item(sym_treeview, tree_item_name, expand):
                self.winapp.fail("project_window_expand_tree_view_item is failed ..",
                             "sym_name_list = {}".format(sym_treeview))
        else:
                self.winapp.log("project_window_expand_tree_view_item is passed ..",
                        "sym_name_list = {}".format(sym_treeview))

    def prj_window_chk_info_button_enable(self, sym_name, enable=True):
        """
        Verify,info button is enable in the  project window 
        :param enable: default window is enable
        :param sym_name: symbolic names of info button in project window
        :return: True if succeeds
        """
        ui_enable = self.winapp.Enable(sym_name)
        if ui_enable != enable:
            self.winapp.fail("prj_window_chk_info_button_enable is failed ..",
                             "sym_name_list = {}".format(sym_name))
            return False
        self.winapp.log("prj_window_chk_info_button_enable is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True

    def product_info_window_is_visible(self, sym_name_list, visible=True):
        """
        Verify, product information window is visible after clicking on info button
        :param sym_name_list: list of symbolic name of header and close button in product information window
        :param  visible: visible is true
        """
        for sym in sym_name_list:
            ui_visible = self.winapp.visible(sym)
            if ui_visible != visible:
                self.winapp.fail("product_info_window_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {} visible ={} ui_visible ={}".
                                 format(sym, visible, ui_visible))
                return None
        self.winapp.log("product_info_window_is_visible is passed ..",
                        "sym_name_list = {}  visible ={}".format(sym_name_list, visible))
        return True

    def product_info_window_header_text(self, sym_name, text):
        """
        Verify, header text in product information window
        :param sym_name: symbolic name of header in product information window
        :param text: header text
        :return: True if passed else False
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.log("product_info_window_header_text is passed", text)
        else:
            self.winapp.fail("product_info_window_header_text is failed", text)

    def product_info_window_close_tooltip_text(self, sym, tooltip):
        """
        Compare tooltip of close button in product information window.
        :param sym: symbolic name of close button in product information window
        :param tooltip: clsoe button tooltip text
        :return: True if passed else False
        """
        ui_tooltip = self.winapp.tooltip(sym)
        if ui_tooltip != tooltip:
            self.winapp.fail("product_info_window_close_tooltip_text is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip))
            return False
        self.winapp.log("product_info_window_close_tooltip_text is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip))
        return True

    def product_info_window_label_text(self, sym_name, controllervariant):
        """
        Verify, label text in product information window
        :param sym_name : symbolic name of label text in product information window
        :param controllervariant : label text in product information window
        """
        if not self.winapp.compare_text(sym_name, controllervariant):
            self.winapp.fail("product_info_window_label_text is failed",
                             "get_text_by_sym_compare for symbolic name ={} text to compare ={}".format(
                                 sym_name, controllervariant))
            return False
        return True

    def product_info_window_click_close_button(self, sym_name):
        """
        Click on close button
        :param sym_name: symbolic names of close button in project window
        :return: True if succeeds
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("product_info_window_click_close_button failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.log("product_info_window_click_close_button is passed.",
                        " click event symbolic name ={}".format(sym_name))
        return True

    def product_info_window_prodImage_wiringDiagram(self, sym_prod_image,
                                                    sym_wiring_diagram, sym_prod_details, prod_image, wiring_diagram,
                                                    product_details):
        """
        verify product image, wire diagram and product description in product information window
        :param prod_image : path of product image
        :param wiring_diagram : path of wire diagram
        :param product_details : product description
        :param sym_prod_image : symbolic name of product image
        :param sym_wiring_diagram : symbolic name of wire diagram
        :param sym_prod_details : symbolic name of product description
        """
        if self.product_info_window_validate_controller_product_image(sym_prod_image, prod_image):
            if self.product_info_window_validate_controller_wiring_diagram(sym_wiring_diagram, wiring_diagram):
                if self.product_info_window_validate_controller_description(sym_prod_details, product_details):
                    return True
        return False

    def product_info_window_check_close_button_is_enabled(self, sym, status=True):
        """
        Check status of 'product information close button' is enabled or disabled.
        :param sym: symbolic name of 'product information close button' in project window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("product_info_window_check_close_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("product_info_window_check_close_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def product_info_window_check_close_button_is_visible(self, sym, status=True):
        """
        Check status of 'product information close button' is visible.
        :param sym: symbolic name of 'product information close button' in project window.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != status:
            self.winapp.fail("product_info_window_check_close_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("product_info_window_check_close_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def product_info_window_validate_controller_product_image(self, sym_prod_image, prod_image):
        """
        Check wiring diagram in new project window.
        :param sym_prod_image: symbolic name of product image.
        :param prod_image: path of product image.
        :return: True if image is equal else False.
        """
        if not self.commonfunction.get_image_by_sym_and_compare_images(sym_prod_image, prod_image):
            self.winapp.fail("new_prj_validate_prodImage_wiringDiagram is failed",
                             "get_image_by_sym_and_compare_images for symbolic name ={} prod image ={}".format(
                                 sym_prod_image, prod_image))
            return False
        return True

    def product_info_window_validate_controller_wiring_diagram(self, sym_wiring_diagram, wiring_diagram):
        """
        Check wiring diagram in new project window.
        :param sym_wiring_diagram: symboilc name of wiring image.
        :param wiring_diagram: path of wiring diagram.
        :return: True if image is equal else False.
        """
        if not self.commonfunction.get_image_by_sym_and_compare_images(sym_wiring_diagram, wiring_diagram):
            self.winapp.fail("new_prj_validate_prodImage_wiringDiagram is failed",
                             "get_image_by_sym_and_compare_images for symbolic name ={} wiring_diagram={}".format(
                                 sym_wiring_diagram, wiring_diagram))
            return False
        return True

    def product_info_window_validate_controller_description(self, sym_prod_details, product_details):
        """
        Check description text in new project window.
        :param sym_prod_details: symbolic name of description text box.
        :param product_details: string text to compare text in textbox.
        :return: True if text is equal . False if unequal.
        """
        ui_text =  self.winapp.get_text(sym_prod_details)
        if not common.compare_text_without_newlines(ui_text, product_details):
            self.winapp.fail("product_info_window_validate_controller_description is failed",
                             "get_text_by_sym_compare for ui_text ={} text to compare ={}".format(
                                 ui_text, product_details))
            return False
        return True    
     

    def product_info_window_click_on_scrollbar(self, sym_name):
        """
        Click 'scroll bar' in project information window
        :param sym_name : symbolic name of scroll bar
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("product_info_window_click_on_scrollbar is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("product_info_window_click_on_scrollbar is passed ...",
                        "sym = '{}' ".format(sym_name))
        return True
    

    def prj_window_write_project_path_with_file_name(self, sym_name, project_file):
        """
        Set project path in open window
        :param sym_name : symbolic name of edit bar in open window
        :param project_file : project file name
        :return: True if succeed
        """
        if not self.winapp.set_text(sym_name, project_file):
            self.winapp.fail("open_window_set_project_file is failed",
                             " sym_name ={} expected text ={} ".format(sym_name, project_file))
            return False
        self.winapp.log("open_window_set_project_file is passed...",
                        " sym_name ={} expected text ={} ".format(sym_name, project_file))
        return True

    def open_window_click_open_button(self, sym_name):
        """
         Click open button in project window
        : param sym_name : symbolic name of open button on open popup
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("open_window_click_open_button is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("open_window_click_open_button is passed ...",
                        "sym = '{}' ".format(sym_name))
        return True

    def get_parameter_names_from_datagrid(self, sym_datagrid):
        """
        Get parameter name list from datagrid.
        :param sym_datagrid: symbolic name of datagrid.
        :return: list of parameter name.
        """
        return self.winapp.get_parameter_names_from_datagrid(sym_datagrid)

    def prj_window_get_project_detail_values(self, sym_name_dict, family):
        """
        Get project details value from project window.
        :param sym_name_dict: list sym names to get text from Ui.
        :return: dict of key: value from UI.
        """
        result = dict()
        for field_name, sym in sym_name_dict[family].items():
            result[field_name] = self.winapp.get_text(sym)
        return result

    def prj_window_get_project_description(self, sym):
        """
        Get text description in project window.
        :param sym: symbolic name of project description.
        :return:
        """
        return self.winapp.get_text(sym)

    def prj_window_check_home_button_is_enabled(self, sym, status=True):
        """
        Check status of home button is enabled or disabled.
        :param sym: symbolic name of home button in project window.
        :param status: boolean status value to check home button.
        :return: True if home button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("prj_window_check_home_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_home_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_export_button_is_enabled(self, sym, status=True):
        """
        Check status of 'download' button is enabled or disabled.
        :param sym: symbolic name of 'download' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("prj_window_check_export_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_export_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_offline_controller_info_button_is_enabled(self, sym, status=True):
        """
        Check status of 'offline controller info' button is enabled or disabled.
        :param sym: symbolic name of 'offline controller info' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("prj_window_check_offline_controller_info_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_offline_controller_info_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True


    def prj_window_check_saveas_button_is_enabled(self, sym, status=True):
        """
        Check status of 'saveas' button is enabled or disabled.
        :param sym: symbolic name of 'saveas' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("prj_window_check_saveas_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_saveas_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_save_button_is_enabled(self, sym, status=True):
        """
        Check status of 'save' button is enabled or disabled.
        :param sym: symbolic name of 'save' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("prj_window_check_save_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_save_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_print_button_is_enabled(self, sym, status=True):
        """
        Check status of 'print' button is enabled or disabled.
        :param sym: symbolic name of 'print' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("prj_window_check_print_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_print_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_search_button_is_enabled(self, sym, status=True):
        """
        Check status of 'search' button is enabled or disabled.
        :param sym: symbolic name of 'search' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("prj_window_check_search_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_search_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_open_button_is_enabled(self, sym, status=True):
        """
        Check status of 'open' button is enabled or disabled.
        :param sym: symbolic name of 'open' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("prj_window_check_open_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_open_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_search_textbox_editor_button_is_enabled(self, sym, status=True):
        """
        Check status of 'search text box editor ' button is enabled or disabled.
        :param sym: symbolic name of 'search text box editor ' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("prj_window_check_search_textbox_editor_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_search_textbox_editor_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_help_button_is_enabled(self, sym, status=True):
        """
        Check status of 'help' button is enabled or disabled.
        :param sym: symbolic name of 'help' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("prj_window_check_help_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_help_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_viewmore_button_is_enabled(self, sym, status=True):
        """
        Check status of 'viewmore' button is enabled or disabled.
        :param sym: symbolic name of 'viewmore' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("prj_window_check_viewmore_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_viewmore_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_factory_reset_button_is_enabled(self, sym, status=True):
        """
        Check status of 'factory reset' button is enabled or disabled.
        :param sym: symbolic name of 'factory reset' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("prj_window_check_factory_reset_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_factory_reset_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_parameters_Expand_collapse_button_is_enabled(self, sym, status=True):
        """
        Check status of 'hide parameter info' button is enabled or disabled.
        :param sym: symbolic name of 'hide parameter info' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("prj_window_parameters_Expand_collapse_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_parameters_Expand_collapse_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_project_details_expand_collapse_button_is_enabled(self, sym, status=True):
        """
        Check status of 'project details expand' button is enabled or disabled.
        :param sym: symbolic name of 'project details expand' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("prj_window_check_project_details_expand_collapse_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_project_details_expand_collapse_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def prj_window_check_product_name_label_is_visible(self, sym, visible=True):
        """
        verify the product name label in project window is visible
        :param sym: Symbolic name of product name label in project window.
        :param visible: Visibility status(True or False).
        :return:True if succeeds
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("prj_window_check_product_name_label_is_visible is failed ...",
                             "sym = '{}'  visible= '{}'".format(sym, visible))

        self.winapp.pass_log("prj_window_check_product_name_label_is_visible is passed ...",
                             "sym = '{}' visible= '{}'".format(sym, visible))
        return True
    
    
    def prj_window_check_code_number_label_is_visible(self, sym, visible=True):
        """
        verify the code number label in project window is visible
        :param sym: Symbolic name of product name label in project window.
        :param visible: Visibility status(True or False).
        :return:True if succeeds
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("prj_window_check_code_number_label_is_visible is failed ...",
                             "sym = '{}'  visible= '{}'".format(sym, visible))

        self.winapp.pass_log("prj_window_check_code_number_label_is_visible is passed ...",
                             "sym = '{}' visible= '{}'".format(sym, visible))
        return True
    
    
    def prj_window_check_software_version_label_is_visible(self, sym, visible=True):
        """
        verify the code number label in project window is visible
        :param sym: Symbolic name of product name label in project window.
        :param visible: Visibility status(True or False).
        :return:True if succeeds
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("prj_window_check_software_version_label_is_visible is failed ...",
                             "sym = '{}'  visible= '{}'".format(sym, visible))

        self.winapp.pass_log("prj_window_check_software_version_label_is_visible is passed ...",
                             "sym = '{}' visible= '{}'".format(sym, visible))
        return True
    
    
    def prj_window_product_info_button_is_visible(self, sym, visible=True):
        """
        verify the code number label in project window is visible
        :param sym: Symbolic name of product name label in project window.
        :param visible: Visibility status(True or False).
        :return:True if succeeds
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("prj_window_product_info_button_is_visible is failed ...",
                             "sym = '{}'  visible= '{}'".format(sym, visible))

        self.winapp.pass_log("prj_window_product_info_button_is_visible is passed ...",
                             "sym = '{}' visible= '{}'".format(sym, visible))

    def prj_window_cursor_in_edit_box_of_search_editor_should_blink(self, sym_name, focused=True):
        """
        Verify, cursor in edit box of search editor should blink in project window.
        :param sym_name: Symbolic name of 'search text box editor ' in project window.
        :param focused: boolean status value True or False.
        :return: True if succeeds
        """
        if self.winapp.check_cursor_focused(sym_name)!= focused:
            self.winapp.fail("prj_window_cursor_in_edit_box_of_search_editor_should_blink is failed.."," click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.log("prj_window_cursor_in_edit_box_of_search_editor_should_blink is passed."," click event symbolic name ={}".format(sym_name))
        return True

    def prj_window_click_on_home_button(self, sym):
        """
        Click home button in project window.
        :param sym: symbolic name of home button in project window.
        :return: True if click is successful else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("prj_window_click_on_home_button is failed ...", "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("prj_window_click_on_home_button is passed ...", "sym = '{}' ".format(sym))
        return True

    def prj_window_click_on_export_button(self, sym):
        """
        Click export button in project window.
        :param sym: symbolic name of export button in project window.
        :return: True if click is successful else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("prj_window_click_on_export_button is failed ...", "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("prj_window_click_on_export_button is passed ...", "sym = '{}' ".format(sym))
        return True

    def prj_window_click_on_offline_controller_info_button(self, sym):
        """
        Click on "offline controller info button" in project window.
        :param sym: symbolic name of "offline controller info button" in project window.
        :return: True if click is successful else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("prj_window_click_on_offline_controller_info_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("prj_window_click_on_offline_controller_info_button is passed ...",
                             "sym = '{}' ".format(sym))
        return True

    def prj_window_click_on_product_information_window_close_button(self, sym):
        """
        Click on product information window'close' button.
        :param sym: symbolic name of product information window'close' button.
        :return: True if click is successful else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("prj_window_click_on_product_information_window_close_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("prj_window_click_on_product_information_window_close_button is passed ...",
                             "sym = '{}' ".format(sym))
        return True

    def prj_window_click_on_saveas_button(self, sym):
        """
        Click on saveas button in project window.
        :param sym: symbolic name saveas button.
        :return: True if click is successful else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("prj_window_click_on_saveas_button is failed ...", "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("prj_window_click_on_saveas_button is passed ...", "sym = '{}' ".format(sym))
        return True

    def prj_window_click_on_save_button(self, sym):
        """
        Click on save button in project window.
        :param sym: symbolic name saveas button.
        :return: True if click is successful else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("prj_window_click_on_save_button is failed ...", "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("prj_window_click_on_save_button is passed ...", "sym = '{}' ".format(sym))
        return True

    def prj_window_click_on_print_button(self, sym):
        """
        Click on print button in project window.
        :param sym: symbolic name print button.
        :return: True if click is successful else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("prj_window_click_on_print_button is failed ...", "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("prj_window_click_on_print_button is passed ...", "sym = '{}' ".format(sym))
        return True

    def prj_window_click_on_search_button(self, sym):
        """
        Click on search button in project window.
        :param sym: symbolic name of search button.
        :return: True if click is successful else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("prj_window_click_on_search_button is failed ...", "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("prj_window_click_on_search_button is passed ...", "sym = '{}' ".format(sym))
        return True

    def prj_window_click_on_open_button(self, sym):
        """
        Click on open button in project window.
        :param sym: symbolic name of open button.
        :return: True if click is successful else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("prj_window_click_on_open_button is failed ...", "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("prj_window_click_on_open_button is passed ...", "sym = '{}' ".format(sym))
        return True

    def prj_window_click_on_search_textbox_editor_button(self, sym):
        """
        Click on "search textbox editor" button in project window.
        :param sym: symbolic name of "search textbox editor" button.
        :return: True if click is successful else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("prj_window_click_on_search_textbox_editor_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("prj_window_click_on_search_textbox_editor_button is passed ...",
                             "sym = '{}' ".format(sym))
        return True

    def prj_window_click_on_help_button(self, sym):
        """
        Click on "help" button in project window.
        :param sym: symbolic name of "help" button.
        :return: True if click is successful else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("prj_window_click_on_help_button is failed ...", "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("prj_window_click_on_help_button is passed ...", "sym = '{}' ".format(sym))
        return True

    def prj_window_click_on_viewmore_button(self, sym):
        """
        Click on "view more" button in project window.
        :param sym: symbolic name of "view more" button.
        :return: True if click is successful else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("prj_window_click_on_viewmore_button is failed ...", "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("prj_window_click_on_viewmore_button is passed ...", "sym = '{}' ".format(sym))
        return True

    def prj_window_click_on_factory_reset_button(self, sym):
        """
        Click on "factory reset" button in project window.
        :param sym: symbolic name of "factory reset" button.
        :return: True if click is successful else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("prj_window_check_factory_reset_button is failed ...", "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("prj_window_check_factory_reset_button is passed ...", "sym = '{}' ".format(sym))
        return True

    def prj_window_click_on_datagrid_parameters_Expand_collapse_button(self, sym):
        """
        Click on "parameters expand collapse" button in project window.
        :param sym: symbolic name of "parameters expand collapse" button.
        :return: True if click is successful else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("prj_window_click_on_datagrid_parameters_Expand_collapse_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("prj_window_click_on_datagrid_parameters_Expand_collapse_button is passed ...",
                             "sym = '{}' ".format(sym))
        return True

    def prj_window_click_on_project_details_expand_collapse_button(self, sym):
        """
        Click on "project details expand collapse" button in project window.
        :param sym: symbolic name of "project details expand collapse" button.
        :return: True if click is successful else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("prj_window_click_on_project_details_expand_collapse_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("prj_window_click_on_project_details_expand_collapse_button is passed ...",
                             "sym = '{}' ".format(sym))
        return True

    def prj_window_check_home_button_is_visible(self, sym, status=True):
        """
        Check status of home button is visiblity True or False.
        :param sym: symbolic name of home button in project window.
        :param status: boolean status value to check home button.
        :return: True if home button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != status:
            self.winapp.fail("prj_window_check_home_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_home_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_export_button_is_visible(self, sym, status=True):
        """
        Check status of 'download' button is visible.
        :param sym: symbolic name of 'download' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != status:
            self.winapp.fail("prj_window_check_export_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_export_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_offline_controller_info_button_is_visible(self, sym, status=True):
        """
        Check status of 'offline controller info' button is visible.
        :param sym: symbolic name of 'offline controller info' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != status:
            self.winapp.fail("prj_window_check_offline_controller_info_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_offline_controller_info_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_saveas_button_is_visible(self, sym, status=True):
        """
        Check status of 'saveas' button is visible.
        :param sym: symbolic name of 'saveas' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != status:
            self.winapp.fail("prj_window_check_saveas_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_saveas_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_save_button_is_visible(self, sym, status=True):
        """
        Check status of 'save' button is visible.
        :param sym: symbolic name of 'save' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != status:
            self.winapp.fail("prj_window_check_save_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_save_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_print_button_is_visible(self, sym, status=True):
        """
        Check status of 'print' button is visible.
        :param sym: symbolic name of 'print' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != status:
            self.winapp.fail("prj_window_check_print_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_print_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_search_button_is_visible(self, sym, status=True):
        """
        Check status of 'search' button is visible.
        :param sym: symbolic name of 'search' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != status:
            self.winapp.fail("prj_window_check_search_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_search_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_open_button_is_visible(self, sym, status=True):
        """
        Check status of 'open' button is visible.
        :param sym: symbolic name of 'open' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != status:
            self.winapp.fail("prj_window_check_open_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_open_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_search_textbox_editor_button_is_visible(self, sym, status=True):
        """
        Check status of 'search text box editor ' button is visible.
        :param sym: symbolic name of 'search text box editor ' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != status:
            self.winapp.fail("prj_window_check_search_textbox_editor_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_search_textbox_editor_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_help_button_is_visible(self, sym, status=True):
        """
        Check status of 'help' button is visible.
        :param sym: symbolic name of 'help' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != status:
            self.winapp.fail("prj_window_check_help_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_help_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_viewmore_button_is_visible(self, sym, status=True):
        """
        Check status of 'viewmore' button is visible.
        :param sym: symbolic name of 'viewmore' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != status:
            self.winapp.fail("prj_window_check_viewmore_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_viewmore_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_factory_reset_button_is_visible(self, sym, status=True):
        """
        Check status of 'factory reset' button is visible.
        :param sym: symbolic name of 'factory reset' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != status:
            self.winapp.fail("prj_window_check_factory_reset_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_factory_reset_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_parameters_Expand_collapse_button_is_visible(self, sym, status=True):
        """
        Check status of 'parameters expand-collapse' button is visible.
        :param sym: symbolic name of 'parameters expand-collapse' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != status:
            self.winapp.fail("prj_window_parameters_Expand_collapse_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_parameters_Expand_collapse_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def prj_window_check_project_details_expand_collapse_button_is_visible(self, sym, visible=True):
        """
        Check status of 'project details expand' button is visible.
        :param sym: symbolic name of 'project details expand' button in project window.
        :param visible: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("prj_window_check_project_details_expand_collapse_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("prj_window_check_project_details_expand_collapse_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True

    def prj_window_get_project_name(self, sym):
        """
        Get project name from project window.
        :param sym: symbolic name of project description.
        :return: string of project name.
        """
        return self.winapp.get_text(sym)

    def prj_window_check_group_name_is_expanded_in_DataGrid(self, sym_name, group_name, expand=True):
        """
        Check group name is expanded in datagrid
        :param sym_name: symbolic name of datagrid
        :param group_name: group name to check expand.
        :param expand: boolean to check expanded or not.
        :return: True if expected value is equal else false.
        """
        if self.winapp.get_group_name_expand_value_in_DataGrid(sym_name, group_name) != expand:
            self.winapp.fail("check_group_name_is_expanded_in_DataGrid is failed ...",
                             "group name ='{}' and expected expand value ='{}'".format(group_name, expand))
            return False
        self.winapp.pass_log("check_group_name_is_expanded_in_DataGrid is passed ...",
                             "group name ='{}' and expected expand value ='{}'".format(group_name, expand))
        return True

    def prj_window_click_on_group_name_in_DataGrid(self, sym_name, group_name):
        """
        Click on group name in datagrid result to is expand or collapse.
        :param sym_name: symbolic name of datagrid
        :param group_name: group name to is expand or collapse.
        :return: True if group name id present and able to click.
        """
        if not self.winapp.click_on_group_name_in_DataGrid(sym_name, group_name):
            self.winapp.fail("prj_window_click_on_group_name_in_DataGrid is failed ...",
                             "could not find group name ='{}'".format(group_name))
            return False
        self.winapp.pass_log("prj_window_click_on_group_name_in_DataGrid is passed ...",
                             "Found group name ='{}'".format(group_name))
        return True

    def prj_window_get_row_count_of_dataGrid(self, sym_name):
        """
        Gets row count of the dataGrid in KoolProg.
        :param sym_name: Symbolic name of dataGrid.
        :return: Row count of the dataGrid.
        """
        return self.winapp.get_row_count_of_dataGrid(sym_name)

    def prj_window_get_row_count_of_dataGrid(self, sym_name):
        """
        Gets row count of the dataGrid in KoolProg.
        :param sym_name: Symbolic name of dataGrid.
        :return: Row count of the dataGrid.
        """
        return self.winapp.get_row_count_of_dataGrid(sym_name)

    def prj_window_parse_the_datagrid(self, sym_name, sym_name_help_desc, sym_name_menu_codeno, sym_name_para_name):
        """
        Gets the datagrid information.
        :param sym_name: Symbolic name of dataGrid.
        :param sym_name_help_desc: Symbolic name of the help description.
        :param sym_name_menu_codeno: Symbolic name of the menu code.
        :param sym_name_para_name: Symbolic name of the parameter name.
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

        datagrid = self.winapp.parse_the_datagrid(sym_name, sym_name_help_desc, 
                                                  sym_name_menu_codeno, sym_name_para_name)
        if not datagrid:
            self.winapp.fail("prj_window_parse_the_datagrid is failed ...")
            return False
        self.winapp.pass_log("prj_window_parse_the_datagrid is passed ...")
        return datagrid
    
    def prj_window_get_selected_row_in_dataGrid(self, sym_name):
        """
        Gets the current highlighted row Object in a dataGrid.
        :param sym_name: Symbolic name of dataGrid.
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
        row = self.winapp.get_selected_row_in_dataGrid(sym_name)
        if not row:
            self.winapp.fail("get_selected_row_in_dataGrid is failed ....")
            return False
        self.winapp.pass_log("get_selected_row_in_dataGrid is passed ....")
        return row

    def prj_window_set_favourite_in_datagrid(self, sym_name_dataGrid, groupName, parameterName, setValue):
        """
        Set value for given parameter in datagrid.
        :param sym_name_dataGrid:symbolic name of datagrid
        :param groupName: string of group name or expander name of parameter.
        :param parameterName: string parameter name to set value
        :param setValue: boolean True/False - set value of parameter.
        :return: True if parameter is found , else returns False.
        """
        if not self.winapp.set_favourite_in_datagrid(sym_name_dataGrid, groupName, parameterName, setValue):
            self.winapp.fail("set_favourite_in_datagrid is failed ....",
                             "could not find group name='{}' or parameter ='{} set value ='{}'".format(groupName,
                                                                                                       parameterName,
                                                                                                       setValue))
            return False
        self.winapp.pass_log("set_favourite_in_datagrid is passed ...",
                             "found group name='{}' or parameter ='{} set value ='{}'".format(groupName,
                                                                                                       parameterName,
                                                                                                       setValue))
        return True

    def prj_window_check_favourite_value_parameter_in_datagrid(self, sym_name_dataGrid, groupName, parameterName,
                                                               check):
        """
        check favourite checkbox value for given parameter name .
        :param sym_name_dataGrid: symbolic name of datagrid.
        :param groupName: string of group name or expander name of parameter.
        :param parameterName: string parameter name to set value.
        :param check: value (True/False) to be check against favourite checkbox.
        :return: True if parameter is found , else returns False.
        """
        fav_value = self.winapp.get_favourite_in_datagrid(sym_name_dataGrid, groupName, parameterName)
        if fav_value != check:
            self.winapp.fail("get_favourite_value_from_datagrid_for_given_parameter is failed ....",
                             "could not find group name='{}' or parameter ='{} set value ='{}'".format(groupName,
                                                                                                       parameterName,
                                                                                                       fav_value))
            return False
        self.winapp.pass_log("get_favourite_in_datagrid is passed ...",
                             "group name='{}' or parameter ='{} set value ='{}'".format(groupName,
                                                                                        parameterName, fav_value))
        return True

    def prj_window_set_value_in_datagrid(self, sym_name_dataGrid, groupName, parameterName, setValue):
        """
        Set value for given parameter in datagrid.
        :param sym_name_dataGrid:symbolic name of datagrid
        :param groupName: string of group name or expander name of parameter.
        :param parameterName: string parameter name to set value
        :param setValue: string set value of parameter.
        :return: True if parameter is found , else returns False.
        """
        if not self.winapp.set_value_in_datagrid(sym_name_dataGrid, groupName, parameterName, setValue):
            self.winapp.fail("set_value_in_datagrid is failed ...",
                             "groupName='{}' parameterName='{}', setValue ='{}'".format(groupName, parameterName,
                                                                                        setValue))
            return False
        self.winapp.pass_log("set_value_in_datagrid is passed ...",
                             "groupName='{}' parameterName='{}', setValue ='{}'".format(groupName, parameterName,
                                                                                        setValue))
        return True

    def prj_window_compare_home_button_tooltip(self, sym_name, tooltip):
        """
        In Project window  Compare tooltip text of home button
        :param sym_name: symbolic name of home button
        :param tooltip: string to check with tooltip
        :return: True if text is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("prj_window_compare_home_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("prj_window_compare_home_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True

    def prj_window_compare_SaveAs_button_tooltip(self, sym_name, tooltip):
        """
        In Project window  Compare tooltip text of SaveAs button 
        :param sym_name: symbolic name of SaveAs button
        :param tooltip: string to check with tooltip
        :return: True if text is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("prj_window_compare_SaveAs_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("prj_window_compare_SaveAs_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True

    def prj_window_compare_Save_button_tooltip(self, sym_name, tooltip):
        """
        In Project window  Compare tooltip text of Save button 
        :param sym_name: symbolic name of Save button
        :param tooltip: string to check with tooltip
        :return: True if text is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("prj_window_compare_Save_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("prj_window_compare_Save_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))

        return True

    def prj_window_compare_export_button_tooltip(self, sym_name, tooltip):
        """
        In Project window  Compare tooltip text of export button 
        :param sym_name: symbolic name of export button
        :param tooltip: string to check with tooltip
        :return: True if text is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("prj_window_compare_export_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("prj_window_compare_export_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))

        return True

    def prj_window_compare_offline_contrller_info_button_tooltip(self, sym_name, tooltip):
        """
        In Project window  Compare tooltip text of info(i) button 
        :param sym_name: symbolic name of info(i) button
        :param tooltip: string to check with tooltip
        :return: True if visible is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("prj_window_compare_offline_contrller_info_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("prj_window_compare_offline_contrller_info_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True

    def prj_window_compare_print_button_tooltip(self, sym_name, tooltip):
        """
        In Project window  Compare tooltip text of "print" button 
        :param sym_name: symbolic name of print button
        :param tooltip: string to check with tooltip
        :return: True if text is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("prj_window_compare_print_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("prj_window_compare_print_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True

    def prj_window_compare_help_button_tooltip(self, sym_name, tooltip):
        """
        In Project window  Compare tooltip text of "help" button 
        :param sym_name: symbolic name of help button
        :param tooltip: string to check with tooltip
        :return: True if text is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("prj_window_compare_help_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("prj_window_compare_help_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True

    def prj_window_compare_ViewMore_button_tooltip(self, sym_name, tooltip):
        """
        In Project window  Compare tooltip text of "ViewMore" button 
        :param sym_name: symbolic name of ViewMore button
        :param tooltip: string to check with tooltip
        :return: True if text is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("prj_window_compare_ViewMore_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("prj_window_compare_ViewMore_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True
        
    def prj_window_compare_Search_button_tooltip(self, sym_name, tooltip):
        """
        In Project window  Compare tooltip text of "Search" button 
        :param sym_name: symbolic name of Search button
        :param tooltip: string to check with tooltip
        :return: True if text is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("prj_window_compare_Search_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("prj_window_compare_Search_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True

    def prj_window_compare_Factory_reset_button_tooltip(self, sym_name, tooltip):
        """
        In Project window  Compare tooltip text of "Factory reset" button 
        :param sym_name: symbolic name of Factory reset button
        :param tooltip: string to check with tooltip
        :return: True if text is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("prj_window_compare_Factory_reset_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("prj_window_compare_Factory_reset_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True

    def prj_window_compare_help_Expand_collapse_button_tooltip(self, sym_name, tooltip):
        """
        In Project window  Compare tooltip text of "Help Expand/collapse" button 
        :param sym_name: symbolic name of Help Expand/collapse button
        :param tooltip: string to check with tooltip
        :return: True if text is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("prj_window_compare_help_Expand_collapse_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("prj_window_compare_help_Expand_collapse_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True
    
    def prj_window_check_help_Expand_collapse_button_is_visible(self, sym, visible=True):
        """
        verify the project window help expand collapse button is visible
        :param sym: Symbolic name of expand/collapse button in help of parameter description.
        :param visible: Visibility status(True or False).
        :return:True if succeeds
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("prj_window_check_help_Expand_collapse_button_is_visible is failed ...",
                             "sym = '{}'  visible= '{}'".format(sym, visible))

        self.winapp.pass_log("prj_window_check_help_Expand_collapse_button_is_visible is passed ...",
                             "sym = '{}' visible= '{}'".format(sym, visible))
        return True
    
    def prj_window_click_help_Expand_collapse_button(self, sym):
        """
        Click the expand/collapse button in help of parameter description in Project window
        :param sym: Symbolic name of expand/collapse button in help of parameter description.
        :return True: if succeeds else False
        """  
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("prj_window_click_help_Expand_collapse_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("prj_window_click_help_Expand_collapse_button is passed ...",
                             "sym = '{}' ".format(sym))
        return True

    def prj_window_check_status_of_help_expand_collapse_button(self, sym, isExpanded=True):
        """
        Check the status of expand/collapse button of help in project window.
        :param sym_name: symbolic name of expand/collapse button in help of parameter description.
        :param isExpanded: Expand status(True or False).
        :return: True if expanded else False.
        """
        if self.winapp.visible(sym) != isExpanded:
            self.winapp.fail("prj_window_check_status_of_help_expand_collapse_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("prj_window_check_status_of_help_expand_collapse_button is passed ...",
                             "sym = '{}' ".format(sym))
        return True
    
    def prj_window_check_help_Expand_collapse_button_is_Enabled(self, sym_name, status=True):
        """
        Check the expand/collapse button in help of parameter description is enabled/disabled in Project window
        :param sym_name: symbolic name of expand/collapse button in help of parameter description.
        :param status: boolean status value True or False.
        :return: True if label is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("prj_window_check_help_Expand_collapse_button_is_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("prj_window_check_help_Expand_collapse_button_is_Enabled is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True

    def prj_window_compare_open_button_tooltip(self, sym_name, tooltip):
        """
        In Project window  Compare tooltip text of "open" button 
        :param sym_name: symbolic name of open button
        :param tooltip: string to check with tooltip
        :return: True if text is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("prj_window_compare_open_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("prj_window_compare_open_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True

    def prj_window_compare_search_editor_tooltip(self, sym_name, tooltip):
        """
        In Project window  Compare tooltip text of "search editor"
        :param sym_name: symbolic name of search editor
        :param tooltip: string to check with tooltip
        :return: True if text is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("prj_window_compare_search_editor_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("prj_window_compare_search_editor_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True

    def prj_window_compare_parameter_Expand_collapse_button_tooltip(self, sym_name, tooltip):
        """
        In Project window  Compare tooltip text of "Parameter Expand/Collapse button"
        :param sym_name: symbolic name of Parameter Expand/Collapse button button
        :param tooltip: string to check with tooltip
        :return: True if text is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("prj_window_compare_parameter_Expand_collapse_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("prj_window_compare_parameter_Expand_collapse_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True

    def prj_window_compare_project_details_Expand_collapse_button_tooltip(self, sym_name, tooltip):
        """
        In Project window  Compare tooltip text of "Project detials Expand/collapse" button 
        :param sym_name: symbolic name of Expand/collapse button
        :param tooltip: string to check with tooltip
        :return: True if text is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("prj_window_compare_project_details_Expand_collapse_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("prj_window_compare_project_details_Expand_collapse_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))

        return True
    
    def prj_window_check_status_of_project_details_expand_collapse_button(self, sym, isExpanded=True):
        """
        Click on "project details expand collapse" button in project window.
        :param sym: symbolic name of 'project details expand collapse' button in project window.
        :param isExpanded: Expand status(True or False).
        :return: True if expanded else False.
        """
        if self.winapp.visible(sym) != isExpanded:
            self.winapp.fail("prj_window_check_status_of_project_details_expand_collapse_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("prj_window_check_status_of_project_details_expand_collapse_button is passed ...",
                             "sym = '{}' ".format(sym))
        return True
    
    def prj_window_check_Setparameter_title_Enabled(self, sym_name, status=True):
        """
        Check the "Set Parameters" title label is enabled/disabled in Project window
        :param sym_name: symbolic name of Setparameter title
        :param status: boolean status value True or False.
        :return: True if label is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("prj_window_check_Setparameter_title_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("prj_window_check_Setparameter_title_Enabled is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True

    def prj_window_check_Setparameter_title_visible(self, sym_name, visible=True):
        """
        Check the "Set Parameters" title label is visible in Project window
        :param sym_name: symbolic name Setparameter of title
        :param visible: To check visibility
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("prj_window_check_Setparameter_title_visible is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("prj_window_check_Setparameter_title_visible is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True

    def prj_window_check_Setparameter_title_text(self, sym_name, text):
        """
        Check the "Set Parameters" title label text in Project window
        :param sym_name: symbolic name Setparameter of title
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.log("prj_window_check_Setparameter_title_text is passed", text)
        else:
            self.winapp.fail("prj_window_check_Setparameter_title_text is failed", text)

    def prj_window_check_ProjectName_label_Enabled(self, sym_name, status=True):
        """
        Check the "Project Name" label is enabled/disabled in Project window
        :param sym_name: symbolic name of Project Name label
        :param status: boolean status value True or False.
        :return: True if label is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("prj_window_check_ProjectName_label_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("prj_window_check_ProjectName_label_Enabled is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True

    def prj_window_check_ProjectName_label_visible(self, sym_name, visible=True):
        """
        Check the "Project Name" label is visible in Project window
        :param sym_name: symbolic name of Project Name label
        :param visible: To check visibility
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("prj_window_check_ProjectName_label_visible is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("prj_window_check_ProjectName_label_visible is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True

    def prj_window_check_ProjectName_label_text(self, sym_name, text):
        """
        Check the "Project Name" label text in Project window
        :param sym: symbolic name of Project Name label
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.log("prj_window_check_ProjectName_label_text is passed", text)
        else:
            self.winapp.fail("prj_window_check_ProjectName_label_text is failed", text)

    def prj_window_check_product_name_label_text(self, sym_name, text):
        """
        Check the "Product Name" label text in Project window
        :param sym_name: symbolic name of Project Name label
        :param text: text to compare
        :return:True if succeeds
        """
        ui_text = self.winapp._get_text(sym_name)
        if common.compare_text(ui_text, text):
            self.winapp.log("prj_window_check_product_name_label_text is passed ..",
                                 "text to compare matched = ui_text ={} text ={}".
                                 format(ui_text, text))    
        else:
            self.winapp.fail("prj_window_check_product_name_label_text is failed ..",
                                 "text to compare doesn't match = ui_text ={} text ={}".
                                 format(ui_text, text))    
                             
    def prj_window_check_code_number_label_text(self, sym_name, text):
        """
        Check the "Code Number" label text in Project window
        :param sym_name: symbolic name of Project Name label
        :param text:text to compare
        :return:True if succeeds
        """
        ui_text = self.winapp._get_text(sym_name)        
        if common.compare_text(ui_text, text):
            self.winapp.log("prj_window_check_code_number_label_text is passed ..",
                                 "text to compare matched = ui_text ={} text ={}".
                                 format(ui_text, text))    
        else:
            self.winapp.fail("prj_window_check_code_number_label_text is failed ..",
                                 "text to compare doesn't match = ui_text ={} text ={}".
                                 format(ui_text, text))    
                             
    def prj_window_check_software_version_label_text(self, sym_name, text):
        """
        Check the "Software Version" label text in Project window
        :param sym_name: symbolic name of Project Name label
        :param text:text to compare
        :return:True if succeeds
        """
        ui_text = self.winapp._get_text(sym_name)      
        if common.compare_text(ui_text, text):
            self.winapp.log("prj_window_check_software_version_label_text is passed ..",
                                 "text to compare matched = ui_text ={} text ={}".
                                 format(ui_text, text))    
        else:
            self.winapp.fail("prj_window_check_software_version_label_text is failed ..",
                                 "text to compare doesn't match = ui_text ={} text ={}".
                                 format(ui_text, text))    

    def prj_window_check_danfoss_website_link_text(self, sym, link_text):
        """
        Check the "danfoss website link" label text in Project window
        :param sym: symbolic name of "danfoss website link" label
        :param link_text:text to compare
        :return:True if succeeds else false.
        """
        if self.winapp.compare_text(sym, link_text):
            self.winapp.pass_log("prj_window_check_danfoss_website_link_text is passed", link_text)
        else:
            self.winapp.fail("prj_window_check_danfoss_website_link_text is failed", link_text)

    def prj_window_enter_string_in_search_box(self, sym_filename_edit, string):
        """
        Enter text in "search edit textbox"
        :param sym_filename_edit: symbolic name of "search edit textbox".
        :param name: name string to enter in search textbox.
        :return: True if text entered successfully else False.
        """
        return self.winapp.set_text(sym_filename_edit, string)
    
    def prj_window_check_controller_visible(self, sym_controller_image,visible=True):
        """
        Check if the controller is visible in project window.
        :param sym_controller_image : symbolic name of the controller image in project window.
        :param visible: Visible status(True or False).
        :return: True if suceeds
        """
        if self.winapp.visible(sym_controller_image) != visible:
            self.winapp.fail("prj_window_check_controller_visible is failed ...",
                             "sym = '{}' ".format(sym_controller_image))
            return False
        self.winapp.pass_log("prj_window_check_controller_visible is passed ...",
                             "sym = '{}' ".format(sym_controller_image))
        return True
    
    def prj_window_check_controller_visible_for_expand_and_collapse(self, sym_controller_image,visible=True):
        """
        Check if the controller is visible in project window while checking expand and collpase.
        :param sym_controller_image : symbolic name of the controller image in project window.
        :param visible: Visible status(True or False).
        :return: True if suceeds
        """
        if self.winapp.visible(sym_controller_image) != visible:
            self.winapp.fail("prj_window_check_controller_visible_for_expand_and_collapse is failed ...",
                             "sym = '{}' ".format(sym_controller_image))
            return False
        self.winapp.pass_log("prj_window_check_controller_visible_for_expand_and_collapse is passed ...",
                             "sym = '{}' ".format(sym_controller_image))
        return True

    def prj_window_check_project_name_label_is_visible(self, sym, visible=True):
        """
        verify the code number label in project window is visible
        :param sym: Symbolic name of product name label in project window.
        :param visible: Visibility status(True or False).
        :return:True if succeeds
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("prj_window_check_project_name_label_is_visible is failed ...",
                             "sym = '{}'  visible= '{}'".format(sym, visible))

        self.winapp.pass_log("prj_window_check_project_name_label_is_visible is passed ...",
                             "sym = '{}' visible= '{}'".format(sym, visible))
        return True
    
    def prj_window_get_headers_from_the_datagrid(self, symName):
        """
        Get headers from the datagrid in project window.
        :param symName: Symbolic name of the datagrid.
        :return: True if succeeds.
        """
        headers = self.winapp.get_headers_from_the_datagrid(symName)
        if not headers:
            self.winapp.fail("prj_window_get_headers_from_the_datagrid is failed ...",
                             "sym = '{}' headers ='{}' ...".format(symName, headers))
            return False
        self.winapp.pass_log("prj_window_get_headers_from_the_datagrid is Passed ...",
                        "sym = '{}' headers ='{}' ...".format(symName, headers))
        return headers
    
        
class CommonFunction:
    """
    Class which have common function across all the window
    """

    def __init__(self, *args, **kwargs):
        self.winapp = winappApi.WinappLibAPI()

    def get_image_by_sym_and_compare_images(self, sym_image, img_path):
        """
        Compare the images
        :param sym_image : symbolic name of image
        :param img_path : image path
        """
        img = self.winapp.get_image_from_ui(sym_image)
        if img is None:
            self.winapp.fail("Could not able to find image",
                             "'get_image_from_ui' could not find from symbolic name ={}".format(sym_image))
        else:
            file = common.get_currentDirectory() + "\\screenshot.png"
            img.save(file, "PNG")
            if common.compare_images(file, img_path):
                common.removeFile(file)
                self.winapp.pass_log(
                    "get_image_by_sym_and_compare_images image by path '{}' is passed...".format(img_path))
                return True
        self.winapp.log("get_image_by_sym_and_compare_images image by path '{}' is failed...".format(img_path))
        return False
    
    def get_image_by_sym_and_compare_images_in_different_window(self, sym_image, prod_img):
        """
        Compare two images with their symbolic names
        :param sym_image : symbolic name of image
        :param prod_img : image to be compared with the sym_image
        :return : True if images are same, False otherwise. 
        """
        img = self.winapp.get_image_from_ui(sym_image)
        img_to_compare = self.winapp.get_image_from_ui(prod_img)
        if img and img_to_compare is None:
            self.winapp.fail("Could not able to find image",
                             "'get_image_from_ui' could not find from symbolic name ={}".format(sym_image))
        else:
            file = common.get_currentDirectory() + "\\screenshot.png"
            file_to_be_compared = common.get_currentDirectory() + "\\screenshot1.png"
            img.save(file, "PNG")
            img_to_compare.save(file_to_be_compared,"PNG")
            if common.compare_images(file, file_to_be_compared):
                common.removeFile(file)
                self.winapp.pass_log(
                    "get_image_by_sym_and_compare_images image by path '{}' is passed...".format(file_to_be_compared))
                return True
        self.winapp.log("get_image_by_sym_and_compare_images image by path '{}' is failed...".format(file_to_be_compared))
        return False
    
    def about_window_is_Enabled(self, sym_names_list, status=True):
        """
        verify the "about" window labels are enabled or disabled
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        for sym_name in sym_names_list:
            if self.winapp.Enable(sym_name) != status:
                self.winapp.fail("about_window_is_Enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("about_window_is_Enabled is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True

    def about_window_is_visible(self, sym_names_list, visible):
        """
        verify the "about" window labels are visible
        :param visible: check visible status(True or False).
        :param sym_names_list: symbolic names of about window labels
        :return:True if succeeds
        """
        for sym_name in sym_names_list:
            if self.winapp.visible(sym_name) != visible:
                self.winapp.fail("about_window_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("about_window_is_visible is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True

    def about_window_check_koolprog_version(self, sym_name, text):
        """
        verify the KoolProg version in about window
        :param sym_names_list: symbolic names koolrpog version label
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("about_window_check_koolprog_version is passed", text)
        else:
            self.winapp.fail("about_window_check_koolprog_version is failed", text)

    def about_window_check_close_button_tooltip(self, sym, tooltip_text):
        """
        verify the "about window" close button tooltip
        :param sym_names_list: symbolic name of about window button
        :param tooltip_text: clsoe button tooltip text
        :return:True if succeeds
        """
        ui_tooltip = self.winapp.tooltip(sym)
        if ui_tooltip != tooltip_text:
            self.winapp.fail("about_window_check_close_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip_text))
            return False
        self.winapp.log("about_window_check_close_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip_text))
        return True

    def about_window_check_right_reserved_text(self, sym_name, text):
        """
        verify the "Right reserved" text in about window
        :param sym_name: symbolic name of Right reserved label
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("about_window_check_right_reserved_text is passed", text)
        else:
            self.winapp.fail("about_window_check_right_reserved_text is failed", text)

    def about_window_check_header_text(self, sym_name, text):
        """
        verify the "about" header text in about window
        :param sym_name: symbolic name of about label
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("about_window_check_header_text is passed", text)
        else:
            self.winapp.fail("about_window_check_header_text is failed", text)


    def about_window_check_koolprog_label_text(self, sym_name, text):
        """
        verify the "KoolProg" label text in about window
        :param sym_name: symbolic name of KoolProg label
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("about_window_check_koolprog_label_text is passed", text)
        else:
            self.winapp.fail("about_window_check_koolprog_label_text is failed", text)

    def about_window_check_koolprog_version_label_text(self, sym_name, text):
        """
        verify the "KoolProg Version" label in about window
        :param sym_name: symbolic name of KoolProg Version label
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("about_window_check_koolprog_version_label_text is passed", text)
        else:
            self.winapp.fail("about_window_check_koolprog_version_label_text is failed", text)


    def about_window_check_close_button_text(self, sym_name, text):
        """
        verify the "Close" button text in about window
        :param sym_name: symbolic name of Close button label
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("about_window_check_close_button_text is passed", text)
        else:
            self.winapp.fail("about_window_check_close_button_text is failed", text)

    def about_window_check_X_button_text(self, sym_name, text):
        """
        verify the "X" button text in about window
        :param sym_name: symbolic name of X button 
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("about_window_check_X_button_text is passed", text)
        else:
            self.winapp.fail("about_window_check_X_button_text is failed", text)

    def viewmore_window_Enabled(self, sym_names_list, status=True):
        """
        verify the "View More" window labels are enabled or disabled
        :param sym_names_list:symbolic names of view more window labels
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        for sym_name in sym_names_list:
            if self.winapp.Enable(sym_name) != status:
                self.winapp.fail("viewmore_window_check_labels_Enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("viewmore_window_check_labels_Enabled is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True

    def viewmore_window_visible(self, sym_names_list, visible):
        """
        verify the "View More" window labels are visible
        :param visible: check visible status(True or False).
        :param sym_names_list: symbolic names of about window lables
        :return:True if succeeds
        """
        for sym_name in sym_names_list:
            if self.winapp.Enable(sym_name) != visible:
                self.winapp.fail("viewmore_window_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("viewmore_window_visible is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True

    def viewmore_window_check_header_text(self, sym_name, text):
        """
        verify the "View More" window header text
        :param text:text to compare
        :param sym_name: symbolic name of "View More" window header text
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.log("viewmore_window_check_header_text is passed", text)
        else:
            self.winapp.fail("viewmore_window_check_header_text is failed", text)

    def viewmore_window_check_close_button_tooltip(self, sym, tooltip_text):
        """
        verify the "View More" window close button tooltip
        :param tooltip_text: close button tooltip
        :param sym_name: symbolic name of "View More" close button
        :return:True if succeeds
        """
        ui_tooltip = self.winapp.tooltip(sym)
        if ui_tooltip != tooltip_text:
            self.winapp.fail("viewmore_window_check_close_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip_text))
            return False
        self.winapp.log("viewmore_window_check_close_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip_text))
        return True

    def viewmore_window_check_X_button_text(self, sym_name, text):
        """
        verify the "X" buttton text
        :param text:text to compare
        :param sym_name: symbolic name of "X" buttton text
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.log("viewmore_window_check_X_text is passed", text)
            return True
        else:
            self.winapp.fail("viewmore_window_check_X_text is failed", text)
            return False
    
    def viewmore_window_check_Close_button_text(self, sym_name, text):
        """
        verify the "Close" buttton text
        :param text:text to compare
        :param sym_name: symbolic name of "Close" buttton text
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.log("viewmore_window_check_Close_button_text is passed", text)
            return True
        else:
            self.winapp.fail("viewmore_window_check_Close_button_text is failed", text)
            return False

    def help_window_Enabled(self, sym_names_list, status=True):
        """
        verify the "help" window labels are enabled
        :param sym_names_list: symbolic names of help window lables
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        for sym_name in sym_names_list:
            if self.winapp.Enable(sym_name) is False:
                self.winapp.fail("help_window_check_labels_Enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("help_window_check_labels_Enabled is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True

    def help_window_visible(self, sym_names_list,visible):
        """
        verify the "help" window labels are visible
        :param sym_names_list: symbolic names of help window lables
        :param visible: visible value True or False.
        :return:True if succeeds
        """
        for sym_name in sym_names_list:
            if self.winapp.Enable(sym_name) is False:
                self.winapp.fail("help_window_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("help_window_visible is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True

    def help_window_check_header_text(self, sym_name, text):
        """
        verify the "help" window header text
        :param sym_name: symbolic names of help window header lables
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("help_window_check_header_text is passed", text)
        else:
            self.winapp.fail("help_window_check_header_text is failed", text)

    def help_window_check_close_button_tooltip(self, sym, tooltip_text):
        """
        verify the "help" window  close button tooltip
        :param sym_name: symbolic names of help window cancel(X) button
        :param tooltip_text: close button tooltip
        :return:True if succeeds
        """
        ui_tooltip = self.winapp.tooltip(sym)
        if ui_tooltip != tooltip_text:
            self.winapp.fail("help_window_check_close_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip_text))
            return False
        self.winapp.log("help_window_check_close_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip_text))
        return True

    def check_danfoss_website_link_is_enabled(self, sym, status=True):
        """
        Check status of 'danfoss website link' is enabled or disabled.
        :param sym: symbolic name of 'danfoss website link' in project window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("check_danfoss_website_link_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("check_danfoss_website_link_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def click_on_danfoss_website_link(self, sym):
        """
        Click on 'danfoss website link' label.
        :param sym: symbolic name of 'danfoss website link' button in project window.
        :return: True if button is enabled value is equal to status else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("click_on_danfoss_website_link is failed ...",
                             "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("click_on_danfoss_website_link is passed ...",
                             "sym = '{}' ".format(sym))
        return True

    def check_danfoss_website_link_is_visible(self, sym, status=True):
        """
        Check status of 'danfoss website link' is visible.
        :param sym: symbolic name of 'danfoss website link' in project window.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != status:
            self.winapp.fail("check_danfoss_website_link_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("check_danfoss_website_link_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def check_danfoss_website_link_text(self, sym, link_text):
        """
        Check the "danfoss website link" label text in Project window
        :param sym: symbolic name of "danfoss website link" label
        :param link_text:text to compare
        :return:True if succeeds else false.
        """
        if self.winapp.compare_text(sym, link_text):
            self.winapp.pass_log("check_danfoss_website_link_text is passed", link_text)
        else:
            self.winapp.fail("check_danfoss_website_link_text is failed", link_text)

    def get_List_of_help_menu_items(self,sym):
        """
        Get list of menu items from help menu list.
        :param sym: symbolic name of help menu.
        :return: list of menu items.
        """
        return self.winapp.get_list_of_menu_item(sym)

    def select_help_menuitem(self, sym, item):
        """
        Select a help menu item from help menu.
        :param sym: symbolic name of help button.
        :param item: string -> item to select
        :return: True if menu item is selected successfully else False.
        """
        return self.winapp.select_menu_item(sym, item)

    def Print_Paramter_Sheet_window_is_visible(self, sym_name_list, visible=True):
        """
        Check visibility of "Print" window
        :param visible: check visible status(True or False).
        :param sym_name_list: list of symbolic names present in Print Paramter Sheet window.
        :return: True if visible is Equal else False.
        """
        for sym in sym_name_list:
            if self.winapp.visible(sym) != visible:
                self.winapp.fail("Print_Paramter_Sheet_window_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym))
                return False
        self.winapp.pass_log("Print_Paramter_Sheet_window_is_visible is passed ..",
                             "sym_name_list = {}".format(sym_name_list))
        return True

    def Print_Paramter_Sheet_window_click_on_Export_button(self, sym_name):
        """
        Click on "Export" button in Print Paramter Sheet window
        :param sym_name: symbolic name of Export button.
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("Print_Paramter_Sheet_window_click_on_Export_button is failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("Print_Paramter_Sheet_window_click_on_Export_button is passed..",
                             " click event symbolic name ={}".format(sym_name))
        return True

    def Print_Paramter_Sheet_window_click_on_Export_as_Word_button(self, sym_name):
        """
        Click on "Export as word" button in Print Paramter Sheet window
        :param sym_name: symbolic name of Word button.
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("Print_Paramter_Sheet_window_click_on_Export_as_Word_button is failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("Print_Paramter_Sheet_window_click_on_Export_as_Word_button is passed..",
                             " click event symbolic name ={}".format(sym_name))
        return True
        
        
    def Print_Paramter_Sheet_window_click_on_Export_as_Excel_button(self, sym_name):
        """
        Click on "Export as Excel" button in Print Paramter Sheet window
        :param sym_name: symbolic name of Excel button.
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("Print_Paramter_Sheet_window_click_on_Export_as_Excel_button is failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("Print_Paramter_Sheet_window_click_on_Export_as_Excel_button is passed..",
                             " click event symbolic name ={}".format(sym_name))
        return True
        
        
    def Print_Paramter_Sheet_window_click_on_Export_as_PDF_button(self, sym_name):
        """
        Click on "Export as PDF" button in Print Paramter Sheet window
        :param sym_name: symbolic name of PDF button.
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("Print_Paramter_Sheet_window_click_on_Export_as_PDF_button is failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("Print_Paramter_Sheet_window_click_on_Export_as_PDF_button is passed..",
                             " click event symbolic name ={}".format(sym_name))
        return True
    
    def Print_Paramter_Sheet_window_click_on_zoom_button(self, sym_name):
        """
        Click "Zoom" button in Print Paramter Sheet window
        :param sym_name: symbolic name of Zoom button.
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("Print_Paramter_Sheet_window_click_on_zoom_button is failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("Print_Paramter_Sheet_window_click_on_zoom_button is passed..",
                             " click event symbolic name ={}".format(sym_name))
        return True    

    def Print_Paramter_Sheet_window_click_on_Next_page_button(self, sym_name):
        """
        Click  "Next Page" button in Print Paramter Sheet window
        :param sym_name: symbolic name of Next Page button.
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("Print_Paramter_Sheet_window_click_on_Next_page_button is failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("Print_Paramter_Sheet_window_click_on_Next_page_button is passed..",
                             " click event symbolic name ={}".format(sym_name))
        return True
        
        
    def Print_Paramter_Sheet_window_click_on_Last_page_button(self, sym_name):
        """
        Click  "Last Page" button in Print Paramter Sheet window
        :param sym_name: symbolic name of Last Page button.
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("Print_Paramter_Sheet_window_click_on_Last_page_button is failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("Print_Paramter_Sheet_window_click_on_Last_page_button is passed..",
                             " click event symbolic name ={}".format(sym_name))
        return True
        
        
    def Print_Paramter_Sheet_window_click_on_Previous_page_button(self, sym_name):
        """
        Click  "Previous Page" button in Print Paramter Sheet window
        :param sym_name: symbolic name of Previous Page button.
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("Print_Paramter_Sheet_window_click_on_Previous_page_button is failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("Print_Paramter_Sheet_window_click_on_Previous_page_button is passed..",
                             " click event symbolic name ={}".format(sym_name))
        return True
        
    def Print_Paramter_Sheet_window_click_on_First_page_button(self, sym_name):
        """
        Click  "First Page" button in Print Paramter Sheet window
        :param sym_name: symbolic name of Previous page button.
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("Print_Paramter_Sheet_window_click_on_First_page_button is failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("Print_Paramter_Sheet_window_click_on_First_page_button is passed..",
                             " click event symbolic name ={}".format(sym_name))
        return True

    def Print_Paramter_Sheet_window_enter_page_number(self, sym_name, pagenumber):
        """
        Enter the "Page Number" in Print Paramter Sheet window editor
        :param sym_name: symbolic name of Page Number editor.
        :param pagenumber:page number to be entered
        :return: True if succeed
        """
        if not self.winapp.set_text(sym_name, pagenumber):
            self.winapp.fail("Print_Paramter_Sheet_window_enter_page_number is failed",
                             " sym_name ={} expected text ={} ".format(sym_name, pagenumber))
            return False
        self.winapp.pass_log("Print_Paramter_Sheet_window_enter_page_number is passed...",
                             " sym_name ={} expected text ={} ".format(sym_name, pagenumber))
        return True

    def Print_Paramter_Sheet_window_get_max_page_number(self, sym_name):
        """
        get the "Max Page" Number from the Print Paramter Sheet window
        :param sym_name:symbolic name of the max page number label
        :return: True if succeed
        """
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("Print_Paramter_Sheet_window_get_max_page_number(self,sym_name): is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("Print_Paramter_Sheet_window_get_max_page_number is passed ...",
                        "sym = '{}'  ...".format(sym_name))
        return text

    def Print_Paramter_Sheet_window_click_on_Print_button(self, sym_name):
        """
        Click  "Print" button in Print Paramter Sheet window
        :param sym_name: symbolic name of Print button.
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("Print_Paramter_Sheet_window_click_on_Print_button is failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("Print_Paramter_Sheet_window_click_on_Print_button is passed..",
                             " click event symbolic name ={}".format(sym_name))
        return True

    def chk_please_connect_controller_label_is_visible(self,sym_name,visible=True,time=5):
        """
        verify the "Please connect a controller" label is visible.
        :param visible: check visible status(True or False).
        :param sym_name: symbolic names of "Please connect a controller" Label.
        :param time: Maximum time to wait until the condition passes.
        :return:True if succeeds
        """
        if self.winapp.dynamic_wait_visible(sym_name,time) != visible:
            self.winapp.fail("chk_please_connect_controller_label_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("chk_please_connect_controller_label_is_visible is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True
    
    def get_UI_information_as_key_value(self, sym_name_dict, family):
        """
        Get dictionary of UI element as Key and Value for any symbolic name with its key value
        Example:"controllerVariant": copytocontroller_ProductInfoName0_Label
        :param sym_name_dict: list sym names to get text from Ui.
        :param family:name of the family
        :return: dict of key: value from UI.
        """
        result = dict()
        for field_name, sym in sym_name_dict[family].items():
            result[field_name] = self.winapp.get_text(sym)
        return result

    def Check_status_text_of_online_connecting_controller(self, sym, text):
        """
        Get status message from connected controller status bar.
        :param sym: symbolic name of status label.
        :param text:text to compare
        :return: string text from status label.
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("get_status_text_of_online_controller is failed for sym ='{}' , text ='{}'".
                             format(sym, text))
            return False
        self.winapp.pass_log("get_status_text_of_online_controller is passed for sym ='{}' , text ='{}'".
                             format(sym, text))
        return True

class CodenumberPopupWindow:
    """
    Codenumber window related methods.
    """

    def __init__(self):
        """

        """
        self.winapp = winappApi.WinappLibAPI()

    def codenumber_popup_window_visible(self, sym_list, visible=True):
        """
        Check visiblity of codenumber popup window
        :param visible: visiblity check value. either True or False.
        :param sym_list: symbolic names list to check window visiblity.
        :return: True if equal to 'visible' value.
        """
        for sym in sym_list:
            if self.winapp.visible(sym) != visible:
                self.winapp.fail("codenumber_popup_window_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym))
                return None
            self.winapp.log("codenumber_popup_window_visible is passed",
                            "check list of sym sym_name_list='{}' is visible".format(sym))
        return True

    def code_number_popup_window_ok_button(self, sym):
        """
        Click ok button in code number popup window.
        :param sym: symbolic name of ok button in code number popup window
        :return: boolean True if click is succesfull else False.
        """
        return self.winapp.ClickButton(sym)

    def code_number_popup_window_cancel_button(self, sym):
        """
        Click cancel button in code number popup window.
        :param sym: symbolic name of ok button in code number popup window
        :return: boolean True if click is succesfull else False.
        """
        return self.winapp.ClickButton(sym)

    def code_number_popup_window_get_list_of_file_types(self, sym):
        """
        Get file types list from code number popup window.
        :param sym: symbolic name file type combobox in code number popup window.
        :return: list of items in combobox.
        """
        return self.winapp.get_list_box_items(sym)

    def code_number_popup_window_select_file_type_in_combobox(self, sym, file_type):
        """
        Get file types list from code number popup window.
        :param sym: symbolic name file type combobox in code number popup window.
        :param file_type: string to select in file type in combobox.
        :return: True if item selected else False.
        """
        return self.winapp.select_item_in_list_box(sym, file_type)

    def codenumber_popup_window_check_codenumber(self, sym_name, message):
        """
        Check the code number from the pop-up window text editor(Ex:080G3415)
        :param sym_name:symbolic name of the Code number Popup Window edit text box
        :param message:message to compare with Code number Popup Window text
        """
        if not self.winapp.compare_text(sym_name, message):
            self.winapp.fail("codenumber_popup_window_check_codenumber is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("codenumber_popup_window_check_codenumber is passed ...",
                        "sym = '{}' ".format(sym_name))
        return True

    def codenumber_popup_window_set_codenumber(self, sym_name, txt):
        """
        Set the desired code number in the pop-up window text editor
        :param txt:desired text to set in code number pop-up window
        :param sym_name:symbolic name of the Code number Popup Window edit text box
        """
        if not self.winapp.set_text(sym_name, txt):
            self.winapp.fail("codenumber_popup_window_set_codenumber is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("codenumber_popup_window_set_codenumber is passed ...",
                        "sym = '{}' ".format(sym_name))
        return True

    def codenumber_popup_window_check_text_label_CodeNumber(self, sym, text):
        """
        Set parameter window check "label" text of "setting files".
        :param sym:symbolic name of "label"
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("codenumber_popup_window_check_text_label_CodeNumber is failed ...",
                             "sym ='{}', text='{}'".format(sym, text))
            return False
        self.winapp.pass_log("codenumber_popup_window_check_text_label_CodeNumber is passed ...")
        return True

    def codenumber_popup_window_check_text_label_File_Type(self, sym, text):
        """
        Set parameter window check "label" text of "setting files".
        :param sym:symbolic name of "label"
        :param text:string to compare with label.
        :return:True if text is equal else False.
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("codenumber_popup_window_check_text_label_File_Type is failed ...",
                             "sym ='{}', text='{}'".format(sym, text))
            return False
        self.winapp.pass_log("codenumber_popup_window_check_text_label_File_Type is passed ...")
        return True


class NewFileName:
    """
    New file name window from import setting controller.
    """

    def __init__(self):
        """
        Initialise new file name window.
        """
        self.winapp = winappApi.WinappLibAPI()

    def newfilename_window_is_visible(self, sym_name_list, visible, time):
        """
        check "new file name window" is visible.
        :param sym_name_list: symbolic names list in "new file name window".
        :param visible: boolean True/False visible check value.
        :param time: maximum time to wait for window arrival".
        :return: True if visible value is equal else False.
        """
        for sym in sym_name_list:
            if self.winapp.visible(sym, time) != visible:
                self.winapp.fail("newfilename_window_is_visible is failed ..",
                                 "couldn't be able to find symbolic name = {}".format(sym))
                return None
        self.winapp.pass_log("newfilename_window_is_visible is passed ..",
                             "sym_name_list = {}".format(sym_name_list))
        return True

    def newfilename_window_is_enabled(self, sym_name_list, enable, time):
        """
        check "new file name window" is enabled or not.
        :param sym_name_list: symbolic names list in "new file name window".
        :param enable: boolean True/False enable check value.
        :param time: maximum time to wait for window arrival".
        :return: True if check value is equal else False.
        """
        for sym in sym_name_list:
            if self.winapp.Enable(sym, time) != enable:
                self.winapp.fail("newfilename_window_is_enabled is failed ..",
                                 "couldn't be able to find symbolic name = {}".format(sym))
                return None
        self.winapp.pass_log("newfilename_window_is_enabled is passed ..",
                             "sym_name_list = {}".format(sym_name_list))
        return True

    def newfilename_window_check_label_text(self, sym_window_header_name, sym_window_description,
                                            sym_newfile_name_label, window_header_name, window_description,
                                            newfile_name_label):
        """
        Check labels text in new file name window.
        :param sym_window_header_name: symbolic name of window header name.
        :param sym_window_description: symbolic name of new file window "description" label.
        :param sym_newfile_name_label: symbolic name of new file window "new file name" label.
        :param window_header_name: Header string.
        :param window_description: New file name "description" label text.
        :param newfile_name_label: "new file name" label text
        :return: True if string expected text present in "new file name window" else False.
        """
        if not self.winapp.compare_text(sym_window_header_name, window_header_name):
            self.winapp.fail("New file name window header text is failed ...",
                             "sym ='{}', text='{}'".format(sym_window_header_name, window_header_name))
            return False
        self.winapp.pass_log("New file name window header text is passed ...")

        if not self.winapp.compare_text(sym_window_description, window_description):
            self.winapp.fail("New file name window description text is failed ...",
                             "sym ='{}', text='{}'".format(sym_window_description, window_description))
            return False
        self.winapp.pass_log("New file name window description text is passed ...")

        if not self.winapp.compare_text(sym_newfile_name_label, newfile_name_label):
            self.winapp.fail("New file name window newfile_name_label text is failed ...",
                             "sym ='{}', text='{}'".format(sym_newfile_name_label, newfile_name_label))
            return False
        self.winapp.pass_log("New file name window newfile_name_label text is passed ...")
        return True

    def newfilename_window_check_filename_textbox_text(self, sym_filename_edit, file_name_text):
        """
        check file name edit text box containing text.
        :param sym_filename_edit: symbolic name of "file name edit textbox".
        :param file_name_text: string to compare.
        :return: True if expected text present else False.
        """
        if not self.winapp.compare_text(sym_filename_edit, file_name_text):
            self.winapp.fail("newfilename_window_check_filename_textbox_text is failed ...",
                             "sym ='{}', text='{}'".format(sym_filename_edit, file_name_text))
            return False
        self.winapp.pass_log("newfilename_window_check_filename_textbox_text is passed ...")
        return True

    def newfilename_window_get_filename_textbox_text(self, sym_filename_edit):
        """
        get "file name edit text box" containing text.
        :param sym_filename_edit: symbolic name of "file name edit textbox".
        :return: string of text in edit box.
        """
        return self.winapp.get_text(sym_filename_edit)

    def newfilename_window_set_filename_textbox_text(self, sym_filename_edit, name):
        """
        set text in "file name edit text box".
        :param sym_filename_edit: symbolic name of "file name edit textbox".
        :param name: name string to set in textbox.
        :return: True if text set successfully else False.
        """
        self.winapp.ClickButton(sym_filename_edit)
        self.winapp.mouse_double_click(sym_filename_edit)
        self.winapp.press_Backspace_in_keyBoard()
        return self.winapp.set_text(sym_filename_edit, name)

    def newfilename_window_check_ok_button_enabled(self, sym, status):
        """
        Check status ok button is enabled or disabled.
        :param sym: symbolic name of ok button in new file name window.
        :param status: boolean status value to check ok button.
        :return: True if ok button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("newfilename_window_check_ok_button_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("newfilename_window_check_ok_button_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def newfilename_window_check_ok_button_visible(self, sym_name, visible=True):
        """
        Check ok button in new file name window is visible
        :param sym_name: symbolic name of ok button.
        :param visible: check visible status(True or False).
        :return: True if visible is Equal else False.
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail(" newfilename_window_check_ok_button_visible is failed..",
                             " check event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("newfilename_window_check_ok_button_visible is passed ..",
                             "sym_name = {}".format(sym_name))
        return True

    def newfilename_window_click_ok_button(self, sym_name):
        """
        Click on ok button in "new file name window".
        :param sym_name: Symbolic name of ok button in "new file name window".
        :return: True if succeed.
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("newfilename_window_click_ok_button failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("newfilename_window_click_ok_button is passed.",
                             " click event symbolic name ={}".format(sym_name))
        return True

    def newfilename_window_check_ok_button_text(self, sym_name, text):
        """
        Check ok button text in "new file name window".
        :param sym_name: symbolic name of ok button.
        :param text: text to compare with ok button text.
        :return: True if ok button text is equal to expected text else False.
        """
        if not self.winapp.compare_text(sym_name, text):
            self.winapp.fail("newfilename_window_check_ok_button_text is failed ...",
                             "sym ='{}', text='{}'".format(sym_name, text))
            return False
        self.winapp.pass_log("newfilename_window_check_ok_button_text is passed ...")
        return True

class ConnectedController:
    """
    Connected controller information in koolprog
    """
    def __init__(self):
        """
        Initialise new file name window.
        """
        self.winapp = winappApi.WinappLibAPI()
        self.commonfunction = CommonFunction()
        
    def check_the_connected_controller_variant_is_enabled(self, sym, enable, time):
        """
        check connected controller variant text is enabled or not.
        :param sym: symbolic name of connected controller Variant.
        :param enable: boolean True/False enable check value.
        :param time: maximum time to wait for window arrival".
        :return: True if check value is equal else False.
        """
        
        if self.winapp.Enable(sym, time) != enable:
                self.winapp.fail("check_the_connected_controller_variant_is_enabled is failed ..",
                                 "couldn't be able to find symbolic name = {}".format(sym))
                return None
        self.winapp.pass_log("check_the_connected_controller_variant_is_enabled is passed ..",
                             "sym_name_list = {}".format(sym))
        return True
        
    def check_connected_controller_online_variant_text_is_visible(self,sym_name,visible=True,time=5):
        """
        verify the connected controller variant text is visible or not.
        :param visible: check visible status(True or False).
        :param sym_name: symbolic names of "Please connect a controller" Label.
        :param time: Time to wait till the condition becomes True.
        :return:True if succeeds
        """
        if self.winapp.dynamic_wait_visible(sym_name,time) != visible:
            self.winapp.fail("check_connected_controller_online_variant_text_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("check_connected_controller_online_variant_text_is_visible is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True


    def check_expand_collapse_online_controller_info_button_is_enabled(self, sym, status=True):
        """
        Check status of 'online controller info collapse' button is enabled or disabled.
        :param sym: symbolic name of 'online controller info collapse' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("check_expand_collapse_online_controller_info_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("check_expand_collapse_online_controller_info_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def check_expand_collapse_online_controller_info_button_is_visible(self, sym, status=True):
        """
        Check status of 'online controller info collapse' button is visible.
        :param sym: symbolic name of 'online controller info collapse' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != status:
            self.winapp.fail("check_expand_collapse_online_controller_info_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("check_expand_collapse_online_controller_info_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def online_get_variant_text(self, sym):
        """
        Get online controller variant name.
        :param sym: symbolic name of online controller variant.
        :return: string text of controller.
        """
        return self.winapp.get_text(sym)

    def check_online_variant_text(self, sym, variant_name):
        """
        Check online/connected controller variant name.
        :param sym: symbolic name of online controller variant.
        :param variant_name : string name to check with the connected controller variant name.
        :return: True if string is equal else false.
        """
        if not self.winapp.compare_text(sym, variant_name):
            self.winapp.fail("check_online_variant_text is failed for sym ='{}' , text ='{}'".
                             format(sym, variant_name))
            return False
        self.winapp.pass_log("check_online_variant_text is passed for sym ='{}' , text ='{}'".
                             format(sym, variant_name))
        return True

    def online_get_controller_code_number(self, sym):
        """
        get controller codenumber string from project window.
        :param sym: symbolic name to get code number in online.
        :return: string
        """
        return self.winapp.get_text(sym)

    def check_online_controller_code_number(self, sym, codenumber_text):
        """
        Check online/connected controller code number.
        :param sym: symbolic name to get code number in online.
        :param codenumber_text : string of code number to check
        :return: True if string is equal else false.
        """
        if not self.winapp.compare_text(sym, codenumber_text):
            self.winapp.fail("check_online_controller_code_number is failed for sym ='{}' , text ='{}'".
                             format(sym, codenumber_text))
            return False
        self.winapp.pass_log("check_online_controller_code_number is passed for sym ='{}' , text ='{}'".
                             format(sym, codenumber_text))
        return True

    def online_get_software_version_number(self, sym):
        """
        get online controller software string from project window.
        :param sym: symbolic name to get software number in online.
        :return: string
        """
        return self.winapp.get_text(sym)

    def check_online_software_version_number(self, sym, software_version_text):
        """
        Check online/connected controller software version number.
        :param sym: symbolic name to get software version  in online.
        :param software_version_text : string of software version  to check
        :return: True if string is equal else false.
        """
        if not self.winapp.compare_text(sym, software_version_text):
            self.winapp.fail("check_online_software_version_number is failed for sym ='{}' , text ='{}'".
                             format(sym, software_version_text))
            return False
        self.winapp.pass_log("check_online_software_version_number is passed for sym ='{}' , text ='{}'".
                             format(sym, software_version_text))
        return True

    def online_get_controller_image(self, sym):
        """
        get online controller image from project window.
        :param sym: symbolic name online controller image.
        :return: string
        """
        return self.winapp.get_image_from_ui(sym)

    def check_online_controller_image(self, sym, image_path):
        """
        Check online controller image
        :param image_path: image to compare with UI.
        :param sym: symbolic name of controller image.
        :return: True - image is equal , False - Image is different
        """
        if not self.commonfunction.get_image_by_sym_and_compare_images(sym, image_path):
            self.winapp.fail("check_online_controller_image is failed",
                             "check_online_controller_image for symbolic name ={} wiring_diagram={}".format(
                                 sym, image_path))
            return False
        return True

    def check_online_controller_loading_image_is_visible(self, sym, visible=False, timeout=60):
        """
        Project window check visiblity of unconnected or waiting to controller connection image
        :param sym: symbolic name of unconnected controller WPF
        :param visible: To check visiblity
        :param timeout: maximum time to wait for object visible.
        :return:
        """
        UI_visiblity = self.winapp.visible(sym, timeout)
        if visible != UI_visiblity:
            self.winapp.fail("check_online_controller_loading_image_is_visible is failed",
                             "object visiblity in UI ={} and expected visiblity ={} .".format(UI_visiblity, visible))
            return False
        return True

    def check_online_controller_is_visible(self, sym_name_list, visible=True, timeout=60):
        """
        Check online connected controller is visible.
        :param sym_name_list: symbolic name to check visibliy.
        :param visible: Visiblity option to check visiblity.
        :param timeout: Maximum time to wait for Objects visible.
        :return: True - image is equal , False - Image is different
        """
        for sym in sym_name_list:
            if self.winapp.visible(sym, timeout) != visible:
                self.winapp.fail("check_online_controller_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym))
                return None
            self.winapp.pass_log("check_online_controller_is_visible is passed",
                                 "check list of sym sym_name_list='{}' is visible".format(sym_name_list))
        return True

    def check_status_msg_of_online_controller(self, sym, sts_msg):
        """
        Check status message from connected controller status bar.
        :param sym: symbolic name of status label.
        :param sts_msg: status message to check with label text.
        :return: boolean True if string equal to expected text else False.
        """
        if not self.winapp.compare_text(sym, sts_msg):
            self.winapp.fail("check_status_msg_of_online_controller is failed for sym ='{}' , text ='{}'".
                             format(sym, sts_msg))
            return False
        self.winapp.pass_log("check_status_msg_of_online_controller is passed for sym ='{}' , text ='{}'".
                             format(sym, sts_msg))
        return True

    def check_online_controller_image_is_fadeout(self, sym, fadeout):
        """
        Check online controller image is fadeout.
        :param sym: symbolic name of  online controller container.
        :param fadeout: boolean True to check fadeout or False to check full visiblity.
        :return: True if fadeout expect is equal to opacity value else False.
        """
        if fadeout:
            if float(self.winapp.get_opacity_value(sym)) < 1.0:
                self.winapp.pass_log("check_online_controller_image_is_fadeout is passed ...",
                                     "sym ='{}' , fadeout='{}'".format(sym, fadeout))
                return True
        elif not fadeout:
            if float(self.winapp.get_opacity_value(sym)) == 1.0:
                self.winapp.pass_log("check_online_controller_image_is_fadeout is passed ...",
                                     "sym ='{}' , fadeout='{}'".format(sym, fadeout))
                return True
        self.winapp.fail("check_online_controller_image_is_fadeout is failed ...",
                         "sym ='{}' , fadeout='{}'".format(sym, fadeout))
        return False

    def check_connected_controller_info_button_is_enabled(self, sym, status=True):
        """
        Check status of 'connected controller info' button is enabled or disabled.
        :param sym: symbolic name of 'connected controller info' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("check_connected_controller_info_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("check_connected_controller_info_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def click_on_connected_controller_info_button(self, sym):
        """
        Click on "connected controller info button" in project window.
        :param sym: symbolic name of "connected controller info button" in project window.
        :return: True if click is successful else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("click_on_connected_controller_info_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False
        self.winapp.pass_log("click_on_connected_controller_info_button is passed ...",
                             "sym = '{}' ".format(sym))
        return True

    def check_connected_controller_info_button_is_visible(self, sym, status=True):
        """
        Check status of 'connected controller info' button is visible.
        :param sym: symbolic name of 'connected controller info' button in project window.
        :param status: boolean status value True or False.
        :return: True if button is visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != status:
            self.winapp.fail("check_connected_controller_info_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("check_connected_controller_info_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True

    def compare_connected_controller_info_button_tooltip(self, sym_name, tooltip):
        """
        In Project window  Compare tooltip text of connected controller info(i) button
        :param sym_name: symbolic name of connected controller info(i) button
        :param tooltip: string to check with tooltip
        :return: True if text is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("compare_connected_controller_info_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("compare_connected_controller_info_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True
    
    def connected_controller_check_controller_code_number_is_visible(self, sym, visible=True):
        """
        Check "controller code number " is visible in Connected Controller window.
        :param sym: symbolic name of online controller codenumber.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("connected_controller_check_controller_code_number_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("connected_controller_check_controller_code_number_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def connected_controller_check_controller_code_number_is_enabled(self, sym,status=True):
        """
        Check "controller code number " is enabled in Connected Controller window.
        :param sym: symbolic name of online controller codenumber.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("connected_controller_check_controller_code_number_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("connected_controller_check_controller_code_number_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def connected_controller_check_software_version_is_visible(self, sym, visible=True):
        """
        Check "software version" is visible in Connected Controller window.
        :param sym: symbolic name to get software version  in online.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("connected_controller_check_software_version_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("connected_controller_check_software_version_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def connected_controller_check_software_version_is_enabled(self, sym, status=True):
        """
        Check "software version" is enabled in Connected Controller window.
        :param sym: symbolic name to get software version  in online.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("connected_controller_check_software_version_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("connected_controller_check_software_version_is_enabled is passed ...",
                             "sym = '{}' status= '{}' ".format(sym, status))
        return True
    
    def check_online_software_version(self, sym , software_version_text):
        """
        Check online/connected controller software version.
        :param sym: symbolic name to get software version  in online.
        :param software_version_text : string of software version to check
        :return: True if string is equal else false.
        """
        if not self.winapp.compare_text(sym, software_version_text):
            self.winapp.fail("check_online_software_version is failed for sym ='{}' , text ='{}'".
                             format(sym, software_version_text))
            return False
        self.winapp.pass_log("check_online_software_version is passed for sym ='{}' , text ='{}'".
                             format(sym, software_version_text))
        return True
    
    def connected_controller_importing_controller_model_progress_label_is_visible(self, sym,visible=True):
        """
        verify the "Importing controller model" progress label is visible in Connected Controller window
        :param sym: Symbolic name of the "importing controller model" progress label in Connected Controller window.
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("connected_controller_importing_controller_model_progress_label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("connected_controller_importing_controller_model_progress_label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
        
    def connected_controller_importing_controller_model_progress_label_is_enabled(self, sym,  status=True):
        """
        verify the "Importing controller model" progress label is enabled in Connected Controller window
        :param sym: Symbolic name of the "importing controller model" progress label in Connected Controller window.
        :param status: boolean status value True or False.
        :return: True if progress label is enabled value is equal to status else False
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("connected_controller_importing_controller_model_progress_label_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("connected_controller_importing_controller_model_progress_label_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
        
    def connected_controller_check_importing_controller_model_progress_label_text(self, sym, text):
        """
        check "Importing controller model" progress label text in Connected Controller window
        :param sym: Symbolic name of the "importing controller model" progress label in Connected Controller window.
        :param text:testData to compare
        :return:True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail(" connected_controller_check_importing_controller_model_progress_label_text for sym ='{}' , text ='{}'".
                             format(sym, text))
            return False
        self.winapp.pass_log("connected_controller_check_importing_controller_model_progress_label_text for sym ='{}' , text ='{}'".
                             format(sym, text))
        return True
    
   
    def connected_controller_check_non_compliant_controller_label_is_visible(self, sym, visible):
        
        """
        Check "non compliant controller" status message is visible in Connected Controller window..
        :param sym: symbolic name of "non compliant controller" status message in Connected Controller window.
        :param visible: boolean status value True or False.
        :return: True if visible value is equal to status else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("connected_controller_check_non_compliant_controller_label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("connected_controller_check_non_compliant_controller_label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def connected_controller_check_non_compliant_controller_label_is_enabled(self,sym_name,status):
        """
        verify the "non compliant controller" status message are enabled or disabled  in Connected Controller window.
        :param sym_name: symbolic names of "non compliant controller" status message  in Connected Controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("connected_controller_check_non_compliant_controller_label_is_enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("connected_controller_check_non_compliant_controller_label_is_enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
        
    
    def connected_controller_check_non_compliant_controller_label_text(self,sym_name,text):
        
        """
        Check "non compliant controller" text in Connected Controller window
        :param sym_name: symbolic name of "non compliant controller" status message in Connected Controller window..
        :param text : testData to check with the connected controller status message.
        :return: True if string is equal else false.
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("connected_controller_check_non_compliant_controller_label_text is passed", text)
            return True
        else:
            self.winapp.fail("connected_controller_check_non_compliant_controller_label_text is failed", text)
            return False
        
    def connected_controller_get_color_of_non_compliant_controller_label(self,sym_name):
        """
        Get text color from "non compliant controller" status message in the connected controller window .
        :param sym_name: symbolic name of "non compliant controller" status message in Connected Controller window.
        :return: list of rgb colors of "non compliant controller" status message
        """
        color = self.winapp.get_color(sym_name)
        if not color:
            self.winapp.fail("connected_controller_get_color_of_non_compliant_controller_label is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("connected_controller_get_color_of_non_compliant_controller_label is passed ...", "sym = '{}'  ...".format(sym_name))
        return color
    
    
class Preferenceswindow():
    """
    """
    def __init__(self):
        """
        Initialise new file name window.
        """
        self.winapp = winappApi.WinappLibAPI()
        
    def Preferences_window_check_X_button_text(self, sym_name, text):
        """
        verify the "X" button text in Preferences window.
        :param sym_name: symbolic name of X button 
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Preferences_window_check_X_button_text is passed", text)
        else:
            self.winapp.fail("Preferences_window_check_X_button_text is failed", text)


    def Preferences_window_check_header_text(self, sym_name, text):
        """
        verify the "header" label text in Preferences window
        :param sym_name: symbolic name of header label 
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Preferences_window_check_header_text is passed", text)
        else:
            self.winapp.fail("Preferences_window_check_header_text is failed", text)
            
            
    def Preferences_window_check_save_button_text(self, sym_name, text):
        """
        verify the "Save" button text in Preferences window
        :param sym_name: symbolic name of Save button 
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Preferences_window_check_save_button_text is passed", text)
        else:
            self.winapp.fail("Preferences_window_check_save_button_text is failed", text)
            
            
    def Preferences_window_check_cancel_button_text(self, sym_name, text):
        """
        verify the "Cancel" button text in Preferences window
        :param sym_name: symbolic name of Cancel button 
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Preferences_window_check_cancel_button_text is passed", text)
        else:
            self.winapp.fail("Preferences_window_check_cancel_button_text is failed", text)
    
    def Preferences_window_check_onlyForAKCC_label_text(self, sym, text):
        """
        verify the "Only for AK-CC55" Label text in Preferences window
        :param sym: symbolic name of "Only for AK-CC55" label.
        :param text:testData to compare
        :return:True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("Preferences_window_check_onlyForAKCC_label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("Preferences_window_check_onlyForAKCC_label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True  
            
    def Preferences_window_check_Language_label_text(self, sym_name, text):
        """
        verify the "Language" Label text in Preferences window
        :param sym_name: symbolic name of Language label 
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Preferences_window_check_Language_label_text is passed", text)
        else:
            self.winapp.fail("Preferences_window_check_Language_label_text is failed", text)
            
            
    def Preferences_window_check_Unit_label_text(self, sym_name, text):
        """
        verify the "Unit" Label text in Preferences window
        :param sym_name: symbolic name of Unit label 
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Preferences_window_check_Unit_label_text is passed", text)
        else:
            self.winapp.fail("Preferences_window_check_Unit_label_text is failed", text)
            

    def Preferences_window_check_Baudrate_label_text(self, sym_name, text):
        """
        verify the "Baudrate" Label text in Preferences window
        :param sym_name: symbolic name of Baudrate Label 
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Preferences_window_check_Baudrate_label_text is passed", text)
        else:
            self.winapp.fail("Preferences_window_check_Baudrate_label_text is failed", text)
            
    def Preferences_window_check_SaveFilesOn_label_text(self, sym_name, text):
        """
        verify the "Save Files On" Label text in Preferences window
        :param sym_name: symbolic name of Save Files On label
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Preferences_window_check_SaveFilesOn_label_text is passed", text)
        else:
            self.winapp.fail("Preferences_window_check_SaveFilesOn_label_text is failed", text)         


    def Preferences_window_check_UsePasswordProtection_label_text(self, sym_name, text):
        """
        verify the "Use Password Protection" Label text in Preferences window
        :param sym_name: symbolic name of Use Password Protection label
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Preferences_window_check_UsePasswordProtection_label_text is passed", text)
        else:
            self.winapp.fail("Preferences_window_check_UsePasswordProtection_label_text is failed", text)  
            
    def Preferences_window_check_Password_label_text(self, sym_name, text):
        """
        verify the "Password" Label text in Preferences window
        :param sym_name: symbolic name of Password label
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Preferences_window_check_Password_label_text is passed", text)
        else:
            self.winapp.fail("Preferences_window_check_Password_label_text is failed", text)  
            
    def Preferences_window_check_Confirm_Password_label_text(self, sym_name, text):
        """
        verify the "Confirm Password" Label text in Preferences window
        :param sym_name: symbolic name of Confirm Password label
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Preferences_window_check_Confirm_Password_label_text is passed", text)
        else:
            self.winapp.fail("Preferences_window_check_Confirm_Password_label_text is failed", text)  
            
            
    def Preferences_window_check_Password_casesensitive_label_text(self, sym_name, text):
        """
        verify the "Password are case sensitive" Label text in Preferences window
        :param sym_name: symbolic name of Password are case sensitive label
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Preferences_window_check_Password_casesensitive_label_text is passed", text)
        else:
            self.winapp.fail("Preferences_window_check_Password_casesensitive_label_text is failed", text) 
            
            
    def Preferences_window_Show_Password_label_text(self, sym_name, text):
        """
        verify the "Show Password" Label text in Preferences window
        :param sym_name: symbolic name of Show Password label
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Preferences_window_Show_Password_label_text is passed", text)
        else:
            self.winapp.fail("Preferences_window_Show_Password_label_text is failed", text) 
            
    def Preferences_window_Browse_button_text(self, sym_name, text):
        """
        verify the "Browse Button" text in Preferences window
        :param sym_name: symbolic name of Browse Button
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Preferences_window_Browse_button_text is passed", text)
        else:
            self.winapp.fail("Preferences_window_Browse_button_text is failed", text)
            
    def Preferences_window_check_X_button_tooltip(self, sym, tooltip_text):
        """
        verify the "X"  button tooltip in preferences window
        :param sym: symbolic name of X button
        :param tooltip_text: X button tooltip text
        :return:True if succeeds
        """
        ui_tooltip = self.winapp.tooltip(sym)
        if ui_tooltip != tooltip_text:
            self.winapp.fail("Preferences_window_check_X_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip_text))
            return False
        self.winapp.log("Preferences_window_check_X_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip_text))
        return True


    def Preferences_window_check_filepath_tooltip(self, sym, tooltip_text):
        """
        verify the "filepath"  button tooltip in preferences window
        :param sym: symbolic name of filepath editor
        :param tooltip_text: filepath editor tooltip text
        :return:True if succeeds
        """
        ui_tooltip = self.winapp.tooltip(sym)
        if ui_tooltip != tooltip_text:
            self.winapp.fail("Preferences_window_check_filepath_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip_text))
            return False
        self.winapp.log("Preferences_window_check_filepath_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip_text))
        return True
    
    
    def Preferences_window_is_Enabled(self, sym_names_list, status=True):
        """
        verify the "Preferences" window labels are enabled or disabled in preferences window
        :param sym_names_list: symbolic names of Preference window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        for sym_name in sym_names_list:
            if self.winapp.Enable(sym_name) != status:
                self.winapp.fail("Preferences_window_is_Enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("Preferences_window_is_Enabled is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True
    
    
    def Preferences_window_is_visible(self, sym_names_list, visible=True):
        """
        verify the "Preferences" window labels are visible in preferences window
        :param visible: check visible status(True or False).
        :param sym_names_list: symbolic names of Preferences window labels
        :return:True if succeeds
        """
        for sym_name in sym_names_list:
            if self.winapp.visible(sym_name) != visible:
                self.winapp.fail("Preferences_window_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("Preferences_window_is_visible is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True
    
    def Preference_window_return_existence_of_window(self,sym_name):
        """
        Return the existence of preference window.
        :param sym_name: symbolic name of Preferences window
        :return: True if exists or False Otherwise.
        
        """
        return self.winapp.visible(sym_name)
        


    def Preferences_window_check_password_label_is_visible(self, sym_names_list, visible=True):
        """
        verify the "Password" button is visible in preferences window
        :param visible: check visible status(True or False).
        :param sym_names_list: symbolic names of Password button.
        :return:True if succeeds
        """
        for sym_name in sym_names_list:
            if self.winapp.visible(sym_name) != visible:
                self.winapp.fail("Preferences_window_check_password_label_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("Preferences_window_check_password_label_is_visible is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True

    def Preferences_window_check_Only_for_AKCC55_label_is_visible(self, sym_name, visible=True):
        """
        verify the "Only for AK-CC55 " label is visible in preferences window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic names of Only for AK-CC55 Label.
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Preferences_window_check_Only_for_AKCC55_label_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Preferences_window_check_Only_for_AKCC55_label_is_visible is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True
    
    
    def Preferences_window_check_confirm_password_label_is_visible(self, sym_names_list, visible=True):
        """
        verify the "Confirm Password" button is visible in preferences window
        :param visible: check visible status(True or False).
        :param sym_names_list: symbolic names of Password button.
        :return:True if succeeds
        """
        for sym_name in sym_names_list:
            if self.winapp.visible(sym_name) != visible:
                self.winapp.fail("Preferences_window_check_confirm_password_label_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("Preferences_window_check_confirm_password_label_is_visible is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True
    
    def Preferences_window_get_List_of_Languages(self, sym_name, list_items):
        """
        Check list of "Languages" present in the list box of preference window.
        :param sym_name: symbolic name of listbox
        :param list_items: list of text to compare in list box.
        :return: True if list is equal else False
        """
        ui_list = self.winapp.get_list_box_items(sym_name)
        self.winapp.log(
            "Preferences_window_get_List_of_Languages comparing lists UI LIST ={} app list = {} ".format(ui_list,
                                                                                                           list_items))
        if not common.compare_list(ui_list, list_items):
            self.winapp.fail("Preferences_window_get_List_of_Languages is failed ...",
                             "sym = '{}' UI LIST ={} app list = {}  ".format(sym_name, ui_list, list_items))
            return False
        self.winapp.log("Preferences_window_get_List_of_Languages is passed ...",
                        "sym = '{}' UI LIST ={} app list = {}  ".format(sym_name, ui_list, list_items))
        return True
    
    def Preferences_window_select_languange_from_List_of_Languages(self, sym, Language):
        """
        Select Language in Preferences window Languages listbox in preference window.
        :param sym:  symbolic name of listbox.
        :param Language: string Language.
        :return: boolean True if Language has selected successfully else False.
        """
        if not self.winapp.click_and_select_list_Box(sym, Language):
            self.winapp.fail("Preferences_window_select_languange_from_List_of_Languages is failed",
                             " sym_List_box ={} expected text ={} ".format(sym, Language))
            return False
        return True
    
    def Preferences_window_select_Units_from_List_of_Units(self, sym, Unit):
        """
        Select Unit in Preferences window Units listbox in preference window.
        :param sym:  symbolic name of listbox.
        :param Unit: string Unit.
        :return: boolean True if Unit has selected successfully else False.
        """
        if not self.winapp.click_and_select_list_Box(sym, Unit):
            self.winapp.fail("Preferences_window_select_Units_from_List_of_Units is failed",
                             " sym_List_box ={} expected text ={} ".format(sym, Unit))
            return False
        return True
    
    def Preferences_window_get_List_of_Units(self, sym, list_items):
        """
        Check list of "Units" present in the list box of preference window.
        :param sym: symbolic name of listbox
        :param list_items: list of text to compare in list box.
        :return: True if list is equal else False
        """
        ui_list = self.winapp.get_list_box_items(sym)
        self.winapp.log(
            "Preferences_window_get_List_of_Units comparing lists UI LIST ={} app list = {} ".format(ui_list,
                                                                                                           list_items))
        if not common.compare_list(ui_list, list_items):
            self.winapp.fail("Preferences_window_get_List_of_Units is failed ...",
                             "sym = '{}' UI LIST ={} app list = {}  ".format(sym, ui_list, list_items))
            return False
        self.winapp.log("Preferences_window_get_List_of_Units is passed ...",
                        "sym = '{}' UI LIST ={} app list = {}  ".format(sym, ui_list, list_items))
        return True
    
    def Preferences_window_get_List_of_Baudrate(self, sym):
        """
        Get the  list of "Baudrate" present in the list box of preference window.
        window.
        :param sym: symbolic name of listbox
        :return: list of can baudrate
        """
        return self.winapp.get_list_box_items(sym)
    
    def Preferences_window_chk_default_List_of_Baudrate(self, sym, list_items):
        """
        Check list of "Baudrate" present in the list box of preference window.
        window.
        :param sym: symbolic name of listbox
        :param list_items: list of text to compare in list box.
        :return: True if list is equal else False
        """
        ui_list = self.winapp.get_list_box_items(sym)
        self.winapp.log(
            "Preferences_window_chk_default_List_of_Baudrate comparing lists UI LIST ={} app list = {} ".format(ui_list,
                                                                                                           list_items))
        if not common.compare_list(ui_list, list_items):
            self.winapp.fail("Preferences_window_chk_default_List_of_Baudrate is failed ...",
                             "sym = '{}' UI LIST ={} app list = {}  ".format(sym, ui_list, list_items))
            return False
        self.winapp.log("Preferences_window_chk_default_List_of_Baudrate is passed ...",
                        "sym = '{}' UI LIST ={} app list = {}  ".format(sym, ui_list, list_items))
        return True
    
    def Preferences_window_select_Baudrate_from_List_of_Baudrates(self, sym, Baudrate):
        """
        Select Baudrate in Preferences window Baudrate listbox in preference window.
        :param sym:  symbolic name of listbox.
        :param Baudrate: string Baudrate.
        :return: boolean True if Baudrate has selected successfully else False.
        """
        if not self.winapp.click_and_select_list_Box(sym, Baudrate):
            self.winapp.fail("Preferences_window_select_Baudrate_from_List_of_Baudrates is failed",
                             " sym_List_box ={} expected text ={} ".format(sym, Language))
            return False
        return True


    def Preferences_window_click_X_button(self, sym):
        """
        Click on close button(X mark button) in Preferences window.
        :param sym: symbolic name of X button.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Preferences_window_click_X_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Preferences_window_click_X_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    

    def Preferences_window_click_Save_button(self, sym):
        """
        Click on "Save" button in Preferences window.
        :param sym: symbolic name of save button.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Preferences_window_click_Save_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Preferences_window_click_Save_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    

    def Preferences_window_click_cancel_button(self, sym):
        """
        Click on "Cancel" button in Preferences window.
        :param sym: symbolic name of Cancel button.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Preferences_window_click_cancel_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Preferences_window_click_cancel_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    

    def Preferences_window_click_Browse_button(self, sym):
        """
        Click on "Browse Button" in Preferences window.
        :param sym: symbolic name of Browse button.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Preferences_window_click_Browse_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Preferences_window_click_Browse_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True

    def Preferences_window_click_password_protection_checkbox(self, sym):
        """
        Click on "Password Protection" checkbox in Preferences window.
        :param sym: symbolic name of Password Protection checkbox.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Preferences_window_click_password_protection_checkbox is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Preferences_window_click_password_protection_checkbox is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def Preferences_window_deselect_password_protection_checkbox(self, sym):
        """
        Deselect the Password Protection checkbox in Preference window.
        :param sym: Symbolic name of Password Protection checkbox.
        :return: True if succeeds.
        """
        if not self.winapp.uncheck_checkbox(sym):
            self.winapp.fail("Preferences_window_deselect_password_protection_checkbox is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Preferences_window_deselect_password_protection_checkbox is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def Preferences_window_click_Show_password_checkbox(self, sym):
        """
        Click on "Show Password" checkbox in Preferences window.
        :param sym: symbolic name of Show Password checkbox.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Preferences_window_click_Show_password_checkbox is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Preferences_window_click_Show_password_checkbox is passed ...",
                        "sym = '{}' ".format(sym))
        return True

    def Preferences_window_clear_password(self, sym_name):
        """
        Remove the Password from  Password window editor in preference window.
        :param sym_name:symbolic name of Password editor
        :param password:Password to reconfirm.
        :return: True if succeed
        """
        self.winapp.mouse_double_click(sym_name)
        if not self.winapp.press_Backspace_in_keyBoard():
            self.winapp.fail("Preferences_window_clear_password, set_text is failed",
                             " sym_name ={}".format(sym_name))
            return False
        self.winapp.log("Preferences_window_clear_password, set_text is passed...",
                        " sym_name ={} ".format(sym_name))
        return True

    def Preferences_window_clear_confirm_password(self, sym_name):
        """
        Remove the Password from  Confirm Password window editor in preference window.
        :param sym_name:symbolic name of Confirm Password editor
        :return: True if succeed
        """
        self.winapp.mouse_double_click(sym_name)
        if not self.winapp.press_Backspace_in_keyBoard():
            self.winapp.fail("Preferences_window_clear_confirm_password, set_text is failed",
                             " sym_name ={}".format(sym_name))
            return False
        self.winapp.log("Preferences_window_clear_confirm_password, set_text is passed...",
                        " sym_name ={} ".format(sym_name))
        return True

    def Preferences_window_enter_password(self, sym_name, password):
        """
        Writing the "Password" in preference window.
        :param sym_name:symbolic name of Password editor
        :param password:Desired Password to set.
        :return: True if succeed
        """
        self.winapp.mouse_double_click(sym_name)
        self.winapp.press_Backspace_in_keyBoard()
        if not self.winapp.set_text(sym_name, password):
            self.winapp.fail("Preferences_window_enter_password, set_text is failed",
                             " sym_name ={} expected text ={} ".format(sym_name, password))
            return False
        self.winapp.log("Preferences_window_enter_password, set_text is passed...",
                        " sym_name ={} expected text ={} ".format(sym_name, password))
        return True
    
    def Preferences_window_enter_confirm_password(self, sym_name, password):
        """
        Writing the Password for Confirmation in preference window.
        :param sym_name:symbolic name of Confirm Password editor
        :param password:Password to reconfirm.
        :return: True if succeed
        """
        self.winapp.mouse_double_click(sym_name)
        self.winapp.press_Backspace_in_keyBoard()
        if not self.winapp.set_text(sym_name, password):
            self.winapp.fail("Preferences_window_enter_confirm_password, set_text is failed",
                             " sym_name ={} expected text ={} ".format(sym_name, password))
            return False
        self.winapp.log("Preferences_window_enter_confirm_password, set_text is passed...",
                        " sym_name ={} expected text ={} ".format(sym_name, password))
        return True
    
    def Preferences_window_check_default_password(self, sym, password):
        """
        Get the default "Password" from Preferences window.
        :param sym: symbolic name of Password Editor
        :param password:password to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym, password):
            self.winapp.pass_log("Preferences_window_check_default_password is passed", password)
        else:
            self.winapp.fail("Preferences_window_check_default_password is failed", password)

    def Preferences_window_check_default_confirm_password(self, sym_name, password):
        """
        Get default "Confirm Password" information from Preferences window.
        :param sym_name: symbolic name of Confirm Password Editor
        :param password:password to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, password):
            self.winapp.pass_log("Preferences_window_check_default_confirm_password is passed", password)
        else:
            self.winapp.fail("Preferences_window_check_default_confirm_password is failed", password)
            
    def Preferences_window_get_default_Language(self, sym_name, Language):
        """
        Get "Default Language" from Preferences window.
        :param sym_name: symbolic name of Language ComboBox
        :param Language:Language to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, Language):
            self.winapp.pass_log("Preferences_window_get_default_Language is passed", Language)
        else:
            self.winapp.fail("Preferences_window_get_default_Language is failed", Language)


    def Preferences_window_get_default_Unit(self, sym_name, Unit):
        """
        Get "Default Unit" from Preferences window.
        :param sym_name: symbolic name of Unit ComboBox
        :param Unit:Unit to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, Unit):
            self.winapp.pass_log("Preferences_window_get_default_Unit is passed", Unit)
        else:
            self.winapp.fail("Preferences_window_get_default_Unit is failed", Unit)


    def Preferences_window_get_default_Baudrate(self, sym_name, Baudrate):
        """
        Get "Default Baudrate" from Preferences window.
        :param sym: symbolic name of Baudrate ComboBox
        :param Baudrate:Baudrate to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, Baudrate):
            self.winapp.pass_log("Preferences_window_get_default_Baudrate is passed", Baudrate)
        else:
            self.winapp.fail("Preferences_window_get_default_Baudrate is failed", Baudrate)
            
    def Preferences_window_get_default_FilePath(self, sym_name, FilePath):
        """
        Get "Default FilePath" from Preferences window.
        :param sym_name: symbolic name of FilePath ComboBox
        :param FilePath:FilePath to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, FilePath):
            self.winapp.pass_log("Preferences_window_get_default_FilePath is passed", FilePath)
        else:
            self.winapp.fail("Preferences_window_get_default_FilePath is failed", FilePath)
            
    def Preferences_window_get_FilePath(self, sym_name):
        """
        Get the "FilePath" from the Preferences window.
        :param sym_name:symbolic name of the FilePath edit
        :return: Filepath
        """
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("Preferences_window_get_FilePath(self,sym_name): is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("Preferences_window_get_FilePath is passed ...",
                        "sym = '{}'  ...".format(sym_name))
        return text

    def Preferences_window_get_selected_Language(self, sym_name):
        """
        Get "selected Language" from Preferences window.
        :param sym_name: symbolic name of Language ComboBox
        :return:True if succeeds
        """
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("Preferences_window_get_selected_Language(self,sym_name): is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("Preferences_window_get_selected_Language is passed ...",
                        "sym = '{}'  ...".format(sym_name))
        return text

    def Preferences_window_get_selected_Unit(self, sym_name):
        """
        Get "selected Unit" from Preferences window.
        :param sym_name: symbolic name of Unit ComboBox
        :return:True if succeeds
        """
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("Preferences_window_get_selected_Unit(self,sym_name): is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("Preferences_window_get_selected_Unit is passed ...",
                        "sym = '{}'  ...".format(sym_name))
        return text

    def Preferences_window_get_selected_Baudrate(self, sym_name):
        """
        Get "selected Baudrate" from Preferences window.
        :param sym_name: symbolic name of Baudrate ComboBox
        :return:True if succeeds
        """
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("Preferences_window_get_selected_Baudrate(self,sym_name): is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("Preferences_window_get_selected_Baudrate is passed ...",
                        "sym = '{}'  ...".format(sym_name))
        return text

    def Preferences_window_Browse_dialog_create_and_select_new_folder(self, sym_name, Path):
        """
        create New folder and select the New folder in Browse dialog from Preference Window
        :param Path:path to select
        :param sym_name: symbolic name of Browse dialog
        :return:True if succeeds
        """
        result=self.winapp.select_folder(sym_name, Path)
        if not result:
            self.winapp.fail("Preferences_window_Browse_dialog_create_and_select_new_folder(self,sym_name): is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("Preferences_window_Browse_dialog_create_and_select_new_folder is passed ...",
                        "sym = '{}'  ...".format(sym_name))
        return True

    def Preferences_window_Browse_dialog_select_special_character_named_folder(self, sym_name, Path):
        """
        select the special charcter named folder in Browse dialog from Preference Window
        :param Path:path to select.
        :param sym_name: symbolic name of Browse dialog
        :return:True if succeeds
        """
        common.make_dir_if_not_exists(Path)
        text = self.winapp.select_folder(sym_name, Path)
        if not text:
            self.winapp.fail("Preferences_window_Browse_dialog_select_special_character_named_folder(self,sym_name): is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("Preferences_window_Browse_dialog_select_special_character_named_folder is passed ...",
                        "sym = '{}'  ...".format(sym_name))
        return True

    def click_cancel_button_in_preference_window(self, sym_name):
        """
        Clicks cancel Button in Main Window
        :param sym_name: Symbolic name of cancel Button in Main Window
        :return: True if succeed.
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("click_cancel_button_in_preference_window failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.log("click_cancel_button_in_preference_window is passed.",
                        " click event symbolic name ={}".format(sym_name))
        return True

    def get_the_path_from_preference_window(self, sym_name):
        """
        Gets the path from preference window.
        :param sym_name: Symbolic name of filepath editor
        :return: Path as String.
        """
        return self.winapp.get_text(sym_name)



    def Preferences_window_get_Password(self, sym_name):
        """
        Get the "Password" from the Preferences window.
        :param sym_name:symbolic name of the Password edit
        :return:True if succeeds
        """
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("Preferences_window_get_Password(self,sym_name): is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("Preferences_window_get_Password is passed ...",
                        "sym = '{}'  ...".format(sym_name))
        return text

    def Preferences_window_get_confirm_password(self, sym_name):
        """
        Get the " Confirm Password" from the Preferences window.
        :param sym_name:symbolic name of the Confirm Password edit
        :return:True if succeeds
        """
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("Preferences_window_get_confirm_password(self,sym_name): is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("Preferences_window_get_confirm_password is passed ...",
                        "sym = '{}'  ...".format(sym_name))
        return text
  
class PasswordWindow():
    """
    """
    def __init__(self):
        """
        Initialise new file name window.
        """
        self.winapp = winappApi.WinappLibAPI()

    def Password_window_check_default_user(self, sym, User):
        """
        Get the default "User" from Password window.
        :param sym: symbolic name of User Editor
        :param User:User to compare
        :return: User
        """
        if self.winapp.compare_text(sym, User):
            self.winapp.pass_log("Password_window_check_default_user is passed", User)
        else:
            self.winapp.fail("Password_window_check_default_user is failed", User)

    def Password_window_enter_password(self, sym_name, password):
        """
        Writing the "Password" in Password window.
        :param sym_name:symbolic name of Password editor
        :param password:Desired Password to set.
        :return: True if succeed
        """
        self.winapp.mouse_double_click(sym_name)
        if not self.winapp.set_text(sym_name, password):
            self.winapp.fail("Password_window_enter_password, set_text is failed",
                             " sym_name ={} expected text ={} ".format(sym_name, password))
            return False
        self.winapp.log("Password_window_enter_password, set_text is passed...",
                        " sym_name ={} expected text ={} ".format(sym_name, password))
        return True

    def Password_window_click_Ok_Button(self, sym):
        """
        Click on "Ok" button in Password window.
        :param sym: symbolic name of Ok button.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Password_window_click_Ok_Button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Password_window_click_Ok_Button is passed ...",
                        "sym = '{}' ".format(sym))
        return True

    def Password_window_click_Cancel_Button(self, sym):
        """
        Click on "Cancel" button in Password window.
        :param sym: symbolic name of Cancel button.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Password_window_click_Cancel_Button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Password_window_click_Cancel_Button is passed ...",
                        "sym = '{}' ".format(sym))
        return True

    def Password_window_check_Cancel_Button_text(self, sym_name, text):
        """
        verify the "Cancel" button text in Password window
        :param sym_name: symbolic name of Cancel button
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Password_window_check_Cancel_Button_text is passed", text)
        else:
            self.winapp.fail("Password_window_check_Cancel_Button_text is failed", text) 

    def Password_window_check_Ok_Button_text(self, sym_name, text):
        """
        verify the "Ok" button text in Password window
        :param sym_name: symbolic name of Ok button
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Password_window_check_Ok_Button_text is passed", text)
        else:
            self.winapp.fail("Password_window_check_Ok_Button_text is failed", text) 
            
            
    def Password_window_check_Show_Password_label_text(self, sym_name, text):
        """
        verify the "Show Password" label text in Password window
        :param sym_name: symbolic name of Show Password label 
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Password_window_check_Show_Password_label_text is passed", text)
        else:
            self.winapp.fail("Password_window_check_Show_Password_label_text is failed", text) 
            

    def Password_window_check_CaseSensitive_label_text(self, sym_name, text):
        """
        verify the "CaseSensitive" label text in Password window
        :param sym_name: symbolic name of CaseSensitive label 
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Password_window_check_CaseSensitive_label_text is passed", text)
        else:
            self.winapp.fail("Password_window_check_CaseSensitive_label_text is failed", text) 
            
    
    def Password_window_check_Password_label_text(self, sym_name, text):
        """
        verify the "Password" label text in Password window
        :param sym_name: symbolic name of Password label 
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Password_window_check_Password_label_text is passed", text)
        else:
            self.winapp.fail("Password_window_check_Password_label_text is failed", text) 
            

    def Password_window_check_User_label_text(self, sym_name, text):
        """
        verify the "User" label text in Password window
        :param sym_name: symbolic name of User label 
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Password_window_check_User_label_text is passed", text)
        else:
            self.winapp.fail("Password_window_check_User_label_text is failed", text)
            
    def Password_window_check_close_button_text(self, sym_name, text):
        """
        verify the "X" button text in Password window
        :param sym_name: symbolic name of X button 
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Password_window_check_close_button_text is passed", text)
        else:
            self.winapp.fail("Password_window_check_close_button_text is failed", text)

    def Password_window_check_header_text(self, sym_name, text):
        """
        verify the "header" label text in Password window
        :param sym_name: symbolic name of header label 
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Password_window_check_header_text is passed", text)
        else:
            self.winapp.fail("Password_window_check_header_text is failed", text)

    def Password_window_is_Enabled(self, sym_names_list, status=True):
        """
        verify the "Password" window labels are enabled or disabled
        :param sym_names_list:symbolic name of Password window labels
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        for sym_name in sym_names_list:
            if self.winapp.Enable(sym_name) != status:
                self.winapp.fail("Password_window_is_Enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("Password_window_is_Enabled is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True       
            
    def Password_window_is_visible(self, sym_names_list, visible=True):
        """
        verify the "Password" window labels are visible
        :param visible: check visible status(True or False).
        :param sym_names_list: symbolic names of Password window labels
        :return:True if success
        """
        for sym_name in sym_names_list:
            if self.winapp.visible(sym_name) != visible:
                self.winapp.fail("Password_window_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("Password_window_is_visible is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True

    def Password_window_get_user_information(self, sym_name):
        """
        Get "User" information from Password window.
        :param sym_name: symbolic name of User Editor
        :return: User 
        """
        self.winapp.ClickButton(sym_name)
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("Password_window_get_user_information(self,sym_name): is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("Password_window_get_user_information is passed ...",
                        "sym = '{}'  ...".format(sym_name))
        return text
        
    def Password_window_get_password_information(self, sym_name):
        """
        Get "Password" information from Password window.
        :param sym_name: symbolic name of Password Editor
        :return: Password
        """
        self.winapp.ClickButton(sym_name)
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("Password_window_get_password_information(self,sym_name): is failed ...",
                             "sym_name = '{}' ".format(sym_name))
            return False

        self.winapp.log("Password_window_get_password_information is passed ...",
                        "sym_name = '{}'  ...".format(sym_name))
        return text

    def Password_window_enter_user(self, sym_name, user):
        """
        Writing the "User" in Password window.
        :param sym_name:symbolic name of User editor
        :param user:Desired User to set.
        :return: True if succeed
        """
        self.winapp.mouse_double_click(sym_name)
        self.winapp.press_Backspace_in_keyBoard()
        if not self.winapp.set_text(sym_name, user):
            self.winapp.fail("Password_window_enter_user, set_text is failed",
                             " sym_name ={} expected text ={} ".format(sym_name, user))
            return False
        self.winapp.log("Password_window_enter_user, set_text is passed...",
                        " sym_name ={} expected text ={} ".format(sym_name, user))
        return True

    def Password_window_enter_password(self, sym_name, Password):
        """
        Writing the "Password" in Password window.
        :param sym_name:symbolic name of Password editor
        :param password:Desired Password to set.
        :return: True if succeed
        """
        self.winapp.ClickButton(sym_name)   
        if not self.winapp.set_text(sym_name, Password):
            self.winapp.fail("Password_window_enter_password, set_text is failed",
                             " sym_name ={} expected text ={} ".format(sym_name, Password))
            return False
        self.winapp.log("Password_window_enter_password, set_text is passed...",
                        " sym_name ={} expected text ={} ".format(sym_name, Password))
        return True
    
    def Password_window_click_Show_password_checkbox(self, sym):
        """
        Click on "Show Password" checkbox in Password window.
        :param sym: symbolic name of Show Password checkbox.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Password_window_click_Show_password_checkbox is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Password_window_click_Show_password_checkbox is passed ...",
                        "sym = '{}' ".format(sym))
        return True
        
class PortCommunication(Database):
    
    """
    """

    def __init__(self, *args, **kwargs):
        self.winapp = winappApi.WinappLibAPI()
        self.commonfunction = CommonFunction()
        Database.__init__(self)
    
    def click_on_disable_button_in_KoolProg(self,sym):
        """
        Click on disable button in KoolProg to release the COM Port.
        :param sym: symbolic name of disable button.
        :return: True if succeeds
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("click_on_disable_button_in_KoolProg is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("click_on_disable_button_in_KoolProg is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def click_on_enable_button_in_KoolProg(self,sym):
        """
        Click on enable button in KoolProg to release the COM Port.
        :param sym: symbolic name of enable button.
        :return: True if succeeds
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("click_on_enable_button_in_KoolProg is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("click_on_enable_button_in_KoolProg is passed ...",
                        "sym = '{}' ".format(sym))
        return True 
       
class OnlineServiceWindow(Database):
    """
    """

    def __init__(self, *args, **kwargs):
        self.winapp = winappApi.WinappLibAPI()
        self.commonfunction = CommonFunction()
        Database.__init__(self)
        
    def online_service_window_click_resetAlarms_button(self, sym):
        """
        Click on reset Alarms button in online service window-alarm tab.
        :param sym: Symbolic name of the reset Alarms button in online service window-alarm tab.
        :return: True if succeeds.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("online_service_window_click_resetAlarms_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("online_service_window_click_resetAlarms_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True
        
    def online_window_click_onAlarm_in_alarm_dataGrid(self,sym_name,alarmName):
        """
        Clicks on the specified alarm row.
        :param sym_name: Symbolic name of dataGrid.
        :param alarmName: Alarm name.
        :return: True if succeeds, False otherwise.
        
        """
        if not self.winapp.click_onAlarm_in_alarm_dataGrid(sym_name,alarmName):
            self.winapp.fail("online_window_click_onAlarm_in_alarm_dataGrid is failed ...")
            return False
        self.winapp.pass_log("online_window_click_onAlarm_in_alarm_dataGrid is passed ...")
        return True
        
    def online_window_get_readOutsList_from_dataGrid(self, sym_name):
        """
        Gets the readouts List information from DataGrid.
        :param sym_name: Symbolic name of dataGrid.
        :return: Readouts List information from DataGrid.
        
        """
        readOuts_list = self.winapp.get_readOutsList_from_dataGrid(sym_name) 
        if not readOuts_list:
            self.winapp.fail("online_window_get_readOutsList_from_dataGrid is failed ...")
            return False
        self.winapp.pass_log("online_window_get_readOutsList_from_dataGrid is passed ...")
        return readOuts_list
    
    def online_window_get_interLockList_from_alarmTab(self, sym_name):
        """
        Gets the interLock List information.
        :param sym_name: Symbolic name of WPF Control.
        :return: InterLock List information.
        
        """
        interLockList = self.winapp.get_interLockList_from_alarmTab(sym_name) 
        if not interLockList:
            self.winapp.fail("online_window_get_interLockList_from_alarmTab is failed ...")
            return False
        self.winapp.pass_log("online_window_get_interLockList_from_alarmTab is passed ...")
        return interLockList
        
    def online_window_parse_the_alarm_datagrid(self, sym_name):
        """
        Gets the active alarm datagrid information.
        :param sym_name: Symbolic name of dataGrid.
        :return: datagrid Information will be returned
        
        """

        datagrid = self.winapp.parse_the_alarm_datagrid(sym_name)
        if not datagrid:
            self.winapp.fail("online_window_parse_the_alarm_datagrid is failed ...")
            return False
        self.winapp.pass_log("online_window_parse_the_alarm_datagrid is passed ...")
        return datagrid
    
    def online_service_window_get_headersList_in_alarm_dataGrid(self, sym_name):
        """
        Gets the header List information from alarm DataGrid.
        :param sym_name: Symbolic name of dataGrid.
        :return: Header List information from alarm DataGrid.
        
        """
        headersList = self.winapp.get_headersList_in_alarm_dataGrid(sym_name)
        if headersList:
            self.winapp.pass_log("online_service_window_get_headersList_in_alarm_dataGrid is passed ...")
            return headersList
        self.winapp.fail("online_service_window_get_headersList_in_alarm_dataGrid is failed ...")
        return headersList
        
    def online_window_parse_the_activeAlarm_datagrid(self, sym_name):
        """
        Gets the active alarm datagrid information.
        :param sym_name: Symbolic name of dataGrid.
        :return: datagrid Information will be returned
        
        """
        datagrid = self.winapp.parse_active_alarm_dataGrid(sym_name)
        if not datagrid:
            self.winapp.fail("online_window_parse_the_activeAlarm_datagrid is failed ...")
            return False
        self.winapp.pass_log("online_window_parse_the_activeAlarm_datagrid is passed ...")
        return datagrid
    
    
    
    def online_window_alarmTab_tree_click_item(self, sym_treeview, tree_item_name):
        """
        Click tree item.
        :param sym_treeview: symbolic name of tree.
        :param tree_item_name: name of tree item.
        :return: Boolean True - it item is found and click.
        """
        return self.winapp.tree_view_click_item(sym_treeview, tree_item_name,"Alarms_Tab")
        
    def check_the_checkbox_in_datagrid(self, sym_name, groupName, parameterName, type):
        """
        Check The Checkbox in dataGrid.
        :param sym_name: Symbolic name of dataGrid.
        :param groupName: Group Name
        :param parameterName: Parameter Name
        :return: True if succeeds.
        
        """
    
        if not (self.winapp.check_the_checkbox_in_datagrid(sym_name, groupName, parameterName, type)):
            self.winapp.fail("check_the_checkbox_in_datagrid failed..",
                         " select event for parameter ={}".format(parameterName))
            return False
        self.winapp.log("check_the_checkbox_in_datagrid is passed.",
                    " select event for parameter ={}".format(parameterName))
        return True
    
    def online_service_click_chart_button(self, sym_name):
        """
        Clicks chart Button in online service Window
        :param sym_name: Symbolic name of chart Button in Online service Window
        :return: True if succeed.
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("online_service_click_chart_button failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.log("online_service_click_chart_button is passed.",
                        " click event symbolic name ={}".format(sym_name))
        return True

    def online_service_check_chart_button_is_enabled(self, sym_name, status=True):
        """
        verify the chart button is enabled or disabled in Online service window.
        :param sym_name: symbolic names of chart button.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """

        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("online_service_check_chart_button_is_enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("online_service_check_chart_button_is_enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def online_service_window_check_home_button_is_visible(self, sym,visible=True):
        """
        Check if home button is visible in online service window.
        :param sym: Symbolic name of the home button in online servce window.
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("online_service_window_check_home_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("online_service_window_check_home_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
        
    def online_service_window_check_open_button_is_visible(self, sym, visible=True):
        """
        Check if open button is visible in online service window.
        :param sym: Symbolic name of the open button in online servce window.
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("online_service_window_check_open_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("online_service_window_check_open_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def online_service_window_check_saveas_button_is_visible(self, sym, visible=True):
        """
        Check if saveas button is visible in online service window.
        :param sym: Symbolic name of the saveas button in online servce window.
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("online_service_window_check_saveas_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("online_service_window_check_saveas_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def online_service_window_check_home_button_is_enabled(self, sym, status=True):
        """
        Check if home button is enabled or disabled in online service window.
        :param sym: Symbolic name of the home button in online servce window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("online_service_window_check_home_button_is_enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("online_service_window_check_home_button_is_enabled is passed ..",
                        "sym_name = {}".format(sym))
        return True
    
    def online_service_window_check_open_button_is_enabled(self, sym, status=True):
        """
        Check if open button is enabled or disabled in online service window.
        :param sym: Symbolic name of the open button in online servce window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("online_service_window_check_open_button_is_enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("online_service_window_check_open_button_is_enabled is passed ..",
                        "sym_name = {}".format(sym))
        return True
    
    def online_service_window_check_saveas_button_is_enabled(self, sym, status=True):
        """
        Check if saveas button is enabled or disabled in online service window.
        :param sym: Symbolic name of the saveas button in online servce window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("online_service_window_check_saveas_button_is_enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("online_service_window_check_saveas_button_is_enabled is passed ..",
                        "sym_name = {}".format(sym))
        return True
    
    def online_service_window_click_home_button(self, sym):
        """
        Click on home button in online service window.
        :param sym: Symbolic name of the home button in online servce window.
        :return: True if succeeds.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("online_service_window_click_home_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("online_service_window_click_home_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True
        
    def online_service_window_click_open_button(self, sym):
        """
        Click on open button in online service window.
        :param sym: Symbolic name of the open button in online servce window.
        :return: True if succeeds.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("online_service_window_click_open_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("online_service_window_click_open_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True
        
    def online_service_window_click_saveas_button(self, sym):
        """
        Click on saveas button in online service window.
        :param sym: Symbolic name of the saveas button in online servce window.
        :return: True if succeeds.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("online_service_window_click_saveas_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("online_service_window_click_saveas_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def online_service_window_check_home_button_tooltip(self, sym, tooltip):
        """
        Check the home button tooltip in online service window.
        :param sym: Symbolic name of the home button in online service window.
        :param tooltip: home button tooltip
        :return:True if succeeds
        """
        ui_tooltip = self.winapp.tooltip(sym)
        if ui_tooltip != tooltip:
            self.winapp.fail("online_service_window_check_home_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip))
            return False
        self.winapp.log("online_service_window_check_home_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip))
        return True
    
    def online_service_window_check_open_button_tooltip(self, sym, tooltip):
        """
        Check the open button tooltip in online service window.
        :param sym: Symbolic name of the open button in online service window.
        :param tooltip: open button tooltip
        :return:True if succeeds
        """
        ui_tooltip = self.winapp.tooltip(sym)
        if ui_tooltip != tooltip:
            self.winapp.fail("online_service_window_check_open_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip))
            return False
        self.winapp.log("online_service_window_check_open_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip))
        return True
    
    def online_service_window_check_saveas_button_tooltip(self, sym, tooltip):
        """
        Check the saveas button tooltip in online service window.
        :param sym: Symbolic name of the saveas button in online service window.
        :param tooltip: saveas button tooltip
        :return:True if succeeds
        """
        ui_tooltip = self.winapp.tooltip(sym)
        if ui_tooltip != tooltip:
            self.winapp.fail("online_service_window_check_saveas_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip))
            return False
        self.winapp.log("online_service_window_check_saveas_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip))
        return True
    
    def online_service_window_chk_menu_bar_icons_Enable(self, sym_names_list ,time=30):
        """
        verify the Enabled status of menu icons  in online service window.
        :param sym_names_list: symbolic name of menu icons in online service window. 
        :param time: Time to wait till the condition passes.
        :return:True if succeeds
        """
        for sym_name in sym_names_list:
            if self.winapp.Enable(sym_name , time) is False:
                self.winapp.fail("online_service_window_chk_menu_bar_icons_Enable is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("online_service_window_chk_menu_bar_icons_Enable is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True      

    def online_service_window_visible(self,sym_name,visible=True,time=5):
        """
        verify the Online Service Window is visible.
        :param visible: check visible status(True or False).
        :param sym_name: symbolic names of Online Service Window.
        :param time: Maximum time to wait until the condition passes.
        :return:True if succeeds
        """
        if self.winapp.dynamic_wait_visible(sym_name,time) != visible:
            elf.winapp.fail("online_service_window_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("online_service_window_visible is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True
    
    def online_service_window_chk_please_connect_controller_label_text(self, sym_name, text):
        """
        verify the "Please connect a controller" label text in Online Service Window.
        :param sym_name: symbolic name of "Please connect a controller" label.
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("online_service_window_chk_please_connect_controller_label_text is passed", text)
        else:
            self.winapp.fail("online_service_window_chk_please_connect_controller_label_text is failed", text)

    def chk_chart_button_Enable(self, sym_name,time=30):
        """
        verify the Enabled status of chart button  in online service window.
        :param sym_name: symbolic name of chart button in online service window. 
        :param time: Time to wait till the condition passes.
        :return:True if succeeds
        """
        if self.winapp.Enable(sym_name , time) is False:
                self.winapp.fail("chk_chart_button_Enable is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("chk_chart_button_Enable is passed ..",
                        "sym_name = {}".format(sym_name))
        return True 
    
    def online_service_window_check_parameters_tab_is_visible(self, sym, visible):
        """
        Check parameters tab label in online service window is visible in online service window.
        :param sym: Symbolic name of the parameters tab label in online service window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("online_service_window_check_parameters_tab_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("online_service_window_check_parameters_tab_is_visible is passed ..",
                        "sym_name = {}".format(sym))
        return True
        
    def online_service_window_check_alarms_tab_is_visible(self, sym, visible):
        """
        Check alarms tab label in online service window is visible in online service window.
        :param sym: Symbolic name of the alarms tab label in online service window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("online_service_window_check_alarms_tab_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("online_service_window_check_alarms_tab_is_visible is passed ..",
                        "sym_name = {}".format(sym))
        return True
    
    def online_service_window_check_input_output_tab_is_visible(self, sym, visible):
        """
        Check input/output tab in online service window is visible in online service window.
        :param sym: Symbolic name of the input/output tab in online service window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("online_service_window_check_input_output_tab_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("online_service_window_check_input_output_tab_is_visible is passed ..",
                        "sym_name = {}".format(sym))
        return True
    
    def online_service_window_check_parameters_tab_is_enabled(self, sym_name, status=True):
        """
        verify the parameters tab label is enabled or disabled in online service window.
        :param sym_name: symbolic names of parameters tab label in online service window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("online_service_window_check_parameters_tab_is_enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("online_service_window_check_parameters_tab_is_enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def online_service_window_check_alarms_tab_is_enabled(self, sym_name, status=True):
        """
        verify the alarms tab label is enabled or disabled in online service window.
        :param sym_name: symbolic names of alarms tab label in online service window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("online_service_window_check_alarms_tab_is_enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("online_service_window_check_alarms_tab_is_enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def online_service_window_check_input_output_tab_is_enabled(self, sym_name, status=True):
        """
        verify the input/output tab label is enabled or disabled in online service window.
        :param sym_name: symbolic names of input/output tab label in online service window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("online_service_window_check_input_output_tab_is_enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("online_service_window_check_input_output_tab_is_enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def online_service_window_check_parameters_tab_text(self, sym, message):
        """
        check the "parameters" tab text in online service window
        :param sym: Symbolic name of the parameters tab in online service window
        :param message:string to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("online_service_window_check_parameters_tab_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("online_service_window_check_parameters_tab_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def online_service_window_check_alarms_tab_text(self, sym, message):
        """
        check the "alarms" tab text in online service window
        :param sym: Symbolic name of the alarms tab in online service window
        :param message:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("online_service_window_check_alarms_tab_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("online_service_window_check_alarms_tab_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def online_service_window_check_input_output_tab_text(self, sym, message):
        """
        check the "input/output" tab text in online service window
        :param sym: Symbolic name of the input/output tab in online service window
        :param message:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("online_service_window_check_input_output_tab_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("online_service_window_check_input_output_tab_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def online_service_window_get_parameters_tab_type(self, sym_name):
        """
        Get "parameters" type from online service window.
        :param sym_name: symbolic name of parameters tab in online service window.
        :return: Type of parameters tab
        """
        type = self.winapp.get_type(sym_name)
        if not type:
            self.winapp.fail("online_service_window_get_parameters_tab_type is failed ...",
                             "sym_name = '{}' ".format(sym_name))
            return False

        self.winapp.log("online_service_window_get_parameters_tab_type is passed ...",
                        "sym_name = '{}'  ...".format(sym_name))
        return type
    
    def online_service_window_get_alarms_tab_type(self, sym_name):
        """
        Get "alarms" type from online service window.
        :param sym_name: symbolic name of parameters ta in online service window.
        :return: Type of alarms tab
        """
        type = self.winapp.get_type(sym_name)
        if not type:
            self.winapp.fail("online_service_window_get_alarms_tab_type is failed ...",
                             "sym_name = '{}' ".format(sym_name))
            return False

        self.winapp.log("online_service_window_get_alarms_tab_type is passed ...",
                        "sym_name = '{}'  ...".format(sym_name))
        return type
    
    def online_service_window_get_input_output_tab_type(self, sym_name):
        """
        Get "input/output" type from online service window.
        :param sym_name: symbolic name of input/output tab in online service window.
        :return: Type of input output tab
        """
        type = self.winapp.get_type(sym_name)
        if not type:
            self.winapp.fail("online_service_window_get_input_output_tab_type is failed ...",
                             "sym_name = '{}' ".format(sym_name))
            return False

        self.winapp.log("online_service_window_get_input_output_tab_type is passed ...",
                        "sym_name = '{}'  ...".format(sym_name))
        return type
    
    def online_service_window_click_parameters_tab(self, sym):
        """
        Click on "parameters" tab in online service window.
        :param sym: symbolic name of parameters tab in online service window.
        :return: True if succeeds
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("online_service_window_click_parameters_tab is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("online_service_window_click_parameters_tab is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def online_service_window_click_alarms_tab(self, sym):
        """
        Click on "alarms" tab in online service window.
        :param sym: symbolic name of alarms tab in online service window.
        :return: True if succeeds
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("online_service_window_click_alarms_tab is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("online_service_window_click_alarms_tab is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def online_service_window_click_input_output_tab(self, sym):
        """
        Click on "Input/Output" tab in online service window.
        :param sym: symbolic name of Input/Output tab in online service window.
        :return: True if succeeds
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("online_service_window_click_input_output_tab is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("online_service_window_click_input_output_tab is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def online_service_window_check_parameters_tab_is_underlined(self, sym,underlined=True):
        """
        Check "parameters" tab is underlined in online service window.
        :param underlined: boolean status value True or False.
        :param sym: symbolic name of parameters tab in online service window.
        :return: True if succeeds
        """
        if self.winapp.check_cursor_focused(sym)!= underlined:
            self.winapp.fail("online_service_window_check_parameters_tab_is_underlined is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("online_service_window_check_parameters_tab_is_underlined is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def online_service_window_check_alarms_tab_is_underlined(self, sym,underlined=True):
        """
        Check "alarms" tab is underlined in online service window.
        :param underlined: boolean status value True or False.
        :param sym: symbolic name of alarms tab in online service window.
        :return: True if succeeds
        """
        if self.winapp.check_cursor_focused(sym)!= underlined:
            self.winapp.fail("online_service_window_check_alarms_tab_is_underlined is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("online_service_window_check_alarms_tab_is_underlined is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def online_service_window_check_input_output_tab_is_underlined(self, sym,underlined=True):
        """
        Check "input/output" tab is underlined in online service window.
        :param underlined: boolean status value True or False.
        :param sym: symbolic name of input/output tab in online service window.
        :return: True if succeeds
        """
        if self.winapp.check_cursor_focused(sym)!= underlined:
            self.winapp.fail("online_service_window_check_input_output_tab_is_underlined is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("online_service_window_check_input_output_tab_is_underlined is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def online_service_window_check_mainSwitch_label_is_visible(self, sym ,visible=True):
        """
        Check "Mainswitch" label is visible in online service window.
        :param sym: Symbolic name of the "Mainswitch" label in Online Service Window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("online_service_window_check_mainSwitch_label_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("online_service_window_check_mainSwitch_label_is_visible is passed ..",
                        "sym_name = {}".format(sym))
        return True
    
    def online_service_window_check_manual_radiobutton_is_visible(self, sym,  visible):
        """
        Check manual radiobutton is visible in online service window.
        :param sym: Symbolic name of the manual radiobutton in online service window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("online_service_window_check_manual_radiobutton_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("online_service_window_check_manual_radiobutton_is_visible is passed ..",
                        "sym_name = {}".format(sym))
        return True
    
    def online_service_window_check_start_radiobutton_is_visible(self, sym,  visible):
        """
        Check start radiobutton is visible in online service window.
        :param sym: Symbolic name of the start radiobutton in online service window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("online_service_window_check_start_radiobutton_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("online_service_window_check_start_radiobutton_is_visible is passed ..",
                        "sym_name = {}".format(sym))
        return True
    
    def online_service_window_check_stop_radiobutton_is_visible(self, sym, visible):
        """
        Check stop radiobutton in online service window is visible.
        :param sym: Symbolic name of the stop radiobutton in online service window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("online_service_window_check_stop_radiobutton_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("online_service_window_check_stop_radiobutton_is_visible is passed ..",
                        "sym_name = {}".format(sym))
        return True
    
    def online_service_window_check_mainSwitch_label_is_enabled(self, sym_name,status=True):
        """
        Check "Mainswitch" label is enabled or disabled in online service window.
        :param sym_name: Symbolic name of the "Mainswitch" label in Online Service Window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("online_service_window_check_mainSwitch_label_is_enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("online_service_window_check_mainSwitch_label_is_enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def online_service_window_check_manual_radiobutton_is_enabled(self, sym_name, status=True):
        """
        verify the manual radiobutton is enabled or disabled in online service window.
        :param sym_name: symbolic names of manual radiobutton in online service window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("online_service_window_check_manual_radiobutton_is_enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("online_service_window_check_manual_radiobutton_is_enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def online_service_window_check_start_radiobutton_is_enabled(self, sym_name, status=True):
        """
        verify the start radiobutton is enabled or disabled in online service window.
        :param sym_name: symbolic names of start radiobutton in online service window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("online_service_window_check_start_radiobutton_is_enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("online_service_window_check_start_radiobutton_is_enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def online_service_window_check_stop_radiobutton_is_enabled(self, sym_name, status=True):
        """
        verify the stop radiobutton is enabled or disabled in online service window.
        :param sym_name: symbolic names of stop radiobutton in online service window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("online_service_window_check_stop_radiobutton_is_enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("online_service_window_check_stop_radiobutton_is_enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def online_service_window_click_manual_radiobutton(self, sym):
        """
        Click on "manual" radiobutton in online service window.
        :param sym: symbolic name of manual radiobutton in online service window.
        :return: True if succeeds
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("online_service_window_click_manual_radiobutton is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("online_service_window_click_manual_radiobutton is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def online_service_window_click_start_radiobutton(self, sym):
        """
        Click on "start" radiobutton in online service window.
        :param sym: symbolic name of start radiobutton in online service window.
        :return: True if succeeds
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("online_service_window_click_start_radiobutton is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("online_service_window_click_start_radiobutton is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def online_service_window_click_stop_radiobutton(self, sym):
        """
        Click on "stop" radiobutton in online service window.
        :param sym: symbolic name of stop radiobutton in online service window.
        :return: True if succeeds
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("online_service_window_click_stop_radiobutton is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("online_service_window_click_stop_radiobutton is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def online_service_window_check_mainSwitch_label_text(self,  sym, message):
        """
        check the "Mainswitch" label text in online service window
        :param sym: Symbolic name of the Mainswitch label in online service window
        :param message:string to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("online_service_window_check_mainSwitch_label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("online_service_window_check_mainSwitch_label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def online_service_window_check_manual_radiobutton_text(self, sym, message):
        """
        check the "manual" radiobutton text in online service window
        :param sym: Symbolic name of the manual radiobutton in online service window
        :param message:string to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("online_service_window_check_manual_radiobutton_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("online_service_window_check_manual_radiobutton_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def online_service_window_check_start_radiobutton_text(self, sym, message):
        """
        check the "start" radiobutton text in online service window
        :param sym: Symbolic name of the start radiobutton in online service window
        :param message:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("online_service_window_check_start_radiobutton_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("online_service_window_check_start_radiobutton_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def online_service_window_check_stop_radiobutton_text(self, sym, message):
        """
        check the "stop" radiobutton text in online service window
        :param sym: Symbolic name of the stop radiobutton in online service window
        :param message:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("online_service_window_check_stop_radiobutton_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("online_service_window_check_stop_radiobutton_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def online_service_window_get_status_of_manual_radiobutton(self, sym):
        """
        Get the status of the "manual" radiobutton in online service window
        :param sym: Symbolic name of the manual radiobutton in online service window
        :return: True if succeeds
        """
        if not self.winapp.check_radioBox_is_Selected(sym):
            self.winapp.fail("online_service_window_get_status_of_manual_radiobutton is failed ",
                             "Symbolic name = '{}'".format(sym))
            return False
        self.winapp.log("online_service_window_get_status_of_manual_radiobutton is passed ",
                        "Symbolic name = '{}'".format(sym))
        return True
    
    def online_service_window_get_status_of_start_radiobutton(self, sym):
        """
        Get the status of the "start" radiobutton in online service window
        :param sym: Symbolic name of the start radiobutton in online service window
        :return: True if succeeds
        """
        if not self.winapp.check_radioBox_is_Selected(sym):
            self.winapp.fail("online_service_window_get_status_of_start_radiobutton is failed ",
                             "Symbolic name = '{}'".format(sym))
            return False
        self.winapp.log("online_service_window_get_status_of_start_radiobutton is passed ",
                        "Symbolic name = '{}'".format(sym))
        return True
    
    def online_service_window_get_status_of_stop_radiobutton(self, sym):
        """
        Get the status of the "stop" radiobutton in online service window
        :param sym: Symbolic name of the stop radiobutton in online service window
        :return: True if succeeds
        """
        if not self.winapp.check_radioBox_is_Selected(sym):
            self.winapp.fail("online_service_window_get_status_of_stop_radiobutton is failed ",
                             "Symbolic name = '{}'".format(sym))
            return False
        self.winapp.log("online_service_window_get_status_of_stop_radiobutton is passed ",
                        "Symbolic name = '{}'".format(sym))
        return True
    
    def online_service_window_check_manual_radiobutton_is_selected(self, sym,isSelected=True):
        """
        Check the "manual" radiobutton is selected in online service window
        :param sym: Symbolic name of the manual radiobutton in online service window
        :param isSelected: boolean status value True or False.
        :return: True if succeeds
        """
        if self.winapp.check_radioBox_is_Selected(sym) != isSelected:
            self.winapp.fail("online_service_window_check_manual_radiobutton_is_selected is failed ",
                             "Symbolic name = '{}'".format(sym))
            return False
        self.winapp.log("online_service_window_check_manual_radiobutton_is_selected is passed ",
                        "Symbolic name = '{}'".format(sym))
        return True
        
    def online_service_window_check_start_radiobutton_is_selected(self,sym, isSelected=True):
        """
        Check the "start" radiobutton is selected in online service window
        :param sym: Symbolic name of the start radiobutton in online service window
        :param isSelected: boolean status value True or False.
        :return: True if succeeds
        """
        if self.winapp.check_radioBox_is_Selected(sym) != isSelected:
            self.winapp.fail("online_service_window_check_start_radiobutton_is_selected is failed ",
                             "Symbolic name = '{}'".format(sym))
            return False
        self.winapp.log("online_service_window_check_start_radiobutton_is_selected is passed ",
                        "Symbolic name = '{}'".format(sym))
        return True
        
    def online_service_window_check_stop_radiobutton_is_selected(self,sym, isSelected=True):
        """
        Check the "stop" radiobutton is selected in online service window
        :param sym: Symbolic name of the stop radiobutton in online service window
        :param isSelected: boolean status value True or False.
        :return: True if succeeds
        """
        if self.winapp.check_radioBox_is_Selected(sym) != isSelected:
            self.winapp.fail("online_service_window_check_stop_radiobutton_is_selected is failed ",
                             "Symbolic name = '{}'".format(sym))
            return False
        self.winapp.log("online_service_window_check_stop_radiobutton_is_selected is passed ",
                        "Symbolic name = '{}'".format(sym))
        return True
    
    def online_service_window_check_manual_label_in_inputOutput_table_is_visible(self, sym ,visible=True):
        """
        Check manual label in input output table is visible in online service window.
        :param sym: Symbolic name of the manual label in input output table in online service window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("online_service_window_check_manual_label_in_inputOutput_table_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("online_service_window_check_manual_label_in_inputOutput_table_is_visible is passed ..",
                        "sym_name = {}".format(sym))
        return True
    
    def online_service_window_check_manual_label_in_inputOutput_table_is_enabled(self, sym, status=True):
        """
        Verify the manual label in input output table is enabled or disabled in online service window.
        :param sym: Symbolic name of the manual label in input output table in online service window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("online_service_window_check_manual_label_in_inputOutput_table_is_enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("online_service_window_check_manual_label_in_inputOutput_table_is_enabled is passed ..",
                        "sym = {}".format(sym))
        return True
    
    def online_service_window_check_manual_label_in_inputOutput_table_text(self, sym, message):
        """
        check the "manual" label in input output table text in online service window
        :param sym: Symbolic name of the manual label in input output table in online service window.
        :param message:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("online_service_window_check_manual_label_in_inputOutput_table_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("online_service_window_check_manual_label_in_inputOutput_table_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def online_service_window_get_column_names_in_inputOutput_table(self, sym):
        """
        Get the column names of input output table in online service window
        :param sym: Symbolic name of the input output table in online service window.
        return: list of column names.
        """
        value = self.winapp.get_columnNames_from_dataGrid(sym)
        if not value:
            self.winapp.fail("online_service_window_get_column_names_in_inputOutput_table is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("online_service_window_get_column_names_in_inputOutput_table is passed ...",
                        "sym = '{}'  ...".format(value))
        return value

    
class Copytocontroller():
    
    
    def __init__(self, *args, **kwargs):
        self.winapp = winappApi.WinappLibAPI()
        self.commonfunction = CommonFunction()

    def Copy_to_controller_check_title_text(self, sym_name, text):
        """
        verify the "COPY TO CONTROLLER" label text in Copy to controller window
        :param sym_name: symbolic name of title label 
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_title_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_title_text is failed", text)
        return True

    def Copy_to_controller_check_select_file_text(self, sym_name, text):
        """
        verify the "Select File" label text in Copy to controller window
        :param sym_name: symbolic name of Select File label 
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_select_file_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_select_file_text is failed", text)
        return True
    
    def Copy_to_controller_check_browse_button_text(self, sym_name, text):
        """
        verify the "Browse Button" text in Copy to controller window
        :param sym_name: symbolic name of Browse button 
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_browse_button_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_browse_button_text is failed", text)
        return True
    
    def Copy_to_controller_check_please_connect_controller_text(self, sym_name, text):
        """
        verify the "Please connect a controller" label text in Copy to controller window
        :param sym_name: symbolic name of Please connect a controller label
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_please_connect_controller_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_please_connect_controller_text is failed", text)
        return True
    
    def Copy_to_controller_check_sinlgle_multi_contr_prgm_text(self, sym_name, text):
        """
        verify the "Single or Multiple controller programming" label text in Copy to controller window
        :param sym_name: symbolic name of Single or Multiple controller programming label
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_sinlgle_multi_contr_prgm_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_sinlgle_multi_contr_prgm_text is failed", text)
        return True
    
    def Copy_to_controller_check_single_controller_prgm_text(self, sym_name, text):
        """
        verify the "Single controller programming" label text in Copy to controller window
        :param sym_name: symbolic name of Single controller programming label
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_single_controller_prgm_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_single_controller_prgm_text is failed", text)
        return True
    
    
    def Copy_to_controller_check_multiple_controller_prgm_text(self, sym_name, text):
        """
        verify the "Multiple controller programming" label text in Copy to controller window
        :param sym_name: symbolic name of  Multiple controller programming label
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_multiple_controller_prgm_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_multiple_controller_prgm_text is failed", text)
        return True
    
    def Copy_to_controller_check_start_label_text(self, sym_name, text):
        """
        verify the "Start" label text in Copy to controller window
        :param sym_name: symbolic name of Start label
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_start_label_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_start_label_text is failed", text)
        return True  
            
            
    def Copy_to_controller_check_fav_files_label_text(self, sym_name, text):
        """
        verify the "Favourite Files" label text in Copy to controller window
        :param sym_name: symbolic name of Favourite Files label
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_fav_files_label_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_fav_files_label_text is failed", text)        
        return True
         
    def Copy_to_controller_check_project_name_label_text(self, sym_name, text):
        """
        verify the "Project Name" label text in Copy to controller window
        :param sym_name: symbolic name of Project Name label
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_project_name_label_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_project_name_label_text is failed", text)
        return True
            
    def Copy_to_controller_check_project_path_label_text(self, sym_name, text):
        """
        verify the "Project Path" label text in Copy to controller window
        :param sym_name: symbolic name of Project Path label
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_project_path_label_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_project_path_label_text is failed", text)
        return True 

    def Copy_to_controller_check_controller_type_label_text(self, sym_name, text):
        """
        verify the "Controller Type" label text in Copy to controller window
        :param sym_name: symbolic name of Controller Type label
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_controller_type_label_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_controller_type_label_text is failed", text)
        return True   
    
    def Copy_to_controller_check_Action_label_text(self, sym_name, text):
        """
        verify the "Actions" label text in Copy to controller window
        :param sym_name: symbolic name of Actions label
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_Action_label_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_Action_label_text is failed", text)
        return True 
    
    
    def Copy_to_controller_check_set_counter_label_text(self, sym_name, text):
        """
        verify the "Set Counter" label text in Copy to controller window
        :param sym_name: symbolic name of Set Counter label
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_set_counter_label_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_set_counter_label_text is failed", text)
        return True  

    def Copy_to_controller_check_countUp_timer_label_text(self, sym_name, text):
        """
        verify the "CountUp Timer" label text in Copy to controller window
        :param sym_name: symbolic name of CountUp Timer label
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_countUp_timer_label_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_countUp_timer_label_text is failed", text)
        return True  
    

    def Copy_to_controller_check_countDown_timer_label_text(self, sym_name, text):
        """
        verify the "CountDown Timer" label text in Copy to controller window
        :param sym_name: symbolic name of CountDown Timer label
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_countDown_timer_label_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_countDown_timer_label_text is failed", text)
        return True   
            
    def Copy_to_controller_check_counter_label_text(self, sym_name, text):
        """
        verify the "Counter" label text in Copy to controller window
        :param sym_name: symbolic name of Counter label
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_counter_label_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_counter_label_text is failed", text)
        return True  
    
    def Copy_to_controller_check_default_counter_value(self, sym_name, countervalue):
        """
        Check the default counter value in Copy to controller window
        :param sym_name: symbolic name of default Counter label
        :param countervalue:countervalue to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, countervalue):
            self.winapp.pass_log("Copy_to_controller_check_default_counter_value is passed", countervalue)
        else:
            self.winapp.fail("Copy_to_controller_check_default_counter_value is failed", countervalue)
        return True  

    def Copy_to_controller_check_copying_settings_progress_label_text(self, sym_name, text):
        """
        verify the "Copying Settings in progress" label text in Copy to controller window
        :param sym_name: symbolic name of Copying Settings in progress label
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_copying_settings_progress_label_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_copying_settings_progress_label_text is failed", text)
        return True 
    
    def Copy_to_controller_check_set_as_fav_button_text(self, sym_name, text):
        """
        verify the "Set As Favourite" button text in Copy to controller window
        :param sym_name: symbolic name of Set As Favourite button
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_set_as_fav_button_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_set_as_fav_button_text is failed", text)
        return True
    
    
    def Copy_to_controller_check_controller_connecting_label_text(self, sym_name, text):
        """
        verify the "Controller Connecting" label text in Copy to controller window
        :param sym_name: symbolic name of Controller Connecting label
        :param text:text to compare
        :return:True if success
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("Copy_to_controller_check_controller_connecting_label_text is passed", text)
        else:
            self.winapp.fail("Copy_to_controller_check_controller_connecting_label_text is failed", text)
        return True
    
    def Copy_to_controller_check_title_visible(self, sym_name, visible=True):
        """
        verify the copy to controller "Title" is visible in  copy to controller window.
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of copy to controller "Title" label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_title_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_title_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_select_file_visible(self, sym_name, visible=True):
        """
        verify the "Select File" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of Select File label 
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_select_file_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_select_file_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_browse_button_visible(self, sym_name, visible=True):
        """
        verify the "Browse Button" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of Browse button 
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_browse_button_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_browse_button_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_please_connect_controller_visible(self, sym_name, visible=True):
        """
        verify the "Please connect a controller" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of Please connect a controller label 
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_please_connect_controller_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_please_connect_controller_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_sinlgle_multi_contr_prgm_visible(self, sym_name, visible=True):
        """
        verify the "Single or Multiple controller programming" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of Single or Multiple controller programming label 
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_sinlgle_multi_contr_prgm_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_sinlgle_multi_contr_prgm_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def Copy_to_controller_check_sinlgle_controller_prgm_visible(self, sym_name, visible=True):
        """
        verify the "Single controller programming" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of Single controller programming label 
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_sinlgle_controller_prgm_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_sinlgle_controller_prgm_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_multiple_controller_prgm_visible(self, sym_name, visible=True):
        """
        verify the "Multiple controller programming" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of  Multiple controller programming label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_multiple_controller_prgm_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_multiple_controller_prgm_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def Copy_to_controller_check_start_label_visible(self, sym_name, visible=True):
        """
        verify the "Start" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of  Start label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_start_label_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_start_label_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_fav_files_label_visible(self, sym_name, visible=True):
        """
        verify the "Favourite Files" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of  Favourite Files label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_fav_files_label_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_fav_files_label_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_project_name_label_visible(self, sym_name, visible=True):
        """
        verify the "Project Name" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of Project Name label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_project_name_label_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_project_name_label_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def Copy_to_controller_check_project_path_label_visible(self, sym_name, visible=True):
        """
        verify the "Project Path" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of Project Path label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_project_path_label_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_project_path_label_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def Copy_to_controller_check_controller_type_label_visible(self, sym_name, visible=True):
        """
        verify the "Controller Type" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of Controller Type label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_controller_type_label_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_controller_type_label_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_Action_label_visible(self, sym_name, visible=True):
        """
        verify the "Actions" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of Actions label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_Action_label_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_Action_label_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_set_counter_label_visible(self, sym_name, visible=True):
        """
        verify the "Set Counter" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of Set Counter label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_set_counter_label_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_set_counter_label_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_countUp_timer_label_visible(self, sym_name, visible=True):
        """
        verify the "CountUp Timer" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of CountUp Timer label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_countUp_timer_label_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_countUp_timer_label_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def Copy_to_controller_check_countDown_timer_label_visible(self, sym_name, visible=True):
        """
        verify the "CountDown Timer" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of CountDown Timer label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_countDown_timer_label_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_countDown_timer_label_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_default_counter_label_visible(self, sym_name, visible=True):
        """
        verify the "Default Counter" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of Default Counter label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_default_counter_label_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_default_counter_label_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_copying_settings_progress_label_visible(self, sym_name, visible=True):
        """
        verify the "Copying Settings in progress" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of Copying Settings in progress label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_copying_settings_progress_label_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_copying_settings_progress_label_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_set_as_fav_button_label_visible(self, sym_name, visible=True):
        """
        verify the "Set As Favourite" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of Set As Favourite label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_set_as_fav_button_label_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_set_as_fav_button_label_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def Copy_to_controller_check_fav_table_is_visible(self, sym_name, visible=True):
        """
        verify the "Favourite files" table is visible in Copy to controller window
        :param sym_name: Symbolic name of favourite table in Copy to controller window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_fav_table_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_fav_table_is_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_controller_connecting_label_visible(self, sym_name, visible=True):
        """
        verify the "Controller Connecting" label is visible in Copy to controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of Controller Connecting label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Copy_to_controller_check_controller_connecting_label_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_controller_connecting_label_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_title_Enabled(self, sym_name, status=True):
        """
        verify the "Title" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic names of Title label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_title_Enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_title_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_select_file_Enabled(self, sym_name, status=True):
        """
        verify the "Select File" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic names of Select File label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """

        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_select_file_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_select_file_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_browse_button_Enabled(self, sym_name, status=True):
        """
        verify the "Browse Button" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic names of Browse label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """

        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_browse_button_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_browse_button_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_please_connect_controller_Enabled(self, sym_name, status=True):
        """
        verify the "Please connect a controller" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic names of Please connect a controller label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_please_connect_controller_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_please_connect_controller_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def Copy_to_controller_check_sinlgle_multi_contr_prgm_Enabled(self, sym_name, status=True):
        """
        verify the "Single or Multiple controller programming" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic names of Single or Multiple controller programming label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_sinlgle_multi_contr_prgm_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_sinlgle_multi_contr_prgm_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_sinlgle_controller_prgm_Enabled(self, sym_name, status=True):
        """
        verify the "Single controller programming" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic names of Single controller programming label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_sinlgle_controller_prgm_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_sinlgle_controller_prgm_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True


    def Copy_to_controller_check_multiple_controller_prgm_Enabled(self, sym_name, status=True):
        """
        verify the "Multiple controller programming" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic names of Multiple controller programming label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_multiple_controller_prgm_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_multiple_controller_prgm_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def Copy_to_controller_check_start_label_Enabled(self, sym_name, status=True):
        """
        verify the "Start" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic names of Start label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_start_label_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_start_label_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def Copy_to_controller_check_fav_files_label_Enabled(self, sym_name, status=True):
        """
        verify the "Favourite Files" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic names of Favourite Files label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_fav_files_label_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_fav_files_label_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_project_name_label_Enabled(self, sym_name, status=True):
        """
        verify the "Project Name" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic name of Project Name label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_project_name_label_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_project_name_label_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_project_path_label_Enabled(self, sym_name, status=True):
        """
        verify the "Project Path" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic name of Project Path label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_project_path_label_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_project_path_label_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_controller_type_label_Enabled(self, sym_name, status=True):
        """
        verify the "Controller Type" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic name of Controller Type label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_controller_type_label_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_controller_type_label_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_Action_label_Enabled(self, sym_name, status=True):
        """
        verify the "Actions" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic name of Actions label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_Action_label_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_Action_label_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def Copy_to_controller_check_set_counter_label_Enabled(self, sym_name, status=True):
        """
        verify the "Set Counter" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic name of Set Counter label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_set_counter_label_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_set_counter_label_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_check_countUp_timer_label_Enabled(self, sym_name, status=True):
        """
        verify the "CountUp Timer" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic name of CountUp Timer label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_countUp_timer_label_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_countUp_timer_label_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def Copy_to_controller_check_countDown_timer_label_Enabled(self, sym_name, status=True):
        """
        verify the "CountDown Timer" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic name of CountDown Timer label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_countDown_timer_label_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_countDown_timer_label_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def Copy_to_controller_check_counter_label_Enabled(self, sym_name, status=True):
        """
        verify the "Counter" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic name of Counter label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_counter_label_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_counter_label_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def Copy_to_controller_check_default_counter_label_Enabled(self, sym_name, status=True):
        """
        verify the "Default Counter" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic name of Default Counter label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_default_counter_label_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_default_counter_label_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    
    def Copy_to_controller_check_copying_settings_progress_label_Enabled(self, sym_name, status=True):
        """
        verify the "Copying Settings in progress" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic name of Copying Settings in progress label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_copying_settings_progress_label_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_copying_settings_progress_label_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def Copy_to_controller_check_set_as_fav_button_label_Enabled(self, sym_name, status=True):
        """
        verify the "Set As Favourite" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic name of Set As Favourite label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_set_as_fav_button_label_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_set_as_fav_button_label_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def Copy_to_controller_check_fav_table_is_enabled(self, sym_name,status=True):
        """
        verify the "Favourite Files" table is enabled or disabled in copy to controller window.
        :param sym_name: Symbolic name of favourite table in Copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_fav_table_is_enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_fav_table_is_enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def Copy_to_controller_check_controller_connecting_label_Enabled(self, sym_name, status=True):
        """
        verify the "Controller Connecting" label is enabled or disabled in copy to controller window.
        :param sym_name: symbolic name of Controller Connecting label
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("Copy_to_controller_check_controller_connecting_label_Enabled is failed ..",
                             "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Copy_to_controller_check_controller_connecting_label_Enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Copy_to_controller_click_Browse_button(self, sym):
        """
        Click on "Browse Button"  in copy to controller window.
        :param sym: symbolic name of Browse button.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Copy_to_controller_click_Browse_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Copy_to_controller_click_Browse_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True

    def Copy_to_controller_click_Set_As_Fav_button(self, sym):
        """
        Click on "Set As Favourite" button in copy to controller window.
        :param sym: symbolic name of Set As Favourite button.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Copy_to_controller_click_Set_As_Fav_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Copy_to_controller_click_Set_As_Fav_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True

    def Copy_to_controller_click_info_button(self, sym):
        """
        Click on "Project Information(i button)" button in copy to controller window.
        :param sym: symbolic name of i button button.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Copy_to_controller_click_info_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Copy_to_controller_click_info_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True

    def Copy_to_controller_click_delete_fav_file_button(self, sym):
        """
        Click on "deleting the Fav file" button in copy to controller window.
        :param sym: symbolic name of action button.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Copy_to_controller_click_delete_fav_file_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Copy_to_controller_click_delete_fav_file_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def Copy_to_controller_click_single_controller_pgm_button(self, sym):
        """
        Click on "Single Controller Programming" button in copy to controller window.
        :param sym: symbolic name of ingle Controller Programming button.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Copy_to_controller_click_single_controller_pgm_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Copy_to_controller_click_single_controller_pgm_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def Copy_to_controller_click_multiple_controller_pgm_button(self, sym):
        """
        Click on "Multiple Controller Programming" button in copy to controller window.
        :param sym: symbolic name of Multiple Controller Programming button.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Copy_to_controller_click_multiple_controller_pgm_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Copy_to_controller_click_multiple_controller_pgm_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def Copy_to_controller_click_count_Up_timer_button(self, sym):
        """
        Click on "Count Up timer" button in copy to controller window.
        :param sym: symbolic name of Count Up timer button.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Copy_to_controller_click_count_Up_timer_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Copy_to_controller_click_count_Up_timer_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True

    def Copy_to_controller_click_count_down_timer_button(self, sym):
        """
        Click on "Count Down timer" button in copy to controller window.
        :param sym: symbolic name of Count Down timer button.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Copy_to_controller_click_count_down_timer_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Copy_to_controller_click_count_down_timer_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def Copy_to_controller_click_start_button(self, sym):
        """
        Click on "start" button in copy to controller window.
        :param sym: symbolic name of start button.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Copy_to_controller_click_start_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Copy_to_controller_click_start_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True

    def Copy_to_controller_click_reset_button(self, sym):
        """
        Click on "reset" button in copy to controller window.
        :param sym: symbolic name of reset button.
        :return: True if succeed
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Copy_to_controller_click_reset_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Copy_to_controller_click_reset_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True

    def Copy_to_controller_enter_set_counter(self, sym_name, counter):
        """
        Writing the "Set Counter" value in Copy to controller window.
        :param sym_name:symbolic name of Set Counter editor
        :param counter:Desired User to set.
        :return: True if succeed
        """
        self.winapp.mouse_double_click(sym_name)
        self.winapp.press_Backspace_in_keyBoard()
        if not self.winapp.set_text(sym_name, counter):
            self.winapp.fail("Copy_to_controller_enter_set_counter, set_text is failed",
                             " sym_name ={} expected text ={} ".format(sym_name, counter))
            return False
        self.winapp.log("Copy_to_controller_enter_set_counter, set_text is passed...",
                        " sym_name ={} expected text ={} ".format(sym_name, counter))
        return True

    def Copy_to_controller_get_counter_value(self, sym_name):
        """
        Get "Counter" value from Copy to controller window.
        :param sym_name: symbolic name of Counter Editor
        :return: Password
        """
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("Copy_to_controller_get_counter_value(self,sym_name): is failed ...",
                             "sym_name = '{}' ".format(sym_name))
            return False

        self.winapp.log("Copy_to_controller_get_counter_value is passed ...",
                        "sym_name = '{}'  ...".format(sym_name))
        return text

    def Copy_to_controller_check_default_counter_value(self, sym, Counter):
        """
        Get the default "Counter Value" from Copy to controller window.
        :param sym: symbolic name of Counter Editor
        :param Counter:Counter to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym, Counter):
            self.winapp.pass_log("Copy_to_controller_check_default_counter_value is passed", Counter)
        else:
            self.winapp.fail("Copy_to_controller_check_default_counter_value is failed", Counter)
        return True

    def Copy_to_controller_check_default_set_counter_value(self, sym, Set_Counter):
        """
        Get the default "Set Counter Value" from Copy to controller window.
        :param sym: symbolic name of Set Counter Value Editor
        :param Set_Counter:Set_Counter to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym, Set_Counter):
            self.winapp.pass_log("Copy_to_controller_check_default_set_counter_value is passed", Set_Counter)
        else:
            self.winapp.fail("Copy_to_controller_check_default_set_counter_value is failed", Set_Counter)
        return True
    
    def Copy_to_controller_select_fav_file_in_fav_table(self, sym_name, project_name):
        """
        Select the file from the favorite table in Copy to the controller window.
        :param sym_name: symbolic name of favourite table
        :param project_name :project name to select
        :return: True if Succeed 
        """
        if not self.winapp.select_fav_file(sym_name, project_name):
            self.winapp.fail("Copy_to_controller_select_fav_file_in_fav_table(self,sym_name): is failed ...",
                             "sym_name = '{}' ".format(sym_name))
            return False

        self.winapp.log("Copy_to_controller_select_fav_file_in_fav_table is passed ...",
                        "sym_name = '{}'  ...".format(sym_name))
        return True

    def Copy_to_controller_delete_fav_file_in_fav_table(self, sym_name, project_name):
        """
        Delete file from the favourite table in Copy to controller window. 
        :param sym_name: symbolic name of favourite table
        :param project_name :project name to select
        :return: True if Succeed 
        """
        if not self.winapp.delete_fav_file(sym_name, project_name):
            self.winapp.fail("Copy_to_controller_delete_fav_file_in_fav_table(self,sym_name): is failed ...",
                             "sym_name = '{}' ".format(sym_name))
            return False

        self.winapp.log("Copy_to_controller_delete_fav_file_in_fav_table is passed ...",
                        "sym_name = '{}'  ...".format(sym_name))
        return True

    def Copy_to_controller_get_fav_files_list_in_fav_table(self, sym_name):
        """
        Get favourite files from the favourite table in Copy to controller window.
        :param sym_name: symbolic name of favourite table
        :return: True if success 
        """
        fav_file_dict = self.winapp.fav_files_list(sym_name)
        if not fav_file_dict:
            self.winapp.fail("Copy_to_controller_get_fav_files_list_in_fav_table(self,sym_name): is failed ...",
                             "sym_name = '{}' ".format(sym_name))
            return False

        self.winapp.log("Copy_to_controller_get_fav_files_list_in_fav_table is passed ...",
                        "sym_name = '{}'  ...".format(sym_name))
        return fav_file_dict


    def Copy_to_controller_check_single_controller_prgmng_Is_Selected(self,sym_name):
        """
        Check the single programming contgroller radio button is selected.
        :param sym_name: symbolic name of single programming contgroller radio button
        :return:True if succeeds
        """
        if not self.winapp.check_radioBox_is_Selected(sym_name):
            self.winapp.fail("Copy_to_controller_check_single_controller_prgmng_Is_Selected(self,sym_name): is failed ...",
                             "sym_name = '{}' ".format(sym_name))
            return False
        
        self.winapp.log("Copy_to_controller_check_single_controller_prgmng_Is_Selected is passed ...",
                        "sym_name = '{}'  ...".format(sym_name))
        return True


    def copy_to_controller_get_variant_name_from_project_details(self, sym):
        """
        Get the controller variant name from the project details 
        :param sym: symbolic name of controller variant.
        :return: string text of controller.
        """
        return self.winapp.get_text(sym)
    
    def Copy_to_controller_get_variant_name(self, sym_name, project_name):
        """
        Get "Variant" name from Copy to controller window.
        :param sym_name: symbolic name of Variant label
        :return: Password
        """
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("Copy_to_controller_get_variant_name(self,sym_name): is failed ...",
                             "sym_name = '{}' ".format(sym_name))
            return False

        self.winapp.log("Copy_to_controller_get_variant_name is passed ...",
                        "sym_name = '{}'  ...".format(sym_name))
        return text

    def copy_to_controller_check_scroll_bar_is_enabled(self, sym, status=True):
        """
        Check scroll bar in favorite table is enabled or disabled.
        :param sym: symbolic name of scroll bar from favorite table in copy to controller window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("copy_to_controller_check_scroll_bar_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("copy_to_controller_check_scroll_bar_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_is_visible(self,sym ,visible):
        """
        Check firmwareupdate is password protected label in firmware password of copy to controller window is visible.
        :param sym: Symbolic name of the firmwareupdate is password protected label.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def Copy_to_controller_check_firmwarePassword_ok_button_is_visible(self,sym ,visible):
        """
        Check ok button in firmware password of copy to controller window is visible.
        :param sym: Symbolic name of the ok button.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_ok_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("Copy_to_controller_check_firmwarePassword_ok_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def Copy_to_controller_check_firmwarePassword_X_button_is_visible(self,sym ,visible):
        """
        Check X button in firmware password of copy to controller window is visible.
        :param sym: Symbolic name of the X button.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_X_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("Copy_to_controller_check_firmwarePassword_X_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def Copy_to_controller_check_firmwarePassword_cancel_button_is_visible(self,sym ,visible):
        """
        Check cancel button in firmware password of copy to controller window is visible.
        :param sym: Symbolic name of the cancel button.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_cancel_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("Copy_to_controller_check_firmwarePassword_cancel_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_is_visible(self,sym ,visible):
        """
        Check password is case sensitive label in firmware password of copy to controller window is visible.
        :param sym: Symbolic name of the password is case sensitive label in firmware password.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def Copy_to_controller_check_firmwarePassword_header_Label_is_visible(self,sym ,visible):
        """
        Check header label in firmware password of copy to controller window is visible.
        :param sym: Symbolic name of the header label.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_header_Label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("Copy_to_controller_check_firmwarePassword_header_Label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_is_visible(self,sym ,visible):
        """
        Check enter koolprog password label in firmware password of copy to controller window is visible.
        :param sym: Symbolic name of the enter koolprog password label.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def Copy_to_controller_check_firmwarePassword_password_Label_is_visible(self,sym ,visible=True):
        """
        Check password label in firmware password of copy to controller window is visible.
        :param sym: Symbolic name of the password label.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_password_Label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("Copy_to_controller_check_firmwarePassword_password_Label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def Copy_to_controller_check_firmwarePassword_password_editbox_is_visible(self,sym ,visible):
        """
        Check password editbox in firmware password of copy to controller window is visible.
        :param sym: Symbolic name of the password editbox.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_password_editbox_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("Copy_to_controller_check_firmwarePassword_password_editbox_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_is_enabled(self,sym ,status):
        """
        Check firmwareupdate is password protected label in firmware password of copy to controller window is enabled.
        :param sym: Symbolic name of the firmwareupdate is password protected label.
        :param status: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def Copy_to_controller_check_firmwarePassword_ok_button_is_enabled(self,sym ,status):
        """
        Check ok button in firmware password of copy to controller window is enabled.
        :param sym: Symbolic name of the ok button.
        :param status: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_ok_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("Copy_to_controller_check_firmwarePassword_ok_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def Copy_to_controller_check_firmwarePassword_X_button_is_enabled(self,sym ,status):
        """
        Check X button in firmware password of copy to controller window is enabled.
        :param sym: Symbolic name of the X button.
        :param status: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_X_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("Copy_to_controller_check_firmwarePassword_X_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def Copy_to_controller_check_firmwarePassword_cancel_button_is_enabled(self,sym ,status):
        """
        Check cancel button in firmware password of copy to controller window is enabled.
        :param sym: Symbolic name of the cancel button.
        :param status: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_cancel_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("Copy_to_controller_check_firmwarePassword_cancel_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_is_enabled(self,sym ,status):
        """
        Check password is case sensitive label in firmware password of copy to controller window is enabled.
        :param sym: Symbolic name of the password is case sensitive label in firmware password.
        :param status: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def Copy_to_controller_check_firmwarePassword_header_Label_is_enabled(self,sym ,status):
        """
        Check header label in firmware password of copy to controller window is enabled.
        :param sym: Symbolic name of the header label.
        :param status: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_header_Label_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("Copy_to_controller_check_firmwarePassword_header_Label_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_is_enabled(self,sym ,status):
        """
        Check enter koolprog password label in firmware password of copy to controller window is enabled.
        :param sym: Symbolic name of the enter koolprog password label.
        :param status: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def Copy_to_controller_check_firmwarePassword_password_Label_is_enabled(self,sym ,status):
        """
        Check password label in firmware password of copy to controller window is enabled.
        :param sym: Symbolic name of the password label.
        :param status: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_password_Label_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("Copy_to_controller_check_firmwarePassword_password_Label_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def Copy_to_controller_check_firmwarePassword_password_editbox_is_enabled(self,sym ,status):
        """
        Check password editbox in firmware password of copy to controller window is enabled.
        :param sym: Symbolic name of the password editbox.
        :param status: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_password_editbox_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("Copy_to_controller_check_firmwarePassword_password_editbox_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_text(self,sym,text):
        """
        Check text of firmwareupdate is password protected label in firmware password of copy to controller window.
        :param sym: Symbolic name of the firmwareupdate is password protected label.
        :param text: testData to compare
        :return: True if succeeds.
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def Copy_to_controller_check_firmwarePassword_ok_button_text(self,sym,text):
        """
        Check text of ok button in firmware password of copy to controller window.
        :param sym: Symbolic name of the ok button.
        :param text: testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_ok_button_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("Copy_to_controller_check_firmwarePassword_ok_button_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def Copy_to_controller_check_firmwarePassword_X_button_text(self,sym,text):
        """
        Check text of X button in firmware password of copy to controller window.
        :param sym: Symbolic name of the X button.
        :param text: testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_X_button_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("Copy_to_controller_check_firmwarePassword_X_button_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def Copy_to_controller_check_firmwarePassword_cancel_button_text(self,sym,text):
        """
        Check text of cancel button in firmware password of copy to controller window.
        :param sym: Symbolic name of the cancel button.
        :param text: text to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_cancel_button_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("Copy_to_controller_check_firmwarePassword_cancel_button_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_text(self,sym,text):
        """
        Check text of password is case sensitive label in firmware password of copy to controller window.
        :param sym: Symbolic name of the password is case sensitive label in firmware password.
        :param text: testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def Copy_to_controller_check_firmwarePassword_header_Label_text(self,sym,text):
        """
        Check text of header label in firmware password of copy to controller window.
        :param sym: Symbolic name of the header label.
        :param text: text to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_header_Label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("Copy_to_controller_check_firmwarePassword_header_Label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_text(self,sym,text):
        """
        Check text of enter koolprog password label in firmware password of copy to controller window.
        :param sym: Symbolic name of the enter koolprog password label.
        :param text: testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def Copy_to_controller_check_firmwarePassword_password_Label_text(self,sym,text):
        """
        Check text of password label in firmware password of copy to controller window
        :param sym: Symbolic name of the password label in firmware password.
        :param text: text to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_password_Label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("Copy_to_controller_check_firmwarePassword_password_Label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def Copy_to_controller_click_firmwarePassword_cancel_button(self, sym):
        """
        Click on "Cancel" Button in firmware password of copy to controller window.
        :param sym: Symbolic name of the cancel button in firmware password
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Copy_to_controller_click_firmwarePassword_cancel_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Copy_to_controller_click_firmwarePassword_cancel_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def Copy_to_controller_click_firmwarePassword_X_button(self, sym):
        """
        Click on "X" Button in firmware password of copy to controller window.
        :param sym: Symbolic name of the X button in firmware Password.
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Copy_to_controller_click_firmwarePassword_X_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Copy_to_controller_click_firmwarePassword_X_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def Copy_to_controller_click_firmwarePassword_ok_button(self, sym):
        """
        Click on "Ok" Button in firmware password of copy to controller window.
        :param sym: Symbolic name of the ok button in firmware Password.
        :return: True if button is present and clicked else False
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("Copy_to_controller_click_firmwarePassword_ok_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("Copy_to_controller_click_firmwarePassword_ok_button is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def Copy_to_controller_check_firmwarePassword_tooltip_of_X_button(self,sym_name, tooltip):
        """
        In Copy to controller window : Compare tooltip text of X button
        :param sym_name: symbolic name of the X button
        :param tooltip: string to check with tooltip
        :return: True if text is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_tooltip_of_X_button is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("Copy_to_controller_check_firmwarePassword_tooltip_of_X_button is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True
    
    def Copy_to_controller_set_text_in_password_editbox(self, sym, password):
        """
        Set password text in password editbox of copytocontroller window.
        :param sym : symbolic name of password editbox in firmwarepassword of copytocontroller window.
        :param password : String of password
        :return: True if succeeds.
        """
        self.winapp.mouse_double_click(sym)
        if not self.winapp.set_text(sym, password):
            self.winapp.fail("Copy_to_controller_set_text_in_password_editbox, set_text is failed",
                             " sym ={} expected text ={} ".format(sym, password))
            return False
        self.winapp.log("Copy_to_controller_set_text_in_password_editbox, set_text is passed...",
                        " sym ={} expected text ={} ".format(sym, password))
        return True
    
    def Copy_to_controller_check_firmwarePassword_password(self, sym, password):
        """
        Check the password of firmwarePassword in copy to controller window.
        :param sym: Symbolic name of the password editbox.
        :param password: Password to compare.
        return: True if succeeds.
        """
        if not self.winapp.compare_text(sym, password):
            self.winapp.fail("Copy_to_controller_check_firmwarePassword_password is failed ",
                             "while comparing password ='{}' and Symbolic name = '{}'".format(password, sym))
            return False
        self.winapp.log("Copy_to_controller_check_firmwarePassword_password is passed ",
                        "while comparing password ='{}' and Symbolic name = '{}'".format(password, sym))
        return True
    
    def Copy_to_controller_firmwarePassword_validate_special_character(self, sym):
        """
        Check the special characters in password of firmwarePassword in copy to controller window.
        :param sym: Symbolic name of the password editbox.
        return: True if succeeds.
        """
        Special_Char = ['$','@','#','%'] 
        password = self.winapp.get_text(sym)
        if not any(char in Special_Char for char in password):
            self.winapp.fail("Copy_to_controller_firmwarePassword_validate_special_character is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym))
            return False
        self.winapp.log("Copy_to_controller_firmwarePassword_validate_special_character is passed ..",
                        "sym_name = {}".format(sym))
        return True
    
    def copy_to_controller_check_text_and_checkbox_of_mainswitch_isVisible(self,sym_name,visible):
        
        
        """
        check if the checkbox of set mainswitch off after copying is visible or not in copy to controller window.
        :param sym_name: Symbolic name of "Set mainswitch on after copying" checkbox.
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("copy_to_controller_check_text_and_checkbox_of_mainswitch_isVisible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("copy_to_controller_check_text_and_checkbox_of_mainswitch_isVisible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
        
    def copy_to_controller_check_text_and_checkbox_of_mainswitch_is_enabled(self,sym_name,status):
        
        """
        check if the checkbox of set mainswitch off after copying is enabled or not in Copytocontroller window.
        :param sym_name: symbolic name of Set mainswitch on after copying checkbox.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("copy_to_controller_check_text_and_checkbox_of_mainswitch_is_enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("copy_to_controller_check_text_and_checkbox_of_mainswitch_is_enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def copy_to_controller_click_mainswitch_checkbox(self,sym):
        
        """
        Click on "Set mainswitch on after copying" checkbox in Copytocontroller window.
        :param sym: Symbolic name of "Set mainswitch on after copying" checkbox.
        :return: True if succeeds
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("copy_to_controller_click_mainswitch_checkbox is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("copy_to_controller_click_mainswitch_checkbox is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def copy_to_controller_mainswitch_checkbox_status(self,sym, checked_status=True):
       
        """
        Check the status of "Set mainswitch on after copying" checkbox in Copytocontroller window.
        :param sym: Symbolic name of "Set mainswitch on after copying" checkbox.
        :param checked_status: Status of checkbox to be verified.
        :return: True if succeeds
        """
        if self.winapp.checkbox_status(sym)!= checked_status:
            self.winapp.fail("copy_to_controller_mainswitch_checkbox_status is failed ...",
                             "sym = '{}', checked_status={} ".format(sym,checked_status))
            return False

        self.winapp.log("copy_to_controller_mainswitch_checkbox_status is passed ...",
                        "sym = '{}', checked_status={} ".format(sym,checked_status))
        return True
         
    def copy_to_controller_check_mainswitch_checkbox(self,sym,checked=True):
                                                     
        """
        check or uncheck on "Set mainswitch on after copying" checkbox in Copytocontroller window.
        :param sym: Symbolic name of "Set mainswitch on after copying" checkbox.
        :param checked:boolean status value True or False.
        :return: True if succeeds
        """
        if self.winapp.checkbox_status(sym)!=checked:
            if not self.winapp.check_checkbox(sym):
                self.winapp.fail("copy_to_controller_check_mainswitch_checkbox is failed ...",
                             "sym = '{}' ".format(sym))
                return False

            self.winapp.log("copy_to_controller_check_mainswitch_checkbox is passed ...",
                        "sym = '{}' ".format(sym))
            return True
        else:
            if not self.winapp.ClickButton(sym):
                self.winapp.fail("copy_to_controller_check_mainswitch_checkbox is failed ...",
                             "sym = '{}' ".format(sym))
                return False

            self.winapp.log("copy_to_controller_check_mainswitch_checkbox is passed ...",
                        "sym = '{}' ".format(sym))
            return True
        
    def copy_to_controller_get_text_mainswitch_label(self,sym):
        
        """
        Get text text of mainswitch label in copy to controller window.
        :param sym: Symbolic name of "Set mainswitch on after copying" checkbox.
        :return: String of mainswitch label
        """
        text = self.winapp.get_text(sym)
        if not text:
            self.winapp.fail("copy_to_controller_get_text_mainswitch is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("copy_to_controller_get_text_mainswitch is passed ...", "sym = '{}'  ...".format(sym))
        self.winapp.log("Text is",text)
        return text
    
    def copy_to_controller_check_file_image_and_controller_product_image(self,sym_file_image, sym_online_controller_image, compatible=True):
        """
        Check if the controller image from the cdf file and the controller image from online controller is same in copytocontroller window.
        :param sym_file_image: Symbolic name of the image from the cdf file.
        :param sym_online_controller_image: Symbolic name of the image from the online controller.
        :param compatible: Compatibility status (True or False)
        :return True: True if images are same,False otherwise.
        """
        if self.commonfunction.get_image_by_sym_and_compare_images_in_different_window(sym_file_image, sym_online_controller_image )!= compatible:
            self.winapp.fail("copy_to_controller_check_file_image_and_controller_product_image for sym_file_image ='{}' , sym_online_controller_image ='{}'".
                             format(sym_file_image, sym_online_controller_image))
            return False
        self.winapp.pass_log("copy_to_controller_check_file_image_and_controller_product_image for sym_file_image ='{}' , sym_online_controller_image ='{}'".
                             format(sym_file_image, sym_online_controller_image))
        return True
    
    def copy_to_controller_check_file_variant_and_controller_variant(self,sym_file_variant, sym_online_controller_variant,compatible=True):
        """
        Check if the controller variant from the cdf file and the controller variant from online controller is same in copytocontroller window.
        :param sym_file_variant: Symbolic name of the controllerVariant from the cdf file.
        :param sym_online_controller_variant: Symbolic name of the ControllerVariant from the online controller.
        :param compatible: Compatibility status (True or False)
        :return True: True if string is equal, else False.
        """
        file_variant = self.winapp.get_text(sym_file_variant)
        online_controller_variant = self.winapp.get_text(sym_online_controller_variant)
        if common.compare_text(file_variant,online_controller_variant) != compatible:
            self.winapp.fail("copy_to_controller_check_file_variant_and_controller_variant for sym_file_variant ='{}' , sym_online_controller_variant ='{}'".
                             format(sym_file_variant, sym_online_controller_variant))
            return False
        self.winapp.pass_log("copy_to_controller_check_file_variant_and_controller_variant for sym_file_variant ='{}' , sym_online_controller_variant ='{}'".
                             format(sym_file_variant, sym_online_controller_variant))
        return True
    
    def copy_to_controller_check_file_SW_Version_and_controller_SW_Version(self,sym_file_SW_version, sym_online_controller_SW_version,compatible=True):
        """
        Check if the controller SW version from the cdf file and the SW version from online controller is same in copytocontroller window.
        :param sym_file_SW_version: Symbolic name of the SW version from the cdf file.
        :param sym_online_controller_SW_version: Symbolic name of the SW version from the online controller.
        :param compatible: Compatibility status (True or False)
        :return True: True if string is equal, else False.
        """
        file_SW_version = self.winapp.get_text(sym_file_SW_version)
        online_controller_SW_version = self.winapp.get_text(sym_online_controller_SW_version) 
        if common.compare_text(file_SW_version, online_controller_SW_version) != compatible:
            self.winapp.fail("copy_to_controller_check_file_SW_Version_and_controller_SW_Version for sym_file_SW_version ='{}' , sym_online_controller_SW_version ='{}'".
                             format(sym_file_SW_version, sym_online_controller_SW_version))
            return False
        self.winapp.pass_log("copy_to_controller_check_file_SW_Version_and_controller_SW_Version for sym_file_SW_version ='{}' , sym_online_controller_SW_version ='{}'".
                             format(sym_file_SW_version, sym_online_controller_SW_version))
        return True
    
    def copy_to_controller_check_file_codeNumber_and_controller_codeNumber(self, sym_file_codeNumber, sym_online_controller_codeNumber,compatible=True): 
        """
        Check if the controller code number from the cdf file and the code number from online controller is same in copytocontroller window.
        :param sym_file_codeNumber: Symbolic name of the code number from the cdf file.
        :param sym_online_controller_codeNumber: Symbolic name of the codenumber from the online controller.
        :param compatible: Compatibility status (True or False)
        :return True: True if string is equal, else False.
        """
        file_codeNumber = self.winapp.get_text(sym_file_codeNumber)
        file_codeNumber_list = file_codeNumber.split(',')
        controller_codeNumber = self.winapp.get_text(sym_online_controller_codeNumber)
        if any(controller_codeNumber in codeNumber for codeNumber in file_codeNumber_list) != compatible:
            self.winapp.fail("copy_to_controller_check_file_codeNumber_and_controller_codeNumber for sym_file_SW_version ='{}' , sym_online_controller_SW_version ='{}'".
                             format(sym_file_codeNumber, sym_online_controller_codeNumber))
            return False
        self.winapp.pass_log("copy_to_controller_check_file_codeNumber_and_controller_codeNumber for sym_file_SW_version ='{}' , sym_online_controller_SW_version ='{}'".
                             format(sym_file_codeNumber, sym_online_controller_codeNumber))
        return True
    

class ImportSettingModel():

    def __init__(self, *args, **kwargs):
        self.winapp = winappApi.WinappLibAPI()
        self.commonfunction = CommonFunction()
        
    def Import_Setting_controller_model_progress_label_visible(self, sym_name, visible=True):
        """
        verify the "Import Setting controller progress" label is visible in Import Setting From Controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of Import Setting controller progress label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Import_Setting_controller_model_progress_label_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Import_Setting_controller_model_progress_label_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Connecting_controller_progress_label_visible(self, sym_name, visible=True):
        """
        verify the "Connect controller progress" label is visible in Import Setting From Controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of Connect controller progress label
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("Connecting_controller_progress_label_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("Connecting_controller_progress_label_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True

    def Import_Setting_controller_model_progress_label_text(self, sym_name, text):
        """
        verify the "Import Setting controller progress" text in Import Setting From Controller window
        :param sym_name: symbolic name of Import Setting controller progress label
        :param text:text to compare
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.fail("Import_Setting_controller_model_progress_label_text is failed", text)
            return False
        else:
            self.winapp.pass_log("Import_Setting_controller_model_progress_label_text is passed", text)
        return True
      

    def Connecting_controller_progress_label_text(self, sym_name, text):
        """
        verify the "Connect controller progress" text in Import Setting From Controller window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic name of Connect controller progress label
        :return:True if succeeds
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.fail("Connecting_controller_progress_label_text is failed", text)
            return False
        else:
            self.winapp.pass_log("Connecting_controller_progress_label_text is passed", text)
        return True
  
    

class ChartWindow(Database):
    """
    """

    def __init__(self, *args, **kwargs):
        self.winapp = winappApi.WinappLibAPI()
        self.commonfunction = CommonFunction()
        Database.__init__(self)
        
    def chartWindow_chk_menu_bar_icons_Enable(self, sym_names_list ,time=10):
        """
        verify the Enabled status of menu icons  in chart window
        :param sym_names_list: symbolic name of menu icons in chart window 
        :param time: Time to wait till the condition passes.
        :return:True if succeeds
        """
        for sym_name in sym_names_list:
            if self.winapp.Enable(sym_name , time) is False:
                self.winapp.fail("chartWindow_chk_menu_bar_icons_Enable is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("chartWindow_chk_menu_bar_icons_Enable is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True

    def chartWindow_chk_menu_bar_icons_Disable(self, sym_names_list):
        """
        verify the disabled menu icons in chart window
        :param sym_names_list: symbolic name of menu icons in chart window
        :return:True if succeeds
        """
        for sym_name in sym_names_list:
            if self.winapp.Enable(sym_name) is True:
                self.winapp.fail("chartWindow_chk_menu_bar_icons_Disable is failed ..",
                                 "sym_name_list = {}".format(sym_name))
                return False
        self.winapp.log("chartWindow_chk_menu_bar_icons_Disable is passed ..",
                        "sym_name_list = {}".format(sym_names_list))
        return True
    
    def chartWindow_check_stop_is_Enabled(self, sym_name, status=True):
        """
        Check the "stop" button is enabled or disabled.
        :param sym_name: symbolic names of stop button
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("chartWindow_check_stop_is_Enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("chartWindow_check_stop_is_Enabled is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True           

    def check_chartWindow_is_Enabled(self, sym_name, status=True):
        """
        Check if Chart Window is Enabled or not.
        :param sym_name: symbolic names of  Chart Window 
        :param status: boolean status value True or False.
        :return: True if button's enabled value is equal to status else False.
        """
        for sym_name in sym_name_list:
            if self.winapp.Enable(sym_name) != status:
                self.winapp.fail("check_chartWindow_is_Enabled is failed ..",
                                     "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("check_chartWindow_is_Enabled is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True 


    def chartWindow_check_all_Labels_are_visible(self, sym_name_list,visible=True):
        """
        Check all labels are visible in chart Window.
        :param sym_name_list: Symbolic names of labels in chart Window.
        :param visible: check visible status(True or False).
        :return: True if succeeds
        
        """
        for sym_name in sym_name_list:
            if self.winapp.visible(sym_name) != visible:
                self.winapp.fail("chartWindow_check_all_Labels_are_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("chartWindow_check_all_Labels_are_visible is passed ..",
                        "sym_name_list = {}".format(sym_name_list))
        return True
    
    def chartWindow_get_default_comboboxtext(self, sym):
        """
        Get default combobox value for the object present in chartWindow.
        :param sym: symbolic name of comboBox in chart Window.
        :return: String of text displayed in combobox.
        """
        return self.winapp.get_select_list_Box_text(sym)
    
    def chartWindow_click_back_button(self, sym_name):
        """
        Clicks back button in Chart Window.
        :param sym_name: Symbolic name of back button in Chart Window.
        :return: True if succeed.
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("chartWindow_click_back_button failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.log("chartWindow_click_back_button is passed.", " click event symbolic name ={}".format(sym_name))
        return True
    
    def chartWindow_click_stop_or_start_button(self, sym_name):
        """
        Clicks start/stop button in Chart Window.
        :param sym_name: Symbolic name of start/stop button in Chart Window.
        :return: True if succeed.
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("chartWindow_click_stop_or_start_button failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.log("chartWindow_click_stop_or_start_button is passed.", " click event symbolic name ={}".format(sym_name))
        return True
    
           
    def check_chartWindow_is_visible(self, sym_name_list, visible=True):
        """
        Check if Chart Window is visible or not.
        :param visible: check visible status(True or False).
        :param sym_name_list: List of symbolic names Of objects In Chart Window
        :return:True if succeeds
        """
        for sym_name in sym_name_list:
            if self.winapp.visible(sym_name) != visible:
                self.winapp.fail("check_chartWindow_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("check_chartWindow_is_visible is passed ..",
                        "sym_name_list = {}".format(sym_name_list))
        return True
     
    def check_open_chartWindow_is_visible(self, sym_name_list, visible=True):
        """
        Check if Chart Window is visible or not after opening from on-line service
        :param visible: check visible status(True or False).
        :param sym_name_list: List of symbolic names Of objects In Chart Window
        :return:True if succeeds
        """
        for sym_name in sym_name_list:
            if self.winapp.visible(sym_name) != visible:
                self.winapp.fail("check_open_chartWindow_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("check_open_chartWindow_is_visible is passed ..",
                        "sym_name_list = {}".format(sym_name_list))
        return True

    def chartWindow_click_saveAs_button(self, sym_name):
        """
        Clicks saveAs button in Chart Window.
        :param sym_name: Symbolic name of saveAs button in Chart Window.
        :return: True if succeed.
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("chartWindow_click_saveAs_button failed..",
                             " click event symbolic name ={}".format(sym_name))
            return False
        self.winapp.log("chartWindow_click_saveAs_button is passed.", " click event symbolic name ={}".format(sym_name))
        return True

    def chartWindow_check_list_items_in_fileType_listbox(self, sym_listbox, list_items):
        """
        Check list of items present in the list box of fileType in saveas dialog in chart Window.
        :param sym_listbox: symbolic name of fileType listbox
        :param list_items: list of text to compare in list box.
        :return: True if list is equal else False
        """
        ui_list = self.winapp.get_list_box_items(sym_listbox)
        self.winapp.log(
            "chartWindow_check_list_items_in_fileType_listbox comparing lists UI LIST ={} testData list = {} ".format(ui_list,
                                                                                                           list_items))
        if not common.compare_list(ui_list, list_items):
            self.winapp.fail("chartWindow_check_list_items_in_fileType_listbox is failed ...",
                             "sym = '{}' UI LIST ={} testData list = {}  ".format(sym_listbox, ui_list, list_items))
            return False
        self.winapp.log("chartWindow_check_list_items_in_fileType_listbox is passed ...",
                        "sym = '{}' UI LIST ={} testData list = {}  ".format(sym_listbox, ui_list, list_items))
        return True
    
    
    def chartWindow_check_list_items_in_zoom_level_listbox(self, sym_listbox, list_items):
        """
        Check list of items present in the list box of zoom level in chart Window.
        :param sym_listbox: symbolic name of zoom level listbox
        :param list_items: list of text to compare in list box.
        :return: True if list is equal else False
        """
        ui_list = self.winapp.get_list_box_items(sym_listbox)
        self.winapp.log(
            "chartWindow_check_list_items_in_zoom_level_listbox comparing lists UI LIST ={} testData list = {} ".format(ui_list,
                                                                                                           list_items))
        if not common.compare_list(ui_list, list_items):
            self.winapp.fail("chartWindow_check_list_items_in_zoom_level_listbox is failed ...",
                             "sym = '{}' UI LIST ={} testData list = {}  ".format(sym_listbox, ui_list, list_items))
            return False
        self.winapp.log("chartWindow_check_list_items_in_zoom_level_listbox is passed ...",
                        "sym = '{}' UI LIST ={} testData list = {}  ".format(sym_listbox, ui_list, list_items))
        return True
    
    def chartWindow_check_list_items_in_label_listbox(self, sym_listbox, list_items):
        """
        Check list of items present in the list box of label in chart Window.
        :param sym_listbox: symbolic name of label listbox
        :param list_items: list of text to compare in list box.
        :return: True if list is equal else False
        """
        ui_list = self.winapp.get_list_box_items(sym_listbox)
        self.winapp.log(
            "chartWindow_check_list_items_in_label_listbox comparing lists UI LIST ={} testData list = {} ".format(ui_list,
                                                                                                           list_items))
        if not common.compare_list(ui_list, list_items):
            self.winapp.fail("chartWindow_check_list_items_in_label_listbox is failed ...",
                             "sym = '{}' UI LIST ={} testData list = {}  ".format(sym_listbox, ui_list, list_items))
            return False
        self.winapp.log("chartWindow_check_list_items_in_label_listbox is passed ...",
                        "sym = '{}' UI LIST ={} testData list = {}  ".format(sym_listbox, ui_list, list_items))
        return True
    
    
    def chartWindow_check_list_items_in_log_interval_listbox(self, sym_listbox, list_items):
        """
        Check list of items present in the list box of log interval in chart Window.
        :param sym_listbox: symbolic name of log interval listbox
        :param list_items: list of text to compare in list box.
        :return: True if list is equal else False
        """
        ui_list = self.winapp.get_list_box_items(sym_listbox)
        self.winapp.log(
            "chartWindow_check_list_items_in_log_interval_listbox comparing lists UI LIST ={} testData list = {} ".format(ui_list,
                                                                                                           list_items))
        if not common.compare_list(ui_list, list_items):
            self.winapp.fail("chartWindow_check_list_items_in_log_interval_listbox is failed ...",
                             "sym = '{}' UI LIST ={} testData list = {}  ".format(sym_listbox, ui_list, list_items))
            return False
        self.winapp.log("chartWindow_check_list_items_in_log_interval_listbox is passed ...",
                        "sym = '{}' UI LIST ={} testData list = {}  ".format(sym_listbox, ui_list, list_items))
        return True
    
    
    def chartWindow_check_grid_checkbox(self, sym):
        """
        Check "Grid" checkbox in chart window.
        :param sym: symbolic name of Grid checkbox.
        :return: True if succeeds
        """
        if not self.winapp.check_checkbox(sym):
            self.winapp.fail("chartWindow_check_grid_checkbox is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("chartWindow_check_grid_checkbox is passed ...",
                        "sym = '{}' ".format(sym))
        return True
    
    def chartWindow_check_grid_is_visible_in_graph_view(self, sym_name, visible=True):
        """
        verify the Grid is visible in the graph in chart window.
        :param visible: check visible status(True or False).
        :param sym_name: symbolic names of grid in graph..
        :return:True if succeeds
        """
        if self.winapp.dynamic_wait_visible(sym_name,30) != visible:
            elf.winapp.fail("chartWindow_check_grid_is_visible_in_graph_view is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("chartWindow_check_grid_is_visible_in_graph_view is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True
    
    def chartWindow_check_list_items_in_log_period_listbox(self, sym_listbox, list_items):
        """
        Check list of items present in the list box of log period in chart Window.
        :param sym_listbox: symbolic name of log period listbox
        :param list_items: list of text to compare in list box.
        :return: True if list is equal else False
        """
        ui_list = self.winapp.get_list_box_items(sym_listbox)
        self.winapp.log(
            "chartWindow_check_list_items_in_log_period_listbox comparing lists UI LIST ={} testData list = {} ".format(ui_list,
                                                                                                           list_items))
        if not common.compare_list(ui_list, list_items):
            self.winapp.fail("chartWindow_check_list_items_in_log_period_listbox is failed ...",
                             "sym = '{}' UI LIST ={} testData list = {}  ".format(sym_listbox, ui_list, list_items))
            return False
        self.winapp.log("chartWindow_check_list_items_in_log_period_listbox is passed ...",
                        "sym = '{}' UI LIST ={} testData list = {}  ".format(sym_listbox, ui_list, list_items))
        return True
    
    
    def chartWindow_select_list_item_of_log_period_comboBox(self, sym, name):
        """
        Select a given list item in log period combobox.
        :param sym: symbolic name of log period combo box.
        :param name: name of item to be selected.
        :return:True if succeeds.
        
        """
         
        if not self.winapp.select_item_in_list_box(sym, name):
            self.winapp.fail("chartWindow_select_list_item_of_log_period_comboBox is failed ...",
                             "sym = '{}' name ={}  ".format(sym, name))
            return False
        self.winapp.log("chartWindow_select_list_item_of_log_period_comboBox is passed ...",
                        "sym = '{}' name ={}  ".format(sym, name))
        return True
    
    def chartWindow_get_log_period_combobox_text(self, sym):
        """
        Get combobox value for the log period combobox in chartWindow.
        :param sym: symbolic name of log period comboBox in chart Window.
        :return: String of text displayed in log period combobox.
        """
        return self.winapp.get_select_list_Box_text(sym)


    def chartWindow_get_log_interval_combobox_text(self, sym):
        """
        Get combobox value for the log interval combobox in chartWindow.
        :param sym: symbolic name of log interval comboBox in chart Window.
        :return: String of text displayed in log interval combobox.
        """
        return self.winapp.get_select_list_Box_text(sym)
    
    def chartWindow_get_label_combobox_text(self, sym):
        """
        Get combobox value for the label combobox in chartWindow.
        :param sym: symbolic name of label comboBox in chart Window.
        :return: String of text displayed in label combobox.
        """
        return self.winapp.get_select_list_Box_text(sym)
    
    def chartWindow_get_zoom_level_combobox_text(self, sym):
        """
        Get combobox value for the zoom level combobox in chartWindow.
        :param sym: symbolic name of zoom level comboBox in chart Window.
        :return: String of text displayed in zoom level combobox.
        """
        return self.winapp.get_select_list_Box_text(sym)
    
    def chartWindow_check_save_checkbox_ischecked(self,sym_name,checked_status=True):
        """
        Verify the status of save checkbox in chart window.
        :param sym_name: Symbolic name of save checkbox.
        :param checked_status: Status of checkbox to be verified.
        :return: True if succeeds.  
        
        """
        if self.winapp.checkbox_status(sym_name) != checked_status:
            self.winapp.fail("chartWindow_check_save_checkbox_ischecked is failed ..",
                                 "symbolic name = {}, expected_status = {} ".format(sym_name,checked_status))
            return False
        self.winapp.log("chartWindow_check_save_checkbox_ischecked is passed ..",
                        "symbolic name = {}, expected_status = {}".format(sym_name,checked_status))
        return True
    
    
    def chartWindow_check_grid_checkbox_ischecked(self,sym_name,checked_status=True):
        """
        Verify the status of grid checkbox in chart window.
        :param sym_name: Symbolic name of grid checkbox.
        :param checked_status: Status of checkbox to be verified.
        :return: True if succeeds.  
        
        """
        if self.winapp.checkbox_status(sym_name) != checked_status:
            self.winapp.fail("chartWindow_check_grid_checkbox_ischecked is failed ..",
                                 "symbolic name = {}, expected_status = {} ".format(sym_name,checked_status))
            return False
        self.winapp.log("chartWindow_check_grid_checkbox_ischecked is passed ..",
                        "symbolic name = {}, expected_status = {}".format(sym_name,checked_status))
        return True
    
    
    def chartWindow_check_headers_in_chartdataGrid(self,sym_name,headers_list):
        """
        Check headers list in chart datagrid.
        :param sym_name: Symbolic name of chart dataGrid Table.
        :param headers_list: Headers list of chart dataGrid.
        :return: True if succeeds.
        
        """
        ui_list = self.winapp.get_header_items_text_list_from_chart_dataGrid(sym_name)
        if common.compare_list(ui_list, headers_list):
            self.winapp.log("chartWindow_check_headers_in_chartdataGrid is passed",
                            "ui list = {} Input sheet list= {}".format(ui_list,headers_list))
            return True
        else:
            self.winapp.fail("chartWindow_check_headers_in_chartdataGrid is failed",
                             "ui list = {} Input sheet list= {}".format(ui_list,headers_list))
            return False
        
        
    def chartWindow_check_line_graph_label_is_visible(self, sym_name, visible=True):
        """
        verify the "line graph" label is visible in chart window
        :param visible: check visible status(True or False).
        :param sym_name: symbolic names of "line graph" label.
        :return:True if succeeds
        """
        if self.winapp.visible(sym_name) != visible:
            elf.winapp.fail("chartWindow_check_line_graph_label_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("chartWindow_check_line_graph_label_is_visible is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True

    def chartWindow_get_saved_graph_path_info_text(self, sym_name, text):
        """
        Get the saved graph file information in chartWindow.
        :param text:path to validate
        :param sym: symbolic name of saved path file info.
        :return: Path Info.
        """
        if self.winapp.compare_text(sym_name, text):
            self.winapp.pass_log("chartWindow_get_saved_graph_path_info_text is passed", text)
        else:
            self.winapp.fail("chartWindow_get_saved_graph_path_info_text is failed", text)
        return True
    
    def check_chartWindow_is_Enabled(self, sym_name, status=True):
        """
        Check if Chart Window is Enabled or not.
        :param sym_name: symbolic names of  Chart Window
        :param status: boolean status value True or False.
        :return: True if Chart window is enabled.
        """
        if self.winapp.Enable(sym_name) != status:
                self.winapp.fail("check_chartWindow_is_Enabled is failed ..",
                                     "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("check_chartWindow_is_Enabled is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True

    def check_open_chartWindow_is_Enabled(self, sym_name_list, status=True):
        """
        Check if Chart Window is Enabled or not after opening chart from on-line service
        :param sym_name_list: symbolic names of button in Chart Window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        for sym_name in sym_name_list:
            if self.winapp.Enable(sym_name) != status:
                self.winapp.fail("check_open_chartWindow_is_Enabled is failed ..",
                                     "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("check_open_chartWindow_is_Enabled is passed ..",
                        "sym_name_list = {}".format(sym_name))
        return True
    
    def chartwindow_openchart_and_get_parameter_details(self, sym_name):
        """
        Get the parameter details from the chart dataGrid in the chart window.
        :param sym_name: Symbolic name of the chart dataGrid Table.
        :return: list of dictionaries for parameter with its details.
        """
        param_details = self.winapp.getParameterDetails_from_chart_dataGrid(sym_name)
        if not param_details:
            self.winapp.fail("chartwindow_openchart_and_get_parameter_details is failed ...",
                             "parameter details = '{}' ".format(param_details))

        self.winapp.pass_log("chartwindow_openchart_and_get_parameter_details is passed ...",
                             "parameter details = '{}'".format(param_details))
        return param_details
    
    def chartWindow_openchart_and_check_controller_details_is_visible(self, sym_list,visible=True):
        """
        Check the "controller details" labels is visible in chart window.
        :param sym_list: Symbolic list to check controller details visibility.
        :param visible: check visible status(True or False).
        :return: True if succeeds.
        """
        for sym in sym_list:
            if self.winapp.visible(sym) != visible:
                self.winapp.fail("chartWindow_openchart_and_check_controller_details_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym))
                return False
        self.winapp.pass_log("chartWindow_openchart_and_check_controller_details_is_visible is passed ..",
                             "sym_list = {}".format(sym_list))
        return True
    
    def chartWindow_openchart_and_check_controller_details_is_enabled(self,sym_list, status=True):
        """
        Check if the "controller details" is enabled/disabled in chart window.
        :param sym_list: Symbolic list to check "controller details" labels and buttons are enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if label is enabled value is equal to status else False.
        """ 
        for sym_name in sym_list:
            if self.winapp.Enable(sym_name) != status:
                self.winapp.fail("chartWindow_openchart_and_check_controller_details_is_enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("chartWindow_openchart_and_check_controller_details_is_enabled is passed ..",
                        "sym_list = {}".format(sym_list))
        return True
            

    def chartWindow_openchart_and_get_controller_variant(self, sym):
        """
        Get the controller variant from the chart window.
        :param sym: Symbolic name of the controller variant in the chart window.
        return: String of controller variant
        """
        text = self.winapp.get_text(sym)
        if not text:
            self.winapp.fail("chartWindow_openchart_and_get_controller_variant is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("chartWindow_openchart_and_get_controller_variant is passed ...",
                        "sym = '{}'  ...".format(sym))
        return text
    
    def chartWindow_openchart_and_get_controller_codeNumber(self, sym):
        """
        Get the controller code number from the chart window.
        :param sym: Symbolic name of the controller codenumber in the chart window.
        return: String of controller code number
        """
        text = self.winapp.get_text(sym)
        if not text:
            self.winapp.fail("chartWindow_openchart_and_get_controller_codeNumber is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("chartWindow_openchart_and_get_controller_codeNumber is passed ...",
                        "sym = '{}'  ...".format(sym))
        return text
    
    def chartWindow_openchart_and_get_controller_sw_version(self, sym):
        """
        Get the controller software version  from the chart window.
        :param sym: Symbolic name of the controller software version in the chart window.
        return: String of controller software version.
        """
        text = self.winapp.get_text(sym)
        if not text:
            self.winapp.fail("chartWindow_openchart_and_get_controller_codeNumber is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("chartWindow_openchart_and_get_controller_codeNumber is passed ...",
                        "sym = '{}'  ...".format(sym))
        return text
    
    def chartWindow_openchart_and_check_controller_variant_text(self, sym, message):
        """
        check the "controller variant" text in chart window.
        :param sym: Symbolic name of the controller variant in the chart window.
        :param message:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("chartWindow_openchart_and_check_controller_variant_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("chartWindow_openchart_and_check_controller_variant_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def chartWindow_openchart_and_check_controller_codeNumber_text(self, sym, message):
        """
        check the "controller code number" text in chart window.
        :param sym: Symbolic name of the controller code number in the chart window.
        :param message:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("chartWindow_openchart_and_check_controller_codeNumber_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("chartWindow_openchart_and_check_controller_codeNumber_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def chartWindow_openchart_and_check_controller_sw_version_text(self, sym, message):
        """
        check the "controller software version" text in chart window.
        :param sym: Symbolic name of the controller software version in the chart window.
        :param message:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("chartWindow_openchart_and_check_controller_sw_version_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("chartWindow_openchart_and_check_controller_sw_version_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def chartWindow_openchart_and_check_i_button_is_visible(self, sym, visible=True):
        """
        Check the "i" button is visible in chart window.
        :param sym: Symbolic name of the i button in the chart window.
        :param visible: check visible status(True or False).
        :return: True if succeeds.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("chartWindow_openchart_and_check_i_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
            return False
        self.winapp.pass_log("chartWindow_openchart_and_check_i_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
        
    def chartWindow_openchart_and_check_i_button_is_enabled(self,sym, status=True):
        """
        Check if the "i" button is enabled/disabled in chart window.
        :param sym: Symbolic name of the i button in the chart window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("chartWindow_openchart_and_check_i_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("chartWindow_openchart_and_check_i_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
        
    def chartWindow_openchart_and_check_i_button_text(self, sym, message):
        """
        check the "i" button text in chart window.
        :param sym: Symbolic name of the i button in the chart window.
        :param message:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("chartWindow_openchart_and_check_i_button_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("chartWindow_openchart_and_check_i_button_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def chartWindow_openchart_and_get_i_button_text(self, sym):
        """
        Get the text of i button in chart Window.
        :param sym: Symbolic name of the i button in the chart window.
        :return: i button text
        """
        text = self.winapp.get_text(sym)
        if not text:
            self.winapp.fail("chartWindow_openchart_and_get_i_button_text is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("chartWindow_openchart_and_get_i_button_text is passed ...",
                        "sym = '{}'  ...".format(sym))
        return text
        
    def chartWindow_openchart_and_check_i_button_tooltip(self, sym, tooltip_text):
        """
        Check the i button tooltip in chart window.
        :param sym: Symbolic name of the i button in the chart window.
        :param tooltip_text: i button tooltip
        :return:True if succeeds
        """
        ui_tooltip = self.winapp.tooltip(sym)
        if ui_tooltip != tooltip_text:
            self.winapp.fail("chartWindow_openchart_and_check_i_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip_text))
            return False
        self.winapp.log("chartWindow_openchart_and_check_i_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip_text))
        return True
        
    def chartWindow_openchart_and_click_i_button(self, sym):
        """
        click on the i button in the chart window.
        :param sym: Symbolic name of the i button in the chart window.
        :return: True if succeeds.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("chartWindow_openchart_and_click_i_button is failed..",
                             " click event symbolic name ={}".format(sym))
            return False
        self.winapp.pass_log("chartWindow_openchart_and_click_i_button is passed.",
                             " click event symbolic name ={}".format(sym))
        return True
    


class ConvertSettingsWindow:
    
    def __init__(self, *args, **kwargs):
        """
        Initialise ConvertSettingsWindow.
        """
        self.winapp = winappApi.WinappLibAPI()
        self.commonfunction = CommonFunction()
    
    def prj_window_check_convert_settings_button_is_visible(self, sym, visible=True):
        """
        Check convert settings button in project window is visible.
        :param sym: symbolic name of the convert settings button
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("prj_window_check_convert_settings_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("prj_window_check_convert_settings_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
        
    def prj_window_check_convert_settings_button_is_enabled(self, sym, status=True):
        """
        Check convert settings button in project window is enabled.
        :param sym: symbolic name of the convert settings button
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("prj_window_check_convert_settings_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("prj_window_check_convert_settings_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def prj_window_compare_convert_settings_tooltip(self, sym_name, tooltip):
        """
        In Project window  Compare tooltip text of convert settings button
        :param sym_name: symbolic name of  convert settings button
        :param tooltip: testData to check with tooltip
        :return: True if text is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("prj_window_compare_convert_settings_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("prj_window_compare_convert_settings_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True
    

    
    def prj_window_click_convert_settings_button(self, sym):
        """
        Click the convert settings button
        :param sym: Symbolic name of convert settings button.
        :return: True if succeeds.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("prj_window_click_convert_settings_button is failed..",
                             " click event symbolic name ={}".format(sym))
            return False
        self.winapp.pass_log("prj_window_click_convert_settings_button is passed.",
                             " click event symbolic name ={}".format(sym))
        return True  
    
    def convert_settings_window_is_visible(self, sym_list, visible=True):
        """
        verify the "Convert Settings" window labels are visible in Convert Setting window
        :param sym_list: Symbolic list to check window visibility
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        for sym in sym_list:
            if self.winapp.visible(sym) != visible:
                self.winapp.fail("convert_settings_window_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym))
                return False
        self.winapp.pass_log("convert_settings_window_is_visible is passed ..",
                             "sym_list = {}".format(sym_list))
        return True
    
    def convert_settings_window_is_enabled(self, sym_list, status=True):
        """
        verify the "convert settings" window labels are enabled or disabled
        :param sym_list: Symbolic list to check window is enabled or disabled.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        for sym_name in sym_list:
            if self.winapp.Enable(sym_name) != status:
                self.winapp.fail("convert_settings_window_is_enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("convert_settings_window_is_enabled is passed ..",
                        "sym_list = {}".format(sym_list))
        return True
    
    def convert_settings_window_check_convert_setting_file_label_is_visible(self, sym, visible=True): 
        """
        Check convert settings file label in convert settings window is visible.
        :param sym: Symbolic name of the convert settings file label in convert settings window
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("convert_settings_window_check_convert_setting_file_label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("convert_settings_window_check_convert_setting_file_label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def convert_settings_window_check_convert_setting_file_label_text(self, sym, message):
        """
        check the "convert settings file label" button text in convert settings window
        :param sym: Symbolic name of the convert settings file label in convert settings window
        :param message:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("convert_settings_window_check_convert_setting_file_label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("convert_settings_window_check_convert_setting_file_label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def convert_settings_window_X_button_visible(self, sym, visible=True):
        """
        check the "X " button visible in convert settings window
        :param sym: Symbolic name of the X button in convert settings window
        :param visible: visibility check of convert setting window(True or False)
        :return: True if succeeds
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("convert_settings_window_X_button_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("convert_settings_window_X_button_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def convert_settings_window_X_button_is_enabled(self, sym, status=True):
        
        """
        check the "X" button enabled/disabled in convert settings window
        :param sym: Symbolic name of the X button in convert settings window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("convert_settings_window_X_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("convert_settings_window_X_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def convert_settings_window_check_X_button_text(self, sym, message):
        """
        check the "X" button text in convert settings window
        :param sym: Symbolic name of the X button in convert settings window
        :param message:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("convert_settings_window_check_X_button_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("convert_settings_window_check_X_button_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def convert_settings_window_check_X_button_tooltip(self, sym, tooltip):
        """
        Check the X button tooltip in convert settings window.
        :param sym: Symbolic name of the X button in convert settings window
        :param tooltip: close button tooltip
        :return:True if succeeds
        """
        ui_tooltip = self.winapp.tooltip(sym)
        if ui_tooltip != tooltip:
            self.winapp.fail("convert_settings_window_check_X_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip))
            return False
        self.winapp.log("convert_settings_window_check_X_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip))
        return True
    
    def convert_settings_window_click_X_button(self, sym):
        """
        click on the X button in the convert settings window
        :param sym: Symbolic name of the X button.
        :return: True if succeeds
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("convert_settings_window_click_X_button is failed..",
                             " click event symbolic name ={}".format(sym))
            return False
        self.winapp.pass_log("convert_settings_window_click_X_button is passed.",
                             " click event symbolic name ={}".format(sym))
        return True
    
    def convert_settings_window_check_select_the_setting_file_you_want_to_use_Label_is_visible(self, sym, visible=True):
        """
        Check setting file you want to use label in convert settings window is visible.
        :param sym: Symbolic name of the "select the setting file you want to use" label in convert settings window
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("convert_settings_window_check_select_the_setting_file_you_want_to_use_Label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("convert_settings_window_check_select_the_setting_file_you_want_to_use_Label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def convert_settings_window_check_select_the_setting_file_you_want_to_use_Label_is_enabled(self, sym, status=True):
        """
        Check setting file you want to use label in convert settings window is enabled.
        :param sym: Symbolic name of the "select the setting file you want to use" label in convert settings window
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("convert_settings_window_check_select_the_setting_file_you_want_to_use_Label_is_enabled is failed ...",
                             "sym = '{}' visible= '{}'".format(sym, status))

        self.winapp.pass_log("convert_settings_window_check_select_the_setting_file_you_want_to_use_Label_is_enabled is passed ...",
                             "sym = '{}' visible= '{}'".format(sym, status))
        return True
    
    def convert_settings_window_check_select_the_setting_file_you_want_to_use_Label_text(self,sym, message):
        """
        Check setting file you want to use label in convert settings window is enabled.
        :param sym: Symbolic name of the "select the setting file you want to use" label in convert settings window
        :param message:testData to compare
        :return: True if succeed
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("convert_settings_window_check_select_the_setting_file_you_want_to_use_Label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("convert_settings_window_check_select_the_setting_file_you_want_to_use_Label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def convert_settings_window_check_controller_product_image_is_visible(self,sym, visible=True):
        """
        Check controller image in convert settings window.
        :param sym: symbolic name of product image.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("convert_settings_window_check_controller_product_image_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("convert_settings_window_check_controller_product_image_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def convert_settings_window_validate_controller_product_image(self, sym_prod_image, prod_image):
        """
        Check controller image in convert settings window.
        :param sym_prod_image: symbolic name of controller image in convert settings window.
        :param prod_image: path of the controler image.
        :return: True if image is equal else False.
        """
        if not self.commonfunction.get_image_by_sym_and_compare_images(sym_prod_image, prod_image):
            self.winapp.fail("convert_settings_window_validate_controller_product_image is failed",
                             "get_image_by_sym_and_compare_images for symbolic name ={} prod image ={}".format(
                                 sym_prod_image, prod_image))
            return False
        self.winapp.pass_log("convert_settings_window_validate_controller_product_image is passed",
                             "get_image_by_sym_and_compare_images for symbolic name ={} prod image ={}".format(
                                 sym_prod_image, prod_image))
        return True
    
    def convert_settings_window_check_i_button_is_visible(self, sym , visible=True):
        """
        Check i button in convert settings is visible.
        :param sym: Symbolic name of the i button.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("convert_settings_window_check_i_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("convert_settings_window_check_i_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def convert_settings_window_check_i_button_is_enabled(self, sym, status=True):
        """
        Check i button in convert settings is enabled.
        :param sym: Symbolic name of the i button.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("convert_settings_window_check_i_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("convert_settings_window_check_i_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def convert_settings_window_get_i_button_text(self, sym):
        """
        Get the text of i button in convert settings window.
        :param sym: Symbolic name of the i button.
        :return: text of 'i' button
        """
        text = self.winapp.get_text(sym)
        if not text:
            self.winapp.fail("convert_settings_window_get_i_button_text is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("convert_settings_window_get_i_button_text is passed ...",
                        "sym = '{}'  ...".format(sym))
        return text
    
    def convert_settings_window_check_i_button_text(self, sym, text):
        """
        Check "i" button text in convert settings window
        :param sym: Symbolic name of i button in convert settings window.
        :param text:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("convert_settings_window_check_i_button_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("convert_settings_window_check_i_button_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def convert_settings_window_check_i_button_tooltip(self, sym, tooltip):
        """
        Check the i button tooltip in convert settings window.
        :param sym: Symbolic name of the i button.
        :param tooltip: close button tooltip
        :return:True if succeeds
        """
        ui_tooltip = self.winapp.tooltip(sym)
        if ui_tooltip != tooltip:
            self.winapp.fail("convert_settings_window_check_i_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip))
            return False
        self.winapp.log("convert_settings_window_check_i_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip))
        return True
    
    def convert_settings_window_click_i_button(self, sym):
        """
        click on the i button in the convert settings window
        :param sym: Symbolic name of the i button.
        :return: True if succeeds
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("convert_settings_window_click_i_button is failed..",
                             " click event symbolic name ={}".format(sym))
            return False
        self.winapp.pass_log("convert_settings_window_click_i_button is passed.",
                             " click event symbolic name ={}".format(sym))
        return True
    
    def convert_settings_window_check_new_file_name_label_isVisible(self, sym, visible=True):
        """
        Check new file name in convert settings is visible.
        :param sym: symbolic name of the new file name in convert settings button
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("convert_settings_window_check_new_file_name_label_isVisible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("convert_settings_window_check_new_file_name_label_isVisible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def convert_settings_window_check_new_file_name_label_is_enabled(self, sym, status=True):
        """
        Check new file name in convert settings is enabled.
        :param sym: symbolic name of the new file name in convert settings button
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("convert_settings_window_check_new_file_name_label_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("convert_settings_window_check_new_file_name_label_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def convert_settings_window_get_text_of_new_file_name_label(self, sym_name):
        """
        Check the new file name text in the convert settings window.
        :param sym_name: symbolic name of new file name in convert settings window.
        :return: new file name label
        """
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("convert_settings_window_get_text_of_new_file_name_label is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("convert_settings_window_get_text_of_new_file_name_label is passed ...", "sym = '{}'  ...".format(sym_name))
        return text
    
    def convert_settings_window_check_new_file_name_label_text(self, sym, text):
        """
        Check the "new file name" label text in convert settings window
        :param sym: Symbolic name of new file name label in convert settings window.
        :param text:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("convert_settings_window_check_new_file_name_label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("convert_settings_window_check_new_file_name_label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def convert_settings_window_check_edit_box_of_new_file_name_label_is_visible(self, sym, visible=True):
        """
        Check edit box of new file in convert settings is visible.
        :param sym: symbolic name of the edit box of the new file name in convert settings window
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("convert_settings_window_check_edit_box_of_new_file_name_label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("convert_settings_window_check_edit_box_of_new_file_name_label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def convert_settings_window_check_edit_box_of_new_file_name_label_is_enabled(self, sym, status=True):
        """
        Check edit box of new file in convert settings is enabled.
        :param sym: symbolic name of the edit box of the new file name in convert settings window
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("convert_settings_window_check_edit_box_of_new_file_name_label_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("convert_settings_window_check_edit_box_of_new_file_name_label_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def convert_settings_window_check_new_file_name_label_text(self, sym, text):
        """
        Check the "new file name" label text in convert settings window
        :param sym: Symbolic name of new file name label in convert settings window.
        :param text:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("convert_settings_window_check_new_file_name_label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("convert_settings_window_check_new_file_name_label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def convert_settings_window_get_text_from_new_file_name_edit_box(self, sym):
        """
        Get text of new file name editbox in the convert settings window.
        :param sym: Symbolic name of the edit box of the new file name in convert settings window
        :return: text in new filename editbox
        """
        text = self.winapp.get_text(sym)
        if not text:
            self.winapp.fail("convert_settings_window_get_text_from_new_file_name_edit_box is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("convert_settings_window_get_text_from_new_file_name_edit_box is passed ...",
                        "sym = '{}'  ...".format(sym))
        return text
    
    def convert_settings_window_get_label_of_product_name(self, sym_name):
        
        """
        Get the label of product name in the convert settings window.
        :param sym_name: symbolic name of label of product name in the convert settings window.
        :return: product name label
        """
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("convert_settings_window_get_label_of_product_name is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("convert_settings_window_get_label_of_product_name is passed ...", "sym = '{}'  ...".format(sym_name))
        return text
    
    def convert_settings_window_check_label_of_product_name_is_visible(self, sym_name, visible=True):
        """
        Check label of product name in convert settings is visible.
        :param sym_name: symbolic name of label of product name in the convert settings window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("convert_settings_window_check_label_of_product_name_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym_name, visible))

        self.winapp.pass_log("convert_settings_window_check_label_of_product_name_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym_name, visible))
        return True
    
    def convert_settings_window_check_label_of_product_name_is_enabled(self, sym_name, status=True):
        """
        Check label of product name in convert settings is enabled.
        :param sym_name: symbolic name of label of product name in the convert settings window.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("convert_settings_window_check_label_of_product_name_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym_name, status))

        self.winapp.pass_log("convert_settings_window_check_label_of_product_name_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym_name, status))
        return True
    
    def convert_settings_window_check_product_name_label_text(self, sym, text):
        """
        Check the "product name" label text in convert settings window
        :param sym: Symbolic name of product name label in convert settings window.
        :param text:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("convert_settings_window_check_product_name_label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("convert_settings_window_check_product_name_label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
   
    def convert_settings_window_get_label_of_code_number(self, sym_name):
        
        """
        Check the label of code number in the convert settings window.
        :param sym_name:symbolic name of label of code number in the convert settings window.
        :return: codenumber label
        """
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("convert_settings_window_get_label_of_code_number is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("convert_settings_window_get_label_of_code_number is passed ...", "sym = '{}'  ...".format(sym_name))
        return text
    
    def convert_settings_window_check_label_of_code_number_is_visible(self, sym_name, visible=True):
        """
        Check label of code number in convert settings is visible.
        :param sym_name:symbolic name of label of code number in the convert settings window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("convert_settings_window_check_label_of_code_number_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym_name, visible))

        self.winapp.pass_log("convert_settings_window_check_label_of_code_number_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym_name, visible))
        return True
    
    def convert_settings_window_check_label_of_code_number_is_enabled(self, sym_name, status=True):
        """
        Check label of code number in convert settings is enabled.
        :param sym_name:symbolic name of label of code number in the convert settings window.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("convert_settings_window_check_label_of_code_number_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym_name, status))

        self.winapp.pass_log("convert_settings_window_check_label_of_code_number_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym_name, status))
        return True
    
    def convert_settings_window_check_code_number_label_text(self, sym, text):
        """
        Check the "code number" label text in convert settings window
        :param sym: Symbolic name of code number label in convert settings window.
        :param text:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("convert_settings_window_check_code_number_label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("convert_settings_window_check_code_number_label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def convert_settings_window_check_list_of_code_number_combobox_is_visible(self, sym_name, visible=True):
        """
        Check code number combobox in convert settings is visible.
        :param sym_name:symbolic name of code number comboboxin the convert settings window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("convert_settings_window_check_list_of_code_number_combobox_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym_name, visible))

        self.winapp.pass_log("convert_settings_window_check_list_of_code_number_combobox_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym_name, visible))
        return True
    
    def convert_settings_window_check_list_of_code_number_combobox_is_enabled(self, sym_name, status=True):
        """
        Check code number combobox in convert settings is visible.
        :param sym_name:symbolic name of code number comboboxin the convert settings window.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("convert_settings_window_check_list_of_code_number_combobox_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym_name, status))

        self.winapp.pass_log("convert_settings_window_check_list_of_code_number_combobox_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym_name, status))
        return True
    
    def convert_settings_window_select_code_number_from_combobox(self, sym_code_num, code_num):
        """
        Select given code number in code number combobox in convert settings window.
        :param sym_code_num: Symbolic name of the code number combobox.
        :param code_num: string code number.
        :return: boolean True if code number has selected successfully else False.
        """
        if not self.winapp.click_and_select_list_Box(sym_code_num, code_num):
            self.winapp.fail("convert_settings_window_select_code_number_from_combobox is failed",
                             " sym_code_num ={} expected text ={} ".format(sym_code_num, code_num))
            return False
        self.winapp.pass_log("convert_settings_window_check_list_of_code_number_combobox_is_enabled is passed ...",
                             " sym_code_num ={} expected text ={} ".format(sym_code_num, code_num))
        return True
    
    def convert_settings_window_get_list_of_code_number(self, sym_name):
        """
        Get list of the code number in the convert settings window.
        :param sym_name: Symbolic name of code number combobox in convert settings window.
        :return: list of items in combobox.
        """
        list_items = self.winapp.get_list_box_items(sym_name)
        if not list_items:
            self.winapp.fail("convert_settings_window_get_list_of_code_number is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("convert_settings_window_get_list_of_code_number is passed ...", "sym = '{}'  ...".format(sym_name))
        return list_items
    
    def convert_settings_window_get_label_of_SW_Version(self, sym_name):
        
        """
        Check the label of software version in the convert settings window.
        :param sym_name:symbolic name of label of software version in the convert settings window.
        :return: SW version label
        """
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("convert_settings_window_get_label_of_SW_Version is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("convert_settings_window_get_label_of_SW_Version is passed ...", "sym = '{}'  ...".format(sym_name))
        return text
        
    def convert_settings_window_check_label_of_SW_version_is_visible(self, sym_name, visible=True):
        """
        Check label of software version in convert settings is visible.
        :param sym_name:symbolic name of label of software version in the convert settings window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("convert_settings_window_check_label_of_SW_version_is_visible is failed ...",
                             "sym_name = '{}' status= '{}'".format(sym_name, visible))

        self.winapp.pass_log("convert_settings_window_check_label_of_SW_version_is_visible is passed ...",
                             "sym_name = '{}' status= '{}'".format(sym_name, visible))
        return True
    
    
    def convert_settings_window_check_label_of_SW_version_is_enabled(self, sym_name, status=True):
        """
        Check label of software version in convert settings is enabled.
        :param sym_name:symbolic name of label of software version in the convert settings window.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("convert_settings_window_check_label_of_SW_version_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym_name, status))

        self.winapp.pass_log("convert_settings_window_check_label_of_SW_version_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym_name, status))
        return True
    
    def convert_settings_window_check_SW_version_label_text(self, sym, text):
        """
        Check "software version" label text in convert settings window
        :param sym: Symbolic name of label of software version in the convert settings window.
        :param text:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("convert_settings_window_check_SW_version_label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("convert_settings_window_check_SW_version_label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def convert_settings_window_check_list_of_software_version_combobox_is_visible(self, sym_name, visible=True):
        """
        Check software version combobox in convert settings is visible.
        :param sym_name:symbolic name of version comboboxin the convert settings window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("convert_settings_window_check_list_of_software_version_combobox_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym_name, visible))

        self.winapp.pass_log("convert_settings_window_check_list_of_software_version_combobox_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym_name, visible))
        return True
    
    def convert_settings_window_check_list_of_software_version_combobox_is_enabled(self, sym_name, status=True):
        """
        Check list of software version in convert settings is enabled.
        :param sym_name:symbolic name of list of code number in the convert settings window.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("convert_settings_window_check_list_of_software_version_combobox_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym_name, status))

        self.winapp.pass_log("convert_settings_window_check_list_of_software_version_combobox_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym_name, status))
        return True
    
    def convert_settings_window_select_software_version_from_combobox(self, sym_sw_version, sw_version):
        """
        Select given software version in software version combobox in convert settings window.
        :param sym_sw_version: Symbolic name of the software version combobox.
        :param sw_version: string software version.
        :return: boolean True if software version has selected successfully else False.
        """
        if not self.winapp.click_and_select_list_Box(sym_sw_version, sw_version):
            self.winapp.fail("convert_settings_window_select_software_version_from_combobox is failed",
                             " sym_sw_version ={} expected text ={} ".format(sym_sw_version, sw_version))
            return False
        self.winapp.pass_log("convert_settings_window_select_software_version_from_combobox is passed ...",
                             " sym_sw_version ={} expected text ={} ".format(sym_sw_version, sw_version))
        return True
        
    
    def convert_settings_window_get_list_of_software_version(self, sym_name):
        """
        Get list of the software versions in the convert settings window.
        :param sym_name: symbolic name software version combobox in convert settings window.
        :return: list of items in combobox.
        """
        list_items = self.winapp.get_list_box_items(sym_name)
        if not list_items:
            self.winapp.fail("convert_settings_window_get_list_of_software_version is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("convert_settings_window_get_list_of_software_version is passed ...", "sym = '{}'  ...".format(sym_name))
        return list_items
    
    
    def convert_settings_window_check_convert_file_button_is_visible(self,sym, visible=True):
        """
        Check convert file button in convert settings window is visible.
        :param sym:symbolic name of convert file button in the convert settings window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("convert_settings_window_check_convert_file_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("convert_settings_window_check_convert_file_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def convert_settings_window_check_convert_file_button_is_enabled(self, sym, status=True):
        """
        Check convert file button in convert settings window is enabled.
        :param sym:symbolic name of convert file button in convert settings window.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("convert_settings_window_check_convert_file_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("convert_settings_window_check_convert_file_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def convert_settings_window_get_text_of_convert_file_button(self, sym):
        """
        Get text of convert file button in the convert settings window.
        :param sym: symbolic name of convert file button in convert settings window.
        :return: text of convert file button
        """
        text = self.winapp.get_text(sym)
        if not text:
            self.winapp.fail("convert_settings_window_get_text_of_convert_file_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("convert_settings_window_get_text_of_convert_file_button is passed ...", "sym = '{}'  ...".format(sym))
        return text
    
    def convert_settings_window_check_convert_file_button_text(self, sym, text):
        """
        Check "convert file" button text in convert settings window
        :param sym: Symbolic name of convert file button in convert settings window.
        :param text:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("convert_settings_window_check_convert_file_button_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("convert_settings_window_check_convert_file_button_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def convert_settings_window_get_text_of_convert_file_button(self, sym):
        """
        Get text of convert file button in the convert settings window.
        :param sym: symbolic name of convert file button in convert settings window.
        :return: text of convert file button
        """
        text = self.winapp.get_text(sym)
        if not text:
            self.winapp.fail("convert_settings_window_get_text_of_convert_file_button is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("convert_settings_window_get_text_of_convert_file_button is passed ...", "sym = '{}'  ...".format(sym))
        return text
    
    def convert_settings_window_click_convert_file_button(self, sym):
        """
        Click convert file button in convert settings window.
        :param sym:symbolic name of convert file button in convert settings window.
        :return: True if succeeds.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("convert_settings_window_click_convert_file_button is failed..",
                             " click event symbolic name ={}".format(sym))
            return False
        self.winapp.pass_log("convert_settings_window_click_convert_file_button is passed.",
                             " click event symbolic name ={}".format(sym))
        return True  
    
    def convert_settings_window_check_cancel_button_is_visible(self, sym, visible=True):
        """
        Check cancel button in convert settings window is visible.
        :param sym: symbolic name of cancel button in the convert settings window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("convert_settings_window_check_cancel_button_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))

        self.winapp.pass_log("convert_settings_window_check_cancel_button_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def convert_settings_window_check_cancel_button_is_enabled(self, sym, status=True):
        """
        Check cancel button in convert settings window is enabled.
        :param sym:symbolic name of cancel button in convert settings window.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("convert_settings_window_check_cancel_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("convert_settings_window_check_cancel_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def convert_settings_window_get_text_of_cancel_button(self, sym_name):
        """
        Get text of cancel button in the convert settings window.
        :param sym_name: symbolic name of cancel button in convert settings window.
        :return: text of cancel button
        """
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("convert_settings_window_get_text_of_cancel_button is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("convert_settings_window_get_text_of_cancel_button is passed ...", "sym = '{}'  ...".format(sym_name))
        return text
    
    def convert_settings_window_check_cancel_button_text(self, sym, text):
        """
        Check "cancel" button text in convert settings window
        :param sym: Symbolic name of cancel button in convert settings window.
        :param text:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("convert_settings_window_check_cancel_button_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("convert_settings_window_check_cancel_button_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def convert_settings_window_click_cancel_button(self, sym):
        """
        Click the cancel button in convert settings window
        :param sym: Symbolic name of cancel button in convert settings window
        :return: True if succeeds.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("convert_settings_window_click_cancel_button is failed..",
                             " click event symbolic name ={}".format(sym))
            return False
        self.winapp.pass_log("convert_settings_window_click_cancel_button is passed.",
                             " click event symbolic name ={}".format(sym))
        return True  
    
    def convert_settings_window_get_label_of_select_different_SW_Version(self, sym_name):
        
        """
        Check label of select different software version or file name can't be empty in convert settings in the convert settings window.
        :param sym_name:symbolic name of select different software version or file name can't be empty in convert settings window.
        :return: select different SW version or file name can't be empty label
        """
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("convert_settings_window_get_label_of_select_different_SW_Version is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("convert_settings_window_get_label_of_select_different_SW_Version is passed ...", "sym = '{}'  ...".format(sym_name))
        return text
        
    def convert_settings_window_check_label_of_select_different_SW_version_is_visible(self, sym_name, visible=True):
        """
        Check label of select different software version or file name can't be empty in convert settings is visible.
        :param sym_name:symbolic name of select different software version or file name can't be empty in convert settings window.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("convert_settings_window_check_label_of_select_different_SW_version_is_visible is failed ...",
                             "sym_name = '{}' status= '{}'".format(sym_name, visible))

        self.winapp.pass_log("convert_settings_window_check_label_of_select_different_SW_version_is_visible is passed ...",
                             "sym_name = '{}' status= '{}'".format(sym_name, visible))
        return True
    
    def convert_settings_window_check_label_of_select_different_SW_version_is_enabled(self, sym_name, status=True):
        """
         Check label of select different software version or file name can't be empty in convert settings is enabled.
        :param sym_name:symbolic name of select different software version or file name can't be empty in convert settings window.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("convert_settings_window_check_label_of_select_different_SW_version_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym_name, status))

        self.winapp.pass_log("convert_settings_window_check_label_of_select_different_SW_version_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym_name, status))
        return True
    
    def convert_settings_window_check_select_different_SW_version_label_text(self, sym, text):
        """
        Check label of "select different software version or file name can't be empty" text in convert settings window
        :param sym: Symbolic name of select different software version or file name can't be empty label in convert settings window.
        :param text:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("convert_settings_window_check_select_different_SW_version_label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("convert_settings_window_check_select_different_SW_version_label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def convert_settings_window_check_the_text_color_of_select_different_SW_version(self, sym):
        """
        Check the text color of select different software version or file name can't be empty in convert settings window
        :param sym: symbolic name of select different software version or file name can't be empty in convert settings window
        :return: list of rgb colors for the label of select different SW version
        
        """
        color = self.winapp.get_color(sym)
        if not color:
            self.winapp.fail("convert_settings_window_check_the_text_color_of_select_different_SW_version is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("convert_settings_window_check_the_text_color_of_select_different_SW_version is passed ...", "sym = '{}'  ...".format(sym))
        return color
    
    def connected_controller_check_SW_version_mismatch_label_is_visible(self, sym, visible=True):
        """
        check the "SW Version mismatch" text is visible in the Connected Controller Window.
        :param sym: Symbolic name of the "SW Version mismatch" status message.
        :param visible: visible status(True or False).
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("connected_controller_check_SW_version_mismatch_label_is_visible is failed..",
                             " check event symbolic name ={}".format(sym))
            return False
        self.winapp.pass_log("connected_controller_check_SW_version_mismatch_label_is_visible is passed ..",
                             "sym_name = {}".format(sym))
        return True
    
    def connected_controller_check_SW_version_mismatch_label_is_enabled(self, sym, status=True):
        """
        check the "SW Version mismatch" text in Connected Controller Window is enabled.
        :param sym: Symbolic name of the "SW Version mismatch" status message.
        :param status: boolean status value True or False.
        :return: True if label is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("connected_controller_check_SW_version_mismatch_label_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("connected_controller_check_SW_version_mismatch_label_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def connected_controller_check_SW_version_mismatch_label_text(self,sym, message):
        """
        check the "SW Version mismatch" text in Connected Controller Window.
        :param sym: Symbolic name of the "SW Version mismatch" status message.
        :param message:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("connected_controller_check_SW_version_mismatch_label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("connected_controller_check_SW_version_mismatch_label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def connected_controller_get_color_of_SW_version_mismatch_label(self, sym_name):
        """
        check the "SW Version mismatch" text color in Connected Controller Window.
        :param sym_name: Symbolic name of the "SW Version mismatch" status message.
        :return: List of rgb colors of SW version mismatch label.
        """
        color = self.winapp.get_color(sym_name)
        if not color:
            self.winapp.fail("connected_controller_get_color_of_SW_version_mismatch_label is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("connected_controller_get_color_of_SW_version_mismatch_label is passed ...", "sym = '{}'  ...".format(sym_name))
        return color
    
    def convert_settings_window_set_file_name(self, sym, fileName):
        """
        Set the filename in the fileName editbox in the Convert Settings Window.
        :param sym: Symbolic name of the fileName editbox in the Convert Settings Window.
        :param fileName: fileName to be given in the fileName editobx.
        :return: True if text set successfully else False.
        """
        if not self.winapp.set_text(sym, fileName):
            self.winapp.fail("convert_settings_window_set_file_name, set_text is failed",
                             " sym ={} expected text ={} ".format(sym, fileName))
            return False
        self.winapp.pass_log("convert_settings_window_set_file_name, set_text is passed...",
                        " sym ={} expected text ={} ".format(sym, fileName))
        return True
    
    def convert_settings_window_check_file_name_length(self, sym, length):
        """
        Check new file name in convert settings window should be equal to len
        :param sym: Symbolic name of the fileName editbox in the Convert Settings Window.
        :param  len : int length of text in new file name.
        """
        name = self.convert_settings_window_get_text_from_new_file_name_edit_box(sym)
        if len(name) != length:
            self.winapp.fail("convert_settings_window_check_file_name_length is failed ",
                             "while comparing text len ='{}' and ui length = '{}'  for name ='{}'".format(length,len(name), name))

        self.winapp.pass_log("convert_settings_window_check_file_name_length is Passed ",
                        "while comparing text len ='{}' and ui length = '{}' for name ='{}'".format(length,len(name), name))
        return True
    
    def convert_settings_window_check_new_file_name_is_empty(self, sym, message):
        """
        check the text in new filename of convert settings window is empty.
        :param sym: Symbolic name of the fileName editbox in the Convert Settings Window.
        :param message:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("convert_settings_window_check_new_file_name_is_empty is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("convert_settings_window_check_new_file_name_is_empty is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def convert_settings_window_check_product_name_is_visible(self, sym, visible=True):
        """
        check the "product name" text is visible in convert settings window .
        :param sym: Symbolic name of the product name in convert settings window
        :param visible: Visible status (True or False).
        :return: True if equal to 'visible' value.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail(" convert_settings_window_check_product_name_is_visible is failed..",
                             " check event symbolic name ={}".format(sym))
            return False
        self.winapp.pass_log("convert_settings_window_check_product_name_is_visible is passed ..",
                             "sym_name = {}".format(sym))
        return True
    
    def convert_settings_window_check_product_name_is_enabled(self, sym,status=True):
        """
        check the "product name" text in convert settings window is enabled.
        :param sym: Symbolic name of the product name in convert settings window
        :param status: boolean status value True or False.
        :return: True if label is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("convert_settings_window_check_product_name_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))

        self.winapp.pass_log("convert_settings_window_check_product_name_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
        
    def convert_settings_window_check_product_name_text(self, sym, message):
        """
        check the "product name" text in convert settings window
        :param sym: Symbolic name of the product name in convert settings window
        :param message:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("convert_settings_window_check_product_name_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("convert_settings_window_check_product_name_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def convert_settings_window_check_close_button_in_converted_settings_report_is_visible(self, sym , visible=True):
        """
        Check 'Close' button in converted settings report window is visible.
        :param sym: Symbolic name of close button in convert settings report.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("convert_settings_window_check_close_button_in_converted_settings_report_is_visible is failed..",
                             " check event symbolic name ={}".format(sym))
            return False
        self.winapp.pass_log("convert_settings_window_check_close_button_in_converted_settings_report_is_visible is passed ..",
                             "sym_name = {}".format(sym))
        return True
    
    def convert_settings_window_check_close_button_in_converted_settings_report_is_enabled(self, sym ,status=True):
        """
        Check 'Close' button in converted settings report window is enabled.
        :param sym: Symbolic name of close button in convert settings report.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("convert_settings_window_check_close_button_in_converted_settings_report_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
            return False
        self.winapp.pass_log("convert_settings_window_check_close_button_in_converted_settings_report_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def convert_settings_window_click_close_button_in_converted_settings_report(self, sym):
        """
        Click the close button in convert settings report.
        :param sym: Symbolic name of close button in convert settings report.
        :return: True if succeeds.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("convert_settings_window_click_close_button_in_converted_settings_report is failed..",
                             " click event symbolic name ={}".format(sym))
            return False
        self.winapp.pass_log("convert_settings_window_click_close_button_in_converted_settings_report is passed.",
                             " click event symbolic name ={}".format(sym))
        return True  
    
    def convert_settings_window_check_close_button_in_converted_settings_report_text(self, sym, message):
        """
        Check text of 'Close' button in converted settings report window.
        :param sym: Symbolic name of close button in convert settings report.
        :param message:testData to compare
        :return: True if succeeds.
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("convert_settings_window_check_select_different_SW_version_label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("convert_settings_window_check_select_different_SW_version_label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def convert_settings_window_check_X_button_in_converted_settings_report_is_visible(self, sym , visible=True):
        """
        Check 'X' button in converted settings report window is visible.
        :param sym: Symbolic name of X button in convert settings report.
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("convert_settings_window_check_X_button_in_converted_settings_report_is_visible is failed..",
                             " check event symbolic name ={}".format(sym))
            return False
        self.winapp.pass_log("convert_settings_window_check_X_button_in_converted_settings_report_is_visible is passed ..",
                             "sym_name = {}".format(sym))
        return True
    
    def convert_settings_window_check_X_button_in_converted_settings_report_is_enabled(self, sym ,status=True):
        """
        Check label of 'X' button in converted settings report window is enabled.
        :param sym: Symbolic name of X button in convert settings report.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("convert_settings_window_check_X_button_in_converted_settings_report_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
            return False
        self.winapp.pass_log("convert_settings_window_check_X_button_in_converted_settings_report_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def convert_settings_window_click_X_button_in_converted_settings_report(self, sym):
        """
        Click the X button in convert settings report.
        :param sym: Symbolic name of X button in convert settings report.
        :return: True if succeeds.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("convert_settings_window_click_X_button_in_converted_settings_report is failed..",
                             " click event symbolic name ={}".format(sym))
            return False
        self.winapp.pass_log("convert_settings_window_click_X_button_in_converted_settings_report is passed.",
                             " click event symbolic name ={}".format(sym))
        return True 
    
    def convert_settings_window_check_X_button_in_converted_Settings_report_tooltip(self,sym, tooltip_text):
        """
        Check the 'X' button tooltip in converted settings report window.
        :param sym: Symbolic name of X button in convert settings report.
        :param tooltip_text: close button tooltip
        :return:True if succeeds
        """
        ui_tooltip = self.winapp.tooltip(sym)
        if ui_tooltip != tooltip_text:
            self.winapp.fail("convert_settings_window_check_X_button_in_converted_Settings_report_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip_text ='{}' ...".format(sym, ui_tooltip, tooltip_text))
            return False
        self.winapp.log("convert_settings_window_check_X_button_in_converted_Settings_report_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip_text ='{}' ...".format(sym, ui_tooltip, tooltip_text))
        return True
    
    def convert_settings_window_check_X_button_in_converted_settings_report_text(self, sym ,message):
        """
        Check text of 'X' button in converted settings report window.
        :param sym: Symbolic name of X button in convert settings report.
        :param message:testData to compare
        :return: True if succeeds.
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("convert_settings_window_check_select_different_SW_version_label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("convert_settings_window_check_select_different_SW_version_label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def convert_settings_window_check_converted_settings_file_report_label_in_converted_Settings_report_is_visible(self, sym, visible=True):
        """
        Check 'Converted Settings File Report' label in converted settings report window is visible.
        :param sym: Symbolic name of the 'Converted Settings File Report' label in converted settings report window
        :param visible: boolean status value True or False.
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("convert_settings_window_check_converted_settings_file_report_label_in_converted_Settings_report_is_visible is failed..",
                             " check event symbolic name ={}".format(sym))
            return False
        self.winapp.pass_log("convert_settings_window_check_converted_settings_file_report_label_in_converted_Settings_report_is_visible is passed ..",
                             "sym_name = {}".format(sym))
        return True
    
    def convert_settings_window_check_converted_settings_file_report_label_in_converted_Settings_report_is_enabled(self, sym ,status=True):
        """
        Check label of 'Converted Settings File Report' in converted settings report window is enabled.
        :param sym: Symbolic name of the 'Converted Settings File Report' label in converted settings report window
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("convert_settings_window_check_converted_settings_file_report_label_in_converted_Settings_report_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
            return False
        self.winapp.pass_log("cconvert_settings_window_check_converted_settings_file_report_label_in_converted_Settings_report_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def convert_settings_window_check_converted_settings_file_report_label_in_converted_settings_report_text(self, sym , message):
        """
        Check text of 'Converted Settings File Report' label in converted settings report window.
        :param sym: Symbolic name of the 'Converted Settings File Report' label in converted settings report window
        :param message:testData to compare
        :return: True if succeeds.
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("convert_settings_window_check_converted_settings_file_report_label_in_converted_settings_report_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("convert_settings_window_check_converted_settings_file_report_label_in_converted_settings_report_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def convert_settings_window_verify_list_of_code_number(self, sym_name, code_number_list_in_prj_description_window):
        """
        Verify the list of code numbers in convert settings window.
        :param sym_name :Symbolic name of code number combobox in the convert settings window.
        :param code_number_list_in_prj_description_window : Code number list in project description window
        :return: True if succeeds.
        """
        code_number_list_in_convertSetting = self.winapp.get_list_box_items(sym_name)
        self.winapp.log("convert_settings_window_verify_list_of_code_number comparing lists code_number_list_in_convertSetting ={} testData list = {} ".format(code_number_list_in_convertSetting,
                                                                                                           code_number_list_in_prj_description_window))
        if not common.compare_list(code_number_list_in_convertSetting, code_number_list_in_prj_description_window):
            self.winapp.fail("convert_settings_window_verify_list_of_code_number is failed ...",
                             "code_number_list_in_convertSetting ={} testData list = {}  ".format(code_number_list_in_convertSetting, code_number_list_in_prj_description_window))
            return False
        self.winapp.log("convert_settings_window_verify_list_of_code_number is passed ...",
                        "code_number_list_in_convertSetting ={} testData list = {}  ".format(code_number_list_in_convertSetting, code_number_list_in_prj_description_window))
        return True
    
    def convert_settings_window_verify_list_of_sw_version(self, sym_name, sw_version_list_in_prj_description_window):
        """
        Verify the list of software versions in convert settings window.
        :param sym_name: Symbolic name of Sw version combobox in the convert settings window.
        :param sw_version_list_in_prj_description_window : Software versions list in project description window
        :return: True if succeeds.
        """
        sw_version_list_in_convertSetting = self.winapp.get_list_box_items(sym_name)
        self.winapp.log("convert_settings_window_verify_list_of_sw_version comparing lists sw_version_list_in_convertSetting ={} testData list = {} ".format(sw_version_list_in_convertSetting,
                                                                                                           sw_version_list_in_prj_description_window))
        if not common.compare_list(sw_version_list_in_convertSetting, sw_version_list_in_prj_description_window):
            self.winapp.fail("convert_settings_window_verify_list_of_sw_version is failed ...",
                             "sw_version_list_in_convertSetting ={} testData list = {}  ".format(sw_version_list_in_convertSetting, sw_version_list_in_prj_description_window))
            return False
        self.winapp.log("convert_settings_window_verify_list_of_sw_version is passed ...",
                        "sw_version_list_in_convertSetting ={} testData list = {}  ".format(sw_version_list_in_convertSetting, sw_version_list_in_prj_description_window))
        return True 
    
    

class QuickSettingsWindow:
          
    def __init__(self, *args, **kwargs):
        """
        Initialise QuickSettingsWindow.
        """
        self.winapp = winappApi.WinappLibAPI()
        self.commonfunction = CommonFunction()
     
    def prj_window_check_if_quick_setting_icon_is_visible(self, sym_name, visible=True):
        """
        Check if the quick settings icon in the project window is visible.
        :param sym_name: symbolic name of the quick setting icon
        :param visible: Visiblity status (True/False).
        :return: True if equal to 'visible' value.
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail(" prj_window_check_if_quick_setting_icon_is_visible is failed..",
                             " check event symbolic name ={}".format(sym_name))
            return False
        self.winapp.pass_log("prj_window_check_if_quick_setting_icon_is_visible is passed ..",
                             "sym_name = {}".format(sym_name))
        return True
    
    def prj_window_check_if_quick_setting_icon_is_enabled(self, sym_name,status=True):
        """
        Check if the quick settings icon is enabled/disabled in Project window
        :param sym_name: symbolic name of the quick setting icon
        :param status: boolean status value True or False.
        :return: True if label is enabled value is equal to status else False.
        """
        
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("prj_window_check_if_quick_setting_icon_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym_name, status))

        self.winapp.pass_log("prj_window_check_if_quick_setting_icon_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym_name, status))
        return True

    def prj_window_compare_tooltip_of_quick_setting_icon(self, sym_name, tooltip):
        """
        In Project window  Compare tooltip text of quick settings button
        :param sym_name: symbolic name of the quick setting icon
        :param tooltip: string to check with tooltip
        :return: True if text is Equal else False.
        """
        ui_tooltip = self.winapp.tooltip(sym_name)
        if ui_tooltip != tooltip:
            self.winapp.fail("prj_window_compare_tooltip_of_quick_setting_icon is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
            return False
        self.winapp.log("prj_window_compare_tooltip_of_quick_setting_icon is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym_name, ui_tooltip, tooltip))
        return True
        
    def prj_window_click_quick_settings_button(self, sym_name):
        """
        In project window click quick settings button.
        :param sym_name: symbolic name of the quick setting icon
        :return:True if button is present else False.
        """
        if not self.winapp.ClickButton(sym_name):
            self.winapp.fail("click_quick_settings_button_in_project_window is failed ...",
                             "sym_name = '{}' ".format(sym_name))
            return False
        self.winapp.pass_log("click_quick_settings_button_in_project_window is passed ...",
                             "sym_name = '{}' ".format(sym_name))
        return True
    
    def quick_settings_window_is_visible(self, sym_list, visible=True):
        """
        Verify the "Quick Settings" window labels are visible in Quick Setting window
        :param sym_list: Symbolic list to check window visibility in quick settings window
        :param visible: check visible status(True or False).
        :return:True if succeeds
        """
        for sym in sym_list:
            if self.winapp.visible(sym) != visible:
                self.winapp.fail("quick_settings_window_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym))
                return False
        self.winapp.pass_log("quick_settings_window_is_visible is passed ..",
                             "sym_list = {}".format(sym_list))
        return True
    
    def quick_settings_window_is_enabled(self, sym_list, status=True):
        """
        Verify the "quick settings" window labels are enabled or disabled
        :param sym_list: Symbolic list to check window is enabled or disabled in quick settings window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        for sym_name in sym_list:
            if self.winapp.Enable(sym_name) != status:
                self.winapp.fail("quick_settings_window_is_enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
                return False
        self.winapp.log("quick_settings_window_is_enabled is passed ..",
                        "sym_list = {}".format(sym_list))
        return True
    
     
    def quick_settings_window_check_quick_setup_label_is_visible(self, sym, visible=True):
        """
        Check quick setup label in quick settings window is visible.
        :param sym: Symbolic name of the quick setup label in quick settings window
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("quick_settings_window_check_quick_setup_label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
            return False
        self.winapp.pass_log("quick_settings_window_check_quick_setup_label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def quick_settings_window_check_quick_setup_label_is_enabled(self, sym, status=True):
        
        """
        check the "quick setup" label enabled/disabled in quick settings window
        :param sym: Symbolic name of the quick setup label in quick settings window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("quick_settings_window_check_quick_setup_label_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
            return False
        self.winapp.pass_log("quick_settings_window_check_quick_setup_label_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    
    def quick_settings_window_set_value_in_quick_wizard_listView(self, sym_name_ok_button,sym_name, parameterName, setValue):
        """
        Sets value of provided parameter in quick setting window.
        :param sym_name_ok_button: Symbolic name of OK button in popup window.
        :param parameterName: Parameter Name
        :param sym_name: Symbolic name of quick setting ListView
        :param setValue: Set value 
        
        """
        if not self.winapp.set_value_in_quick_settings(sym_name_ok_button,sym_name, parameterName, setValue):
           
            self.winapp.fail("quick_settings_window_set_value_in_quick_wizard_listView is failed ...","parameter = '{}'".format(parameterName))
            return False
       
        self.winapp.pass_log("quick_settings_window_set_value_in_quick_wizard_listView is passed ...","parameter = '{}'".format(parameterName))
        return True
    
    def quick_settings_window_check_quick_setup_label_text(self,sym, text):
        """
        verify the "Quick setup" label text in Quick Settings window
        :param sym: Symbolic name of the quick setup label in quick settings window
        :param text:testData to compare
        :return:True if success
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("quick_settings_window_check_quick_setup_label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("quick_settings_window_check_quick_setup_label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def quick_settings_window_check_application_mode_selected_label_is_visible(self, sym,visible=True):
        """
        Check application mode selected label in quick settings window is visible.
        :param sym: Symbolic name of the application mode selected label in quick settings window
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("quick_settings_window_check_application_mode_selected_label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
            return False
        self.winapp.pass_log("quick_settings_window_check_application_mode_selected_label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
        
    def quick_settings_window_get_application_mode_selected_label_text(self,sym):
        """
        Get the "application mode selected" label text in Quick Settings window
        :param sym: Symbolic name of the application mode selected label in quick settings window
        :return:String of application mode selected.
        """
        text = self.winapp.get_text(sym)
        if not text:
            self.winapp.fail("quick_settings_window_get_application_mode_selected_label_text is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("quick_settings_window_get_application_mode_selected_label_text is passed ...",
                        "sym = '{}'  ...".format(sym))
        return text
    
    def quick_settings_window_check_application_mode_selected_label_is_enabled(self,sym, status=True):
        """
        Check application mode selected label in quick settings window is enabled.
        :param sym: Symbolic name of the application mode selected label in quick settings window
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("quick_settings_window_check_application_mode_selected_label_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
            return False
        self.winapp.pass_log("quick_settings_window_check_application_mode_selected_label_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def quick_settings_window_check_menuCode_label_is_visible(self,sym, visible=True):
        """
        Check menu code label in quick settings window is visible.
        :param sym: Symbolic name of the menu code label in quick settings window
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("quick_settings_window_check_menuCode_label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
            return False
        self.winapp.pass_log("quick_settings_window_check_menuCode_label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
         
    def quick_settings_window_get_menuCode_label_text(self,sym):
        """
        Get the "menu code" label text in Quick Settings window
        :param sym: Symbolic name of the menu code label in quick settings window
        :return:String of menuCode.
        """
        text = self.winapp.get_text(sym)
        if not text:
            self.winapp.fail("quick_settings_window_get_menuCode_label_text is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("quick_settings_window_get_menuCode_label_text is passed ...",
                        "sym = '{}'  ...".format(sym))
        return text
    
    def quick_settings_window_check_menuCode_label_is_enabled(self,sym, status=True):
        """
        Check menu code label in quick settings window is enabled.
        :param sym: Symbolic name of the menu code label in quick settings window
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("quick_settings_window_check_menuCode_label_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
            return False
        self.winapp.pass_log("quick_settings_window_check_menuCode_label_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def quick_settings_window_check_parameter_description_label_is_visible(self, sym, visible=True):
        """
        Check parameter description label in quick settings window is visible.
        :param sym: Symbolic name of the parameter description in quick settings window.
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("quick_settings_window_check_parameter_description_label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
            return False
        self.winapp.pass_log("quick_settings_window_check_parameter_description_label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
        
    def quick_settings_window_get_parameter_description_label_text(self, sym):
        """
        Get the "parameter description" label text in Quick Settings window
        :param sym: Symbolic name of the parameter description in quick settings window.
        :return:String of parameter description.
        """
        text = self.winapp.get_text(sym)
        if not text:
            self.winapp.fail("quick_settings_window_check_parameter_description_label_text is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("quick_settings_window_check_parameter_description_label_text is passed ...",
                        "sym = '{}'  ...".format(sym))
        return text
        
    def quick_settings_window_check_parameter_description_label_is_enabled(self, sym, status=True):
        """
        Check parameter description label in quick settings window is enabled.
        :param sym: Symbolic name of the parameter description in quick settings window.
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("quick_settings_window_check_parameter_description_label_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
            return False
        self.winapp.pass_log("quick_settings_window_check_parameter_description_label_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
        
    def quick_settings_window_check_parameter_label_is_visible(self, sym,visible=True):
        """
        Check parameter label in quick settings window is visible.
        :param sym: Symbolic name of the parameter label in quick settings window
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("quick_settings_window_check_parameter_label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
            return False
        self.winapp.pass_log("quick_settings_window_check_parameter_label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
        
    def quick_settings_window_get_parameter_label_text(self,sym):
        """
        Get the "parameter" label text in Quick Settings window
        :param sym: Symbolic name of the parameter label in quick settings window
        :return:String of parameter label.
        """
        text = self.winapp.get_text(sym)
        if not text:
            self.winapp.fail("quick_settings_window_get_parameter_label_text is failed ...",
                             "sym = '{}' ".format(sym))
            return False

        self.winapp.log("quick_settings_window_get_parameter_label_text is passed ...",
                        "sym = '{}'  ...".format(sym))
        return text
    
    def quick_settings_window_check_parameter_label_is_enabled(self,sym, status=True):
        """
        Check parameter label in quick settings window is enabled.
        :param sym: Symbolic name of the parameter label in quick settings window
        :param status: boolean status value True or False.
        :return: True if enabled else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("quick_settings_window_check_parameter_label_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
            return False
        self.winapp.pass_log("quick_settings_window_check_parameter_label_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def quick_settings_window_check_controller_variant_label_is_visible(self, sym, visible=True):
        """
        Check controller variant label in quick settings window is visible.
        :param sym: Symbolic name of the controller variant label in quick settings window
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("quick_settings_window_check_controller_variant_label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
            return False
        self.winapp.pass_log("quick_settings_window_check_controller_variant_label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def quick_settings_window_check_controller_variant_label_is_enabled(self, sym, status=True):
        
        """
        check the "controller variant" label enabled/disabled in quick settings window
        :param sym: Symbolic name of the controller variant label in quick settings window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("quick_settings_window_check_controller_variant_label_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
            return False
        self.winapp.pass_log("quick_settings_window_check_controller_variant_label_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def quick_settings_window_check_controller_variant_label_text(self,sym, text):
        """
        verify the "controller variant" label text in Quick Settings window
        :param sym: Symbolic name of the controller variant label in quick settings window
        :param text:testData to compare
        :return:True if succeeds.
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("quick_settings_window_check_controller_variant_label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("quick_settings_window_check_controller_variant_label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def quick_settings_window_check_controller_codeNumber_label_is_visible(self, sym, visible=True):
        """
        Check controller codenumber label in quick settings window is visible.
        :param sym: Symbolic name of the controller codenumber label in quick settings window
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("quick_settings_window_check_controller_codeNumber_label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
            return False
        self.winapp.pass_log("quick_settings_window_check_controller_codeNumber_label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def quick_settings_window_check_controller_codeNumber_label_is_enabled(self, sym, status=True):
        
        """
        check the "controller codenumber" label enabled/disabled in quick settings window
        :param sym: Symbolic name of the controller codenumber label in quick settings window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("quick_settings_window_check_controller_codeNumber_label_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
            return False
        self.winapp.pass_log("quick_settings_window_check_controller_codeNumber_label_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def quick_settings_window_check_controller_codeNumber_label_text(self,sym, text):
        """
        verify the "controller codenumber" label text in Quick Settings window
        :param sym: Symbolic name of the controller codenumber label in quick settings window
        :param text:testData to compare
        :return:True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("quick_settings_window_check_controller_codeNumber_label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("quick_settings_window_check_controller_codeNumber_label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def quick_settings_window_check_controller_SW_Version_label_is_visible(self, sym, visible=True):
        """
        Check SW Version label in quick settings window is visible.
        :param sym: Symbolic name of the SW Version label in quick settings window
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("quick_settings_window_check_controller_SW_Version_label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
            return False
        self.winapp.pass_log("quick_settings_window_check_controller_SW_Version_label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def quick_settings_window_check_controller_SW_Version_label_is_enabled(self, sym, status=True):
        
        """
        check the "SW Version" label enabled/disabled in quick settings window
        :param sym: Symbolic name of the SW Version label in quick settings window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("quick_settings_window_check_controller_SW_Version_label_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
            return False
        self.winapp.pass_log("quick_settings_window_check_controller_SW_Version_label_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def quick_settings_window_check_controller_SW_Version_label_text(self,sym, text):
        """
        verify the "SW Version" label text in Quick Settings window
        :param sym: Symbolic name of the SW Version label in quick settings window
        :param text:testData to compare
        :return:True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("quick_settings_window_check_controller_SW_Version_label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("quick_settings_window_check_controller_SW_Version_label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    
    def quick_settings_window_check_quick_setting_parameters_label_is_visible(self,sym, visible=True):
        """
        Check quick setup label in quick settings window is visible.
        :param sym: Symbolic name of the quick setting parameters label
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("quick_settings_window_check_quick_setup_label_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
            return False
        self.winapp.pass_log("quick_settings_window_check_quick_setup_label_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def quick_settings_window_check_quick_setting_parameters_label_is_enabled(self, sym, status=True):
        
        """
        check the "quick stting parameters" label enabled/disabled in quick settings window
        :param sym: Symbolic name of the "quick stting parameters" label in quick settings window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("quick_settings_window_check_quick_setting_parameters_label_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
            return False
        self.winapp.pass_log("quick_settings_window_check_quick_setting_parameters_label_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def quick_settings_window_check_quick_setting_parameters_label_text(self,sym, text):
        """
        verify the "Quick setting parameters" label text in Quick Settings window
        :param sym: Symbolic name of the quick setting parameters label
        :param text: testData to compare
        :return:True if succeeds
        """
        if not self.winapp.compare_text(sym, text):
            self.winapp.fail("quick_settings_window_check_quick_setting_parameters_label_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
            return False
        self.winapp.log("quick_settings_window_check_quick_setting_parameters_label_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(text, sym))
        return True
    
    def quick_settings_window_X_button_visible(self, sym, visible=True):
        """
        check the "X " button visible in quick settings window
        :param sym: Symbolic name of the X button in quick settings window
        :param visible: check visible status(True or False).
        :return: True if succeeds
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("quick_settings_window_X_button_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
            return False
        self.winapp.pass_log("quick_settings_window_X_button_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def quick_settings_window_X_button_is_enabled(self, sym, status):
        
        """
        check the "X" button enabled/disabled in quick settings window
        :param sym: Symbolic name of the X button in quick settings window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("quick_settings_window_X_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
            return False
        self.winapp.pass_log("quick_settings_window_X_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def quick_settings_window_check_X_button_text(self, sym, message):
        """
        check the "X" button text in quick settings window
        :param sym: Symbolic name of the X button in quick settings window
        :param message:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("quick_settings_window_check_X_button_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("quick_settings_window_check_X_button_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def quick_settings_window_check_X_button_tooltip(self, sym, tooltip):
        """
        Check the X button window tooltip in quick settings window.
        :param sym: Symbolic name of the X button in quick settings window
        :param tooltip: close button tooltip
        :return:True if succeeds
        """
        ui_tooltip = self.winapp.tooltip(sym)
        if ui_tooltip != tooltip:
            self.winapp.fail("quick_settings_window_check_X_button_tooltip is failed ...",
                             "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip))
            return False
        self.winapp.log("quick_settings_window_check_X_button_tooltip is Passed ...",
                        "sym = '{}' Ui tooltip ='{}' tooltip ='{}' ...".format(sym, ui_tooltip, tooltip))
        return True
    
    def quick_settings_window_finish_button_visible(self, sym, visible=True):
        """
        check the "finish" button visible in quick settings window
        :param sym: Symbolic name of the finish button in quick settings window
        :param visible: check visible status(True or False).
        :return: True if succeeds
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("quick_settings_window_finish_button_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
            return False
        self.winapp.pass_log("quick_settings_window_finish_button_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def quick_settings_window_finish_button_is_enabled(self, sym, status=True):
        
        """
        check the "finish" button enabled/disabled in quick settings window
        :param sym: Symbolic name of the finish button in quick settings window
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("quick_settings_window_finish_button_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
            return False
        self.winapp.pass_log("quick_settings_window_finish_button_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def quick_settings_window_check_finish_button_text(self, sym, message):
        """
        check the "finish" button text in quick settings window
        :param sym: Symbolic name of the finish button in quick settings window
        :param message:testData to compare
        :return: True if succeeds
        """
        if not self.winapp.compare_text(sym, message):
            self.winapp.fail("quick_settings_window_check_finish_button_text is failed ",
                             "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
            return False
        self.winapp.log("quick_settings_window_check_finish_button_text is passed ",
                        "while comparing text ='{}' and Symbolic name = '{}'".format(message, sym))
        return True
    
    def quick_settings_window_check_parameter_scrollbar_is_visible(self ,sym, visible=True):
        """
        Check scrollbar for parameters in quick settings window is visible.
        :param sym: Symbolic name of the scrollbar in quick settings window.
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("quick_settings_window_check_parameter_scrollbar_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
            return False
        self.winapp.pass_log("quick_settings_window_check_parameter_scrollbar_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def quick_settings_window_check_parameter_scrollbar_is_enabled(self, sym, status=True):
        """
        Check scrollbar for parameters in quick settings window is enabled or disabled.
        :param sym: Symbolic name of the scrollbar in quick settings window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("quick_settings_window_check_parameter_scrollbar_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
            return False
        self.winapp.pass_log("quick_settings_window_check_parameter_scrollbar_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def quick_settings_window_click_on_parameter_scrollbar(self, sym):
        """
        Click 'scroll bar' for parameters in quick settings window_
        :param sym: Symbolic name of the scrollbar
        :return: True if click is successful else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("quick_settings_window_click_on_parameter_scrollbar failed..",
                             " click event symbolic name ={}".format(sym))
            return False
        self.winapp.log("quick_settings_window_click_on_parameter_scrollbar is passed.", " click event symbolic name ={}".format(sym))
        return True
    
    def quick_settings_window_check_wired_image_scrollbar_is_visible(self ,sym,visible=True):
        """
        Check scrollbar for wired image in quick settings window is visible.
        :param sym: Symbolic name of the wired image scrollbar
        :param visible:check visible status(True or False).
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("quick_settings_window_check_wired_image_scrollbar_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
            return False
        self.winapp.pass_log("quick_settings_window_check_wired_image_scrollbar_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def quick_settings_window_check_wired_image_scrollbar_is_enabled(self,sym, status=True):
        """
        Check scrollbar for wired image  in quick settings window is enabled or disabled.
        :param sym: Symbolic name of the wired image scrollbar
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("quick_settings_window_check_wired_image_scrollbar_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
            return False
        self.winapp.pass_log("quick_settings_window_check_wired_image_scrollbar_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
        
    def quick_settings_window_click_on_wired_image_scrollbar(self,sym):
        """
        Click 'scroll bar'for wired image in quick settings window.
        :param sym: Symbolic name of the wired image scrollbar.
        :return: True if click is successful else False.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("quick_settings_window_click_on_wired_image_scrollbar failed..",
                             " click event symbolic name ={}".format(sym))
            return False
        self.winapp.log("quick_settings_window_click_on_wired_image_scrollbar is passed.", " click event symbolic name ={}".format(sym))
        return True
    
    def quick_settings_window_check_wiring_image_is_visible(self ,sym, visible=True):
        """
        Check wiring image in quick settings window is visible.
        :param sym: Symbolic name of the wiring image in quick settings window.
        :param visible: check visible status(True or False).
        :return: True if visible else False.
        """
        if self.winapp.visible(sym) != visible:
            self.winapp.fail("quick_settings_window_check_wiring_image_is_visible is failed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
            return False
        self.winapp.pass_log("quick_settings_window_check_wiring_image_is_visible is passed ...",
                             "sym = '{}' status= '{}'".format(sym, visible))
        return True
    
    def quick_settings_window_check_wiring_image_is_enabled(self ,sym, status=True):
        """
        Check wiring image in quick settings window is enabled or disabled in quick settings window.
        :param sym: Symbolic name of the wiring image in quick settings window.
        :param status: boolean status value True or False.
        :return: True if button is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym) != status:
            self.winapp.fail("quick_settings_window_check_wiring_image_is_enabled is failed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
            return False
        self.winapp.pass_log("quick_settings_window_check_wiring_image_is_enabled is passed ...",
                             "sym = '{}' status= '{}'".format(sym, status))
        return True
    
    def quick_settings_window_validate_controller_wiring_diagram(self, sym_wiring_diagram, wiring_diagram):
        """
        Check wiring diagram in quick settings window.
        :param sym_wiring_diagram: symbolic name of wiring image in quick settings window.
        :param wiring_diagram: path of wiring diagram.
        :return: True if image is equal else False.
        """
        if not self.commonfunction.get_image_by_sym_and_compare_images(sym_wiring_diagram, wiring_diagram):
            self.winapp.fail("quick_settings_window_validate_controller_wiring_diagram is failed",
                             "get_image_by_sym_and_compare_images for symbolic name ={} wiring_diagram={}".format(
                                 sym_wiring_diagram, wiring_diagram))
            return False
        self.winapp.pass_log("quick_settings_window_validate_controller_wiring_diagram is passed",
                             "get_image_by_sym_and_compare_images for symbolic name ={} wiring_diagram={}".format(
                                 sym_wiring_diagram, wiring_diagram))
        return True
    
    def quick_settings_window_get_parameter_details(self, sym,sym_ok_button, menucode_sym_name, param_sym_name,help_sym_name):
        """
        Get the parameter details from the quick settings window.
        :param sym: Symbolic name of the parameter listview.
        :param sym_ok_button: Symbolic name of the Ok button in popup window.
        :param help_sym_name: Symbolic name of the help description.
        :param menucode_sym_name: Symbolic name of the menu code.
        :param param_sym_name: Symbolic name of the parameter name.
        :return: list of dictionaries for parameter with its details.
        """
        parameters = self.winapp.getParameterDetails_from_quickSettingListView(sym,sym_ok_button,menucode_sym_name, param_sym_name,help_sym_name)
        if not parameters:
            self.winapp.fail("quick_settings_window_get_parameter_details is failed ...",
                             "parameter = '{}'".format(parameters))
            return False
        self.winapp.pass_log("quick_settings_window_get_parameter_details is passed ...",
                             "parameter = '{}'".format(parameters))
        return parameters
    
    def quick_settings_window_click_finish_button(self, sym):
        """
        Click the FINISH button in quick settings window.
        :param sym: Symbolic name of finish button in quick settings window.
        :return: True if succeeds.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("quick_settings_window_click_finish_button is failed..",
                             " click event symbolic name ={}".format(sym))
            return False
        self.winapp.pass_log("quick_settings_window_click_finish_button is passed.",
                             " click event symbolic name ={}".format(sym))
        return True  
    
    def quick_settings_window_click_X_button(self, sym):
        """
        Click the X button in quick settings window.
        :param sym: Symbolic name of X button in quick settings window.
        :return: True if succeeds.
        """
        if not self.winapp.ClickButton(sym):
            self.winapp.fail("quick_settings_window_click_X_button is failed..",
                             " click event symbolic name ={}".format(sym))
            return False
        self.winapp.pass_log("quick_settings_window_click_X_button is passed.",
                             " click event symbolic name ={}".format(sym))
        return True  

class FirmwareUpgrade:
    """
    """

    def __init__(self):
        """
        Initialise firmware update window.
        """
        self.winapp = winappApi.WinappLibAPI()
    
    def firmware_upgrade_get_progress_label_text(self, sym_name):
        """
        Get the progress label text from the firmware upgrade window.
        :param sym_name: Symbolic name of "progress" label in firmware upgrade window.
        :return: String of progress label text.
        """
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("firmware_upgrade_get_progress_label_text is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("firmware_upgrade_get_progress_label_text is passed ...",
                        "sym = '{}'  ...".format(sym_name))
        return text
    
    def firmware_upgrade_check_progress_bar_is_visible(self, sym_name, visible=True):
        """
        verify the "progress bar" is visible in firware upgrade window.
        :param sym_name: Symbolic name of "progress bar" in firware upgrade window.
        :param visible: check visible status(True or False).
        :return:True if visible else False.
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("firmware_upgrade_check_progress_bar_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("firmware_upgrade_check_progress_bar_is_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def firmware_upgrade_check_progress_bar_is_enabled(self, sym_name, status=True):
        """
        verify the "progress bar" is enabled or disabled in firmware upgrade window.
        :param sym_name: Symbolic name of "progress bar" in firmware upgrade window.
        :param status: boolean status value True or False.
        :return: True if progress bar is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("firmware_upgrade_check_progress_bar_is_enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("firmware_upgrade_check_progress_bar_is_enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def firmware_upgrade_check_firmware_update_failed_progress_bar_is_visible(self, sym_name, visible=True):
        """
        verify the firmware update failed "progress bar" is visible in firmware upgrade window.
        :param sym_name: Symbolic name of the firmware update failed "progress bar" in firmware upgrade window.
        :param visible: check visible status(True or False).
        :return:True if visible else False.
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("firmware_upgrade_check_firmware_update_failed_progress_bar_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("firmware_upgrade_check_firmware_update_failed_progress_bar_is_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def firmware_upgrade_check_firmware_update_failed_progress_bar_is_enabled(self, sym_name,status=True):
        """
        verify the firmware update failed "progress bar" is enabled or disabled in firmware upgrade window.
        :param sym_name: Symbolic name of the firmware update failed "progress bar" in firmware upgrade window.
        :param status: boolean status value True or False.
        :return: True if progress bar is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("firmware_upgrade_check_firmware_update_failed_progress_bar_is_enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("firmware_upgrade_check_firmware_update_failed_progress_bar_is_enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def firmware_upgrade_get_color_of_firmware_update_failed_progress_bar(self, sym_name):
        """
        Get color from firmware update failed "progress bar" in firmware upgrade window.
        :param sym_name: Symbolic name of the firmware update failed "progress bar" in firmware upgrade window.
        :return: list of rgb colors of firmware update failed "progress bar".
        """
        color = self.winapp.get_color(sym_name)
        if not color:
            self.winapp.fail("firmware_upgrade_get_color_of_firmware_update_failed_progress_bar is failed ...",
                             "sym = '{}', color={} ".format(sym_name,color))
            return False

        self.winapp.log("firmware_upgrade_get_color_of_firmware_update_failed_progress_bar is passed ...", "sym = '{}',color={}  ...".format(sym_name,color))
        return color
    
    def firmware_upgrade_check_progress_percentage_is_visible(self, sym_name, visible=True):
        """
        verify the "progress percentage" is visible in firware upgrade window.
        :param sym_name: Symbolic name of "progress percentage" label in firware upgrade window.
        :param visible: check visible status(True or False).
        :return:True if visible else False.
        """
        if self.winapp.visible(sym_name) != visible:
            self.winapp.fail("firmware_upgrade_check_progress_percentage_is_visible is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("firmware_upgrade_check_progress_percentage_is_visible is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def firmware_upgrade_check_progress_percentage_is_enabled(self, sym_name, status=True):
        """
        verify the "progress percentage" is enabled or disabled in firmware upgrade window.
        :param sym_name: Symbolic name of "progress percentage" label in firmware upgrade window.
        :param status: boolean status value True or False.
        :return: True if label is enabled value is equal to status else False.
        """
        if self.winapp.Enable(sym_name) != status:
            self.winapp.fail("firmware_upgrade_check_progress_percentage_is_enabled is failed ..",
                                 "couldn't able to found symbolic name = {}".format(sym_name))
            return False
        self.winapp.log("firmware_upgrade_check_progress_percentage_is_enabled is passed ..",
                        "sym_name = {}".format(sym_name))
        return True
    
    def firmware_upgrade_get_progress_percentage_text(self, sym_name):
        """
        Get the "progress percentage" text in firmware upgrade window.
        :param sym_name: Symbolic name of "progress percentage" label in firmware upgrade window.
        :return: String of Progress percentage text.
        """
        text = self.winapp.get_text(sym_name)
        if not text:
            self.winapp.fail("firmware_upgrade_get_progress_percentage_text is failed ...",
                             "sym = '{}' ".format(sym_name))
            return False

        self.winapp.log("firmware_upgrade_get_progress_percentage_text is passed ...",
                        "sym = '{}'  ...".format(sym_name))
        return text
    
    def firmware_upgrade_check_progress_percentage_text(self, sym_name,text):
        """
        verify the "progress percentage" text in firmware upgrade window.
        :param sym_name: Symbolic name of "progress percentage"  label in firmware upgrade window.
        :param text: testData to compare.
        :return: True if succeeds.
        """
        if not self.winapp.compare_text(sym_name, text):
            self.winapp.fail("firmware_upgrade_check_progress_percentage_text is failed ...",
                             "sym ='{}', text='{}'".format(sym_name, text))
            return False
        self.winapp.pass_log("firmware_upgrade_check_progress_percentage_text is passed ...")
        return True
    
    def firmware_upgrade_verify_color_of_firmware_updated_failed_progress_bar(self,sym_name,color_to_compare):
        """
        Verify the color of firmware updated failed progress bar in firmware upgrade window.
        :param sym_name: Symbolic name of the firmware upgrade failed progress bar.
        :param color_to_compare: Color to compare.
        :return: True if succeeds.
        """
        color_ui = self.winapp.get_color(sym_name)
        if not common.compare_list(color_ui, color_to_compare):
            self.winapp.fail("firmware_upgrade_verify_color_of_firmware_updated_failed_progress_bar is failed...")
            return False
        self.winapp.pass_log("firmware_upgrade_verify_color_of_firmware_updated_failed_progress_bar is passed...")
        return True

