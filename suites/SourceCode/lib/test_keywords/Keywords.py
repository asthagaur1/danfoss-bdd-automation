import json
import random
import time
import KoolProg_verify
import common
import databaseConfig
import inputConfig
import AKCC55_Config
from navigation import Navigation
from testInput import InputExcelData, Database, ProjectxmlPraser
from SerialApp import SerialApp
from itertools import zip_longest 
import os
from datetime import datetime
from Constants import InputSheet,ReportLog,ControllerSpecific,Simulator, Installation
from CDFParser import CDFContentParser
from AKCC55 import AKCC55
from createObject import CreateObject
import re
from upgrade_koolprog import installation

class Keywords(Navigation, InputExcelData, Database, ProjectxmlPraser, SerialApp):
    """
    """

    def __init__(self, sym_names, excelsheet_path):
        """
        """
        Navigation.__init__(self, sym_names)
        InputExcelData.__init__(self, excelsheet_path)
        Database.__init__(self)
        SerialApp.__init__(self, True)
        ProjectxmlPraser.__init__(self)

    def Keyword_check_product_image_description_wirediagram_in_controller_selection_window(self, variant, family):
        """
        """
        prod_image = self.get_product_image_path(variant)
        wiring_diagram = self.get_wire_image_path(variant)
        product_details = self.get_product_details_path(variant)

        product_details = common.xml_get_text_from_tag(product_details, "Verification")
        self.new_prj_validate_prodImage_wiringDiagram(prod_image, wiring_diagram, product_details)

    def keyword_check_product_image_description_wirediagram_in_app_selection_window(self, variant, app):

        prod_image = self.get_product_image_path(variant, app)
        wiring_diagram = self.get_wire_image_path(variant, app)
        product_details = self.get_product_details_path(variant, app)

        product_details = common.xml_get_text_from_tag(product_details, "Verification")
        self.new_prj_validate_prodImage_wiringDiagram(prod_image, wiring_diagram, product_details)

    def keyword_get_user_data_from_command(self):
        """
        """
        try:
            return common.get_envir_var_value(inputConfig.envi_variable_name)
        except:
            return None

    def keyword_get_user_data_as_variable(self):
        """
        """
        json_str = self.keyword_get_user_data_from_command()
        self.report_log("json_str ={}".format(json_str))
        if json_str is None:
            return json_str
        json_str = json_str.replace('"', '')
        return json.loads(json_str)

    def keyword_check_and_open_new_project_window(self):
        """
        """
        self.report_log("Opening koolprog application")
        self.check_main_window_visible()
        self.click_set_parameter_button()
        self.set_param_window_is_visible()
        self.set_param_window_click_new_button()

    def keyword_set_product_details(self, controller_details):
        """ 
        Select the values in controller details selection window which is selected YES in input sheet
        :param controller_details : it is dict which has keys:
        ["controllerFamily","controllerVariant","controllerCodeNo","softwareVersion",
                                    "controllerPV","controllerApplication", "PortNumber"]
        eg: I need to select the controller which have below information - 
            controllerfamily - ETC1Hx
            controllerVariant - ETC1H3
            controllerCodeNo - 077F0000
            controllerApplication -DFNOFROST100
        """
        self.report_log("keyword_set_product_details -> controller_details = {}".format(controller_details))
        details = dict()
        controllerfamily = controller_details['controllerFamily']

        for k in inputConfig.product_details_selection_keys:
            if k in controller_details.keys():
                details[k] = controller_details[k]

        product_details_dict = inputConfig.product_details_selection_types
        product_details_order = inputConfig.product_details_selection_keys

        if controllerfamily in KoolProg_verify.controller_family_extra_prj_details:
            project_details = KoolProg_verify.default_product_details_info[controllerfamily]
            project_details.update(details)
            self.create_new_project_set_product_details_from_dict(project_details, controllerfamily,
                                                                  product_details_dict, product_details_order)
        else:
            self.create_new_project_set_product_details_from_dict(details, controllerfamily, product_details_dict,
                                                                  product_details_order)

    def keyword_check_defaults_for_controller(self, variant):
        """
        """
        family = self.get_controllerFamily_from_controllerVariant(variant)
        _list = KoolProg_verify.default_product_details_info[family].keys()
        self.report_log("keyword_check_defaults_for_controller list to get product details = {}".format(_list))
        details = self.create_new_project_get_product_details_from_key(_list)
        self.report_log("keyword_check_defaults_for_controller details= {}".format(details))
        # check default values #
        for k, v in KoolProg_verify.default_product_details_info[family].items():
            if not details[k] in v:
                self.report_fail("""keyword_check_defaults_for_controller is failed for 
                key = {} and values are not equal ui={} and expected={}...""".format(k, details[k], v))

    def keyword_test_navigation(self):
        """
        """
        self.nav_goto_newproject_controller_selection_window_from_home_screen()

    def keyword_check_prodImage_wiringDiagram_in_new_project_controlller_selection_window(self, var):
        """
        """
        prod_image = self.get_product_image_path(var)
        wiring_diagram = self.get_wire_image_path(var)
        product_details = self.get_product_details_path(var)
        product_details = common.xml_get_text_from_tag(product_details, "Verification")
        self.new_prj_validate_prodImage_wiringDiagram(prod_image,
                                                      wiring_diagram, product_details)

    def keyword_check_prodImage_wiringDiagram_in_new_project_product_detail_window(self, fam, var):
        """
        """
        keys = KoolProg_verify.default_product_details_info[fam].keys()
        app = None
        if var in keys:
            prod_details = KoolProg_verify.default_product_details_info[fam][var]
            keys = prod_details.keys()
            if "controllerApplication" in keys:
                app = prod_details["controllerApplication"]
        else:
            if "controllerApplication" in keys:
                app = KoolProg_verify.default_product_details_info[fam]["controllerApplication"]

        prod_image = self.get_product_image_path(var, app)
        wiring_diagram = self.get_wire_image_path(var, app)
        product_details = self.get_product_details_path(var, app)
        product_details = common.xml_get_text_from_tag(product_details, "Verification")
        self.new_prj_validate_prodImage_wiringDiagram(prod_image,
                                                      wiring_diagram, product_details)

    def keyword_validate_newproject_window_respective_controllers(self):
        """
        Get dictionary of controller family with variants, loop through controller family and variant
        and check Next Button Is Visible, Controller Name Label, Controller Image, Circuit And Description
        In New Project Window

        """
        self.new_prj_window_next_button_is_not_visible()
        controller_details = self.get_controller_family_variant_dict()
        for fam, varient in controller_details.items():
            for var in varient:
                self.select_controller_in_new_project_window(fam, var)
                self.compare_titile_text_in_new_project_window(var)
                self.new_prj_window_next_button_is_visible()
                self.keyword_check_prodImage_wiringDiagram_in_new_project_controlller_selection_window(var)
                # new project window controller selection
                self.new_prj_window_click_next_button()
                self.keyword_check_prodImage_wiringDiagram_in_new_project_product_detail_window(fam, var)
                self.new_prj_window_click_back_button()
        self.new_prj_window_click_close_button()

    def keyword_create_prj_with_a_random_controller(self, skip_family=None , run_only=None):
        """
        Get a random controller from automation input excel sheet and create a project.
        :param skip_family: Skip this family while trying to create a project.
        :param run_only: Create a project with family mentioned as input in "run_only" parameter.
        :return : dictionary of controller family and variant randomly selected.
         {"controllerFamily" : fam, "controllerVariant" : var}
        """
        try :
            indx = os.environ.get(inputConfig.envi_variable_name)
            details = self.get_controller_details_from_index(int(indx))
            controller_details = self.get_controller_family_variant_dict()
            if indx != None:
                if skip_family != None and details["controllerFamily"] in skip_family:
                    details = self.get_controller_details_from_index(int(indx))
                    if details["controllerFamily"] in skip_family:
                        fam = random.choice(list(controller_details.keys()))
                        while True:
                            fam = random.choice(list(controller_details.keys()))
                            if fam not in skip_family:
                                break
                        variant_list = controller_details[fam]
                        var = random.choice(variant_list) 
                        indx_List = self.get_indices_of_given_controller_variant(var)
                        indx = random.choice(indx_List)
                        userData = self.keyword_create_new_project_given_index(int(indx))        
                
                elif details["controllerFamily"] == run_only:
                    details = self.get_controller_details_from_index(int(indx))
                    if details["controllerFamily"] in run_only:
                        userData = self.keyword_create_new_project_given_index(int(indx))
                        return userData
                    else:
                        fam = random.choice(list(controller_details.keys()))
                        while True:
                            fam = random.choice(list(controller_details.keys()))
                            if fam in run_only:
                                break
                        variant_list = controller_details[fam]
                        var = random.choice(variant_list) 
                        indx_List = self.get_indices_of_given_controller_variant(var)
                        indx = random.choice(indx_List)
                        userData = self.keyword_create_new_project_given_index(int(indx))
                else:
                    userData = self.keyword_create_new_project_given_index(int(indx))                    
                    
                
        except Exception:
            if run_only == None:        
                controller_details = self.get_controller_family_variant_dict()
                fam = random.choice(list(controller_details.keys()))
                index_available = False      
                tracked_controllerFamily = []
                tracked_variant = []
                
                if skip_family != None:
                        for sk_family in skip_family:
                            if sk_family in list(controller_details.keys()):
                                if sk_family not in tracked_controllerFamily:
                                    tracked_controllerFamily.append(sk_family)
                                    continue
                
                while len(tracked_controllerFamily) != len(list(controller_details.keys())): 
                    fam = random.choice(list(controller_details.keys()))
                    
                    if fam not in tracked_controllerFamily:
                        tracked_controllerFamily.append(fam)
                    else:
                        continue
                    variant_list = controller_details[fam]
                    tracked_variant = []
                    while len(variant_list) != len(tracked_variant):
                        var = random.choice(variant_list)
                        if var not in tracked_variant:
                            tracked_variant.append(var)
                        
                        selected_variant_indices = self.get_indices_of_given_controller_variant(var)
                        
                        for anIndex in selected_variant_indices:
                            details = self.get_controller_details_from_index(anIndex)
                            if details["Isdefault"] == "Yes":
                                index_available = True
                                indx = anIndex
                                break
                        if index_available == True:
                            break
                    if index_available == True:                    
                        userData = self.keyword_create_new_project_given_index(indx)
                        break
            else:
                controller_details = self.get_controller_family_variant_dict()
                if run_only in (list(controller_details.keys())):
                    index_available  = False
                    tracked_controllerFamily=[]
                    tracked_controllerFamily.append(run_only)
                    variant_list = controller_details[run_only]
                    tracked_variant = []
                    while len(variant_list) != len(tracked_variant):
                        var = random.choice(variant_list)
                        if var not in tracked_variant:
                            tracked_variant.append(var)
                        else:
                            continue
                        
                        selected_variant_indices = self.get_indices_of_given_controller_variant(var)
                        
                        for anIndex in selected_variant_indices:
                            details = self.get_controller_details_from_index(anIndex)
                            if details["Isdefault"] == "Yes":
                                index_available = True
                                indx = anIndex
                                break
                        if index_available == True:
                            userData = self.keyword_create_new_project_given_index(indx)
                            break
                        
            self.report_log("Tracked family ={}".format(tracked_controllerFamily))
            self.report_log("Tracked variant ={}".format(tracked_variant))
        
        if indx != None:
            self.report_log("Valid controller details are provided with index ={}".format(indx))
        else:
            self.report_fail("Invalid controller details is provided for creating a project with index ={}".format(indx))
        self.report_log("envi_variable_name ={}".format(indx))
        self.report_log("envi_variable_name ={}".format(indx))
        self.report_log("context.userData={}".format(userData))
        self.report_log("Controller details ={}".format(userData))
        return userData

    def keyword_select_a_random_controller(self, skip_family=None):
        """
        Get a random controller from automation input excel sheet.
        :return : dictionary of controller family and variant randomly selected.
         {"controllerFamily" : fam, "controllerVariant" : var}
        """
        
        
        indx = None
        try:
            indx = common.get_envir_var_value(inputConfig.envi_variable_name)
            indx = json.loads(indx)
            indx = indx.pop()
        except Exception:  
            indx = None          
            controller_details = self.get_controller_family_variant_dict()
            fam = random.choice(list(controller_details.keys()))
            index_available = False
            while skip_family:
                if skip_family != fam:
                    break      
            
            tracked_controllerFamily = []
            while len(tracked_controllerFamily) != len(list(controller_details.keys())): 
                fam = random.choice(list(controller_details.keys()))
                if fam not in tracked_controllerFamily:
                    tracked_controllerFamily.append(fam)
                variant_list = controller_details[fam]
                tracked_variant = []
                while len(variant_list) != len(tracked_variant):
                    var = random.choice(variant_list)
                    if var not in tracked_variant:
                        tracked_variant.append(var)
                    
                    selected_variant_indices = self.get_indices_of_given_controller_variant(var)
                    
                    for anIndex in selected_variant_indices:
                        details = self.get_controller_details_from_index(anIndex)
                        if details["Isdefault"] == "Yes":
                            index_available = True
                            indx = anIndex
                            break
                    if index_available == True:
                        break
                if index_available == True:
                        break
        
            self.report_log("Tracked family ={}".format(tracked_controllerFamily))
            self.report_log("Tracked variant ={}".format(tracked_variant))
        if indx != None:
            self.report_log("Valid controller details are provided with index ={}".format(indx))
        else:
            self.report_fail("Invalid controller details is provided for creating a project with index ={}".format(indx))
        self.report_log("envi_variable_name ={}".format(indx))
        userData = self.get_controller_details_from_index(indx)
        self.select_controller_in_new_project_window(userData["controllerFamily"], userData["controllerVariant"])
        self.report_log("context.userData={}".format(userData))
        self.report_log("Controller details ={}".format(userData))
        return userData

    def keyword_verify_popup_msg_in_window(self, message, window):
        """
        'Verify, popup message
        :param message: popup message
        :param window: window name
        """
        self.popup_messagebox_window_is_visible(window)
        self.popup_messagebox_window_check_message_text(message,window)
    
    def keyword_check_popup_window_x_and_ok_button_visible_and_enabled(self,dialog):
        """
        Verify cancel and Ok button in popup window is visible and enabled.
        :param dialog: name of window dialog
        """
        
        self.popup_messagebox_window_OK_button_visible(dialog)
        self.popup_messagebox_window_OK_button_Enabled(dialog)
        self.popup_messagebox_window_X_button_visible(dialog)
        self.popup_messagebox_window_X_button_Enabled(dialog)
        
################ 'Do you want to save the Changes made? ' Popup ##################

    def keyword_check_popup_window_yes_no_and_cancel_button_visible(self,dialog):
        """
        Verify yes , no and cancel button is visible in popup window
        :param dialog: name of window dialog
        """
        
        self.popup_messagebox_window_YES_button_visible(dialog) 
        self.popup_messagebox_window_NO_button_visible(dialog)
        self.popup_messagebox_window_CANCEL_button_visible(dialog)
        
    def keyword_check_popup_window_yes_no_and_cancel_button_enable(self,dialog):
        """
        Verify yes , no and cancel button is enable in popup window
        :param dialog: name of window dialog
        """
        
        self.popup_messagebox_window_YES_button_Enabled(dialog)
        self.popup_messagebox_window_NO_button_Enabled(dialog)
        self.popup_messagebox_window_CANCEL_button_Enabled(dialog)

    def keyword_check_popup_window_yes_no_and_cancel_button_text(self,dialog):
        """
        Verify text of yes , no and cancel button in popup window
        :param dialog: name of window dialog
        """
        
        self.popup_messagebox_window_check_YES_button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["yes_button"], dialog)
        self.popup_messagebox_window_check_NO_button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["no_button"], dialog)
        self.popup_messagebox_window_check_CANCEL_button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["cancel_button"], dialog)
        
################ 'Do you want to save the Changes made? ' Popup ##################

    def keyword_check_back_and_cancel_button_text(self):
        """
        Verify text of back and cancel button in project description window
        """
        self.new_prj_window_check_text_of_back_button(KoolProg_verify.window_property["home"]["set_parameter_win"][
                    "NewProject_Product_Details_Selection_Window"]["label"]["back_button_label_value"])
        self.new_prj_window_check_text_of_cancel_button(KoolProg_verify.window_property["home"]["set_parameter_win"][
                    "NewProject_Product_Details_Selection_Window"]["label"]["cancel_button_label_value"])

    def keyword_Verify_BACK_FINISH_CANCEL_and_Next_button_will_enable_based_on_the_selected_controller(self):
        """
        Get dictionary of controller Family and their corresponding buttons and validate if the respective
        buttons are visible for  the respective controllers.

        """

        controller_details = self.get_controller_family_variant_dict()
        for fam, varient in controller_details.items():
            for var in varient:
                self.select_controller_in_new_project_window(fam, var)
                self.report_log("currently checking controller variant ={}".format(var))
                self.new_prj_window_click_next_button()
                buttons_required_for_all_controllers = KoolProg_verify.window_property["home"]["set_parameter_win"][
                    "NewProject_Product_Details_Selection_Window"]["next_cancel_finish_back_buttons"]
                self.keyword_validate_the_buttons(buttons_required_for_all_controllers[fam])
                self.new_prj_window_click_back_button()

    def keyword_validate_the_buttons(self, buttons_required_list):

        """
        Get the list of buttons to validate the text and visible property of each button.

        """

        for button in buttons_required_list:
            if button == "next":
                self.new_prj_window_finish_button_is_visible()
                self.new_prj_product_description_window_check_text_of_next_button(
                    KoolProg_verify.window_property["home"]["set_parameter_win"][
                        "NewProject_Product_Details_Selection_Window"]["label"]["next_button_label_value"])
            if button == "finish":
                self.new_prj_window_finish_button_is_visible()
                self.new_prj_window_check_text_of_finish_button(
                    KoolProg_verify.window_property["home"]["set_parameter_win"][
                        "NewProject_Product_Details_Selection_Window"]["label"]["finish_button_label_value"])
            if button == "cancel":
                self.new_prj_window_cancel_button_is_visible()
                self.new_prj_window_check_text_of_cancel_button(
                    KoolProg_verify.window_property["home"]["set_parameter_win"][
                        "NewProject_Product_Details_Selection_Window"]["label"]["cancel_button_label_value"])
            if button == "back":
                self.new_prj_window_back_button_is_visible()
                self.new_prj_window_check_text_of_back_button(
                    KoolProg_verify.window_property["home"]["set_parameter_win"][
                        "NewProject_Product_Details_Selection_Window"]["label"]["back_button_label_value"])

    def keyword_check_new_project_window_elements(self):

        """
        Validate the new project header text and select controller model label text in new project
        controller selection window.

        """

        self.new_project_window_check_header_text(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Controller_Selection_Window"][
                "label"]["header_value"])
        self.new_project_window_check_select_controller_model_label_text(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Controller_Selection_Window"][
                "label"]["select_controller_model_label_text"])

    def keyword_open_koolprog_select_a_random_controller(self):
        """
        Step : Koolprog is opened
        Step : setparameter button is clicked
        Step : New button in setparameter is clicked
        Step : A random controller is selected.
        Step : Controller detail selection window is visible.
        
        """
        self.nav_goto_newproject_controller_selection_window_from_home_screen()
        self.new_project_window_is_visible()
        self.keyword_select_a_random_controller()
        self.new_prj_window_click_next_button()
        
        
########################## Home Window ####################

    def keyword_verify_home_window_is_visible_and_enabled(self):
        """
        Verify home window is visible and enabled
        """
        self.check_main_window_visible()
        self.Home_window_is_Enable()

    def keyword_home_window_check_all_button_text(self):
        """
        Verify text of set parameter, copy to controller and on-line service button
        """
        self.Home_window_check_Setparameter_button_text(KoolProg_verify.window_property["home"]["label"]["set_parameter"])
        self.Home_window_check_copytocontroller_button_text(KoolProg_verify.window_property["home"]["label"]["copy_to_controller"])
        self.Home_window_check_onlineservice_button_text(KoolProg_verify.window_property["home"]["label"]["on_line_service"])
  
    def keyword_prj_window_check_danfoss_website_link_text(self):
        """
        Verify, text of danfoss website
        """
        self.check_danfoss_website_link_text(KoolProg_verify.window_property["home"]["label"]["koolprog_website"])
    
    def keyword_get_koolprog_version(self):
        """
        Get the koolprog version.
        :return: dict of koolprog version.
        """
        koolprog_version = self.get_koolprog_version()
        return {"koolprog_version": koolprog_version}
    
    def parse_koolprogVersion(self,version):
        """
        Parse the KoolProg version.
        :param version: version
        :return: Parsed version
        """
        s = re.findall(r"(?<![a-zA-Z:])[-+]?\d*\.?\d+", version)
        version = ''.join(map(str, s))
        return version
    
    def keyword_verify_koolprog_updated_to_latestVersion(self,details):
        """
        Verify the KoolProg is updated to latest version.
        :param details:Project details.
        """
        version_updated = False
        prev_koolprog_version = details["previous_koolprog_version"]
        new_koolprog_version = details["koolprog_version"]
        version1 = self.parse_koolprogVersion(prev_koolprog_version)
        version2 = self.parse_koolprogVersion(new_koolprog_version)
        version1_lst = version1.split(".")  
        version2_lst = version2.split(".")  
        n = len(version1_lst) 
        m = len(version2_lst) 
        version1_lst = [int(i) for i in version1_lst] 
        version2_lst = [int(i) for i in version2_lst] 
        if n>m:
            for i in range(m, n):
                version2_lst.append(0) 
        elif m>n:
            for i in range(n, m):
                version1_lst.append(0) 
 
        for i in range(len(version1_lst)):
            if version2_lst[i]>version1_lst[i]:
                version_updated = True
                break
            elif version1_lst[i]>version2_lst[i]:
                version_updated = False
        if version_updated:
            self.report_pass("keyword_verify_koolprog_updated_to_latestVersion is passed...")
        else:
            self.report_fail("keyword_verify_koolprog_updated_to_latestVersion is failed...")
    
########################## Home Window ####################


#################### Project Description Window #################################

    def keyword_check_new_project_details_window_label_are_visible(self):
        """
        Verification of visibility of Give your project filename and description, project name, project description in project description window
        """
        self.new_prj_window_check_project_description_label_is_visible()
        self.new_prj_window_check_project_name_label_is_visible()
        self.new_prj_window_check_project_description_Max_250_characters_Label_is_visible()
        
    def keyword_check_project_name_and_description_labels(self):
        """
        Check project name and description labels.
        """
        self.report_log("keyword_check_project_name_and_description_label")
        self.new_prj_window_check_text_of_project_name_and_description_title(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Product_Details_Selection_Window"][
                "label"]["project_name_description_label"])
        self.new_prj_window_check_text_of_project_name_label(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Product_Details_Selection_Window"][
                "label"]["project_name_label"])
        self.new_prj_window_check_text_of_project_description_label(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Product_Details_Selection_Window"][
                "label"]["project_description_label"])

    def keyword_check_project_name_and_project_description_textbox_are_visible(self):
        """
        Verification of visibility of text box for project name and project description in project description window
        """
        self.new_prj_window_check_project_name_textbox_is_visible()
        self.new_prj_window_check_project_description_textbox_is_visible()
        
    def keyword_project_description_window_set_dot_as_project_name(self):
        """
        Verify, set dot as project name
        """
        self.create_new_project_set_text_in_project_name_txt_box(inputConfig.dot_as_project_name)
    
    def keyword_project_description_window_set_project_name_with_space(self):
        """
        Verify, set project name with space
        """
        self.create_new_project_set_text_in_project_name_txt_box(inputConfig.project_file_name)
        return{"project_name" : inputConfig.project_file_name}
        
        
#################### Project Description Window #################################
    
    def keyword_set_random_project_name_for_given_length(self, len=None):
        """
        Set a random project name for specified length.
        :param len: Length of project name.
        :return: None
        """
        project_name = common.randString(len)
        self.create_new_project_set_text_in_project_name_txt_box(project_name)

    def keyword_project_name_length_validation(self, length):
        """
        Check the project name should not exceed more than 20 characters.
        """
        self.report_log("Check the project name should not exceed more than length characters.")
        self.create_new_project_win_check_project_name_length(length)

    def keyword_check_new_project_window_controllerFamily_List(self):
        """
        Check the controller Family list in new project window.
        """
        
        self.new_project_window_chk_controllerFamily_List(self.get_controller_family_list())

    def keyword_check_new_project_window_controllerVariant_List(self):

        """
        Check the controller variant list for all the controller Family in new project window.
        """
        self.new_project_window_chk_controllerVariant_List(self.get_controller_family_variant_dict())


    def keyword_Enter_special_characters_in_the_Project_Name_field_and_click_Ok_button_in_the_popup_message_Window(
            self):
        """
        Enter the special characters in the project name field and click Ok button in popup message window.
        """
        _char = random.choice(list(KoolProg_verify.special_characters))
        self.create_new_project_set_text_in_project_name_txt_box(_char)
        self.popup_messagebox_window_is_visible()
        self.popup_messagebox_window_click_ok_button()
        self.popup_messagebox_window_is_visible(False)

    def keyword_enter_project_name_and_project_description_and_verify_the_content_displayed_for_various_controller_selection(
            self):
        """
        Enter project name,project description and for various controller selection, Verify, project name and project description display the same content entered.

        """
        project_name = common.randString(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Product_Details_Selection_Window"][
                "text_length"]["project_name_length"])
        project_description = common.randString(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Product_Details_Selection_Window"][
                "text_length"]["project_description_length"])
        project_description = project_description.replace("\n", "")
        project_description = project_description.replace("\r", "")
        self.create_new_project_set_text_in_project_name_txt_box(project_name)
        self.create_new_project_set_text_in_project_description(project_description)
        self.new_prj_window_click_back_button()
        controllerFamilyVariantDict = self.get_controller_family_variant_dict()
        for family, variantList in controllerFamilyVariantDict.items():
            for variant in variantList:
                self.select_controller_in_new_project_window(family, variant)
                self.report_log("currently checking controller variant ={}".format(variant))
                self.new_prj_window_click_next_button()
                self.create_new_project_verify_text_in_project_name_edit_box(project_name)
                self.create_new_project_verify_text_in_project_description_edit_box(project_description)
                self.new_prj_window_click_back_button()

    def keyword_set_random_project_description_for_given_length(self, length=None):
        """
        Set a random project description for specified length.
        :param len: Length of project description.
        :return: None
        """

        name = common.get_a_string_for_given_length(length)
        self.create_new_project_set_text_in_project_description(name)

    def keyword_project_description_length_validation(self, length):
        """
        Check the project description should not exceed more than length characters.
        """
        self.report_log("Check the project description should not exceed more than length characters.")
        self.create_new_project_win_check_project_description_length(length)

    def keyword_set_param_window_check_new_button_tooltip_text(self):
        """
        Verifies tooltip of new button in set Parameters Window.
        """
        self.set_param_window_compare_new_button_tooltip(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["tooltip"]["new_button"])

    def keyword_write_project_name(self):
        """
        Set the project name
        """
        project_name = common.randString(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Product_Details_Selection_Window"][
                "text_length"]["project_name_length"])
        self.create_new_project_set_text_in_project_name_txt_box(project_name)
        return {"project_name": project_name}

    def keyword_write_project_description(self):
        """
        Set the project description
        """
        project_description = common.randString(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Product_Details_Selection_Window"][
                "text_length"]["project_description_length"])
        self.create_new_project_set_text_in_project_description(project_description)
        return {"project_description": project_description}

    def keyword_project_window_visible(self):
        """
        Verify project window is visible
        """
        self.project_window_visible()

    def keyword_uncheck_wizard_option(self, controller_family):
        """
        Uncheck the wizard option is present for given controller family.
        """
        if controller_family in KoolProg_verify.controller_family_with_wizard:
            self.new_prj_window_uncheck_quick_wizard_option()

    def keyword_merge_dict(self, dict1, dict2):
        """
        """
        return common.merge_dict(dict1, dict2)

    def keyword_save_userdata(self, context):
        """
        Save user context used in current Scenario.
        """
        common.save_user_data_into_file(inputConfig.user_context_file_path, context)

    def keyword_get_userdata(self):
        """
        """
        return common.get_user_data_from_file(inputConfig.user_context_file_path)

    def keyword_sleep(self, time_sec):
        time.sleep(time_sec)

    def keyword_set_param_check_tooltip_text_and_click_close_button(self):
        """
        Check close button tooltip text and click it.
        """
        tooltip_text = KoolProg_verify.window_property["home"]["set_parameter_win"]["tooltip"]["close_button"]
        self.set_param_window_check_tooltip_text_and_click_close_button(tooltip_text)

    def keyword_new_project_win_check_tooltip_text_and_click_close_button(self):
        """
        Check tooltip text of close button and click to close new project window.
        """
        tooltip_text = \
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Controller_Selection_Window"][
                "tooltip"]["close_button"]
        self.new_prj_window_check_tooltip_text_and_click_close_button(tooltip_text)

    def keyword_check_applications_codenumber_productversion_with_combinations(self):
        """
        """
        controllerFamilyVariantDict = self.get_controller_family_variant_dict()
        self.report_log("controllerFamilyVariantDict = {}".format(controllerFamilyVariantDict))
        for family, variantList in controllerFamilyVariantDict.items():
            for variant in variantList:
                self.report_log("currently checking fam ={} controller variant ={}".format(family, variant))
                self.select_controller_in_new_project_window(family, variant)
                self.new_prj_window_click_next_button()
                self.keyword_check_applications_codenumber_productversion_for_given_family_variant(family, variant)
                self.new_prj_window_click_back_button()
                self.keyword_sleep(1)

    def keyword_check_applications_codenumber_productversion_for_given_family_variant(self, fam, var):
        """

        :param fam:
        :param var:
        :return:
        """
        app_details = self.get_app_details_from_var(var)
        if fam == "ETC1Hx":
            self.new_prj_window_check_application_list(app_details["controllerApplication"])
            self.new_prj_window_check_powersupply_list(KoolProg_verify.ETC1Hx_product_app_list["ETC1Hx"]["power"])
            self.new_prj_window_check_spindle_list(KoolProg_verify.ETC1Hx_product_app_list["ETC1Hx"]["spindle"])
            for app in app_details["controllerApplication"]:
                self.new_prj_window_select_application_in_controller_details_selection_window(app)
                product_details = self.get_product_details_path(var, app)
                product_details = common.xml_get_text_from_tag(product_details, "Verification")
                self.new_prj_window_validate_controller_description(product_details)

        elif fam == "ERC11x" or fam == "EET":
            for code_num, prod_version_list in self.get_code_number_respective_product_version_for_variant(var).items():
                self.report_log("code_num ={} prod_version_list ={}".format(code_num, prod_version_list))
                self.new_prj_window_check_selected_code_num_has_product_version_list(code_num, prod_version_list)

        elif fam == "ERC21x":
            app_dict_code_num = self.get_application_respective_code_number_for_variant(var)
            for app, code_num_list in app_dict_code_num.items():
                self.report_log("app ={} code_num_list ={}".format(app, code_num_list))
                self.new_prj_window_check_selected_application_has_code_number_list(app, code_num_list)
                product_details = self.get_product_details_path(var, app)
                product_details = common.xml_get_text_from_tag(product_details, "Verification")
                self.new_prj_window_validate_controller_description(product_details)
                wiring_diagram = self.get_wire_image_path(var, app)
                self.new_prj_window_validate_controller_wiring_diagram(wiring_diagram)

        elif fam == "AK-CC55":
            for code_num, software_list in self.get_code_number_respective_software_number_for_variant(var).items():
                self.report_log("code_num ={} software_list ={}".format(code_num, software_list))
                self.new_prj_window_check_selected_code_num_has_software_version_list(code_num, software_list)

        elif fam == "EKE1x":
            for code_num, prod_version_list in self.get_code_number_respective_product_version_for_variant(var).items():
                self.report_log("code_num ={} prod_version_list ={}".format(code_num, prod_version_list))
                self.new_prj_window_check_selected_code_num_has_software_version_list(code_num, prod_version_list)

    def keyword_verify_content_in_project_name_and_project_description(self, projectNameValue, projectDescriptionValue):
        """
        Checks if project name and description is similar to the input value specified.
        :param projectNameValue: Project Name Input Value
        :param projectDescriptionValue: Project Description Input Value
        
        """
        self.create_new_project_verify_text_in_project_name_edit_box(projectNameValue)
        self.create_new_project_verify_text_in_project_description_edit_box(projectDescriptionValue)

    def keyword_select_recent_project_file(self, file_name):
        """
        Select given project file from recent list.

        :param file_name: name of recent to be selected.
        """
        self.nav_open_setparameters_window_from_home_screen()
        self.set_param_window_open_recent_project(file_name)

    def keyword_prj_window_chk_menu_bar_icons_visible(self):
        """
        Check the visibility of project window menu bar icons.
        """
        self.prj_window_check_home_button_is_visible()
        self.prj_window_check_open_button_is_visible()
        self.prj_window_check_save_button_is_visible()
        self.prj_window_check_saveas_button_is_visible()
        self.prj_window_check_export_button_is_visible()
        self.prj_window_check_print_button_is_visible()
        self.prj_window_check_help_button_is_visible()
    
    def keyword_prj_window_chk_menu_bar_icons_Enable_Disable(self):
        """
        Check the enable and disable of project window menu bar icons.
        """
        self.prj_window_chk_menu_bar_icons_Enable()
        self.prj_window_check_print_button_is_enabled()
        self.prj_window_check_help_button_is_enabled()
        self.prj_window_chk_menu_bar_icons_Disable()

    def keyword_prj_window_chk_set_parameter_label(self):
        """
        Verify set parameter label is enable, visible and text in project window
        """
        self.prj_window_check_Setparameter_title_visible()
        self.prj_window_check_Setparameter_title_Enabled()
        self.prj_window_check_Setparameter_title_text(KoolProg_verify.window_property["Project_Window"]["Setparameter_title_lable"])
        
    def keyword_prj_window_chk_prj_name_label(self):
        """
        Verify project name label is enable, visible and text in project window
        """
        self. prj_window_check_ProjectName_label_visible()
        self.prj_window_check_ProjectName_label_Enabled()
        self.prj_window_check_ProjectName_label_text(KoolProg_verify.window_property["Project_Window"]["Project_Name_Label"])
    
    def keyword_verify_convert_setting_icon_is_visible_and_enabled(self):
        """
        Verify convert setting icon is visible and enabled
        """
        self.prj_window_check_convert_settings_button_is_visible()
        self.prj_window_check_convert_settings_button_is_enabled()
        
    def keyword_verify_convert_setting_window_is_visible_and_enabled(self):
        """
        Verify convert setting window is visible and enabled
        """
        self.convert_settings_window_is_visible()
        self.convert_settings_window_is_enabled()
        
    def keyword_verify_convert_settings_window_labels_are_visible_and_enable(self):
        """
        Verify convert setting window labels are visible and enabled
        """
        self.convert_settings_window_check_convert_setting_file_label_is_visible()
        self.convert_settings_window_check_select_the_setting_file_you_want_to_use_Label_is_visible()
        self.convert_settings_window_check_select_the_setting_file_you_want_to_use_Label_is_enabled()  
        self.convert_settings_window_check_edit_box_of_new_file_name_label_is_visible() 
        self.convert_settings_window_check_edit_box_of_new_file_name_label_is_enabled()
        self.convert_settings_window_check_label_of_product_name_is_visible()  
        self.convert_settings_window_check_label_of_product_name_is_enabled() 
        self.convert_settings_window_check_product_name_is_visible()  
        self.convert_settings_window_check_label_of_code_number_is_visible()
        self.convert_settings_window_check_label_of_code_number_is_enabled()                
        self.convert_settings_window_check_label_of_SW_version_is_visible()
        self.convert_settings_window_check_label_of_SW_version_is_enabled()  
        self.convert_settings_window_check_cancel_button_is_visible()
        self.convert_settings_window_check_cancel_button_is_enabled()          
        self.convert_settings_window_check_label_of_select_different_SW_version_is_visible()
        self.convert_settings_window_check_label_of_select_different_SW_version_is_enabled()             
                     
    def keyword_verify_convert_settings_window_label_texts(self):
        """
        Verify label texts in convert setting window 
        """
        self.convert_settings_window_check_convert_setting_file_label_text(
                                                                           KoolProg_verify.window_property["convert_setting_window"]["windows"]["convert setting window label"])                                                   
        self.convert_settings_window_check_select_the_setting_file_you_want_to_use_Label_text(
                                                                                              KoolProg_verify.window_property["convert_setting_window"]["windows"]["select the setting file you want to use text"])                                                                  
        self.convert_settings_window_check_new_file_name_label_text(
                                                                     KoolProg_verify.window_property["convert_setting_window"]["windows"]["new file name label"])                                                                                                                                                                                                                        
        self.convert_settings_window_check_product_name_label_text(
                                                               KoolProg_verify.window_property["convert_setting_window"]["windows"]["product label text"])                                                                                                                                                                                                                                                                                                             
        self.convert_settings_window_check_code_number_label_text(
                                                              KoolProg_verify.window_property["convert_setting_window"]["windows"]["code number label"])                                                                                                                                                
        self.convert_settings_window_check_SW_version_label_text(
                                                             KoolProg_verify.window_property["convert_setting_window"]["windows"]["software version label"])                                                                                                                         
        self.convert_settings_window_check_cancel_button_text(
                                                               KoolProg_verify.window_property["convert_setting_window"]["windows"]["cancel button text"])                                                                       
        self.convert_settings_window_check_select_different_SW_version_label_text(
                                                                              KoolProg_verify.window_property["convert_setting_window"]["windows"]["different SW version or file name not to be empty label text"])
    
    def keyword_verify_convert_settings_window_image_and_buttons_texts(self):
        """
        Verify button texts in convert settings window
        """
        self.convert_settings_window_check_X_button_text(
                                                         KoolProg_verify.window_property["convert_setting_window"]["windows"]["X button text"])    
        self.convert_settings_window_check_i_button_text(
                                                       KoolProg_verify.window_property["convert_setting_window"]["windows"]["i button text"])    
        self.convert_settings_window_check_convert_file_button_text(
                                                                     KoolProg_verify.window_property["convert_setting_window"]["windows"]["convert file button text"])
        
    def keywords_prj_details_expand_and_collapse_button_is_visible_and_enabled(self):
        """
        Verify project description expand and collapse is visible and enabled
        """
        self.prj_window_check_project_details_expand_collapse_button_is_visible(True)
        self.prj_window_check_project_details_expand_collapse_button_is_enabled(True)

    def keyword_verify_convert_settings_window_image_and_buttons_are_visible_and_enable(self, controllerVariant):
        """
        Verify buttons in convert settings window are visible and enable
        :param controllerVariant : selected controller variant name
        """
        self.convert_settings_window_X_button_visible()
        self.convert_settings_window_X_button_is_enabled()        
        self.convert_settings_window_check_list_of_software_version_combobox_is_visible()
        self.convert_settings_window_check_list_of_software_version_combobox_is_enabled()       
        self.convert_settings_window_check_i_button_is_visible()
        self.convert_settings_window_check_i_button_is_enabled()
        prod_image = self.get_product_image_path(controllerVariant)
        self.convert_settings_window_validate_controller_product_image(prod_image)  
        self.convert_settings_window_check_convert_file_button_is_visible()
        self.convert_settings_window_check_convert_file_button_is_enabled(False)               
        
    def keywords_prj_details_collapse_when_clicked_on_collapse(self):
        """
        Verify project details are collapsed when click on collapsed
        """
        self.prj_window_click_on_project_details_expand_collapse_button()
        self.prj_window_check_ProjectName_label_visible(False)
    
    def keywords_project_help_description_collapsed(self):
        """
        Verify project help button is collapsed when click on collapsed
        """
        self.convert_settings_window_check_X_button_text(
                                                         KoolProg_verify.window_property["convert_setting_window"]["windows"]["X button text"])    
        self.convert_settings_window_check_i_button_text(
                                                       KoolProg_verify.window_property["convert_setting_window"]["windows"]["i button text"])    
        self.convert_settings_window_check_convert_file_button_text(
                                                                     KoolProg_verify.window_property["convert_setting_window"]["windows"]["convert file button text"])
        
    def keyword_quick_setting_icon_is_visible_and_enabled(self):
        """
        Verify quick setting icon is visible and enabled
        """
        self.prj_window_check_if_quick_setting_icon_is_visible()
        self.prj_window_check_if_quick_setting_icon_is_enabled()
           
    def keyword_quick_setting_window_is_visble_and_enabled(self):
        """
        Verify quick setting window is visible and enabled
        """
        self.quick_settings_window_is_visible()
        self.quick_settings_window_is_enabled()
     
    def keyword_online_service_window_check_parameters_tab_is_visible_and_enabled(self):
        """
        Verify parameter tab is visible and enabled
        """
        self.online_service_window_check_parameters_tab_is_visible()
        self.online_service_window_check_parameters_tab_is_enabled()
     
    def keyword_online_service_window_check_alarms_tab_is_visible_and_enabled(self):
        """
        Verify alarms tab is visible and enabled
        """
        self.online_service_window_check_alarms_tab_is_visible()
        self.online_service_window_check_alarms_tab_is_enabled()
        
    def keyword_online_service_window_check_input_output_tab_is_visible_and_enabled(self):
        """
        Verify input/output tab is visible and enabled
        """
        self.online_service_window_check_input_output_tab_is_visible()
        self.online_service_window_check_input_output_tab_is_enabled()
        
    def keyword_online_service_window_check_parameters_tab_label_text(self):
        """
        Verify parameters tab label text
        """
        self.online_service_window_check_parameters_tab_text(KoolProg_verify.window_property["Online_Service_Window"]["Tabs"]["Parameters_Tab_Label_Text"])
 
    def keyword_online_service_window_check_alarms_tab_label_text(self):
        """
        Verify parameters tab label text
        """
        self.online_service_window_check_alarms_tab_text(KoolProg_verify.window_property["Online_Service_Window"]["Tabs"]["Alarms_Tab_Label_Text"])
        
    def keyword_online_service_window_check_input_output_tab_label_text(self):
        """
        Verify parameters tab label text
        """
        self.online_service_window_check_input_output_tab_text(KoolProg_verify.window_property["Online_Service_Window"]["Tabs"]["Input/Output_Label_Text"])
        
    def keyword_info_button_is_visible_and_enabled(self):
        """
        Verify info button is visible and enabled
        """
        self.convert_settings_window_check_i_button_is_visible()
        self.convert_settings_window_check_i_button_is_enabled()         
    
    def keyword_project_win_project_details_label(self, controller_family):
        """ 
        Verify text of labels for Product Name, Power Supply, SW Verison, PV Version, Code Number or Application for created project
        :param controller_family: selected controller family name
        """
        label_text_dic = KoolProg_verify.product_details_label_text_verification[controller_family]
        self.project_window_check_controller_details_label_text(controller_family, label_text_dic)

    def keyword_project_win_check_project_details_label_value(self, controller_details):
        """ 
        Verify values of labels for Product Name, Power Supply, SW Version, PV Version, Code Number or Application for created project
        :param  controller_details: selected controller details i.e. Product Name, Power Supply, SW Version, PV Version, Code Number or Application
        """
        controller_family = controller_details['controllerFamily']
        updated_controller_details = KoolProg_verify.default_product_details_info[controller_family]
        updated_controller_details.update(controller_details)
        self.project_window_check_controller_details_label_value(updated_controller_details, controller_family)

    def keyword_prj_window_chk_prj_name_prj_desc_text(self, project_name, project_description):
        """
        Verify project name and description in the project window will be the same as the project description window
        :param project_name:project name from project description window
        :param project_description:project_description from project description window
        """
        self.prj_window_chk_prj_name_text_in_project_name_edit_box(project_name)
        self.prj_window_chk_prj_desc_text_in_project_desc_edit_box(project_description)

    def keyword_create_new_project_given_index(self, _index):
        """
        Create a new project using index(row) value of automation input excel sheet.

        :param _index: index or row of automation input excel sheet.
        :return: None.
        """
        self.nav_goto_newproject_controller_selection_window_from_home_screen()
        details = self.get_controller_details_from_index(_index)
        self.report_log("controller details ={}".format(details))
        self.select_controller_in_new_project_window(details["controllerFamily"], details["controllerVariant"])
        self.new_prj_window_next_button_is_visible()
        self.new_prj_window_click_next_button()
        self.create_new_project_select_app_from_details(details)
        self.keyword_uncheck_wizard_option(details["controllerFamily"])
        details = self.keyword_merge_dict(details, self.keyword_write_project_name())
        details = self.keyword_merge_dict(details, self.keyword_write_project_description())
        self.keyword_sleep(2)
        self.new_prj_window_click_finish_button()
        details["index"]=_index
        return details

    def keyword_check_tree_view_default_group_expaned(self, controller_family):
        """
        Check default group in tree view is expanded.
        :param controller_family: string controller family name.
        :return:
        """
        expand_group_list = KoolProg_verify.default_project_window_tree_expanders[controller_family]
        self.report_log("invoke -> keyword_check_tree_view_default_group_expaned ...", "expand_group_list ={}"
                        .format(expand_group_list))
        self.project_window_tree_check_item_is_expanded(expand_group_list)
    
    def keyword_click_tree_item_with_respect_to_selected_language(self,tree_item,selectedLanguage):
        """
        Click the tree item with respect to selected language.
        :param tree_item: Tree item.
        :param selectedLanguage: Selected language.
        :return: None
        """
        tree_item_name =  KoolProg_verify.window_property["tree_view_headers"]["languages"][selectedLanguage]["label"]["text"][tree_item]
        self.project_window_tree_click_item(tree_item_name)
        
    def keyword_check_group_names_under_tree_view(self, controller_info_dict):
        """
        Check group names under tree view items.
        :param controller_info_dict: controller details dictionary from automation input sheet. 
        :return: None
        """""
        expand_group_list = KoolProg_verify. \
            default_project_window_tree_expanders[controller_info_dict["controllerFamily"]]
        tree_list = self.project_window_get_tree_view_list()
        self.report_log("tree_list ={}".format(tree_list))
        self.keyword_parse_database_csv_file(controller_info_dict)
        grp_name = self.get_database_group_names()
        self.report_log("grp_name={}".format(grp_name))

        ui_grp_name = list()
        for lis in tree_list:
            if "All" in lis.keys():
                ui_grp_name = self.get_groupname_list_from_treeview_list(lis["All"])
                self.report_log("grp_name={}".format(ui_grp_name))

        if not common.compare_list_by_order(grp_name, ui_grp_name):
            self.report_fail("Tree view comparison is failed ...",
                             "ui_grp_name ={} grp_name ={}".format(ui_grp_name, grp_name))
    
    def keyword_get_headers_from_dataGrid(self):
        """
        Get the headers from the datagrid.
        :return: Datagrid headers.
        """
        dataGrid_headers = self.prj_window_get_headers_from_the_datagrid()
        return {"dataGrid_headers":dataGrid_headers}
    
    def keyword_verify_headers_from_the_datagrid(self,dataGrid_headers,selectedLanguage):
        """
        Verify the headers list from the datagrid.
        :param dataGrid_headers: List of datagrid headers.
        :param selectedLanguage: Selected language.
        :return: True if succeeds.
        """
        header_lst = []
        header_lst.append(KoolProg_verify.window_property["dataGrid"]["languages"][selectedLanguage]["label"]["text"]["Label"])
        header_lst.append(KoolProg_verify.window_property["dataGrid"]["languages"][selectedLanguage]["label"]["text"]["Description"])
        header_lst.append(KoolProg_verify.window_property["dataGrid"]["languages"][selectedLanguage]["label"]["text"]["Min"])
        header_lst.append(KoolProg_verify.window_property["dataGrid"]["languages"][selectedLanguage]["label"]["text"]["Default"])
        header_lst.append(KoolProg_verify.window_property["dataGrid"]["languages"][selectedLanguage]["label"]["text"]["Value"])
        header_lst.append(KoolProg_verify.window_property["dataGrid"]["languages"][selectedLanguage]["label"]["text"]["Max"])
        if not common.compare_list_by_order(header_lst, dataGrid_headers):
            self.report_fail("keyword_verify_headers_from_the_datagrid is failed ...",
                             "header_list ={} header_list_UI ={}".format(header_lst, dataGrid_headers))
            return False
        self.report_pass("keyword_verify_headers_from_the_datagrid is passed ...",
                             "header_list ={} header_list_UI ={}".format(header_lst, dataGrid_headers))
        return True
        
    def keyword_check_group_names_hide_unhide(self, database):
        """
        Check group items are hidden after colapsing group header.

        :param controller_family: controller family type.
        :return:
        """
        database = database.replace(".db3", "")
        self.parse_database_csv(inputConfig.database_path.format(database), databaseConfig.required_databaseHeader)
        self.project_window_expand_tree_view_item("All", False)

        grp_name = self.get_database_group_names()
        self.project_window_tree_check_item_is_expanded(grp_name, False)

    def keyword_verify_user_values_in_textbox_of_parameter_will_be_same_as_default_value(self):
        """
        Verify, values  in textbox of parameter will be same as default value in dataGrid.
        """
        textBox_list_values = self.project_window_get_textbox_values_in_dataGrid_with_parameter_name_as_key()
        default_list_values = self.project_window_get_default_values_in_dataGrid_with_parameter_name_as_key()
        self.project_window_verify_values_in_default_value_column_are_same_as_value_column_in_dataGrid(
            textBox_list_values, default_list_values)

    def keyword_verify_all_parameter_from_reference_database_is_displayed_in_dataGrid(self, database):
        """
        Verifies all parameter from reference database should be displayed in KoolProg dataGrid.
        :param database: Database Sheet Name from input sheet.

        """
        database = database.replace(".db3", "")
        self.parse_database_csv(inputConfig.database_path.format(database), databaseConfig.required_databaseHeader)
        database_group_name_with_parameter_dict = self.get_database_group_name_with_parameter()

        dataGrid_parameter_values = self.get_default_details_of_parameters_from_dataGrid_with_parameter_name_as_key()

        self.verify_parameters_default_values_in_dataGrid_against_test_data_values(
            database_group_name_with_parameter_dict, dataGrid_parameter_values)

    def keyword_prj_window_verify_product_info_window(self, controllerVariant):
        """
        Verification of product information window in project window
        :param controllerVariant : selected controller variant name
        """
        self.prj_window_click_on_offline_controller_info_button()
        self.product_info_window_is_visible()
        self.product_info_window_header_text(
            KoolProg_verify.window_property["Product_Information_Window"]["label"]["header_value"])
        self.product_info_window_close_tooltip_text(
            KoolProg_verify.window_property["Product_Information_Window"]["tooltip"]["close_button"])
        self.product_info_window_label_text(controllerVariant)
        self.keyword_check_prodImage_wiringDiagram_in_product_info_window(controllerVariant)
        self.product_info_window_click_on_scrollbar()
        self.product_info_window_click_close_button()     
                       

    def keyword_check_prodImage_wiringDiagram_in_product_info_window(self, controllerVariant):
        """
        Verify product image, wire diagram and product description in product information window
        :param controllerVariant : selected controller variant name
        """
        prod_image = self.get_product_image_path(controllerVariant)
        wiring_diagram = self.get_wire_image_path(controllerVariant)
        product_details = self.get_product_details_path(controllerVariant)
        product_details = common.xml_get_text_from_tag(product_details, "Verification")
        self.product_info_window_validate_prodImage_wiringDiagram(prod_image,
                                                                  wiring_diagram, product_details)

    def keyword_open_window_open_unavailable_file_in_default_path(self, project_details, chart = False):
        """
        Tries to open the unavailable file in default path in open window.
        :param chart: chart is true if open popup window is from on-line service otherwise false
        """
        project_path = project_details["PROJECT_WORKING_DIR"] + "\\{}"
        
        if chart == False:
            project_file = project_path.format(inputConfig.unavailable_project_file_name)
        else:
            project_file = project_path.format(inputConfig.unavailable_chart_name)
        self.Window_Dialog_write_project_path(project_file, "OPEN")

 
    def keyword_verify_help_of_first_parameter_of_every_group_when_a_group_is_selected(self, database):
        """
        Verify help of first parameter of every group when a group is selected.
        :param database: Database Sheet Name from input sheet.
        """
        database = database.replace(".db3", "")
        self.parse_database_csv(inputConfig.database_path.format(database), databaseConfig.required_databaseHeader)
        GroupNames_List = self.get_group_names_from_dataGrid()
        for i in GroupNames_List:
            self.project_window_tree_click_item(i)
            parameterName = self.get_current_highlighted_row_parameterName_from_dataGrid()
            help = self.get_parameter_help(parameterName)
            self.verify_help_for_given_parameter(help, parameterName)

    def keyword_get_temp_saved_filepath_filename(self):
        """
        Get the temporary saved filepath and filename information
        """
        return common.get_user_data_from_file(inputConfig.user_context_file_rename_info)

    def verify_parameters_under_given_group_name(self, controller_info_dict):
        """
        Verify parameters related to group name from csv file are present in datagrid.
        :param controller_info_dict: controller selected information dictionary.
        :return: None.
        """
        ui_group_list = self.get_datagrid_expander_names_List()
        self.report_log("ui_group_list ='{}'".format(ui_group_list))
        self.keyword_parse_database_csv_file(controller_info_dict)
        parameter_names_not_found_in_datagrid = dict()
        parameter_group_not_found_in_datagrid = list()
        param_test_result = True
        group_order_check = str()
        self.report_log("self.get_database_group_names() ={} ui_group_list ={}".format(self.get_database_group_names(),
                                                                                       ui_group_list))
        if self.get_database_group_names() != ui_group_list:
            group_order_check = " group list from UI = {} , group list from databse csv ={} are not equal".format(
                ui_group_list, self.get_database_group_names())

        for grp in self.get_database_group_names():
            if grp in ui_group_list:
                self.report_log("grp ={}".format(grp))
                self.project_window_tree_click_item(grp)
                database_params_list = self.get_list_of_items_from_given_index_list("ParameterName",
                                                                                    self.get_group_name_indices(grp))
                datagrid_list_of_dict = self.get_parameter_names_from_datagrid()
                group_name_not_find_list = list()
                for db_parm in database_params_list:
                    if db_parm not in datagrid_list_of_dict:
                        group_name_not_find_list.append(db_parm)
                        param_test_result = False
                parameter_names_not_found_in_datagrid[grp] = group_name_not_find_list
            else:
                parameter_group_not_found_in_datagrid.append(grp)
        result_fail_string = str()
        if group_order_check:
            result_fail_string = result_fail_string + group_order_check
        if not param_test_result:
            result_fail_string = result_fail_string + "\r\n" + \
                                 "These group names are not found in data grid = '{}'".format(
                                     parameter_group_not_found_in_datagrid)
        if not parameter_group_not_found_in_datagrid:
            result_fail_string = result_fail_string + "\r\n" + \
                                 "These parameters are are not found in data grid = '{}'".format(
                                     parameter_names_not_found_in_datagrid)

        if result_fail_string:
            self.report_fail("verify_parameters_under_given_group_name is failed ..", result_fail_string)

    def keyword_check_database_param_contains_in_datagrid(self, database_params_list, datagrid_list_of_dict):
        """
        Check parameter present in datagrid.
        :param database_params_list: database csv parameter name list.
        :param datagrid_list_of_dict: datagrid list of parameter name dictionary.
        :return: empty list - if all list are present in datagrid, else list of failed elements.
        """
        failed_pram_names_list = list()
        for param in database_params_list:
            _id = common.find_key_list_of_dict(datagrid_list_of_dict, param)
            if not _id:
                failed_pram_names_list.append(param)
        return failed_pram_names_list

    def verify_project_file_parameters_against_project_window_UI(self, controller_info_dict):
        """
        Verify the parameters in project file are listed in project window.
        :param controller_info_dict: Dictionary will be a selected row from excel sheet sheet.
        :return: True if all parameters are present in project window. else returns False.
        """
        project_filename_path = self.path + "\{}.xml".format(controller_info_dict["project_name"])
        self.report_log("project_filename_path ={}".format(project_filename_path))
        self.parse_the_dataGrid()
        datagrid = self.project_window_getdatagrid()
        if not datagrid:
            self.report_fail("verify_project_file_parameters_against_project_window_UI is failed",
                             "unable to get datagrid from UI ...")
        self.project_xmlfile_parse(project_filename_path)
        ui_proj_product_detail = self.prj_window_get_project_detail_values(controller_info_dict["controllerFamily"])
        prj_desc = self.prj_window_get_project_description()

        ui_proj_product_detail = self.keyword_merge_dict(ui_proj_product_detail, {"description": prj_desc})
        self.keyword_verify_datagrid_parameters(self.read_project_file_descritpion(), datagrid, ui_proj_product_detail)
        return True

    def keyword_verify_datagrid_parameters(self, xml_file_dict, data_grid_parameters, ui_proj_product_detail):
        """
        Verifies xml file parameter with values in datagrid.
        :param xml_file_dict: xml file parsed list.
        :param data_grid_parameters: datagrid list using function project_window_getdatagrid.
        :param ui_proj_product_detail: product names dict having name0 ,name1 ,...
        :return: True if expected are present in datagrid.
        """
        xml_file_parameter = xml_file_dict['param']
        product_details_are_different_values = dict()

        for prj_details_key in inputConfig.project_xml_file_parse_keys["prod_details"].keys():
            if (prj_details_key in xml_file_dict.keys()) and not (prj_details_key == "controllerFamily"):
                if xml_file_dict[prj_details_key] != ui_proj_product_detail[prj_details_key]:
                    product_details_are_different_values[prj_details_key] = "xml file value ={} UI value ={}".format(
                        xml_file_dict[prj_details_key], ui_proj_product_detail[prj_details_key])

        menucode_not_equal_for_param = dict()
        for param_row in xml_file_parameter:
            for row in data_grid_parameters:
                if param_row["parameter"] in row.keys():
                    if row[param_row["parameter"]]["menucode"] != param_row["menucode"]:
                        menucode_not_equal_for_param[row] = {"ui_menucode": param_row["menucode"],
                                                             "file_menucode": row[param_row["parameter"]]["menucode"]}
        if menucode_not_equal_for_param:
            self.report_fail("keyword_verify_datagrid_parameters is failed ...",
                             "Menu code values are different = {} , project detail values are has difference ={}".
                             format(menucode_not_equal_for_param, product_details_are_different_values))
            return False
        self.report_pass("keyword_verify_datagrid_parameters is passed ...")

        return True

    def keyword_get_decimal_parameters_with_random_value_between_min_and_max_values(self):
        """
        Get database parameters having datatype has float.
        :param database_table: class Database object.
        :return:decimal or float Parameters table.
        """
        float_index = self.get_column_indices_of_given_datatype("float")
        table = self.get_database_for_given_indices(float_index)
        float_parameter_table = dict()
        float_parameter_table["MenuCode"] = table["MenuCode"]
        float_parameter_table["ParameterName"] = table["ParameterName"]
        float_parameter_table["Datatype"] = table["Datatype"]
        value_list = list()
        for i in range(len(table["MenuCode"])):
            _min = table["MinValue"][i]
            _max = table["MaxValue"][i]
            val = round(random.uniform(float(_min), float(_max)), 2)
            value_list.append(val)
        float_parameter_table["Value"] = value_list
        return float_parameter_table

    def keyword_parse_database_csv_and_get_decimal_parameters(self, controller_info_dict):
        """
        Get decimal parameters from database csv file.
        :param controller_info_dict: Dictionary will be a selected row from excel sheet sheet.
        :return: dict of decimal parameters.
        """
        self.keyword_parse_database_csv_file(controller_info_dict)
        return self.keyword_get_decimal_parameters_with_random_value_between_min_and_max_values()

    def keyword_parse_database_csv_file(self, controller_info_dict):
        """
        Parse database csv file
        :param controller_info_dict: Dictionary will be a selected row from excel sheet sheet.
        :return: None.
        """
        database = controller_info_dict["database"].replace(".db3", "")
        self.report_log(" database file ={}".format(database))
        database_details = self.parse_database_csv(inputConfig.database_path.format(database), controller_info_dict["controllerVariant"],
                                databaseConfig.DATABASE_USER_ADMIN,controller_info_dict, controller_info_dict["controllerApplication"], True,
                                databaseConfig.required_databaseHeader)
        return database_details
    
    def keyword_verify_parameter_name_with_values(self, dict_of_param_name_with_value):
        """
        Check parameter and it values after modified by random value.
        :param dict_of_param_name_with_value: database dict contains parameter name and value to set in ui.
        :return: None.
        """
        self.set_parameter_value_in_datagrid(dict_of_param_name_with_value)
        self.parse_the_dataGrid()
        datagrid_params = self.project_window_getdatagrid()
        self.report_log("dict_of_param_name_with_value= {}".format(dict_of_param_name_with_value))
        self.report_log("UI datagrid_params= {} ".format(datagrid_params))
        list_parameters_value_has_different_value = dict()
        list_parameters_not_found_in_datagird = list()
        for db_id, param in enumerate(dict_of_param_name_with_value["ParameterName"]):
            lst = common.find_key_list_of_dict(datagrid_params, param)
            if lst:
                i = lst.pop()
                if datagrid_params[i][param]["value"] != dict_of_param_name_with_value["Value"][db_id]:
                    list_parameters_value_has_different_value[param] = \
                        [datagrid_params[i][param]["value"], dict_of_param_name_with_value["Value"][db_id]]
            else:
                list_parameters_not_found_in_datagird.append(param)

        result_fail_str = str()
        if list_parameters_value_has_different_value:
            result_fail_str = result_fail_str + "list of parameter value has different values ={} ".format(
                list_parameters_value_has_different_value)

        if list_parameters_not_found_in_datagird:
            result_fail_str = result_fail_str + "list of parameters not found in datagrid ={} \r\n". \
                format(list_parameters_not_found_in_datagird)
            result_fail_str = result_fail_str + "UI datagrid parameters ={} , parameters from database ={} \r\n". \
                format(datagrid_params, dict_of_param_name_with_value["ParameterName"])

        self.report_fail("keyword_verify_parameter_name_with_values is failed ...", result_fail_str)

    def keyword_get_integer_parameter_float_parameter_values_as_text_and_special_characters(self, controller_info_dict):
        """
        Get database parameters having datatype has float and integer types.
        :param controller_info_dict: Dictionary will be a selected row from excel sheet sheet.
        :return:decimal and integer Parameters table.
        """
        self.keyword_parse_database_csv_file(controller_info_dict)
        int_index = self.get_column_indices_of_given_datatype("int")
        float_index = self.get_column_indices_of_given_datatype("float")
        result_index = common.add_two_list(int_index, float_index)
        table = self.get_database_for_given_indices(result_index)
        parameter_table = dict()

        parameter_table["MenuCode"] = table["MenuCode"]
        parameter_table["ParameterName"] = table["ParameterName"]
        parameter_table["Datatype"] = table["Datatype"]
        value_list = list()
        for _ in range(len(table["MenuCode"])):
            value_list.append(common.get_name_with_special_characters())

        parameter_table["Value"] = value_list
        return parameter_table

    def keyword_verify_parameters_should_not_accept_text_as_values(self, dict_of_param_name_with_value):
        """
        Text and decimal parameter values are in textbox in datagrid there , trying to write special
        characters with text as sting.
        It should not accept alphabets and special characters.
        :param dict_of_param_name_with_value: dict from csv parser
        :return:
        """
        self.set_parameter_value_in_datagrid(dict_of_param_name_with_value)
        self.parse_the_dataGrid()
        datagrid_params = self.project_window_getdatagrid()
        self.report_log("datagrid_params={} ,dict_of_param_name_with_value= {}".format(datagrid_params,
                                                                                       dict_of_param_name_with_value))
        list_accept_special_characters = list()
        list_accept_alpha_characters = list()
        list_parameters_not_found_in_datagird = list()
        for param in dict_of_param_name_with_value["ParameterName"]:
            lst = common.find_key_list_of_dict(datagrid_params, param)
            if lst:
                i = lst.pop()
                unwnanted_character_string = common.get_special_characters_as_string()
                unwnanted_character_string = unwnanted_character_string.replace('.', '')
                unwnanted_character_string = unwnanted_character_string.replace('.', '')
                unwnanted_character_string = unwnanted_character_string.replace('-', '')
                if not common.check_string_contains_any_character_from_string(datagrid_params[i][param]["value"]
                        , unwnanted_character_string):
                    list_accept_special_characters.append(param)
                if common.check_alphabets_present_in_given_string(datagrid_params[i][param]["value"]):
                    list_accept_alpha_characters.append(param)
            else:
                list_parameters_not_found_in_datagird.append(param)

        self.report_fail("keyword_verify_parameters_should_not_accept_text_as_values is failed ..."
                         "list of parameter accepts special characters ={} ".format(list_accept_special_characters) +
                         "list of parameters not found in datagrid ={}".format(list_parameters_not_found_in_datagird))

    def keyword_check_special_charcters_not_allowed_popup_message(self, message):
        """
        Check the special charcter not valid label text from popup window
        :praram message:label text need to be validated
        """
        self.check_special_charcters_not_allowed_popup_message(message)

    def keyword_save_project_in_temp_location(self, controller_details):
        """
        Save current project in temporary location.
        :return:
        """
        self.prj_window_click_on_saveas_button()
        if controller_details["controllerFamily"] in inputConfig.codenumber_popup_expected_controller_families:
            self.codenumber_popup_window_visible()
            self.code_number_popup_window_ok_button()
        self.keyword_sleep(5)
        project_path = self.get_cleanTemporay_directory(controller_details["PROJECT_WORKING_DIR"])
        self.Window_Dialog_write_project_path(project_path, "SAVEAS")
        self.Window_Dialog_click_save_button("SAVEAS")
        self.keyword_sleep(10)
        self.Window_Dialog_write_project_path(controller_details["project_name"], "SAVEAS")
        self.Window_Dialog_click_save_button("SAVEAS")
        return {"TEMP_DIR": project_path}
    
    def keyword_set_text_of_project_details_in_file(self, details):
        """
        Set the project details in the text file.
        :param details: Project details
        """
        prj_details_file = os.path.join(inputConfig.prj_details_temp_path, "koolprog_details_with_project_details.txt")  
        with open(prj_details_file, 'w') as fin: 
            details_dict = {"previous_koolprog_version":details["koolprog_version"],"PROJECT_WORKING_DIR":details["PROJECT_WORKING_DIR"],"controllerFamily":details["controllerFamily"], "controllerVariant":details["controllerVariant"],"controllerCodeNo":details["controllerCodeNo"],"softwareVersion":details["softwareVersion"]}
            if 'project_name' in details:
                details_dict.update({"project_name":details["project_name"]})
            elif 'filename' in details:
                details_dict.update({"project_name":details["filename"]})
            else:
                details_dict.update({"project_name":details["connected_project_name"]})
            fin.write(str(details_dict))
            fin.close() 
    
    def keyword_get_project_details_from_text_file(self):
        """
        Get the project details from the text file.
        :return: Project details
        """
        with open(inputConfig.koolprog_details_with_project_details_path,'r+') as fin:
            details_dict = eval(fin.read())
            fin.close()
        os.remove(inputConfig.koolprog_details_with_project_details_path)
        return details_dict

    def get_cleanTemporay_directory(self, currentDirectory):
        """
        Get a clean temp directory to create a project.
        :param currentDirectory:
        :return:
        """
        project_path = None
        if currentDirectory != common.get_project_file_path(inputConfig.project_file_temp_folder):
            project_path = common.get_project_file_path(inputConfig.project_file_temp_folder)
        elif currentDirectory != common.get_project_file_path(inputConfig.project_working_folder_path):
            project_path = common.get_project_file_path(inputConfig.project_working_folder_path)
        else:
            self.report_fail("keyword_save_project_in_temp_location is failed ....", "")

        common.make_dir_if_not_exists(project_path)

        if not common.delete_all_contents_in_folder(project_path):
            self.report_fail("given location to save project is not exits ={}".format(project_path))
        return project_path

    def get_Temporay_directory(self, currentDirectory):
        """
        Get a clean temp directory to create a project.
        :param currentDirectory:
        :return:
        """
        project_path = None
        if currentDirectory != common.get_project_file_path(inputConfig.project_file_temp_folder):
            project_path = common.get_project_file_path(inputConfig.project_file_temp_folder)
        elif currentDirectory != common.get_project_file_path(inputConfig.project_working_folder_path):
            project_path = common.get_project_file_path(inputConfig.project_working_folder_path)
        else:
            self.report_fail("keyword_save_project_in_temp_location is failed ....", "")

        return project_path

    def keyword_save_project_using_open_dialogue(self, file_name):
        """
        Save project in open dialog window.
        :param file_name: file name to be save as
        :return:
        """
        self.Window_Dialog_is_enabled("SAVEAS")
        project_path = common.get_project_file_path(inputConfig.project_file_temp_path)
        project_file = project_path.format(inputConfig.project_file_name)
        self.prj_window_write_project_path_with_file_name(project_file)
        project_path = self.path + "\\{}"
        project_file = project_path.format(inputConfig.unavailable_project_file_name)
        self.Window_Dialog_write_project_path(project_file, "SAVEAS")
        self.Window_Dialog_click_save_button()

    def keyword_create_random_AK_CC55_controller_project(self):
        """
        Create a random AK-CC55 controller project.
        :return:
        """
        chosen_index = random.choice(self.get_indices_of_given_controller_family("AK-CC55"))
        return self.keyword_create_new_project_given_index(chosen_index)

    def keyword_open_current_project_in_project_window(self, project_details):
        """
        Open current project.
        :param project_details: current project details.
        :return:
        """

        project_path = project_details["PROJECT_WORKING_DIR"] + "\\{}"
        project_file = project_path.format(project_details["project_name"])
        self.Window_Dialog_write_project_path(project_file, "OPEN")
        self.Window_Dialog_click_open_button()
        self.keyword_sleep(10)

    def keyword_open_save_window_add_file_filters_for_given_name(self, name, dialog):
        """
        Open window add filters by given name.
        :param name:name of filter to selected.
        :return:
        """
        self.Window_Dialog_is_enabled(dialog)
        self.Window_Dialog_select_filter(name, dialog)
        self.keyword_sleep(3)

    def keyword_open_window_file_extension(self, extension_name):
        """
        Check list of files are in give extension.
        :param  extension_name:  extension or file format.
        :return:
        """
        open_window_file_list = self.Window_Dialog_get_list_of_files("OPEN")
        self.report_log("open_window_file_list ={}".format(open_window_file_list))

        FILE_EXTENSION = 1
        for file_name in open_window_file_list:
            file_name = file_name.split(".")
            if extension_name != file_name[FILE_EXTENSION]:
                self.report_fail("In Open dialog file filter '{}' is applied,but can able to see ".
                                 format(extension_name) + "These type of files ={}".format(file_name[FILE_EXTENSION]))

        self.report_pass("In Open dialog file filter '{}' is applied and view files ..." \
                         .format(extension_name))

    def keyword_prj_window_click_home_button(self):
        """
        Click home button in Project window.
        :return:  True if click succeed else False.
        """
        self.prj_window_click_on_home_button()
        self.keyword_sleep(6)
        
    def keyword_verify_project_details_of_current_project(self, controller_info_dict):
        """
        Project details from UI compared with excel sheet row selected.
        :param controller_info_dict: controller dict which is used to create project.
        :return:
        """
        ui_proj_product_detail = self.prj_window_get_project_detail_values(controller_info_dict["controllerFamily"])
        prj_desc = self.prj_window_get_project_description()
        UI_roject_name = self.prj_window_get_project_name()

        self.report_log("ui_proj_product_detail= {} prj_desc ={} UI_roject_name={}".format(ui_proj_product_detail,
                                                                                           prj_desc,
                                                                                           UI_roject_name))

        if UI_roject_name != controller_info_dict["project_name"]:
            self.report_fail("project name is not equal UI project name = {} , expected controller details {}"
                             .format(UI_roject_name, controller_info_dict["project_name"]))

        for detail_key in ui_proj_product_detail.keys():
            if controller_info_dict["controllerFamily"] == "ETC1Hx":
                if detail_key == "power" or detail_key == "controllerCodeNo":
                    continue

            if ui_proj_product_detail[detail_key] != controller_info_dict[detail_key]:
                self.report_fail("projects are not same ...", "UI details ={}  expected controller details ={}".format(
                    ui_proj_product_detail, controller_info_dict))

        if controller_info_dict["controllerFamily"] != "AK-CC55":
            if prj_desc != controller_info_dict["project_description"]:
                self.report_fail(
                    "project description is not equal UI project description  = '{}' , expected controller details = '{}'"
                        .format(prj_desc, controller_info_dict["project_description"]))

        self.report_pass("keyword_verify_project_details_of_current_project is passed ...")

    def keyword_verify_import_setting_project_details_with_connected_controller_info(self, controller_info_dict):
        """
        Project details from UI compared with connected controller.
        :param controller_info_dict: controller dict which is used to create project.
        """
        controller_info_dict.update({"controllerCodeNo" : controller_info_dict["connected_controllerCodeNo"]})
        ui_proj_product_detail = self.prj_window_get_project_detail_values(controller_info_dict["controllerFamily"])
        if controller_info_dict["controllerFamily"] in KoolProg_verify.view_more_unsupported_controller_family:
            controllercodeno = ui_proj_product_detail["controllerCodeNo"][0:8]
            ui_proj_product_detail.update({"controllerCodeNo" : controllercodeno})
        UI_project_name = self.prj_window_get_project_name()

        self.report_log("ui_proj_product_detail= {}  UI_project_name={}".format(ui_proj_product_detail,
                                                                                           UI_project_name))

        if UI_project_name != controller_info_dict["connected_project_name"]:
            self.report_fail("project name is not equal UI project name = {} , expected controller details {}"
                             .format(UI_project_name, controller_info_dict["connected_project_name"]))

        for detail_key in ui_proj_product_detail.keys():
            if controller_info_dict["controllerFamily"] == "ETC1Hx":
                if detail_key == "connected_power" or detail_key == "connected_controllerCodeNo":
                    continue

            if ui_proj_product_detail[detail_key] != controller_info_dict[detail_key]:
                self.report_fail("projects are not same ...", "UI details ={}  expected controller details ={}".format(
                    ui_proj_product_detail, controller_info_dict))

        self.report_pass("keyword_verify_import_setting_project_details_with_connected_controller_info is passed ...")

    def keyword_write_the_created_project_file_name_dialog(self, controller_details, dialog):
        """
        Saving the new created project file with default name
        :param controller_details:creat new project details
        :param dialog:the dialog in which we are testing ex:OPEN,Project Window
        """

        if controller_details["controllerFamily"] in inputConfig.codenumber_popup_expected_controller_families:
            CodeNumber_FileName = self.Window_Dialog_get_file_name(dialog)
            self.keyword_check_delet_if_file_already_exist_before_Save_As(controller_details, dialog)
            project_name = self.keyword_get_filename_with_extension(CodeNumber_FileName, controller_details["controllerFamily"])
        
            project_path = controller_details["PROJECT_WORKING_DIR"] + "\\{}"
            project_project_with_name = project_path.format(project_name)
            self.Window_Dialog_write_project_path(project_project_with_name, dialog)
        else:
            project_name = common.randString(7)
            self.keyword_check_delet_if_given_file_already_exist_before_Save_As(project_name,controller_details["controllerFamily"],controller_details["PROJECT_WORKING_DIR"] )
            project_name = self.keyword_get_filename_with_extension(project_name, controller_details["controllerFamily"])
            project_path = controller_details["PROJECT_WORKING_DIR"] + "\\{}"
            project_project_with_name = project_path.format(project_name)
            self. Window_Dialog_write_project_path(project_project_with_name, dialog)
            CodeNumber_FileName = None

        return {"CodeNumber_FileName" : CodeNumber_FileName}

    def keyword_get_the_projectname_from_save_as_window(self):
        """
        Get the default project name from the save as window
        """
        return self.get_the_projectname_from_save_as_window()
    
    def keyword_check_delet_if_given_file_already_exist_before_Save_As(self, project_name , controller_family, project_path):
        """
        Deleting the already exists file during the save As
        :param controller_family: controller_family
        :param project_path: project path
        :param project_name: Input project name
        :param dialog:the dialog in which we are testing ex:OPEN,Project Window
        """
        filename_extension = self.keyword_get_filename_with_extension(project_name, controller_family)
        prj_filepth_filename = project_path + "\\" + filename_extension
        common.delete_if_file_exist(prj_filepth_filename)

    def keyword_check_delet_if_file_already_exist_before_Save_As(self, controller_details, dialog):
        """
        Deleting the already exists file during the save As
        :param controller_details:creat new project details
        :param dialog:the dialog in which we are testing ex:OPEN,Project Window
        """
        path = controller_details["PROJECT_WORKING_DIR"]
        project_name = self.Window_Dialog_get_file_name(dialog)
        controller_family = controller_details["controllerFamily"]
        filename_extension = self.keyword_get_filename_with_extension(project_name, controller_family)
        prj_filepth_filename = path + "\\" + filename_extension
        common.delete_if_file_exist(prj_filepth_filename)

    def keyword_Save_as_the_created_project_with_project_name_including_specile_charcters(self, controller_details,
                                                                                          dialog):
        """
        Deleting the already exists file during the save As
        :param controller_details:creat new project details
        :param dialog:the dialog in which we are testing ex:OPEN,Project Window
        """
        project_name = common.get_invalid_filename(KoolProg_verify.special_characters_for_file_name)
        rev_proj_name = project_name[::-1]
        if controller_details["controllerFamily"] in inputConfig.codenumber_popup_expected_controller_families:
            self.keyword_sleep(10)
            self.prj_window_click_on_saveas_button()
            self.popup_messagebox_codenumber_window_is_visible(visible=True)
            self.popup_messagebox_click_codeNumberpopup_ok()
            self.Window_Dialog_is_enabled(dialog)
            self.keyword_prj_window_write_project_path_with_file_name(rev_proj_name, dialog)
        else:
            self.keyword_sleep(10)
            self.prj_window_click_on_saveas_button()
            self.Window_Dialog_is_enabled(dialog)
            self.keyword_prj_window_write_project_path_with_file_name(rev_proj_name, dialog)
            # self.click_open_button_in_open_window()

    def keyword_open_recently_created_project(self, project_name, controller_family, dialog):
        """"
        Open the recently created project 
        :param controller_family:controller family 
        :param dialog:the dialog in which we are testing ex:OPEN,Project Window
        """
        path = self.path
        filename_extension = self.keyword_get_filename_with_extension(project_name, controller_family)
        self.set_param_window_click_open_button()
        self.Window_Dialog_is_enabled(dialog)
        self.keyword_open_project_file_in_given_path(path, filename_extension, dialog)

    def keyword_copy_rename_valid_filename_and_Open_file(self, filepath, filename, controller_family, dialog):
        """
        Copying the same last created file with new valid filename and open the same
        :param filename:last created file name captured from temp file
        :param filepath:last file created path captured from temp file
        :param controller_family:last file created controller_family captured from temp file
        :dialog dialog:the dialog in which we are testing ex:OPEN,Project Window
        """
        newfilename = common.randString(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Product_Details_Selection_Window"]
            ["text_length"]["project_name_length"])
        newfilename = self.keyword_get_filename_with_extension(newfilename, controller_family)
        filename = self.keyword_get_filename_with_extension(filename, controller_family)
        if self.renamefile_and_copy(filepath, filename, newfilename):
            newfilepathwithinvalidfilename = filepath + "\\" + newfilename
            self.Window_Dialog_write_project_path_and_click_open_button(newfilepathwithinvalidfilename, dialog)
            self.report_log("keyword_copy_rename_valid_filename_and_Open_file is passed ...",
                            "sym = '{}' ".format(filepath))
        else:
            self.report_fail("keyword_copy_rename_valid_filename_and_Open_file is failed",
                             " check event filepath ={}".format(filepath))

    def keyword_copy_rename_Invalid_filename_and_Open_file(self, filepath, filename, controller_family, dialog):
        """
         Copying the same last created file with new Invalid filename and open the same
        :param filename:last created file name captured from temp file
        :param filepath:last file created path captured from temp file
        :param controller_family:last file created controller_family captured from temp file
        :dialog dialog:the dialog in which we are testing ex:OPEN,Project Window
        """
        changedfilename = common.get_invalid_filename(KoolProg_verify.special_characters_for_file_name)
        newfilename = self.keyword_get_filename_with_extension(changedfilename, controller_family)
        filename = self.keyword_get_filename_with_extension(filename, controller_family)
        if self.renamefile_and_copy(filepath, filename, newfilename):
            newfilepathwithinvalidfilename = filepath + "\\" + newfilename
            self.Window_Dialog_write_project_path_and_click_open_button(newfilepathwithinvalidfilename, dialog)
            self.report_log("renamefile_and_copy is passed ...",
                            "sym = '{}' ".format(filepath))
        else:
            self.report_fail("renamefile_and_copy is failed",
                             " check event filepath ={}".format(filepath))

    def verify_connected_controller_details(self, controller_details):
        """
        Verify connected controller details in project window.
        :param controller_details: Controller details.
        :return:
        """
        self.prj_window_check_online_controller_unconnected_image_is_visible(True, 60)
        self.prj_window_check_online_controller_is_visible(controller_details["controllerFamily"], True, 60)

        online_details = self.prj_window_get_online_controller_details(controller_details["controllerFamily"])
        ui_proj_product_detail = self.prj_window_get_project_detail_values(controller_details["controllerFamily"])
        self.report_log("onlie details ={}".format(online_details))
        self.report_log("ui_proj_product_detail={}".format(ui_proj_product_detail))

        if "softwareVersion" in online_details.keys():
            online_details["softwareVersion"] = online_details["softwareVersion"].replace("SW: ", "")

        for key in online_details.keys():
            if not (online_details[key] in ui_proj_product_detail[key]):
                self.report_fail("connected controller is different values key={} ,online={} ,uivalue = {}".format(
                    key, online_details[key], ui_proj_product_detail[key]))

        self.prj_window_check_online_controller_image(self.get_product_image_path(
            controller_details["controllerVariant"]))

    def keyword_disable_all_ports(self):
        """
        Disables all serial ports.
        :return:
        """
        self.disable_all_ports()

    def keyword_enable_port(self, name, controllerVariant=None,softwareVersion=None):
        """
        Enable serial port / USB Port given in argument.
        :param name: serial/USB port name.
        :return: True if succeeds.
        """
        if name == Simulator.portName:
            path = inputConfig.simulator_path.format(controllerVariant,softwareVersion)
            return self.enable_port(name, path)
        elif self.enable_port(name)== "USBOperationSucceeded":
            return True
        elif self.enable_port(name) == self.COMPORT_PROCESS_SCCEED:
            return True
        elif self.enable_port(name) != self.COMPORT_PROCESS_SCCEED:
                self.report_fail("Could not found serial port '{}' in this PC ...".format(name))
        else:
            return False
        
    def keyword_enable_all_ports(self):
        """
        Enable all ports.
        :return: True if succeeds.
        
        """
        if self.enable_all_ports() == "USBOperationSucceeded":
            return True
        elif self.enable_all_ports() == self.COMPORT_PROCESS_SCCEED:
            return True
        elif self.enable_all_ports() != self.COMPORT_PROCESS_SCCEED:
                self.report_fail("Could not found serial port '{}' in this PC ...".format(name))
        else:
            return False

    def keyword_set_preference_path_as_working_directory(self):
        """
        Set a directory to create project.
        :return: dict of working directory
        Example: {"PROJECT_WORKING_DIR":working_path}
        """
        working_path = self.get_the_path_from_preference_window()
        self.Preferences_window_click_Save_button()
        self.popup_messagebox_window_click_ok_button("HOME_WINDOW")
        return {"PROJECT_WORKING_DIR": working_path}

    def keyword_verify_temp_path_in_open_dialog(self, details):
        """
        Verify explorer path in open dialog.
        :return:
        """
        UI_explorer_path = self.Window_Dialog_get_explorer_path("OPEN")
        project_path = details["TEMP_DIR"]

        self.report_log("UI open dialog explorer_path ={}".format(UI_explorer_path))
        self.report_log("project expected project_path ={}".format(project_path))
        UI_explorer_path = UI_explorer_path.replace("Address: C:", "C:")

        if not common.compare_uincode_lines(UI_explorer_path, project_path):
            self.report_fail("Expected path = '{}' and  open dialog is different = '{}'".format(project_path,
                                                                                                UI_explorer_path))

    def keyword_click_saveas_button_but_dont_save_project_in_temp_location(self, controller_details):
        """
        Save project in temporary location.
        :return:
        """
        self.open_saveas_window_in_project_window(controller_details)

        self.keyword_sleep(5)
        project_path = self.get_cleanTemporay_directory(controller_details["PROJECT_WORKING_DIR"])

        self.Window_Dialog_write_project_path(project_path, "SAVEAS")
        self.Window_Dialog_click_save_button("SAVEAS")
        self.keyword_sleep(2)
        self.Window_Dialog_click_cancel_button("SAVEAS")
        return {"TEMP_DIR": project_path}

    def keyword_prj_window_click_saveas_button(self, controller_details):
        """
        Open saveas window in project window.
        :param controller_details: controller details of selected controller.
        :return:
        """
        self.prj_window_click_on_saveas_button()
        if controller_details["controllerFamily"] in inputConfig.codenumber_popup_expected_controller_families:
            self.codenumber_popup_window_visible()
            self.code_number_popup_window_ok_button()

    def keyword_verify_working_path_in_dialog(self, controller_details, dialog="OPEN"):
        """
        Verify explorer path in dialog.
        :param controller_details: New project details.
        :return: True if succeeds.
        """
#         self.open_saveas_window_in_project_window(controller_details)
#         self.keyword_sleep(5)
        UI_explorer_path = self.Window_Dialog_get_explorer_path(dialog)
        self.report_log("UI open dialog explorer_path ={}".format(UI_explorer_path))
        project_path = controller_details["PROJECT_WORKING_DIR"]
        self.report_log("project expected project_path ={}".format(project_path))

        UI_explorer_path = UI_explorer_path.replace("Address: C:", "C:")
        if not common.compare_uincode_lines(UI_explorer_path, project_path):
            self.report_fail("Expected path = '{}' and  dialog is different = '{}'".format(project_path,
                                                                                                UI_explorer_path))

    def keyword_go_to_directory_opendialog(self, dir, dialog):
        """
        Go to directory in open dialog window.
        :param dir: directory to open.
        :param dialog: name of dialog
        """
        self.Window_Dialog_write_project_path(dir, dialog)
        self.Window_Dialog_click_open_button()

    def keyword_verify_temp_path_not_in_open_dialog(self, details):
        """
        Verify explorer path in open dialog.
        :return:
        """
        project_path = details["TEMP_DIR"]
        self.keyword_sleep(5)
        UI_explorer_path = self.Window_Dialog_get_explorer_path("OPEN")
        self.report_log("UI open dialog explorer_path ={}".format(UI_explorer_path))
        self.report_log("project expected project_path ={}".format(project_path))
        UI_explorer_path = UI_explorer_path.replace("Address: C:", "C:")
        if common.compare_uincode_lines(UI_explorer_path, project_path):
            self.report_fail("Expected path = '{}' and  open dialog is different = '{}' should not be equal".format(
                project_path,
                UI_explorer_path))


    def keyword_copy_project_to_temp_directory(self, project_name, project_dire_path, controllerFamily):
        """
        Copy project file to temporary directory.
        :param project_name: project name
        :param project_dire_path: project path
        :param controllerFamily: controller family
        :return: temp path
        """
        project_path = project_dire_path + "\\" + project_name + "." + inputConfig.project_file_filters[
            controllerFamily]
        temp_path = self.get_cleanTemporay_directory(project_dire_path)
        self.report_log("current project loc ='{}' ".format(project_path))
        self.report_log("temp_path ='{}'".format(temp_path))
        common.copy_file_to_dir(project_path, temp_path)
 
        return {"TEMP_DIR": temp_path}

    def keyword_modify_parameter_values_in_duplicate_project_file(self, details, project_name):
        """
        Modify parameters in xml project file.
        :param details:
        :param project_name : Project Name 
        :return: None
        """
        self.report_log("details={}".format(details))
        project_path = details["TEMP_DIR"] + "\\" + project_name + "." + inputConfig.project_file_filters[
            details["controllerFamily"]]

        self.project_xmlfile_parse(project_path)
        for i, param in enumerate(details["Parameters"]["ParameterName"]):
            self.xmlfile_set_value_for_parameter_name(param, str(details["Parameters"]["Value"][i]))
        self.xml_write()

    def keyword_get_filename_with_extension(self,filename,controller_family):
        """
        Get the file name extension based on the controller family
        :param filename:filename from create new
        :param controller family:controller family of project being created
        """
        cont = KoolProg_verify.controller_family_with_file_extension
        for key in cont:
            if key == controller_family:
                fileextension = cont[key]

        filename = filename + fileextension
        if not filename:
            return False
        else:
            return filename

    def renamefile_and_copy(self, filepath, oldfilename, newchangedfilename):
        """
        Gets row count of the dataGrid in KoolProg.
        :param sym_name: Symbolic name of dataGrid.
        :param filepath:filepath of project to be created
        :param newchangedfilename:newchangedfilename either valid or invalid based on the scenario
        :return: Row count of the dataGrid.
        """
        oldfilepath = filepath + "\\" + oldfilename
        if not common.path_exists(oldfilepath):
            return False
        else:
            filepathwithnewname = filepath + "\\" + newchangedfilename
            common.copy_file(oldfilepath, filepathwithnewname)
            return True

    def Window_Dialog_write_project_path_and_click_open_button(self, project_file, dialog):
        """
        Gets row count of the dataGrid in KoolProg.
        :param project_file: filepath of project to be created
        :param dialog: name of dialog
        """
        self.Window_Dialog_write_project_path(project_file, dialog)
        self.Window_Dialog_click_open_button()

    def keyword_set_param_window_check_close_button_tooltip_text(self):
        """
        Verifies tooltip of close button in set Parameters Window.
        """
        self.set_param_window_compare_close_button_tooltip(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["tooltip"]["close_button"])

    def keyword_set_param_window_check_open_button_tooltip_text(self):
        """
        Verifies tooltip of open button in set Parameters Window.
        """
        self.set_param_window_compare_open_button_tooltip(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["tooltip"]["open_button"])

    def keyword_set_param_window_compare_import_controller_model_button_tooltip(self):
        """
        Verifies tooltip of import controller model button in set Parameters Window.
        """
        self.set_param_window_compare_import_controller_model_button_tooltip(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["tooltip"]["import_controller_model"])

    def keyword_set_param_window_compare_import_setting_from_controller_button_tooltip(self):
        """
        Verifies tooltip of import setting from controller button in set Parameters Window.
        """
        self.set_param_window_compare_import_setting_from_controller_button_tooltip(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["tooltip"]["import_settings_from_controller"])

    def keyword_set_param_window_get_open_recent_project_files_tooltip_list(self):
        """
        Gets recent project files tooltip list from set Parameter Window. 
        """
        tooltip = True
        tooltips_of_projects = self.set_param_window_get_open_recent_project_files_list(tooltip)
        return {"TOOLTIP_LIST_OF_PROJECTS_CREATED": tooltips_of_projects}

    def keyword_check_the_recent_file_tooltip(self, project_details):
        """
        Checks the recent file tooltip.
        :param project_details: current project details.
        
        """
        project_name = self.keyword_get_filename_with_extension(project_details["project_name"],
                                                                project_details["controllerFamily"])
        tooltip_to_check = project_details["PROJECT_WORKING_DIR"] + "\\" + project_name
        self.report_log("Tooltip TestData={}".format(tooltip_to_check))
        for aDict in project_details["TOOLTIP_LIST_OF_PROJECTS_CREATED"]:
            for k, v in aDict.items():
                if project_details["project_name"] == k:
                    tooltip_from_UI = v

        self.report_log("Tooltip from UI={}".format(tooltip_from_UI))
        if tooltip_from_UI != tooltip_to_check:
            self.report_fail("Recent file tooltip in setParameter window testdata= '{}' and  UI = '{}' passed".format(
                tooltip_to_check,
                tooltip_from_UI))

    def keyword_check_set_paramter_win_buttons_header_label_text(self):
        """
        Check the set parameter window header,buttons and label texts
        """
        self.set_param_window_check_text_label_controller_model(
            KoolProg_verify.Text_validation_in_windows["windows"]["set_parameter_window"][
                "controller model header text"])
        self.set_param_window_check_text_label_import_controller_model_button(
            KoolProg_verify.Text_validation_in_windows["windows"]["set_parameter_window"][
                "controller model header text"])
        self.set_param_window_check_text_label_import_settings_from_controller_button(
            KoolProg_verify.Text_validation_in_windows["windows"]["set_parameter_window"][
                "import setting controller label text"])
        self.set_param_window_check_text_label_new_button(
            KoolProg_verify.Text_validation_in_windows["windows"]["set_parameter_window"]["New label text"])
        self.set_param_window_check_text_label_open_button(
            KoolProg_verify.Text_validation_in_windows["windows"]["set_parameter_window"]["open label text"])
        self.set_param_window_check_text_label_setparameter(
            KoolProg_verify.Text_validation_in_windows["windows"]["set_parameter_window"]["set parameter header text"])
        self.set_param_window_check_text_label_setting_files(
            KoolProg_verify.Text_validation_in_windows["windows"]["set_parameter_window"]["setting file header text"])
        self.set_param_window_check_text_label_open_a_recent_setting_file(
            KoolProg_verify.Text_validation_in_windows["windows"]["set_parameter_window"][
                "open recent setting file header text"])



    def keyword_check_new_project_header_text(self):

        """
        Validate the new project header text in controller selection window.

        """

        self.new_project_window_check_header_text(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Controller_Selection_Window"][
                "label"]["header_value"])

    def keyword_check_new_project_select_controller_model_label_text(self):

        """
        Validate the new project  select controller model label text in controller selection window.

        """

        self.new_project_window_check_select_controller_model_label_text(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Controller_Selection_Window"][
                "label"]["select_controller_model_label_text"])
        
    def keyword_create_new_project_check_close_button_tooltip(self):

        """
        Validate close button tooltip in new project window
        """

        self.create_new_project_check_close_button_tooltip(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["tooltip"]["close_button"])
        

    def keyword_verify_project_name_should_not_accept_special_characters(self,dialog):
        """
        Verify the special characters are not allowed in project name.
        :param dialog: name of dialog
        """
        for _char in KoolProg_verify.special_characters:
            self.create_new_project_set_text_in_project_name_txt_box(_char)
            self.popup_messagebox_window_is_visible(dialog)
            self.popup_messagebox_window_click_ok_button(dialog)


    def keyword_verify_project_description_should_not_accept_special_characters(self,dialog):
        """
        Verify the special characters are not allowed in project description.
        :param dialog: name of dialog
        """
        for _char in KoolProg_verify.special_characters:
            self.create_new_project_set_text_in_project_description(_char)
            self.popup_messagebox_window_is_visible(dialog)
            self.popup_messagebox_window_click_ok_button(dialog)

    def keyword_check_supported_filters_texts_in_window_dialog(self, window):
        """
        Compare open dialog filters in dialog.
        :param ui_open_filter_text: UI open filters
        :param window:window name
        """
        list=KoolProg_verify.koolprog_supported_extensions["Copy_to_controller_open_window"]
        ui_open_filter_text=self.Window_Dialog_check_supporting_filters(window) 
        filter_compare = common.compare_list(ui_open_filter_text, list)

        if not filter_compare:
            self.report_fail(" All filters are not matching")
        else:
            self.report_pass(" All filters are  matching")

    def keyword_check_default_filter_text_in_window_dialog(self, dialog):
        """
        Compare filter text in dialog
        :param dialog : open dialog
        """
        ui_open_filter_text = self.Window_Dialog_get_filter_text(dialog)
        filter_compare = common.compare_uincode_lines(ui_open_filter_text, KoolProg_verify.default_project_filter_text)

        if filter_compare:
            self.report_pass(" filter text is matching")
        else:
            self.report_fail(" filter text is not matching")
                        
    def keyword_get_parameter_and_values_from_datagrid(self, parsed_datagrid):
        """
        Create dic which will have parameter as key and their values as a value
        :param parsed_datagrid: database dict contains parameter name and their value
        :return: Dictionary which has "parameter" as key and their "value" as value.
        """
        dic = []
        for i in parsed_datagrid:
            for key in i:
                for key in i[key]:
                    dic.append({key["ParameterName"]: key["Value"]})
        return dic

    def keyword_get_database_integer_parameters_with_values(self, controller_info_dict):
        """
        Get database parameters having datatype has integer types and get random data between range.
        :param controller_info_dict: Dictionary will be a selected row from excel sheet sheet.
        :return: integer Parameters table with values.
        """
        self.keyword_parse_database_csv_file(controller_info_dict)
        int_index = self.get_column_indices_of_given_datatype("int")
        table = self.get_database_for_given_indices(int_index)
        parameter_table = dict()
        parameter_table["GroupName"] = table["GroupName"]
        parameter_table["MenuCode"] = table["MenuCode"]
        parameter_table["ParameterName"] = table["ParameterName"]
        parameter_table["Datatype"] = table["Datatype"]
        parameter_table["DefaultValue"] = table["DefaultValue"]
        if controller_info_dict["controllerFamily"] == KoolProg_verify.Default_value_by_means_of_application_selection["controllerFamily"]:
            application_default_value_column_name = KoolProg_verify.Default_value_by_means_of_application_selection["application"][controller_info_dict["controllerApplication"]]
            parameter_table[application_default_value_column_name] = table[application_default_value_column_name]
        value_list = list()
        parameter_menuCode_covered = []
        index_duplicates_to_be_removed = []
        for i in range(len(table["MenuCode"])):
            if table["ParameterName"][i] in parameter_menuCode_covered:
                index_duplicates_to_be_removed.append(i)
            else:
                parameter_menuCode_covered.append(table["ParameterName"][i])
            _min = table["MinValue"][i]
            _max = table["MaxValue"][i]
            valid_value = False
            while valid_value == False:
                val = common.get_random_int_value_for_a_range_of_values(_min, _max)
                if str(val) == str(int(float((table["DefaultValue"][i])))):
                    continue
                value_list.append(str(val))
                valid_value = True
               
        parameter_table["Value"] = value_list
        
        self.report_log("Index to be removed:",'{}'.format(index_duplicates_to_be_removed))
        
        for i in index_duplicates_to_be_removed:
            parameter_table = self.keyword_remove_index_in_all_lists_from_dict(i,parameter_table)
        
        return {"Parameters": parameter_table}

    def keyword_remove_index_in_all_lists_from_dict(self,inp_index,dict):
        """
        Removes the specified index from all lists in a dictionary.
        :param inp_index: Input index
        :param dict: Dictionary from which a specified index is removed in all lists.
        Eg: dict = {"GroupNames":["G1","G2","G3"],"ParameterNames":["P1","P2","P3"]}
            if inp_index = 1, index 1 from the above lists get removed and new dict looks like,
            dict = {"GroupNames":["G1","G3"],"ParameterNames":["P1",P3"]}
        
        """
        for _,v in dict.items():
            for index, _ in enumerate(v):
                if index == inp_index:
                    v.pop(index)
        
        return dict
    
    def keyword_remove_extra_paramter_online(self, parameter_list, offline = True):
        """
        Remove extra parameter from parameter list
        :param parameter_list: list of integer parameter
        :param offline: Type of feature 
        return: parameter_list
        """
        if offline == False:
            for key, value in parameter_list.items():
                if key == "ParameterName":
                    for val in value:
                        print(val)
                        if val == "Contrast" or val == "Controller address":
                            index = value.index(val)
                            for key, value in parameter_list.items():
                                value.pop(index)
                            self.keyword_remove_extra_paramter_online(parameter_list, False)
    
        return {"Parameters" : parameter_list}
 
            
    def keywords_set_integer_parameter_values_in_datagrid(self, parameter_list, controller_family):
        """
        Get integer parameter and their values and set those values in datagrid
        :param parameter_list: list of integer parameter
        :param controller_family: name of controller family
        return: True if value is written in datagrid for particular parameter name
        """
        groupNames = parameter_list["GroupName"]
        parameterNames = parameter_list["ParameterName"]
        setValues = parameter_list["Value"]


        parsed_datagrid = self.prj_window_parse_the_datagrid()
        datagrid_params = self.keyword_get_parameter_and_values_from_datagrid(parsed_datagrid)

        self.report_log("parameter_list= {}".format(parameter_list))
        self.report_log("UI datagrid_params= {} ".format(datagrid_params))

        parameters_not_found_in_dataGrid = []
             
        for (groupName,parameterName,setValue) in zip_longest(groupNames, parameterNames,setValues):

            self.report_log("groupName= {}".format(groupName))
            self.report_log("parameterName= {}".format(parameterName))

            lst = common.find_key_list_of_dict(datagrid_params, parameterName)

            if lst:

                    if controller_family in KoolProg_verify.controller_family_with_wizard[:1]:
                        grpName = self.get_group_name_from_multi_level_group(groupName)
                        self.prj_window_set_value_in_datagrid(grpName,parameterName,setValue)
                    else:
                        self.prj_window_set_value_in_datagrid(groupName,parameterName,setValue)
            else:
                parameters_not_found_in_dataGrid.append(parameterName)
      
        if len(parameters_not_found_in_dataGrid)>0:
            self.report_fail("Parameters that are not found in dataGrid= {} ".format(parameters_not_found_in_dataGrid))

        return True

    def keyword_check_saved_file_with_code_number_project_name_should_open_if_applicable(self,controller_details):
        """
        Check saved file with code number project name is opened.
        :param controller_details:create new project details
        """
        if controller_details["controllerFamily"] in inputConfig.codenumber_popup_expected_controller_families:
            UI_project_name = self.prj_window_get_project_name()

            self.report_log("UI_project_name={}".format(UI_project_name))

            if UI_project_name != controller_details["CodeNumber_FileName"]:
                self.report_fail("UI project name is not equal; UI project name = {} , expected controller details {}"
                                 .format(UI_project_name, controller_details["CodeNumber_FileName"]))

    def keyword_check_background_color_and_circle_color(self,backgroundColor_RGBList,bgColor,circleColor_RGBList,circleColor):
        """
        Checks the background color and circle color
        :param backgroundColor_RGBList: RGB List of background Color.
        :param circleColor_RGBList: RGB List of circlr Color.
        :param bgColor: Input background color
        :param circleColor:Input circle color
        :return: True if color matches the criteria, False otherwise.

        """
        if circleColor == "Grey":
            colorList = KoolProg_verify.RGB_for_circle_color_in_dataGrid_after_value_change
            if (colorList[0]) == (circleColor_RGBList[0]) and (colorList[1]) == (circleColor_RGBList[1]) and (colorList[2]) == (circleColor_RGBList[2]):
                pass
            else:
                return False
            
        if bgColor == "Pink":
            colorList = KoolProg_verify.RGB_for_background_color_in_dataGrid_after_value_change
            if (colorList[0]) == (backgroundColor_RGBList[0]) and (colorList[1]) == (backgroundColor_RGBList[1]) and (colorList[2]) == (backgroundColor_RGBList[2]):
                pass
            else:
                return False
        if bgColor == "Not Pink":
            colorList = KoolProg_verify.RGB_for_background_color_in_dataGrid_after_value_save
            if (colorList[0]) == (backgroundColor_RGBList[0]) and (colorList[1]) == (backgroundColor_RGBList[1]) and (colorList[2]) == (backgroundColor_RGBList[2]):
                pass
            else:
                return False
        return True


    def keyword_write_the_different_project_name_instead_of_created_project_name(self,controller_family, project_path, dialog):
        """
        deleting the already exists file during the save As
        :param controller_family: controller_family
        :param project_path: project path
        :param dialog:the dialog in which we are testing ex:OPEN,Project Window
        :return: different project name
        """
        project_name = common.randString(7)
        self.keyword_check_delet_if_given_file_already_exist_before_Save_As(project_name,controller_family, project_path)
        
        project_name = self.keyword_get_filename_with_extension(project_name, controller_family)

        project_path = project_path + "\\{}"

        project_project_with_name = project_path.format(project_name)
        
        self. Window_Dialog_write_project_path(project_project_with_name, dialog)

        return {"Different_Project_Name":project_name}

    def keyword_check_saved_file_with_different_project_name_should_open(self,controller_details):
        """
        Check saved file with different project name is opened.
        :param controller_details:create new project details

        """

        UI_project_name = self.prj_window_get_project_name()

        self.report_log("UI_project_name={}".format(UI_project_name))
        
        controllername_and_extensionList = controller_details["Different_Project_Name"].split('.')

        if (UI_project_name).rstrip() != (controllername_and_extensionList[0].rstrip()):
            self.report_fail("UI project name is not equal; UI project name = {} , expected controller details {}"
                             .format(UI_project_name, controller_details["Different_Project_Name"]))
    
    def keyword_split_file_name_and_extension(self, filename_with_extension):
        """
        Split filename from extension.
        :Param filename_with_extension: Filename with extension
        :return: filename without extension.
        """
        filename, file_extension = os.path.splitext(filename_with_extension)
        return {"filename":filename}
        
    def keyword_open_created_file_in_default_path(self, PROJECT_WORKING_DIR,project_name,controllerFamily):
        """
        Open the created project file in default path.
        :param PROJECT_WORKING_DIR : Project working directory
        :param project_name: Project name
        :Param controllerFamily: Controller family.
        """
        project_path = PROJECT_WORKING_DIR + "\\{}"

        project_name = self.keyword_get_filename_with_extension(project_name, controllerFamily)

        project_file = project_path.format(project_name)

        self.Window_Dialog_write_project_path(project_file, "OPEN")   
           
           
    def keyword_check_the_saved_file_displays_in_recent_project_list_in_setParameter_Window(self, project_details):
        """
        Checks the saved file displays in recent project list in setParameter Window.
        :param project_details: current project details.
        
        """

        tooltip_to_check = project_details["PROJECT_WORKING_DIR"] + "\\" + project_details["Different_Project_Name"]
        self.report_log("Tooltip TestData={}".format(tooltip_to_check))
        
        tooltip_from_UI = None
        for aDict in project_details["TOOLTIP_LIST_OF_PROJECTS_CREATED"]:
            for k, v in aDict.items():
                k = self.keyword_get_filename_with_extension(k, project_details["controllerFamily"])
                if project_details["Different_Project_Name"] == k:
                    tooltip_from_UI = v
                    break
            if tooltip_from_UI !=None:
                break
                
        
        self.report_log("Tooltip from UI={}".format(tooltip_from_UI))
        if tooltip_from_UI != tooltip_to_check:
            self.report_fail("Recent file tooltip in setParameter window testdata= '{}' and  UI = '{}' failed".format(
                tooltip_to_check,
                tooltip_from_UI))
        else:
            self.report_log("Recent file tooltip in setParameter window testdata= '{}' and  UI = '{}' passed".format(
                tooltip_to_check,
                tooltip_from_UI))
            
    def write_project_name_as_special_characters(self,dialog):
        """
        Writes project name as special characters.
        :param controller_details:creat new project details
        :param dialog:the dialog in which we are testing ex:OPEN,Project Window
        """
        spcl_char = KoolProg_verify.windows_special_characters
        project_name = ' '.join([str(elem) for elem in spcl_char])
        rev_proj_name = project_name[::-1]
        
        self.Window_Dialog_write_project_path(rev_proj_name, dialog)
        
        return {"ProjectName_With_SpecialCharacters":rev_proj_name}
        
    def keyword_verify_file_name_is_displayed_in_Dialog_EditBox(self,projectName,dialog):   
        """
        Checks if the entered project name with special character is displayed in saveAs Dialog EditBox.
        :param projectName: Project Name with special character that is entered.
        :return:True if succeeds.
        
        """
         
            
        UI_project_name = self.Window_Dialog_get_file_name(dialog)
        self.report_log("UI_project_name={}".format(UI_project_name))
         
        if common.remove_spaces_from_string(UI_project_name) != common.remove_spaces_from_string(projectName):
            self.report_fail("UI project name is not equal; UI project name = {} , expected controller details {}"
                            .format(UI_project_name, projectName))
        return True


    def write_project_name_as_special_characters_along_with_path(self,dialog,project_details):
        """
        Writes project name along with path as special characters.
        :param project_details:creat new project details
        :param dialog:the dialog in which we are testing ex:OPEN,Project Window
        """
        
        spcl_char = KoolProg_verify.windows_special_characters
        project_name = ' '.join([str(elem) for elem in spcl_char])
        rev_proj_name = project_name[::-1]
        
        project_path = project_details["PROJECT_WORKING_DIR"] + "\\" + rev_proj_name

        #project_file_with_path = project_path.format(KoolProg_verify.windows_special_characters,rev_proj_name)

        self.Window_Dialog_write_project_path(project_path, dialog)
        
        return {"ProjectName_With_SpecialCharacters":project_path}






###################### KoolProg Manual Window ##########################

    def keyword_help_window_enable(self):
        """
        Verify koolprog manual window is enable
        """
        self.help_window_Enabled()
        self.help_window_visible()
        
    def keyword_koolprog_manual_window_check_header_text(self):
        """
        Verify text of header in koolprog manual window
        """
        self.help_window_check_header_text(KoolProg_verify.window_property["home"]["help"]["header_text"])

###################### KoolProg Manual Window ##########################

###################### About WIndow ##########################

    def keyword_about_window_enable(self):
        """
        Verify about window is enable
        """
        self.about_window_is_Enabled()
        self.about_window_is_visible()
        
    def keyword_about_window_check_text(self):
        """
        Verify text header, X button, koolprog_label and close button in about screen
        """
        self.about_window_check_header_text(KoolProg_verify.window_property["home"]["about"]["header_text"])
        self.about_window_check_X_button_text(KoolProg_verify.window_property["home"]["about"]["X_button_text"])
        self.about_window_check_koolprog_label_text(KoolProg_verify.window_property["home"]["about"]["koolprog_label_text"])
        self.about_window_check_close_button_text(KoolProg_verify.window_property["home"]["about"]["close_button_text"])
        
    def keyword_about_window_check_koolprog_version_text(self):
        
        """
        Verify Text of KoolPorg version
        """ 
        self.about_window_check_koolprog_version_label_text(KoolProg_verify.window_property["home"]["about"]["version_label"])
        self.about_window_check_koolprog_version(KoolProg_verify.window_property["home"]["about"]["version_text"])

    def keyword_about_window_check_copy_right_text(self):
        """
        Verify Text of copyright
        """
        self.about_window_check_right_reserved_text(KoolProg_verify.window_property["home"]["about"]["copyright_Label"])

###################### About WIndow ##########################


######################## Preference Window ###################

    def keyword_preference_window_verify_header_text(self):
        """
        Verify header text in preference window
        """
        self.Preferences_window_check_header_text(KoolProg_verify.window_property["Preference_Window"]["label"]["text"]["header_label"])
        
    def keyword_preference_window_verify_label_text(self):
        """
        Verify text of label in preference window
        """
        self.Preferences_window_check_Language_label_text(KoolProg_verify.window_property["Preference_Window"]["label"]["text"]["Language_Label"])
        self.Preferences_window_check_SaveFilesOn_label_text(KoolProg_verify.window_property["Preference_Window"]["label"]["text"]["Save Files On_Label"])
        self.Preferences_window_check_Unit_label_text(KoolProg_verify.window_property["Preference_Window"]["label"]["text"]["Unit_Label"])
        self.Preferences_window_check_Baudrate_label_text(KoolProg_verify.window_property["Preference_Window"]["label"]["text"]["CAN_Baudrate_label"])
        self.Preferences_window_check_UsePasswordProtection_label_text(KoolProg_verify.window_property["Preference_Window"]["label"]["text"]["Use password protection"])
        
    def keyword_perfernece_window_verify_button_text(self):
        """
        Verify text of label in preference window
        """
        self.Preferences_window_check_X_button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["X_Button"])
        self.Preferences_window_Browse_button_text(KoolProg_verify.window_property["Preference_Window"]["button"]["text"]["Browse_Button"])
        self.Preferences_window_check_save_button_text(KoolProg_verify.window_property["Preference_Window"]["button"]["text"]["Save_Button"])
        self.Preferences_window_check_cancel_button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["Cancel_Button"])
    
    def keyword_preference_window_verify_label_text_for_selected_language(self,selectedlanguage):
        """
        Verify text of label in selected language in preference window
        :param language: Selected language
        """
        language_dict = KoolProg_verify.window_property["Preference_Window"]["languages"][selectedlanguage]
        language = list(language_dict.keys())[0]
        self.Preferences_window_check_Language_label_text(language_dict[language]["label"]["text"]["Language_Label"])
        self.Preferences_window_check_SaveFilesOn_label_text(language_dict[language]["label"]["text"]["Save Files On_Label"])
        self.Preferences_window_check_Unit_label_text(language_dict[language]["label"]["text"]["Unit_Label"])
        self.Preferences_window_check_Baudrate_label_text(language_dict[language]["label"]["text"]["CAN_Baudrate_label"])
        self.Preferences_window_check_UsePasswordProtection_label_text(language_dict[language] ["label"]["text"]["Use password protection"])
    
    def keyword_preference_window_verify_button_text_for_selected_language(self,selectedlanguage):
        """
        Verify text of buttons in selected language in preference window
        :param language: Selected language
        """
        language_dict = KoolProg_verify.window_property["Preference_Window"]["languages"][selectedlanguage]
        language = list(language_dict.keys())[0]
        self.Preferences_window_check_X_button_text(language_dict[language]["button"]["text"]["X_Button"])
        self.Preferences_window_Browse_button_text(language_dict[language]["button"]["text"]["Browse_Button"])
        self.Preferences_window_check_save_button_text(language_dict[language]["button"]["text"]["Save_Button"])
        self.Preferences_window_check_cancel_button_text(language_dict[language]["button"]["text"]["Cancel_Button"])
    
    def keyword_preference_window_verify_only_for_AKCC_label_text_for_selected_language(self,selectedlanguage):
        """
        Verify text of "Only for AKCC-55" label in selected language in preference window
        :param language: Selected language
        """
        language_dict = KoolProg_verify.window_property["Preference_Window"]["languages"][selectedlanguage]
        if not isinstance(language_dict,dict):
            language = str(list(language_dict)[0])
        else:
            language = list(language_dict.keys())[0]
            self.Preferences_window_check_onlyForAKCC_label_text(language_dict[language]["label"]["text"]["Only_AKCC_label"])
    
    
    def keyword_preference_window_verify_default_values(self):
        """
        Verify default values for each label
        """
        self.Preferences_window_get_default_Language(KoolProg_verify.window_property["Preference_Window"]["default_values"]["language"])
        self.Preferences_window_get_default_Unit(KoolProg_verify.window_property["Preference_Window"]["default_values"]["Unit"])
        self.Preferences_window_get_default_Baudrate(KoolProg_verify.window_property["Preference_Window"]["default_values"]["CAN_Baudrate"])
    
    def keyword_preference_window_verify_baudrate_value(self):
        """
        Verify baudrate value in preference window.
        """
        self.Preferences_window_get_default_Baudrate(KoolProg_verify.window_property["Preference_Window"]["default_values"]["CAN_Baudrate"])
        
    def keyword_preference_window_select_language_from_list(self,selectedlanguage):
        """
        Select language from list of language in preference window
        :param selectedlanguage: select language
        """
        language_dict = KoolProg_verify.window_property["Preference_Window"]["languages"][selectedlanguage]
        if not isinstance(language_dict,dict):
            language = str(list(language_dict)[0])
        else:
            language = list(language_dict.keys())[0]
        self.Preferences_window_select_languange_from_List_of_Languages(language)
        if selectedlanguage == (KoolProg_verify.AKCC_Supported_language):
            self.Preferences_window_check_Only_for_AKCC55_label_is_visible()

    def keyword_preference_window_select_random_baudrate(self):
        """
        Select random baudrate from preference window
        """
        canbaudrate = self.Preferences_window_get_selected_Baudrate()
        list_canbaudrate = self.Preferences_window_get_List_of_Baudrate()
        for changed_canbaudrate in list_canbaudrate:
            random_canbaudrate = random.choice(self.Preferences_window_get_List_of_Baudrate())
            if canbaudrate == random_canbaudrate:
                continue
            else:
                self.Preferences_window_select_Baudrate_from_List_of_Baudrates(changed_canbaudrate)
            break
        return {"changed_canbaudrate" : changed_canbaudrate}
    
    def keyword_preference_window_select_random_baudrate_except_Auto_and_250K(self):
        """
        Select random baudrate from preference window except Auto and 250K.
        :return: String of changed CAN baudrate
        """
        list_canbaudrate = self.Preferences_window_get_List_of_Baudrate()
        list_canbaudrate_except_Auto_and_250K = [baudrate for baudrate in list_canbaudrate if baudrate not in inputConfig.CAN_baudrate]
        changed_canbaudrate = AKCC55.preference_window_select_random_baudrate_except_Auto_and_250K(self,list_canbaudrate_except_Auto_and_250K)
        self.Preferences_window_select_Baudrate_from_List_of_Baudrates(changed_canbaudrate)
        return {"changed_canbaudrate" : changed_canbaudrate}
        
    def keyword_preference_window_changed_language(self, selected_language):
        """
        Verify changed language should display in preference window 
        :param selected_language: selected new language name from preference window
        """
        changed_language = self.Preferences_window_get_selected_Language()
        if not common.compare_uincode_lines(selected_language, changed_language):
            self.report_fail("Selected language = '{}' and changed language is same = '{}'".format(selected_language, changed_language))
    
    def keyword_preference_window_changed_path(self):
        """
        Verify changed path should display in preference window 
        """
        selected_path = inputConfig.selected_path
        changed_path = self.Preferences_window_get_FilePath()
        if not common.compare_uincode_lines(selected_path, changed_path):
            self.report_fail("Selected path = '{}' and changed path is not same = '{}'".format(selected_path, changed_path))
    
    def keyword_preference_window_select_new_path(self):
        """
        Select new path form preference window
        """
        self.Preferences_window_Browse_dialog_create_and_select_new_folder(inputConfig.new_saveas_file_path)
        self.Window_Dialog_click_OK_button("PREFERENCE_WINDOW")
    
    def keyword_project_window_verify_saveas_path_in_toolbox_path(self):
        """
        Verify changed path should come in saveas popup window
        """
        selected_path = inputConfig.selected_path
        UI_explorer_path = self.Window_Dialog_get_explorer_path("SAVEAS")
        changed_path = UI_explorer_path.replace("Address: C:", "C:")
        if not common.compare_uincode_lines(selected_path, changed_path):
            self.report_fail("Selected path = '{}' and changed path is different = '{}'".format(selected_path, changed_path))
    
    def keyword_verify_saveas_and_preference_path(self, details):
        """
        Verify saveas and preference path should be same
        :param details:project details
        """
        if details["PROJECT_WORKING_DIR"] == details["TEMP_DIR"]:
            self.report_pass("saveas and preference path is same")
        else:
            self.report_fail("keyword_verify_saveas_and_preference_path is failed")
            
    def keyword_preference_window_changed_unit(self, selected_unit):
        """
        Verify changed unit should display in preference window 
        :param selected_unit: selected new unit name from preference window
        """
        changed_unit = self.Preferences_window_get_selected_Unit()
        if not common.compare_uincode_lines(selected_unit, changed_unit):
            self.report_fail("Selected unit = '{}' and changed unit is different = '{}'".format(selected_unit, changed_unit))
         
    def keyword_preference_window_changed_can_baudrate(self, selected_can_baudrate):
        """
        Verify changed can_baudrate should display in preference window 
        :param selected_can_baudrate: selected new can_baudrate name from preference window
        """
        changed_can_baudrate = self.Preferences_window_get_selected_Baudrate()
        if not common.compare_uincode_lines(selected_can_baudrate, changed_can_baudrate):
            self.report_fail("Selected can_baudrate = '{}' and changed can_baudrate is different = '{}'".format(selected_can_baudrate,changed_can_baudrate))
   
           
    def keyword_preference_window_changed_language_should_not_display(self, selected_language):
        """
        Verify changed language should not display in preference window 
        :param selected_language: selected new language name from preference window
        """
        changed_language = self.Preferences_window_get_selected_Language()
        if common.compare_uincode_lines(selected_language, changed_language):
            self.report_fail("Selected language = '{}' and changed language is same = '{}'".format(selected_language, changed_language))
    
    def keyword_preference_window_get_selected_language(self):
        """
        Get selected language from preference window.
        :return: Selected language.
        """
        selected_language = self.Preferences_window_get_selected_Language()
        return {"selected_language":selected_language}
        
    def keyword_preference_window_no_change_unit(self, selected_unit):
        """
        Verify changed unit should display in preference window 
        :param selected_unit: selected new unit name from preference window
        """
        changed_unit = self.Preferences_window_get_selected_Unit()
        if common.compare_uincode_lines(selected_unit, changed_unit):
            self.report_fail("Selected unit = '{}' and changed unit is same = '{}'".format(selected_unit, changed_unit))
           
    def keyword_preference_window_no_change_can_baudrate(self, selected_can_baudrate):
        """
        Verify changed can_baudrate should display in preference window 
        :param selected_can_baudrate: selected new can_baudrate name from preference window
        """
        changed_can_baudrate = self.Preferences_window_get_selected_Baudrate()
        if common.compare_uincode_lines(selected_can_baudrate, changed_can_baudrate):
            self.report_fail("Selected can_baudrate = '{}' and changed can_baudrate is same = '{}'".format(selected_can_baudrate,changed_can_baudrate))
 
    def keyword_language_verification_in_home_window(self, newlanguage):
        """
        Verify available text in home window will display in new language
        :param newlanguage: selected new language name from preference window
        """
        language_dict = KoolProg_verify.window_property["Preference_Window"]["languages"][newlanguage]
        if not isinstance(language_dict,dict):
            language = str(list(language_dict)[0])
        else:
            language = list(language_dict.keys())[0]
        if newlanguage == (KoolProg_verify.window_property["home"]["Language"][language]):
            self.Home_window_check_Setparameter_button_text(KoolProg_verify.window_property["home"]["Language"][newlanguage]["Set_Parameter"])
            self.Home_window_check_copytocontroller_button_text(KoolProg_verify.window_property["home"]["Language"][newlanguage]["Copy_To_Controller"])
            self.Home_window_check_onlineservice_button_text(KoolProg_verify.window_property["home"]["Language"][newlanguage]["On_Line_Service"])
        return {"selected_language":language}
        
    def keyword_get_all_columns_from_database_for_unit_change(self, controller_info_dict):
        """
        Get all columns and rows which have C, K or bar units from database
        :param controller_info_dict: controller details
        :return: parameter dictionary which will be affected by unit change
        """
        parameternamelist= []
        database_details = self.keyword_parse_database_csv_file(controller_info_dict)
        param_details = self.get_parameter_dict(database_details)                  
        units = KoolProg_verify.Units["Database_Supported_Units"]
        for unit in units:
            for parameter in param_details:
                for parametername,paramdetails in parameter.items():
                    for paramproperty in paramdetails:
                        for key,value in paramproperty.items():
                            if value == unit:
                                parameternamelist.append(parametername)
            
        return {"Parameters": parameternamelist}
    
    def keywords_verify_changed_units_in_datagrid(self, controller_info_dict):
        """
        Verify unit get change into the datagrid
        :param controller_info_dict: controller details
        :return: parameter dictionary which will be affected by unit change
        """
        Parameter_Name = controller_info_dict["Parameters"]
        selected_unit = controller_info_dict["selectedunit"]
        
        parsed_datagrid = self.prj_window_parse_the_datagrid()

        for i in parsed_datagrid:
            for key, values in i.items():
                for value in values:
                    for key,val in value.items():
                        if key == "ParameterName":
                            key1 = val
                            for val in Parameter_Name:
                                    self.report_log(("Parameter is found = {}". format(val)))
                        if key == "Unit" and key1 in Parameter_Name:
                            for unit in KoolProg_verify.Units[selected_unit]:
                                if val == unit:
                                    self.report_log(("Unit is got changed = {}". format(val)))
                                else:
                                    self.report_fail("Parameter does not have appropriate unit")
    
    def keyword_check_preference_window_is_available(self):
        """
        Check Preference window is available when KoolProg is opened.
        """ 
        if self.Preference_window_return_existence_of_window():
            self.Preferences_window_click_Save_button() 
            self.popup_messagebox_window_click_ok_button("HOME_WINDOW")

######################## Preference Window ###################


######################## Password Protection ################### 
        
    def keyword_preference_window_verify_password_protection_label_text(self):
        """
        Verify text of password protection option such as password, confirm password and show password
        """ 
        self.Preferences_window_check_UsePasswordProtection_label_text(KoolProg_verify.window_property["Preference_Window"]["label"]["text"]["Use password protection"])
        self.Preferences_window_check_Password_label_text(KoolProg_verify.window_property["Preference_Window"]["password_protection"]["label"]["text"]["password"])
        self.Preferences_window_check_Confirm_Password_label_text(KoolProg_verify.window_property["Preference_Window"]["password_protection"]["label"]["text"]["confirm_password"])
        self.Preferences_window_check_Password_casesensitive_label_text(KoolProg_verify.window_property["Preference_Window"]["password_protection"]["label"]["text"]["*_msg"])
        self.Preferences_window_Show_Password_label_text(KoolProg_verify.window_property["Preference_Window"]["password_protection"]["label"]["text"]["show_password"])

    def keyword_home_window_verify_change_user_button(self):
        """
        Verify change user button will enable in menu bar of home window
        """
        self.Home_window_check_change_user_is_visible()
        self.Home_window_check_change_user_is_Enabled()
        
    def keyword_home_window_verify_admin_user(self):
        """
        Verify admin user should come and verify text of admin user.
        """
        self.Home_window_check_User_label_text(KoolProg_verify.window_property["Preference_Window"]["menu_bar"]["text"]["default_username"])

    def keyword_preference_window_get_password(self):
        """
        Get password from password and edit password editbox
        :retrun : password and confirm password
        """
        ui_password = self.Preferences_window_get_Password()
        ui_confirm_password = self.Preferences_window_get_confirm_password()
        return {"password" : ui_password , "confirm_password" : ui_confirm_password}

    def keyword_preference_window_no_password_is_displaying(self):
        """
        Verify password should not show before clicking on show password option
        """
        self.Preferences_window_check_default_password(KoolProg_verify.window_property["Preference_Window"]["password_protection"]["label"]["no_show_default_password"])
        self.Preferences_window_check_default_confirm_password(KoolProg_verify.window_property["Preference_Window"]["password_protection"]["label"]["no_show_confirm_password"])
        
    def keyword_preference_window_default_password(self):
        """
        Verify default password in preference window
        """
        self.Preferences_window_check_default_password(KoolProg_verify.window_property["Preference_Window"]["password_protection"]["label"]["default_password"])
        self.Preferences_window_check_default_confirm_password(KoolProg_verify.window_property["Preference_Window"]["password_protection"]["label"]["deafult_confirm_password"])
    
    def keyword_preference_window_password_and_confirm_password_compare(self):
        """
        Verify compare password and confirm password text in editbox preference window
        """
        ui_password = self.Preferences_window_get_Password()
        ui_confirm_password = self.Preferences_window_get_confirm_password()
        if not common.compare_uincode_lines(ui_password, ui_confirm_password):
            self.report_fail("password = '{}' and confrim password is different = '{}'".format(ui_password,ui_confirm_password))

    def keyword_Preference_window_enter_password(self, newpassword):
        """
        Enter confirm password in password editbox in preference window
        :param newpassword: new confirm password
        """
        self.Preferences_window_enter_password(newpassword)
    
    def keyword_Preference_window_enter_confirm_password(self, newconfirmpassword):
        """
        Enter confirm password in confirm password editbox in preference window
        :param newconfirmpassword: new confirm password
        """
        self.Preferences_window_enter_confirm_password(newconfirmpassword)
        
    def keyword_password_window_verify_header(self):
        """
        Verify header text in password window
        """
        self.Password_window_check_header_text(KoolProg_verify.window_property["Preference_Window"]["password_protection"]["password_protection_window"]["text"]["header"])
        
    def keyword_verify_password_window_verify_label_text(self):
        """
        Verify label text in password window
        """
        self.Password_window_check_User_label_text(KoolProg_verify.window_property["Preference_Window"]["password_protection"]["password_protection_window"]["text"]["label"]["user_label"])
        #self.Password_window_check_Password_label_text(KoolProg_verify.window_property["Preference_Window"]["password_protection"]["password_protection_window"]["text"]["label"]["password_label"])
        self.Password_window_check_CaseSensitive_label_text(KoolProg_verify.window_property["Preference_Window"]["password_protection"]["password_protection_window"]["text"]["label"]["*_message"])
        self.Password_window_check_Show_Password_label_text(KoolProg_verify.window_property["Preference_Window"]["password_protection"]["password_protection_window"]["text"]["label"]["show_password_label"])

    def keyword_verify_password_window_verify_button_text(self):
        """
        Verify button text in password window
        """
        self.Password_window_check_close_button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["X_Button"])
        self.Password_window_check_Ok_Button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["ok_button"])
        self.Password_window_check_Cancel_Button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["Cancel_Button"])

    def keyword_password_window_enter_user(self, user_name):
        """
        Enter user name in password window
        :param user_name : username which need to enter in editbox
        """
        self.Password_window_enter_user(user_name)
        #return (user_name)
    
    def keyword_password_window_enter_password(self, password):
        """
        Enter password in password window
        :param password: password which need to enter in editbox
        """
        self.Password_window_enter_password(password)
        #return {"password" : password}

    def keyword_home_window_user_access_permission(self):
        """
        Verify preference, set parameter and on-line service button should be disable and help, change user and copy to controller button should be disable
        """
        self.Home_window_check_help_is_Enabled()
        self.Home_window_check_setting_button_is_Enabled(False)
        self.Home_window_check_change_user_is_Enabled()
        #self.Home_window_check_set_parameter_is_Enabled(False)
        self.Home_window_check_copy_to_controller_is_Enabled()
        self.Home_window_check_Online_service_is_Enabled(False)
    
    def keyword_preference_window_remove_password(self):
        """
        Verify remove password from editbox
        """
        self.Preferences_window_clear_password()
        self.Preferences_window_clear_confirm_password()
        
    def keyword_verify_password_and_home_window(self):
        """
        Verify password protection window and home window
        """
        try:
            self.Home_window_is_Enable()
        except Exception: 
            self.Password_window_is_Enabled()
            self.keyword_password_window_enter_password(KoolProg_verify.window_property["Preference_Window"]["password_protection"]["label"]["deafult_confirm_password"])
            self.Password_window_click_Ok_Button()
            self.Home_window_is_Enable()
            self.click_settings_icon_in_homepage_window()
            self.Preferences_window_is_visible()
            self.Preferences_window_click_password_protection_checkbox() 
            self.Preferences_window_click_Save_button() 
            self.keyword_put_to_sleep_with_respect_to_expected_performance("OFFLINE","SAVING_PASSWORD_DETAILS")
            self.popup_messagebox_window_click_ok_button("HOME_WINDOW")
            

######################## Password Protection ################### 


###################### Project Creation ##########################

    def keyword_create_multiple_random_projects(self):
        """
        Create multiple random projects
        """
        project_details = []
        for _ in range(8):
            project_details.append(self.keyword_create_prj_with_a_random_controller())
            self.keyword_put_to_sleep_with_respect_to_expected_performance("OFFLINE","PROJECT_CREATION") 
            self.click_on_disable_button_in_KoolProg()
            self.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE","DISABLING_PORT_COMMUNICATION_IN_KOOLPROG")
            self.keyword_prj_window_click_home_button()
            self.keyword_put_to_sleep_with_respect_to_expected_performance("OFFLINE","SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW")
            
        return {"LIST_OF_PROJECTS_CREATED": project_details}
    
    def keyword_new_prj_window_get_list_of_code_number(self):
        """
        Get list of the code number in the project description window..
        :return: list of items in combobox.
        """
        code_number_list = self.new_prj_window_get_list_of_code_number()
        return {"code_number_list" : code_number_list}
    
    def keyword_new_prj_window_get_list_of_software_version(self):
        """
        Get list of the software versions in the project description window..
        :return: list of items in combobox.
        """
        sw_version_list = self.new_prj_window_get_list_of_software_version()
        return {"sw_version_list" : sw_version_list}

###################### Project Creation ##########################


####################### Project Window ######################

    def keyword_prj_window_verify_search_and_viewmore_button_visible(self):
        """
        Verify, search button, search textbox and view more button is visible
        """
        self.prj_window_check_search_button_is_visible()
        self.prj_window_check_search_textbox_editor_button_is_visible()
        self.prj_window_check_viewmore_button_is_visible()
        
    def keyword_prj_window_verifiy_search_and_viewmore_button_enable(self):
        """
        Verify, search button, search textbox and view more button is enable
        """
        self.prj_window_check_search_button_is_enabled()
        self.prj_window_check_search_textbox_editor_is_enabled()
        self.prj_window_check_viewmore_button_is_enabled()
    
    def keyword_get_project_details_from_UI(self, controllerFamily):
        """
        Get the project details from the UI in project window.
        :param controllerFamily: Controller family.
        :return: Project details
        """
        prj_details = self.prj_window_get_project_detail_values(controllerFamily)
        return {"controllerCodeNo" : prj_details["controllerCodeNo"],"controllerVariant":prj_details["controllerVariant"],"softwareVersion":prj_details["softwareVersion"]}
        

####################### Project Window #######################


################## Tree view ##################

    def keyword_check_tree_view_group_not_expaned(self, controller_family):
        """
        Check tree view is not expanded in project window
        :param controller_family: string controller family name.
        """
        expand_group_list = KoolProg_verify.default_project_window_tree_expanders[controller_family]
        self.report_log("invoke -> keyword_check_tree_view_default_group_expaned ...", "expand_group_list ={}"
                        .format(expand_group_list))
        self.project_window_tree_check_item_is_expanded(expand_group_list,False)
          
################## Treeview ##################


#################### Datagrid #################

    def keyword_eliminate_readOnly_parameters_from_parsed_dataGrid(self,parsed_dataGrid):
        """
        Remove the readOnly parameters from the parsed dataGrid.
        :param parsed_dataGrid: Parsed dataGrid values.
        :return: Datagrid values after eliminating readOnly parameters with key,value pairs.
        
        """
        filtered_datagrid_eliminating_readOnly_parameters = self.keyword_eliminate_readOnly_parameters(parsed_dataGrid)
        
        return {"Parsed_dataGrid_eliminating_readOnly_parameters" : filtered_datagrid_eliminating_readOnly_parameters}
    
    def keyword_eliminate_readOnly_parameters(self,UI_dataGrid):
        """
        Eliminates readOnly parameters from the parsed dataGrid.
        :param UI_dataGrid: UI Datagrid values.
        :return: Datagrid values after eliminating readOnly parameters.
        
        """
        groupExists = False
        added_the_parameter = False
        filtered_dataGrid = []
        for aGroup in UI_dataGrid:
            for groupName,parametersDictList in aGroup.items():
                for aParameterDict in parametersDictList:
                    if aParameterDict["ReadOnly"] == False and aParameterDict["IsEnabled"] == True :
                        for indx in range(0,len(filtered_dataGrid)):
                            for key, _ in filtered_dataGrid[indx].items():
                                if key == groupName:
                                    groupExists = True
                                    filtered_dataGrid[indx][key].append(aParameterDict)
                                    added_the_parameter = True
                                    break
                            if added_the_parameter == True:
                                added_the_parameter = False
                                break
                        if groupExists == False:
                            filtered_dataGrid.append({groupName:[aParameterDict]})
                        groupExists = False
                    
        return filtered_dataGrid
    
    def keyword_get_the_complete_parameter_list_from_dataGrid_values(self,parsed_dataGrid):
        """
        Get the complete parameter List from dataGrid values.
        :param parsed_dataGrid: Parsed dataGrid.
        :return: Parameter List
        
        """
        complete_parameters_list = []
        for aGroup in parsed_dataGrid:
            for _,parametersDictList in aGroup.items():
                complete_parameters_list.extend(parametersDictList)
                
        return complete_parameters_list
    
    def keyword_select_random_parameters_from_dataGrid_values_fetched(self,parsed_dataGrid,count,readOnlyEliminated = False):
        """
        Select random parameters from dataGrid values fetched.
        :param parsed_dataGrid: Parsed datagrid values.
        :param count: No of random parameters to be selected.
        :param readOnlyEliminated: States if parsed dataGrid values includes readOnly parameters.
        
        """
        
        
        complete_parameters_list = self.keyword_get_the_complete_parameter_list_from_dataGrid_values(parsed_dataGrid)
        
                
        random_parameters_chosen = []
        while len(random_parameters_chosen) < int(count):
            parameter_info = random.choice(complete_parameters_list)
            if parameter_info in random_parameters_chosen:
                continue
            random_parameters_chosen.append(parameter_info)
        
        
        if readOnlyEliminated == False:
            return {"Random_parameters_from_dataGrid": random_parameters_chosen}
        else:
            return {"Random_parameters_from_dataGrid_with_readOnly_Eliminated": random_parameters_chosen}
        
    def keyword_select_randomly_selected_parameters_to_plot_or_favorite(self, parameters_list, type="plot"):
        """
        Select the randomly selected parameters for plotting or favorites.
        :param parameters_list: Parameters information.
        :param type:type of feature need to validate
        :return: True if succeeds.
        
        """
        
        groupNames = parameters_list["GroupName"]
        parameterNames = parameters_list["ParameterName"]
        for (groupName, parameterName) in zip_longest(groupNames, parameterNames):
            self.check_the_checkbox_in_datagrid(groupName, parameterName, type)
                
        return True

    
    
    def keyword_parseDatabase_get_integer_parameters_table(self,controller_info_dict):
        """
        Get database parameters having datatype as integer.
        :param controller_info_dict: Dictionary will be a selected row from excel sheet.
        :return: integer Parameters table.
        
        """
        parameter_table = dict()
        parametername_list=[]
        groupname_list=[]
        database_details = self.keyword_parse_database_csv_file(controller_info_dict)
        for value in database_details:
            for groupName,parametersDictList in value.items():
                for aParameterDict in parametersDictList:                
                    for parametername,paramdetails in aParameterDict.items():
                        for paramproperty in paramdetails:
                            for key,value in paramproperty.items():
                                if value == "INT":
                                    parametername_list.append(parametername)
                                    groupname_list.append(groupName)
        parameter_table["GroupName"] = groupname_list
        parameter_table["ParameterName"] = parametername_list
        return {"Integer_Parameters_Table": parameter_table}
        
    def keyword_get_database_integer_parameters_with_invalid_values(self, controller_info_dict):
        """
        Get database parameters having datatype has integer types and get string values
        :param controller_info_dict: Dictionary will be a selected row from excel sheet sheet.
        :return: integer Parameters table with values.
        """
        self.keyword_parse_database_csv_file(controller_info_dict)
        int_index = self.get_column_indices_of_given_datatype("int")
        table = self.get_database_for_given_indices(int_index)
        parameter_table = dict()

        parameter_table["GroupName"] = table["GroupName"]
        parameter_table["MenuCode"] = table["MenuCode"]
        parameter_table["ParameterName"] = table["ParameterName"]
        parameter_table["Datatype"] = table["Datatype"]
        value_list = list()
        for _ in range(len(table["MenuCode"])):
            val = common.randString()
            value_list.append(str(val[:1]))
        parameter_table["Value"] = value_list

        return {"Parameters": parameter_table}
    
    def keyword_changed_value_should_show_in_project_dataGrid_with_pink_textBox_and_grey_circle_inputs(self,project_details,parameter_list,bgColorInput,circleColorInput,CircleVisible_Input = True,modified = True ):
        """
        Verify changed values should be displayed in project file with backgroundColor and circleColor specified.
        :param modified: parameter is modified or not.
        :param project_details: Project Details
        :param parameter_list: Parameter List from input sheet to compare against KoolProg UI details.
        :param bgColorInput: Input background color of the textbox.
        :param circleColorInput: Input circle color.
        :param CircleVisible_Input: Input circle visible.
        :return: True if the modified values with specified color changes is reflected in dataGrid, False otherwise. 
        """
        
        groupNames = parameter_list["GroupName"]
        parameterNames = parameter_list["ParameterName"]
        setValues = parameter_list["Value"]
        defaultValues = parameter_list["DefaultValue"]
        
        if project_details["controllerFamily"] == KoolProg_verify.Default_value_by_means_of_application_selection["controllerFamily"]:
            defaultValues = []
            application_default_value_column_name = KoolProg_verify.Default_value_by_means_of_application_selection["application"][project_details["controllerApplication"]]
            defaultValues = parameter_list[application_default_value_column_name]
            
        parsed_datagrid = self.prj_window_parse_the_datagrid()
        
        self.report_log("parameter_list= {}".format(parameter_list))
        self.report_log("UI datagrid_params= {} ".format(parsed_datagrid))   
        
      
        failed_parameters_in_total = []    
        for (groupName,parameterName,setValue,defaultValue) in zip_longest(groupNames, parameterNames,setValues,defaultValues):
            
            
            if project_details["controllerFamily"] in KoolProg_verify.controller_family_with_wizard[:1]:
                groupName = self.get_group_name_from_multi_level_group(groupName)
            
            
            for i in parsed_datagrid:
                failed_parameters = []
                for keyGroupName, parameterList in i.items():
                    if keyGroupName == groupName:
                        for aParameterDict in parameterList:
                                if aParameterDict["ParameterName"] == parameterName:
                                    valid_color_change = self.keyword_check_background_color_and_circle_color([aParameterDict["Background_R"],aParameterDict["Background_G"],aParameterDict["Background_B"]],bgColorInput,[aParameterDict["circle_R"],aParameterDict["circle_G"],aParameterDict["circle_B"]],circleColorInput)
                                    if (str(modified) == "True"):
                                        if (aParameterDict["Value"]) == str(setValue):
                                            self.report_log("Modified value is present for parameterName= {} Value ={}".format(parameterName,setValue))
                                            if (valid_color_change== True) and (aParameterDict["CircleVisible"] == True or aParameterDict["CircleVisible"] =="True"):
                                                self.report_log("Color Changes Passed",
                                                        "backgroundColor R = '{}' , G = '{}', B= '{}', circleColor R = '{}', G ='{}', B='{}'".format(aParameterDict["Background_R"],aParameterDict["Background_G"],aParameterDict["Background_B"],aParameterDict["circle_R"],aParameterDict["circle_G"],aParameterDict["circle_B"]))
                                                break
                                            else:
                                                result = { parameterName :{"color Changed Failed" : {"bgcolor":[aParameterDict["Background_R"],aParameterDict["Background_G"],aParameterDict["Background_B"]],"circleColor":[aParameterDict["circle_R"],aParameterDict["circle_G"],aParameterDict["circle_B"]],"circle_is_visible":aParameterDict["CircleVisible"]}}}
                                                failed_parameters.append(result) 
                                                break
                                        else:
                                            self.report_log("Failed.....Modified value is not present in datagrid ...",
                                                    "UI value ='{}', input value='{}' ui_group='{}' input group = '{}' for parameter = '{}'".format(aParameterDict["Value"], setValue,keyGroupName,groupName ,parameterName))
                                            result = {parameterName:{"Modified value not present":{"UI Value":aParameterDict["Value"],"set value":setValue}}}
                                            failed_parameters.append(result)
                                            
                                    else:
                                        if (aParameterDict["Value"]) == str(int(float(defaultValue))):
                                            self.report_log("Default value is present for parameterName= {} Value ={}".format(parameterName,str(int(float(defaultValue)))))
                                            if (valid_color_change== True) and (str(aParameterDict["CircleVisible"]) == str(CircleVisible_Input)):
                                                self.report_log("Color changes Passed",
                                                        "backgroundColor R = '{}' , G = '{}', B= '{}', circleColor R = '{}', G ='{}', B='{}'".format(aParameterDict["Background_R"],aParameterDict["Background_G"],aParameterDict["Background_B"],aParameterDict["circle_R"],aParameterDict["circle_G"],aParameterDict["circle_B"]))
                                                break
                                            else:
                                                result = { parameterName :{"color Changed Failed" : {"bgcolor":[aParameterDict["Background_R"],aParameterDict["Background_G"],aParameterDict["Background_B"]],"circleColor":[aParameterDict["circle_R"],aParameterDict["circle_G"],aParameterDict["circle_B"]],"circle_is_visible":aParameterDict["CircleVisible"]}}}
                                                failed_parameters.append(result) 
                                                break
                                        else:
                                            self.report_log("Failed.....Default value is not present in datagrid ...",
                                                    "UI value ='{}', input value='{}' ui_group='{}' input group = '{}' for parameter = '{}'".format(aParameterDict["Value"], str(int(float(defaultValue))),keyGroupName,groupName ,parameterName))
                                            result = {parameterName:{"Default value not present":{"UI Value":aParameterDict["Value"],"testData":str(int(float(defaultValue)))}}}
                                            failed_parameters.append(result)
                        break
                            
                 
                if len(failed_parameters) > 0:
                    failed_parameters_in_total.append(failed_parameters)
        
        if len(failed_parameters_in_total) > 0:
            self.report_fail("keyword_changed_value_should_show_in_project_file is failed ....",
                             "failed parameters='{}'".format(failed_parameters_in_total))
        return True
       
    def keyword_parsed_the_Datagrid(self):
        """
        Parse the datagrid
        :return: parse datagrid
        """
        return {"parsed_datagrid" : self.prj_window_parse_the_datagrid()}
        
    def keyword_get_parameter_count_from_datagrid(self,parsed_dataGrid):
        """
        Get the count of parameter from datagrid
        :param parsed_dataGrid: parsed datagrid
        :return: length of complete_parameters_list
        """
        complete_parameters_list = self.keyword_get_the_complete_parameter_list_from_dataGrid_values(parsed_dataGrid)
        
        return {"parameter_count" : len(complete_parameters_list)}
        
    def keyword_project_window_verify_all_parameter_in_datagrid(self, parsed_dataGrid, parameter_count):
        """
        Verify all parameter display in datagrid after clicking on cancel button 
        :param parsed_dataGrid: parsed datagrid
        :param parameter_count: count of datagrid before searching the parameter
        """
        parameter_count_after_cancel_search = self.keyword_get_parameter_count_from_datagrid(parsed_dataGrid)
                
        if (parameter_count_after_cancel_search["parameter_count"] == parameter_count):
            self.report_log("All parameter in dataGrid is displaying")
        else:
            self.report_fail("keyword_project_window_verify_all_parameter_in_datagrid= {} ".format(parameter_count_after_cancel_search))

    def keyword_project_window_get_first_parameter_help_from_datagrid(self, column):
        """
        Return first parameter's help from datagrid
        :param column:  column name which is available in datagrid
        :return : datagrid_help : first group help from datagrid
        """
        parsed_datagrid = self.prj_window_parse_the_datagrid()
        for parameter_details in parsed_datagrid:
            for key, values in parameter_details.items():
                for value in values:
                    for key,val in value.items():
                        if key == column:
                            datagrid_help = val
                            return (datagrid_help)
                        
        self.report_fail("keyword_project_window_get_first_parameter_help_from_datagrid = '{}'".format(datagrid_help))
                                               
    
    def keyword_verify_first_parameter_help_in_first_group(self,column):
        """
        Verify help of first parameter should display in datagrid
        :param column:  column name information which is available in datagrid
        :return: if true 
        """
        datagrid_help = self.keyword_project_window_get_first_parameter_help_from_datagrid(column)
        self.project_window_tree_click_item("All")
        selected_row = self.prj_window_get_selected_row_in_dataGrid() 

        if not common.compare_uincode_lines(selected_row[column], datagrid_help):
            self.report_fail("keyword_verify_first_parameter_help_in_first_group failed, Datagrid help = '{}' and  first help is different = '{}'".format(datagrid_help,
                                                                                                selected_row[column]))
        else:
            self.report_log("keyword_verify_first_parameter_help_in_first_group = {} ".format(datagrid_help)) 
    
#################### Datagrid #################

########################### Open Option  ###############        
        
#### duplicate ######

    def keyword_browse_the_file_that_is_saved_in_temporary_location(self, temp_dir, project_name, dialog):
        """
         Browse the file that is saved in temporary location.
        :param temp_dir: temporary directory to open.
        :param project_name: Current project name.
        :param dialog: name of the window dialog
        """
        path = temp_dir + "\\" + project_name
        self.Window_Dialog_write_project_path(path,dialog)
    
    def keyword_open_project_file_in_project_window(self, project_path, project_name,dialog):
        """
        Open project file.
        :param project_path: project file path
        :param project_name: project name
        :param dialog: the dialog in which we are testing ex:OPEN,Project Window
        """
        project_file = project_path + "\\{}".format(project_name)
        self.keyword_open_window_write_project_path_and_file_name(project_file, dialog)

#### duplicate ######

    def keyword_open_project(self, project_name, controller_family, project_path,dialog):
        
        """"
        Open the recently created project 
        :param project_name: project file name
        :param controller_family: controller family 
        :param project_path: project path
        :param dialog: the dialog in which we are testing ex:OPEN,Project Window
        """
        filename_extension=self.keyword_get_filename_with_extension(project_name,controller_family)
        self.keyword_open_project_file_in_given_path(project_path,filename_extension,dialog)

    def keyword_open_project_file_in_given_path(self, filepath, newfilename, dialog):
        """
        Open the file which have extension from the given path
        :param filepath: filepath where last file created 
        :param newfilename: filename with extension
        :param dialog: the dialog in which we are testing ex:OPEN,Project Window
        """
        filepath = filepath + "\\" + newfilename
        self.keyword_open_window_write_project_path_and_file_name(filepath, dialog)
        
    def keyword_open_window_write_project_path_and_file_name(self, project_file,dialog):
        """
        Open project file after writing project file which inculde project path and extension in edit box project file whcich contains project path also
        
        :param project_file: project file with project path
        :param dialog: the dialog in which we are testing ex:OPEN,Project Window
        """
        self.Window_Dialog_write_project_path(project_file,dialog)
        self.keyword_sleep(5)
        self.Window_Dialog_click_open_button(dialog)
        
    def keyword_open_created_samefile_in_prj_win(self, filepath, filename, controller_family, dialog):
        """
        Open the created file from project window
        :param filepath: craeted file path
        :param filename:created file name
        :param controller_family:controller family the project to be created
        :param dialog: dialog 
        """
        projectname = self.keyword_get_filename_with_extension(filename, controller_family)
        projectpath = filepath + "\\" + projectname
        self.keyword_open_window_write_project_path_and_file_name(projectpath, dialog)

    def keyword_open_window_open_project_file(self, dialog):
        """
        Open project file from specific path
        :param dialog:the dialog in which we are testing ex:OPEN,Project Window
        """
        project_path = common.get_project_file_path(inputConfig.project_file_temp_path)
        project_file = project_path.format(inputConfig.project_file_name)
        self.Window_Dialog_write_project_path(project_file, dialog)
        self.Window_Dialog_click_open_button(dialog)

    def keyword_prj_window_write_project_path_with_file_name(self, project_file, dialog):
        """
        Open project file from given specific path
        :param project_file:project file path to be written
        :param dialog:the dialog in which we are testing ex:OPEN,Project Window
        """
        project_path = common.get_project_file_path(inputConfig.project_file_path)
        project_file = project_path.format(inputConfig.project_file_name)
        self.prj_window_write_project_path_with_file_name(project_file)
        self.Window_Dialog_click_open_button("OPEN")
        
    def keyword_select_project_from_path_open_window(self, controller_details, dialog, projectname):
        """
        In set parameter window select a project file
        :param controller_details: controller details
        :param dialog: name of the window dialog
        :param projectname: project name
        """
        controllerFamily=controller_details["controllerFamily"]
        filter = inputConfig.project_file_filters[controllerFamily]
        self.keyword_open_save_window_add_file_filters_for_given_name(filter, dialog)
        if controllerFamily in KoolProg_verify.controllerfamily_with_saved_extension:
            projectname=self.keyword_get_filename_with_extension(projectname, controllerFamily)
        self.Window_Dialog_select_file_from_list_of_files_in_window(dialog, projectname)
        self.Window_Dialog_click_open_button()

    def keyword_open_project_from_temp_path(self, controller_details, dialog, project_name ):
        """
        Open a project saved in temporary path 
        :param controller_details: controller deatils
        :param dialog: name of the window dialog
        :param project_name: project name 
        """
        self.keyword_go_to_directory_opendialog(controller_details["TEMP_DIR"], dialog)
        filter = inputConfig.project_file_filters[controller_details["controllerFamily"]]
        self.keyword_open_save_window_add_file_filters_for_given_name(filter, dialog)
        self.Window_Dialog_write_project_path(project_name, dialog)
        self.Window_Dialog_click_open_button()
        
########################### Open Option  ###############

########################### Save as Window ###############################


    def keyword_get_temp__path_from_dialog_window(self, controller_details, dialog):
        """
        Get temp path from window dialog.
        :return:
        """
        project_path = self.get_cleanTemporay_directory(controller_details["PROJECT_WORKING_DIR"])
        return {"TEMP_DIR": project_path}

    def keyword_save_created_samefile_in_prj_win(self, path, filename, controller_family, dialog):
        """
        Save the created file from project window
        :param path: Created file path
        :param filename:created filename
        :param controller_family:controller family the project to be created
        :param dialog: name of the window dialog
        """
        projectname = self.keyword_get_filename_with_extension(filename, controller_family)
        filepath = path + "\\" + projectname
        self.Window_Dialog_write_project_path(filepath,dialog)
        
        
########################### Save as Window ###############################

################# Print Option ############

    def keyword_print_window_button_text(self, window):
        """
        Verify text of all buttons in print popup window
        :param window: name of the window dialog
        """
        self.popup_messagebox_window_check_X_button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["X_Button"], window)
        self.popup_messagebox_window_check_CANCEL_button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["Cancel_Button"],window)
        self.popup_messagebox_window_check_Parameter_sheet_button_text(KoolProg_verify.window_property["print_window"]["button"]["text"]["parameter_sheet_button"])
        self.popup_messagebox_window_check_Engineering_sheet_button_text(KoolProg_verify.window_property["print_window"]["button"]["text"]["engineering_sheet_button"])

    def keyword_browse_new_path_in_dialog_window(self, dialog):
        """
        Browse new path from window dialog.
        :param dialog: name of the window dialog
        :return : project path
        """
        UI_explorer_path = self.Window_Dialog_get_explorer_path(dialog)
        UI_explorer_path = UI_explorer_path.replace("Address: C:", "C:")
        project_path = self.get_cleanTemporay_directory(UI_explorer_path)
        self.Window_Dialog_write_project_path(project_path, dialog)
        self.Window_Dialog_click_save_button(dialog)
        self.keyword_sleep(2)
        return project_path

    def keyword_paramter_sheet_in_pdf_format(self, dialog):
        """
        Verify parameter sheet in pdf format
        :param dialog: name of the window dialog
        """
        self.Print_Paramter_Sheet_window_click_on_Export_as_PDF_button()
        self.keyword_put_to_sleep_with_respect_to_expected_performance("OFFLINE","OPENING_PARAMETER_SHEET")
        self.Window_Dialog_is_enabled(dialog)
        self.print_window_verify_deafult_pdf_parameter_sheet_name(dialog)
        pdf_new_path = self.keyword_browse_new_path_in_dialog_window(dialog)
        self.Window_Dialog_click_save_button(dialog)
        return {"PDF_FILE_DIR": pdf_new_path}  
          
    def print_window_verify_deafult_pdf_parameter_sheet_name(self,dialog):
        """
        Verify default parameter sheet name in dialog
        :param dialog: name of the window dialog
        """
        self.keyword_verify_file_name_is_displayed_in_Dialog_EditBox(KoolProg_verify.window_property["print_window"][
                                                    "default_pdf_parameter_sheet_name"],dialog)
        
    def keyword_verify_pdf_file_path_is_exists(self,pdf_filepath):
        """
        Verify path is exits 
        :param pdf_filepath : path of PDF file
        """
        self.keyword_verify_path_is_exists(pdf_filepath,KoolProg_verify.window_property["print_window"][
                                                    "default_pdf_parameter_sheet_name"] )
    
################# Print Option ############

################# Search Option ############

    def keyword_get_random_parameter_details_for_search(self,parameter_list, column1):
        """
        Get random parameter details from database input sheet
        :param parameter_list: integer  parameter details
        :param column1: column name in database input sheet
        :return random_parameter: dic of random parameter details
        """
        random_parameter_list = {}

        for key, value in parameter_list.items():
            if key == column1:
                random_value = random.choice(value)
                index = value.index(random_value)
    
        for key in parameter_list:
            random_parameter_list[key] = [parameter_list[key][index]]
        
        return ({"random_parameter_list" : random_parameter_list})
    
    def keyword_prj_window_enter_string_in_search_box(self, value):
        """
        Enter string in search box
        :param value: value to be entered in search box in datagrid
        """
        for val in value:
            self.prj_window_enter_string_in_search_box(val)

    def keyword_project_window_verify_searched_value(self, random_parameter, column):
        """
        Verify searched value is displaying in datagrid
        :param random_parameter: random parameter details
        :param column: column name which is available in datagrid and random_parameter dic
        """     
        parsed_datagrid = self.prj_window_parse_the_datagrid()

        extra_parameter_in_dataGrid = []

        for parameter_details in parsed_datagrid:
            for key, values in parameter_details.items():
                if key in random_parameter["GroupName"]:
                    for value in values:
                        for key,val in value.items():
                            if key == column:
                                for searched_value in random_parameter[column]:
                                    if val == searched_value:
                                        self.report_log("Searched value is found = {}". format(searched_value))
                                    else:
                                        extra_parameter_in_dataGrid.append(val)                                        
      
        if len(extra_parameter_in_dataGrid)>0:
            self.report_fail("Extra parameters in dataGrid= {} ".format(extra_parameter_in_dataGrid))

################# Search Option ############

################# View More ##############

    def keyword_click_and_verify_view_more_window(self, controllerFamily):
        """
        click on view more and verify view more window
        :param controllerFamily: controller family
        """
        if controllerFamily in KoolProg_verify.view_more_unsupported_controller_family:
            self.report_log("controller family ={}".format(controllerFamily))
            self.prj_window_check_viewmore_button_is_visible(False)
        else:
            self.prj_window_click_on_viewmore_button()
            self.keyword_verify_view_more_window()
            
    def keyword_verify_view_more_window(self):
        """
        verify view more window
        """
        self.viewmore_window_check_labels_Enabled()
        self.viewmore_window_visible()
        self.keyword_view_more_window_verify_header_text()
        self.keyword_view_more_window_verify_button_text()

    def keyword_view_more_window_verify_header_text(self):
        """
        Verify header text in view more window
        """
        self.viewmore_window_check_header_text(KoolProg_verify.window_property["view_more"]["header"]["text"]["view_more"])

    def keyword_view_more_window_verify_button_text(self):
        """
        verify text of cancel and Ok button in popup window
        :param window: name of window dialog
        """
        self.viewmore_window_check_X_button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["X_Button"])
        self.viewmore_window_check_Close_button_text(KoolProg_verify.window_property["home"]["about"]["close_button_text"])
        
################# View More ##############


########################## Tag Connected Controller ################

    def keyword_verify_connnected_and_selected_controller_information(self, details):

        """
        Display connected controller information
        :param details:project details
        """
        if details['controllerVariant'] == details["connected_controllerVariant"]:
            self.report_pass("controller variant is matching")
        if details['controllerCodeNo'][0:8] == details["connected_controllerCodeNo"]:
            self.report_pass("controller code number is matching")
        if details['softwareVersion'] == details["connected_softwareVersion"]:
            self.report_pass("controller sw version is matching")
        else:
            self.report_fail("Connected controller and selected controller informtaion is not matching")
    
    def keyword_verify_controller_is_not_connected_with_koolprog(self, controllerFamily):
        """
        Verify Connected controller is not connected with KoolProg.
        :param controllerFamily: Controller Family
        """
        details = self.keywords_connected_controller_information_when_controller_not_connected(controllerFamily)
        if details["connected_controllerVariant"] != '' and details["connected_controllerCodeNo"] != '' and details["connected_softwareVersion"] != '':
            self.report_fail("keyword_verify_controller_is_not_connected_with_koolprog is failed...")
            return False
        self.report_pass("keyword_verify_controller_is_not_connected_with_koolprog is passed...")
        return True
        
    def keyword_verify_connected_controller_details_is_visible(self, controllerFamily):
        """
        Verify Connected controller details is visible in connected controller window.
        :param controllerFamily: Controller Family
        """
        self.check_online_controller_is_visible(controllerFamily)
        self.check_connected_controller_info_button_is_visible()
        self.check_connected_controller_online_variant_text_is_visible()
        self.connected_controller_check_controller_code_number_is_visible()
        self.connected_controller_check_software_version_is_visible()
    
    def keyword_verify_connected_controller_details_is_enabled(self):
        """
        Verify Connected controller details is enabled or disabled in connected controller window.
        """
        self.check_connected_controller_info_button_is_enabled()
        self.check_the_connected_controller_variant_is_enabled()
        self.connected_controller_check_controller_code_number_is_enabled()
        self.connected_controller_check_software_version_is_enabled()
    
    def keyword_check_connected_controller_details_with_project_details(self, details):
        """
        Verify connected controller details with the project details.
        :param details:connected controller details
        """
        prj_controller_details = self.prj_window_get_project_detail_values(details["controllerFamily"])
        if details["connected_controllerVariant"] == prj_controller_details["controllerVariant"]:
            self.report_pass("controller variant is matching")
        if details["connected_controllerCodeNo"] == prj_controller_details["controllerCodeNo"][0:8]:
            self.report_pass("controller codenumber is matching")
        if details["connected_softwareVersion"] == prj_controller_details["softwareVersion"]:
            self.report_pass("controller software version is matching")
        else:
            self.report_fail("keyword_check_connected_controller_details_with_project_details is failed...")
    
    def keyword_check_connected_controller_details_with_copyToController_details(self):

        """
        Verify connected controller details with the copyToController details.
        """
        if self.copy_to_controller_check_file_variant_and_controller_variant():
            if self.copy_to_controller_check_file_SW_Version_and_controller_SW_Version():
                if self.copy_to_controller_check_file_codeNumber_and_controller_codeNumber():
                    self.report_pass("keyword_check_connected_controller_details_with_copyToController_details is passed...")
                    return True
        self.report_fail("keyword_check_connected_controller_details_with_copyToController_details is failed...")
        return False
    
    def keyword_verify_browsed_file_and_connected_controller_details_are_compatible(self):
        """
        Verify browsed file and connected controller details.
        """
        self.copy_to_controller_check_file_image_and_controller_product_image()
        self.copy_to_controller_check_file_codeNumber_and_controller_codeNumber()
        self.copy_to_controller_check_file_SW_Version_and_controller_SW_Version()
        self.copy_to_controller_check_file_variant_and_controller_variant()
    
    def keyword_verify_browsed_file_and_connected_controller_details_are_not_compatible(self):
        """
        Verify browsed file and connected controller details are not compatible.
        """
        self.copy_to_controller_check_file_image_and_controller_product_image(False)
        self.copy_to_controller_check_file_codeNumber_and_controller_codeNumber(False)
        self.copy_to_controller_check_file_SW_Version_and_controller_SW_Version(False)
        self.copy_to_controller_check_file_variant_and_controller_variant(False)
                
########################## Tag Connected Controller ################
            

##################### Import Setting From Controller ###############

    def keyword_keyword_import_from_setting_controller_window_offline_menu_code_visible(self):
        """
        Verify home, open, save, saveas, export, print and help button should be enable
        """
        self.prj_window_check_home_button_is_visible()
        self.prj_window_check_open_button_is_visible()
        self.prj_window_check_save_button_is_visible()
        self.prj_window_check_saveas_button_is_visible()
        self.prj_window_check_export_button_is_visible()
        self.prj_window_check_help_button_is_visible()
        self.prj_window_check_print_button_is_visible()
        
    def keyword_keyword_import_from_setting_controller_window_offline_menu_code_enable(self):
        """
        Verify home, open and help button should be enable and save, saveas, export and print button should be disable
        """
        
        self.prj_window_check_home_button_is_enabled()
        self.prj_window_check_open_button_is_enabled()
        self.prj_window_check_save_button_is_enabled(False)
        self.prj_window_check_saveas_button_is_enabled(False)
        self.prj_window_check_export_button_is_enabled(False)
        self.prj_window_check_help_button_is_enabled()
        self.prj_window_check_print_button_is_enabled(False)

    def keyword_verify_label_text_import_setting_from_controller_window(self):
        """
        Verify label text in new file project window form import setting from controller window
        """
        window_header_name = KoolProg_verify.window_property["import_settings_from_controller"]["label"]["text"]["window_header_name"]
        newfile_name_label = KoolProg_verify.window_property["import_settings_from_controller"]["label"]["text"]["newfile_name_label"]
        window_description = KoolProg_verify.window_property["import_settings_from_controller"]["label"]["text"]["window_description"]

        self.newfilename_window_check_label_text(window_header_name, window_description, newfile_name_label)
      
    def keyword_verify_ok_button_import_setting_from_controller_window(self):
        """
        Verify ok button in new file project window form import setting from controller window
        """
        self.newfilename_window_check_ok_button_visible()
        self.newfilename_window_check_ok_button_enabled(True)
        self.newfilename_window_check_ok_button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["ok_button"])
      
    def keywords_import_setting_from_controller_window_create_new_project_file(self):
        """
        Create new project file form import setting from controller window
        :retrun: project name
        """
        project_name = common.randString(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Product_Details_Selection_Window"][
                "text_length"]["project_name_length"])
        self.newfilename_window_set_filename_textbox_text(project_name)
        self.keyword_sleep(5)
        return {"connected_project_name" : project_name}
    
    def keywords_import_setting_from_controller_window_default_project_file(self):
        """
        Default project file form import setting from controller window
        :retrun: project name
        """
        connected_controller_information = self.get_UI_information_as_key_value()
        self.newfilename_window_set_filename_textbox_text(connected_controller_information["connected_controllerCodeNo"])  
        return {"connected_project_name" : connected_controller_information["connected_controllerCodeNo"]}
    
    def keywords_import_setting_from_controller_window_set_project_file_with_space(self):
        """
        Project file name with spce form import setting from controller window
        :retrun: project name
        """
        self.newfilename_window_set_filename_textbox_text(inputConfig.project_file_name)
        return {"connected_project_name" : inputConfig.project_file_name}
    
    def keywords_connected_controller_information(self):
        """
        Connected controller information
        :return: controller details for connected controller
        """
        self.check_online_controller_loading_image_is_visible()       
        connected_controller_info = self.get_UI_information_as_key_value()
        return (connected_controller_info)
    
    def keywords_connected_controller_information_when_controller_not_connected(self, controllerFamily):
        """
        Get the connected controller information
        :param controllerFamily: Controller Family
        :return: controller details for connected controller
        """
        self.check_online_controller_loading_image_is_visible()       
        connected_controller_info = self.get_UI_information_when_controller_not_connected(controllerFamily)
        return (connected_controller_info)
        
    def keyword_verify_default_file_name_import_setting_from_controller_window(self, controller_details):
        """
        Verify default file name will be code number
        :param controller_details: connected controller information
        """
        default_file_name = controller_details["connected_controllerCodeNo"]
        get_default_file_name = self.online_get_controller_code_number()
        
        
        if not common.compare_uincode_lines(default_file_name, get_default_file_name):
            self.report_fail("Expected file name = '{}' and  ui file name is different = '{}'".format(default_file_name,
                                                                                                get_default_file_name))
    
    def keyword_verify_non_compliant_controller_details(self):
        """
        Verify non compliant controller status text, text color, visible,enable in Connected Controller Window.
        """
        self.connected_controller_check_non_compliant_controller_label_is_visible()
        self.connected_controller_check_non_compliant_controller_label_is_enabled()
        self.connected_controller_check_non_compliant_controller_label_text(KoolProg_verify.window_property["Copy_to_controller_window"]["label"]["text"]["Non_compliant_controller"])
        self.connected_controller_get_color_of_non_compliant_controller_label()

##################### Import Setting From Controller ###############

############# Tag Copy To Controller ###########

    def keyword_copy_to_controller_check_fav_table_enabled(self, status):
        """
        Check fav table is enable or disable
        :param status: boolean status value True or False.
        """
        self.Copy_to_controller_check_fav_files_label_Enabled(status)
        self.Copy_to_controller_check_project_name_label_Enabled(status)
        self.Copy_to_controller_check_project_path_label_Enabled(status)
        self.Copy_to_controller_check_controller_type_label_Enabled(status)
        self.Copy_to_controller_check_Action_label_Enabled(status)

    
    def keyword_copy_to_controller_check_fav_table_visible(self, status):
        """
        Check fav table is visible or not.
        :param status: boolean status value True or False.
        """
        self.Copy_to_controller_check_fav_files_label_visible(status)
        self.Copy_to_controller_check_project_name_label_visible(status)
        self.Copy_to_controller_check_project_path_label_visible(status)
        self.Copy_to_controller_check_controller_type_label_visible(status)
        self.Copy_to_controller_check_Action_label_visible(status)
        self.Copy_to_controller_check_fav_table_is_visible(status)
    
    def keyword_verify_firmware_password_window_is_visible(self):
        """
        Verify Firmware Password window is visible in Copy to controller window.
        """
        self.Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_is_visible()
        self.Copy_to_controller_check_firmwarePassword_ok_button_is_visible()
        self.Copy_to_controller_check_firmwarePassword_X_button_is_visible()
        self.Copy_to_controller_check_firmwarePassword_cancel_button_is_visible()
        self.Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_is_visible()
        self.Copy_to_controller_check_firmwarePassword_header_Label_is_visible()
        self.Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_is_visible()
        self.Copy_to_controller_check_firmwarePassword_password_Label_is_visible()
    
    def keyword_verify_firmware_password_window_is_not_visible(self):
        """
        Verify Firmware Password window is not visible in Copy to controller window.
        """
        self.Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_is_visible(False)
        self.Copy_to_controller_check_firmwarePassword_ok_button_is_visible(False)
        self.Copy_to_controller_check_firmwarePassword_X_button_is_visible(False)
        self.Copy_to_controller_check_firmwarePassword_cancel_button_is_visible(False)
        self.Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_is_visible(False)
        self.Copy_to_controller_check_firmwarePassword_header_Label_is_visible(False)
        self.Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_is_visible(False)
        self.Copy_to_controller_check_firmwarePassword_password_Label_is_visible(False)
    
    def keyword_verify_firmware_password_window_is_enabled(self):
        """
        Verify firmware password window is enabled in copy to controller window.
        """
        self.Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_is_enabled()
        self.Copy_to_controller_check_firmwarePassword_ok_button_is_enabled()
        self.Copy_to_controller_check_firmwarePassword_X_button_is_enabled()
        self.Copy_to_controller_check_firmwarePassword_cancel_button_is_enabled()
        self.Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_is_enabled()
        self.Copy_to_controller_check_firmwarePassword_header_Label_is_enabled()
        self.Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_is_enabled()
        self.Copy_to_controller_check_firmwarePassword_password_Label_is_enabled()
        
    def keyword_verify_firmware_password_window_text(self):
        """
        Verify firmware password window text in copy to controller window.
        """
        self.Copy_to_controller_check_firmwarePassword_Firmware_update_is_password_protected_Label_text(KoolProg_verify.window_property["firmware_password_window"]["label"]["text"]["firmware_updated_is_password_protected_label"])
        self.Copy_to_controller_check_firmwarePassword_ok_button_text(KoolProg_verify.window_property["firmware_password_window"]["button"]["text"]["ok_button"])
        self.Copy_to_controller_check_firmwarePassword_X_button_text(KoolProg_verify.window_property["firmware_password_window"]["button"]["text"]["X_Button"])
        self.Copy_to_controller_check_firmwarePassword_cancel_button_text(KoolProg_verify.window_property["firmware_password_window"]["button"]["text"]["Cancel_Button"])
        self.Copy_to_controller_check_firmwarePassword_Password_is_case_sensitive_Label_text(KoolProg_verify.window_property["firmware_password_window"]["label"]["text"]["password_is_case_sensitive_label"])
        self.Copy_to_controller_check_firmwarePassword_header_Label_text(KoolProg_verify.window_property["firmware_password_window"]["label"]["text"]["header"])
        self.Copy_to_controller_check_firmwarePassword_Enter_koolprog_password_label_text(KoolProg_verify.window_property["firmware_password_window"]["label"]["text"]["please_enter_the_koolprog_password_label"])
        self.Copy_to_controller_check_firmwarePassword_password_Label_text(KoolProg_verify.window_property["firmware_password_window"]["label"]["text"]["password_label"])

############# Tag Copy To Controller ###########

################### on-line Service ##############

    def keyword_on_line_service_verify_already_opened_chart(self,controller_details ):
        """
        Verify Already opened project details
        :param controller_details: connected controller information
        """
        filepath = controller_details["PROJECT_WORKING_DIR"] + "\\" + controller_details["SAVED_CHART_FILE_NAME"]
        self.chartWindow_get_saved_graph_path_info_text(filepath)

################### on-line Service ##############

##################### Plotting ###############
       
    def keyword_check_default_chart_filter_text_in_window_dialog(self, dialog):
        """
        Compare filter text in dialog
        :param dialog : open dialog
        """
        ui_open_filter_text = self.Window_Dialog_get_filter_text(dialog)
        filter_compare = common.compare_uincode_lines(ui_open_filter_text, KoolProg_verify.koolprog_supported_extensions["default_chart_filter_text"])

        if filter_compare:
            self.report_pass(" filter text is matching")
        else:
            self.report_fail(" filter text is not matching")
            
            
    def keyword_select_a_list_item_of_log_interval_comboBox(self):
        """
        Select a list item in log interval combobox in chart Window.
        :return: List item selected.
        
        """
        list_item_selected = random.choice(KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Log_Interval_list_items"])
        self.chartWindow_select_list_item_of_log_interval_comboBox(list_item_selected)
        return {"LIST_ITEM_SELECTED": list_item_selected}
    
    def keyword_check_selected_item_in_log_interval_comboBox_is_displayed(self,project_details):
        """
        Check if a selected list item is displayed in log interval comboBox in Chart Window.
        :param project_details: Current Project Details.
        :return: True if succeeds.
        
        """
        ui_listItem  = self.chartWindow_get_log_interval_combobox_text()
        
        if ui_listItem != project_details["LIST_ITEM_SELECTED"]:
            self.report_fail("keyword_check_selected_item_in_log_interval_comboBox_is_displayed is failed ...",
                             "ui_listItem ={} testData ={}".format(ui_listItem, project_details["LIST_ITEM_SELECTED"]))
            return False
        self.report_log("keyword_check_selected_item_in_log_interval_comboBox_is_displayed is passed ...",
                             "ui_listItem ={} testData ={}".format(ui_listItem, project_details["LIST_ITEM_SELECTED"]))
        return True
    
    def keyword_select_a_list_item_of_label_comboBox(self):
        """
        Select a list item in label combobox in chart Window.
        :return: List item selected.
        
        """
        list_item_selected = random.choice(KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Label_list_items"])
        self.chartWindow_select_list_item_of_label_comboBox(list_item_selected)
        return {"LIST_ITEM_SELECTED": list_item_selected}
    
    def keyword_check_selected_item_in_label_comboBox_is_displayed(self,project_details):
        """
        Check if a selected list item is displayed in label comboBox in Chart Window.
        :param project_details: Current Project Details.
        :return: True if succeeds.
        
        """
        ui_listItem  = self.chartWindow_get_label_combobox_text()
        
        if ui_listItem != project_details["LIST_ITEM_SELECTED"]:
            self.report_fail("keyword_check_selected_item_in_label_comboBox_is_displayed is failed ...",
                             "ui_listItem ={} testData ={}".format(ui_listItem, project_details["LIST_ITEM_SELECTED"]))
            return False
        self.report_log("keyword_check_selected_item_in_label_comboBox_is_displayed is passed ...",
                             "ui_listItem ={} testData ={}".format(ui_listItem, project_details["LIST_ITEM_SELECTED"]))
        return True
    
    def keyword_select_a_list_item_of_zoom_label_comboBox(self):
        """
        Select a list item in zoom label combobox in chart Window.
        :return: List item selected.
        
        """
        list_item_selected = random.choice(KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Zoom_Level_list_items"])
        self.chartWindow_select_list_item_of_zoom_label_comboBox(list_item_selected)
        return {"LIST_ITEM_SELECTED": list_item_selected}
    
    def keyword_check_selected_item_in_zoom_label_comboBox_is_displayed(self,project_details):
        """
        Check if a selected list item is displayed in zoom label comboBox in Chart Window.
        :param project_details: Current Project Details.
        :return: True if succeeds.
        
        """
        ui_listItem  = self.chartWindow_get_zoom_level_combobox_text()
        
        if ui_listItem != project_details["LIST_ITEM_SELECTED"]:
            self.report_fail("keyword_check_selected_item_in_zoom_label_comboBox_is_displayed is failed ...",
                             "ui_listItem ={} testData ={}".format(ui_listItem, project_details["LIST_ITEM_SELECTED"]))
            return False
        self.report_log("keyword_check_selected_item_in_zoom_label_comboBox_is_displayed is passed ...",
                             "ui_listItem ={} testData ={}".format(ui_listItem, project_details["LIST_ITEM_SELECTED"]))
        return True
            

###################  Tag On-line Service Plotting ###########
   
        
########################### Common Steps For Popup Window ###############

    def keyword_verfiy_popup_window_header_text(self,window=None):
        """
         Verify header text of poup window
        :param window : name of window dialog
        """ 
        self.popup_messagebox_window_check_KoolProg_label_text(KoolProg_verify.window_property["popup_window"]["label"]["text"]["header"],window)
        
    def keyword_check_popup_window_x_and_ok_button_text(self,dialog):
        """
        Verify text of canceland Ok button in popup window
        :param dialog: name of window dialog
        """
        
        self.popup_messagebox_window_check_X_button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["X_Button"], dialog)
        self.popup_messagebox_window_check_OK_button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["ok_button"],dialog)
    
    def keyword_check_popup_window_x_and_chinese_ok_button_text(self,dialog):
        """ 
        Verify text of canceland Ok button in popup window
        :param dialog: name of window dialog
        """
        
        self.popup_messagebox_window_check_X_button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["X_Button"], dialog)  
        self.popup_messagebox_window_check_OK_button_text(KoolProg_verify.window_property["home"]["Language"]["Chinese (Simplified) Legacy"]["text"]["chinese_ok_button"],dialog)
      
########################### Common Steps For Popup Window ###############

################ 'File already exists. Do you want to overwrite?' Popup ##################
    def keyword_check_popup_window_yes_no_and_x_button_visible(self,dialog):
        """
        Verify yes , no and cancel button is visible in popup window
        :param dialog: name of window dialog
        """
        
        self.popup_messagebox_window_YES_button_visible(dialog) 
        self.popup_messagebox_window_NO_button_visible(dialog)
        self.popup_messagebox_window_X_button_visible(dialog)
        
    def keyword_check_popup_window_yes_no_and_x_button_enable(self,dialog):
        """
        Verify yes , no and cancel button is enable in popup window
        :param dialog: name of window dialog
        """
        
        self.popup_messagebox_window_YES_button_Enabled(dialog)
        self.popup_messagebox_window_NO_button_Enabled(dialog)
        self.popup_messagebox_window_X_button_Enabled(dialog)
    
    def keyword_check_popup_window_yes_no_and_x_button_text(self,dialog):
        """
        Verify text of yes , no and cancel button in popup window
        :param dialog: name of window dialog
        """
        
        self.popup_messagebox_window_check_YES_button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["yes_button"], dialog)
        self.popup_messagebox_window_check_NO_button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["no_button"], dialog)
        self.popup_messagebox_window_check_X_button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["X_Button"], dialog)
    
    def keyword_verify_popup_msg_in_window_wrt_language(self, message, selectedlanguage, window):
        """
        'Verify, popup message
        :param message: popup message
        :param selectedlanguage: Selected language
        :param window: window name
        """
        language_dict = KoolProg_verify.window_property["Preference_Window"]["languages"][selectedlanguage]       
        language = list(language_dict.keys())[0] 
        self.popup_messagebox_window_is_visible(window)
        self.popup_messagebox_window_check_message_text(language_dict[language]["label"]["text"][message],window)
        
    def keyword_verify_saved_successfully_wrt_language_popup_msg_in_preference_window(self, message, selectedlanguage, window):
        """
        'Verify, popup message
        :param message: popup message
        :param selectedlanguage: Selected language 
        :param window: window name
        """
        language_dict = KoolProg_verify.window_property["Preference_Window"]["languages"][selectedlanguage]       
        language = list(language_dict.keys())[0] 
        self.popup_messagebox_window_is_visible(window)
        self.popup_messagebox_window_check_message_text(language_dict[language]["label"]["text"][message],window)   
        
    def keyword_check_popup_window_x_and_ok_button_text_for_selected_language(self,selected_language,dialog):
        """
        Verify text of canceland Ok button in popup window
        :param selected_language: Selected language
        :param dialog: name of window dialog
        """
        language_dict = KoolProg_verify.window_property["popup_window"]["Language"][selected_language]       
        language = list(language_dict.keys())[0]         
        self.popup_messagebox_window_check_X_button_text(KoolProg_verify.window_property["popup_window"]["button"]["text"]["X_Button"], dialog)
        self.popup_messagebox_window_check_OK_button_text(language_dict[language]["text"][language+"_ok_button"], dialog)        
        
################ 'File already exists. Do you want to overwrite?' Popup ##################


################ Common Function ##################

    def keyword_verify_path_is_exists(self,filepath, filename):
        """
        Verify path is exits 
        """
        
        filepath = filepath + "\\" + filename
        if not common.path_exists(filepath):
            return False
        else:
            return True
        
################ Common Function ##################


################### Close The Application #############

    def keyword_close_application(self):
        """
        CLose the application
        """
        os.popen(r"Taskkill /IM KoolProg.exe /F")
        self.keyword_sleep(4)

################### Close The Application #############

    def enable_random_serial_port(self,skip_family=None,run_only=None,controller_specific=None):
        """
        Enable a random serial port.
        :return: Controller details of enabled port controller.
        """
   
        indx = None
        try:
            indx = common.get_envir_var_value(inputConfig.envi_variable_name)
            indx = json.loads(indx)
            indx = indx.pop()
            details = self.get_controller_details_from_index(indx)
            if details["controllerFamily"] in skip_family:
                indx = None
            if details["controllerFamily"] != run_only:
                indx = None
        except Exception:  
            if run_only == None:        
                controller_details = self.get_controller_family_variant_dict()
                fam = random.choice(list(controller_details.keys()))
                index_available = False      
                tracked_controllerFamily = []
                tracked_variant = []
                
                if skip_family != None:
                        for sk_family in skip_family:
                            if sk_family in list(controller_details.keys()):
                                if sk_family not in tracked_controllerFamily:
                                    tracked_controllerFamily.append(sk_family)
                                    continue
                
                while len(tracked_controllerFamily) != len(list(controller_details.keys())): 
                    fam = random.choice(list(controller_details.keys()))
                    
                    if fam not in tracked_controllerFamily:
                        tracked_controllerFamily.append(fam)
                    else:
                        continue
                    variant_list = controller_details[fam]
                    tracked_variant = []
                    while len(variant_list) != len(tracked_variant):
                        var = random.choice(variant_list)
                        if var not in tracked_variant:
                            tracked_variant.append(var)
                        
                        selected_variant_indices = self.get_indices_of_given_controller_variant(var)
                        
                        for anIndex in selected_variant_indices:
                            details = self.get_controller_details_from_index(anIndex)
                            if details["Isdefault"] == "Yes" and details["PortNumber"]!='' :
                                index_available = True
                                indx = anIndex
                                break
                        if index_available == True:
                            break
                    if index_available == True:
                            break 
                        
                self.report_log("Tracked family ={}".format(tracked_controllerFamily))
                self.report_log("Tracked variant ={}".format(tracked_variant))    
                        
                        
            else:
                controller_details = self.get_controller_family_variant_dict() 
                if run_only in (list(controller_details.keys())):
                    index_available  = False
                    if controller_specific == ControllerSpecific.controllerSpecificYes:
                        family_indexes = self.get_indices_of_given_controller_family(run_only)
                        toTest_Yes_indexes = self.get_indices_totest_yes_and_isdefault_yes(InputSheet.inputYes)
                        indexes = common.get_list_of_same_elements_from_lists(family_indexes,toTest_Yes_indexes)
                        if len(indexes) != 0:
                            for idx in indexes:
                                details = self.get_controller_details_from_index(idx)
                                if details["PortNumber"]!='' :
                                    indx = idx
                                    break
                        
                    else:
                        tracked_controllerFamily=[]
                        tracked_controllerFamily.append(run_only)
                        variant_list = controller_details[run_only]
                        tracked_variant = []
                        while len(variant_list) != len(tracked_variant):
                            var = random.choice(variant_list)
                            if var not in tracked_variant:
                                tracked_variant.append(var)
                            else:
                                continue

                
                            selected_variant_indices = self.get_indices_of_given_controller_variant(var)
                        
                            for anIndex in selected_variant_indices:
                                details = self.get_controller_details_from_index(anIndex)
                                if details["Isdefault"] == "Yes" and details["PortNumber"]!=''  :
                                    index_available = True
                                    indx = anIndex
                                    break
                            if index_available == True:
                                break
                            
                        self.report_log("Tracked family ={}".format(tracked_controllerFamily))
                        self.report_log("Tracked variant ={}".format(tracked_variant))
                                
                  
        if indx != None:
            self.report_pass("Valid controller details are provided for enabling a port with index ={}".format(indx))
        else:
            self.report_fail("Invalid controller details is provided for enabling a port")
        details = self.get_controller_details_from_index(indx)
        self.report_log("Enable Required Serial Port details ={}".format(details))
        
        self.keyword_enable_port(details["PortNumber"],details["controllerVariant"],details["softwareVersion"])
       
        return details
    
    def keyword_choose_port_for_controller_details_other_than_created_project(self, details):
        """
        Select any port that is not compatible to created project.
        :param details: connected controller information
        """
        family_indexes = self.get_indices_of_given_controller_family(details["controllerFamily"])
        for index in family_indexes:
            controller_details = self.get_controller_details_from_index(index)
            if (controller_details["controllerVariant"] == details["controllerVariant"]) and (controller_details["softwareVersion"] != details["softwareVersion"]) and controller_details["PortNumber"]!='':
                break
            else:
                continue
        prj_details_not_compatible_dict = {"connected_controller_Family":controller_details["controllerFamily"],"connected_controller_variant":controller_details["controllerVariant"],"connected_controller_codeNo":controller_details["controllerCodeNo"],"connected_softwareVersion":controller_details["softwareVersion"],"connected_portNumber":controller_details["PortNumber"]}
        return prj_details_not_compatible_dict

    def keyword_enable_serial_port_for_importing_new_cdf(self, controllerFamily):
        """
        Enable the port for importing new cdf.
        :param controllerFamily: controller Family.
        :return: Enabled port details.
        """
        family_indexes = self.get_indices_of_given_controller_family(controllerFamily)
        toTest_Yes_indexes = self.get_indices_totest_yes_and_isdefault_yes(InputSheet.inputYes)
        indexes = common.get_list_of_same_elements_from_lists(family_indexes,toTest_Yes_indexes)
        
        sw_version_list = []
        for fam,var in KoolProg_verify.default_product_details_info.items():
            if fam != "ETC1Hx":
                for controllerDetails in var.values():
                    for label,value in controllerDetails.items():
                        if label == "softwareVersion":
                            sw_version_list.append(value)
        indx = None
        for idx in indexes:
            details = self.get_controller_details_from_index(idx)
            if (details["softwareVersion"] not in sw_version_list) and details["PortNumber"]!='':
                    self.report_log("New cdf details is selected!!!")
                    indx = idx
                    break
            
        if indx == None:
            indx = random.choice(indexes)
            details = self.get_controller_details_from_index(indx)
            self.report_log("Default cdf is selected!!!")
            
        self.keyword_enable_port(details["PortNumber"],details["controllerVariant"],details["softwareVersion"])
        return details
    
    def keyword_verify_controller_is_connected_with_koolProg(self,controllerFamily):
        """
        Verify controller is connected with Koolprog.
        :param controllerFamily: Controller Family name
        :return: True if controller is connected.
        """
        
        self.check_online_controller_is_visible(controllerFamily)
        self.check_connected_controller_info_button_is_visible()
        self.check_connected_controller_info_button_is_enabled()
        self.check_expand_collapse_online_controller_info_button_is_visible()
        
    def keyword_verify_menu_icons_in_online_service_window_is_enabled(self):
        """
        Verify if menu icons and grid icons are enabled in online service window.
        :return: True if succeeds.
        """
        self.prj_window_chk_grid_icons_enable()
        self.online_service_window_chk_menu_bar_icons_Enable(40) 

##################### Recent Project ##############

    def keyword_created_projects_in_recent_project(self, project_details):
        """
        Verify craeted projects should come in recent project 
        :param project_details: current project details
        """
        found = False
        for pDict in project_details["LIST_OF_PROJECTS_CREATED"]:
            project_name = self.keyword_get_filename_with_extension(pDict["project_name"],
                                                               pDict["controllerFamily"])
            tooltip_to_check = project_details["PROJECT_WORKING_DIR"] + "\\" + project_name

            for aDict in project_details["TOOLTIP_LIST_OF_PROJECTS_CREATED"]:
                for _, v in aDict.items():
                    if tooltip_to_check == v:
                        found = True
                        break
                    
        if (found == False):
                self.report_fail("Recent file tooltip in setParameter window testdata= '{}' and  UI = '{}' passed".format(tooltip_to_check,tooltip_from_UI))

##################### Recent Project ##############

    def keyword_clear_the_directory(self,path):
        """
        Clears the contents in the specified directory.
        :param path: Path of the directory to be cleared.
        :return: True if succeeds.
        """
        common.delete_all_contents_in_folder(path)
        
#####################################################PLUG AND PLAY##############################################

    def keyword_online_service_window_chk_please_connect_controller_label_text(self):
        """
        Verify the "Please connect a controller" label text in Online Service Window.
        :return:True if succeeds
        
        """
        self.online_service_window_chk_please_connect_controller_label_text(KoolProg_verify.window_property["Online_Service_Window"]["Please_Connect_A_controller_Label_text"])

    def keyword_copy_to_controller_window_chk_please_connect_controller_label_text(self):
        """
        Verify the "Please connect a controller" label text in Copy to controller window.
        :return:True if succeeds
        
        """
        self.Copy_to_controller_check_please_connect_controller_text(KoolProg_verify.window_property["Online_Service_Window"]["Please_Connect_A_controller_Label_text"])
             
    def keyword_check_print_saveAs_icons_are_disable(self):
        """
        
        Check if print and Saveas icons are disabled.
        :return: True if succeeds.
        
        """
        self.prj_window_check_print_button_is_enabled(False)
        self.prj_window_check_saveas_button_is_enabled(False)
        
    def keyword_check_save_saveAs_export_print_icons_are_disable(self):
        """
        Check if save, saveAs, Export, Print Icons are disabled.
        :return: True if succeeds.
        
        """
        self.keyword_check_print_saveAs_icons_are_disable()
        self.prj_window_check_save_button_is_enabled(False)
        self.prj_window_check_export_button_is_enabled(False)
        
    def keyword_chk_please_connect_controller_label_text(self):
        """
        Verify the "Please connect a controller" label text in  Project Window.
        :return:True if success
        
        """
        self.check_status_msg_of_online_controller(KoolProg_verify.window_property["Online_Service_Window"]["Please_Connect_A_controller_Label_text"])
        
    def keyword_create_a_project_by_choosing_a_random_port(self,skip_family=None,run_only=None,controller_specific=None):
        """
        Creates a project by choosing a random port that has "isdefault" value as Yes.
        :return: Controller details of the created project.
        
        """
    
        indx = None
        try:
            indx = common.get_envir_var_value(inputConfig.envi_variable_name)
            indx = json.loads(indx)
            indx = indx.pop()
            details = self.get_controller_details_from_index(indx)
            if details["controllerFamily"] in skip_family:
                indx = None
            if details["controllerFamily"] != run_only:
                indx = None
        except Exception:  
            if run_only == None:        
                controller_details = self.get_controller_family_variant_dict()
                fam = random.choice(list(controller_details.keys()))
                index_available = False      
                tracked_controllerFamily = []
                tracked_variant = []
                
                if skip_family != None:
                        for sk_family in skip_family:
                            if sk_family in list(controller_details.keys()):
                                if sk_family not in tracked_controllerFamily:
                                    tracked_controllerFamily.append(sk_family)
                                    continue
                
                while len(tracked_controllerFamily) != len(list(controller_details.keys())): 
                    fam = random.choice(list(controller_details.keys()))
                    
                    if fam not in tracked_controllerFamily:
                        tracked_controllerFamily.append(fam)
                    else:
                        continue
                    variant_list = controller_details[fam]
                    tracked_variant = []
                    while len(variant_list) != len(tracked_variant):
                        var = random.choice(variant_list)
                        if var not in tracked_variant:
                            tracked_variant.append(var)
                        
                        selected_variant_indices = self.get_indices_of_given_controller_variant(var)
                        
                        for anIndex in selected_variant_indices:
                            details = self.get_controller_details_from_index(anIndex)
                            if details["Isdefault"] == "Yes" and details["PortNumber"]!=''  :
                                index_available = True
                                indx = anIndex
                                break
                        if index_available == True:
                            break
                    if index_available == True:
                            break   
                        
                self.report_log("Tracked family ={}".format(tracked_controllerFamily))
                self.report_log("Tracked variant ={}".format(tracked_variant))
                
            else:
                controller_details = self.get_controller_family_variant_dict()   
                if run_only in (list(controller_details.keys())):
                    index_available  = False
                    if controller_specific == ControllerSpecific.controllerSpecificYes:
                        family_indexes = self.get_indices_of_given_controller_family(run_only)
                        toTest_Yes_indexes = self.get_indices_totest_yes_and_isdefault_yes(InputSheet.inputYes)
                        indexes = common.get_list_of_same_elements_from_lists(family_indexes,toTest_Yes_indexes)
                        if len(indexes) != 0:
                            for idx in indexes:
                                details = self.get_controller_details_from_index(idx)
                                if details["PortNumber"]!='' :
                                    indx = idx
                                    break
                            
                    else:
                        tracked_controllerFamily=[]
                        tracked_controllerFamily.append(run_only)
                        variant_list = controller_details[run_only]
                        tracked_variant = []
                        while len(variant_list) != len(tracked_variant):
                            var = random.choice(variant_list)
                            if var not in tracked_variant:
                                tracked_variant.append(var)
                            else:
                                continue
                        
                            selected_variant_indices = self.get_indices_of_given_controller_variant(var)
                        
                            for anIndex in selected_variant_indices:
                                details = self.get_controller_details_from_index(anIndex)
                                if details["Isdefault"] == "Yes" and details["PortNumber"]!=''  :
                                    index_available = True
                                    indx = anIndex
                                    break
                            if index_available == True:
                                break
                            
                        self.report_log("Tracked family ={}".format(tracked_controllerFamily))
                        self.report_log("Tracked variant ={}".format(tracked_variant))    
            
        
        if indx != None:
            self.report_pass("Valid controller details are provided for enabling a port and project creation with index ={}".format(indx))
        else:
            self.report_fail("Invalid controller details is provided for enabling a port and project creation.")
        details = self.get_controller_details_from_index(indx)
        self.report_log("Enable Required Serial Port details ={}".format(details))
        userData = self.keyword_create_new_project_given_index(indx)
       
        return userData
    def keyword_chartWindow_check_default_fileType_in_saveAs_dialog(self):
        """
        Check default FileType in saveAs dialog in chart Window.
        :return: True if succeeds.
        
        """
        ui_fileType = self.chartWindow_getdisplayValue_of_FileType_in_saveAsDialog()
        if str(ui_fileType) == KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["SaveAs_dialog"]["default_FileType_Text"]:
            self.report_log("keyword_chartWindow_check_default_fileType_in_saveAs_dialog passed ....",
                             "ui_fileType='{}' and testData = '{}'".format(ui_fileType,KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["SaveAs_dialog"]["default_FileType_Text"]))
            return True
        else:
            self.report_fail("keyword_chartWindow_check_default_fileType_in_saveAs_dialog is failed ....",
                             "ui_fileType='{}' and testData = '{}'".format(ui_fileType,KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["SaveAs_dialog"]["default_FileType_Text"]))
     
    def keyword_put_to_sleep_with_respect_to_expected_performance(self,online_offline_status,moment):
        """
        Sleep is added with respect to the expected performance.
        :param online_offline_status: States if it is in offline or online mode.
        :param moment: States at which moment the sleep has to be added.
        :return: True if succeeds.
        
        """
        
        variable = "TIME_TAKEN_FOR_" + "{}" + "_" + "{}"

        variable_to_get_sleep = variable.format(moment,online_offline_status)
        
        seconds = KoolProg_verify.PERFORMANCE_TESTING[variable_to_get_sleep]
        
        #exec("the_needed = KoolProg_verify.variable_from")
        
        self.keyword_sleep(seconds)

    def keyword_chk_Set_as_fav_button(self, status):
        """
        Verify the Set As Favorite button visibility and text in copy to controller window
        :param status: boolean status value True or False
        """
        self.Copy_to_controller_check_set_as_fav_button_label_visible(status)
        self.Copy_to_controller_check_set_as_fav_button_text(KoolProg_verify.window_property["Copy_to_controller_window"]["label"]["text"]["set_as_fav"])

    def keyword_check_countUp_countdown_label(self):
        """
        Verify the Enable,Visible and text of the countup and countdown labels in copy to controller window
        """
        self.Copy_to_controller_check_countDown_timer_label_Enabled()
        self.Copy_to_controller_check_countDown_timer_label_visible()
        self.Copy_to_controller_check_countDown_timer_label_text(KoolProg_verify.window_property["Copy_to_controller_window"]["label"]["text"]["countdown"])
        self.Copy_to_controller_check_countUp_timer_label_Enabled()
        self.Copy_to_controller_check_countUp_timer_label_text(KoolProg_verify.window_property["Copy_to_controller_window"]["label"]["text"]["countup"])
        self.Copy_to_controller_check_countUp_timer_label_visible()

    def keyword_copy_to_controller_check_counter_not_accept_more_than_maximum_count_value(self):
        """
        Verify not able to set the counter  value more than the maximum count(0-999) in copy to controller.
        """
        maxcount=KoolProg_verify.Max_Count+1
        self.Copy_to_controller_enter_set_counter(maxcount)
        self.Copy_to_controller_click_multiple_controller_pgm_button()
        Ui_countvalue=self.Copy_to_controller_get_counter_value()
        if maxcount != Ui_countvalue:
            self.report_log("Counter is successfully not able to set to its above maximum count ={}".format(Ui_countvalue))
        else:
            self.report_fail("Counter is successfully able to set to its above maximum count".format(Ui_countvalue))
            
    def keyword_check_counter_not_accept_more_than_minimum_count_value(self):
        """
        Verify not able to set the counter value less than minimum count(0-999)
        """
        mincount=KoolProg_verify.Min_Count-1
        self.Copy_to_controller_enter_set_counter(mincount)
        self.Copy_to_controller_click_multiple_controller_pgm_button()
        Ui_countvalue=self.Copy_to_controller_get_counter_value()
        if mincount != Ui_countvalue:
            self.report_log("Counter is successfully not able to set to its below minimum count ={}".format(Ui_countvalue))
        else:
            self.report_fail("Counter is successfully able to set to its below minimum count".format(Ui_countvalue))

    def keyword_verify_same_created_file_name_in_fav_table(self, Proj_Name):
        """
        Verify the set as favorite file in the favorite table in copy to controller window
        :param Proj_Name:project name
        :return :true if succeed
        """
        fav_file_info=self.Copy_to_controller_get_fav_files_list_in_fav_table()
        for fav in fav_file_info:
            for key in fav:
                if Proj_Name == key:
                    self.report_log("Set As favorite File is present in the Favorite Grid ={}".format(Proj_Name))
                    return True
        self.report_fail("Set As favorite File is Not present in the Favorite Grid".format(Proj_Name))
        return False

    def keyword_create_multiple_project_with_same_project_details(self, details, len):
        """
        Create the multiple project for the same created project
        :param details:context.userdata 
        """
        project_name_list=[]
        project_name_list.append(details["project_name"])
        for _ in range(len):
            prj_details=self.keyword_create_new_project_given_index(details["index"])
            project_name_list.append(prj_details["project_name"])
            self.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE","PROJECT_CREATION")
            self.keyword_prj_window_click_home_button()
            self.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE","SWITCHING_TO_HOME_FROM_ANY_OTHER_WINDOW")
        return {"PROJECT_NAME_LIST": project_name_list}

    
    def keyword_set_multiple_files_as_favorite(self, userdata):
        """
        Set the multiple files as favorite in copy to controller window
        :param userdata:context.userdata
        """ 
        project_name_list=userdata["PROJECT_NAME_LIST"]
        for project in project_name_list:
            self.click_on_enable_button_in_KoolProg()
            self.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE","ENABLING_PORT_COMMUNICATION_IN_KOOLPROG") 
            self.Copy_to_controller_click_Browse_button()
            self.keyword_sleep(10)
            self.keyword_open_created_samefile_in_prj_win(userdata["PROJECT_WORKING_DIR"],
                            project,userdata['controllerFamily'],"OPEN")
            self.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE", "OPENING_PROJECT_IN_COPY_TO_CONTROLLER_WINDOW") 
            self.Copy_to_controller_click_Set_As_Fav_button()
            self.keyword_sleep(10) 
  
        #return userdata
        
    def keyword_verify_multiple_favorite_files_in_fav_data_grid(self, userdata):
        """
        Verify the multiple files present in the favorite grid.
        :param userdata:context.userdata
        """ 
        fav_file_info=self.Copy_to_controller_get_fav_files_list_in_fav_table()
        project_name_list=userdata["PROJECT_NAME_LIST"]
        Ui_Project_name_list=[]
        for fav in fav_file_info:
            for key, value in fav.items():
                Ui_Project_name_list.append(key)
        if not common.compare_list_by_order(project_name_list, Ui_Project_name_list):
            self.report_fail("""Favorite Files are not Present in the
             favorite grid project_name_list ={} and project_name_list={}""".format(Ui_Project_name_list, project_name_list))
        else:
            self.report_log("""All Favorite files Present in the 
                    favorite grid project_name_list ={} and project_name_list={}""".format(Ui_Project_name_list, project_name_list))

        
        return userdata

    def keyword_Copy_the_file_multiple_time(self, count, window, port_name, controller_family,incrementDecrement):
        """
        Copy the file multiple times 
        :param count:Number of time file require to copy
        :param window:window to check
        :param port_name:port name 
        :param controller_family:controller family
        :param incrementDecrement: Incremental count or decremental count
        """
        self.Copy_to_controller_click_reset_button()
        for i in range(0,(int(count))): 
            
            current_value=self.Copy_to_controller_get_counter_value()
            if incrementDecrement == "Incrementally":
                if int(current_value) == int(i):
                    self.report_log("Counter Value passed ={}".format(current_value))
                else:
                    self.report_fail("Counter Value failed ={}".format(current_value))
            else:
                testData = int(count) - int(i)
                if int(current_value) == int(testData):
                    self.report_log("Counter Value passed ={}".format(current_value))
                else:
                    self.report_fail("Counter Value failed ={}".format(current_value))
                
            self.Copy_to_controller_click_start_button() 
            
            self.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE","PROGRAMMING_CONTROLLER_IN_COPY_TO_CONTROLLER")
            self.popup_messagebox_window_click_ok_button(window)
        current_value=self.Copy_to_controller_get_counter_value()
        if incrementDecrement == "Decrementally":
            if int(current_value) == int(count) :
                self.report_log("Successfully Copied the file multiple times ={}".format(current_value))
            else:
                self.report_fail("Failed to Copy the file multiple times ={}".format(current_value))     
            

    def Keyword_copy_to_controller_compare_project_details(self, data):
        """
        Verify the selected project detail in copy to controller.
        :param data:user.context data
        """
        UI_Project_details=self.copy_to_controller_get_browsed_project_details()
        Working_dir_details=self.copy_to_controller_get_working_project_details(data, UI_Project_details)
        for key in UI_Project_details.keys():
            if UI_Project_details.get(key) == Working_dir_details.get(key):
                    continue
            else:
                self.report_log("""Project details not matched project_name_list ={} 
                    and project_name_list={}""".format(UI_Project_details, Working_dir_details))
        
        self.report_log("""Project details got matched project_name_list ={} 
                    and project_name_list={}""".format(UI_Project_details, Working_dir_details))
        return True
    
    def copy_to_controller_get_working_project_details(self, data_dict, UI_Project_details):
        """
        Get current working project information.
        :param UI_Project_details:Project details from the UI
        :param data_dict:User.context data
        :return: dictionary of current project information
        """
        working_dir_dict = dict()
        for field_name in UI_Project_details:
            working_dir_dict[field_name] = data_dict[field_name]
        return working_dir_dict
    
################### Online Service Window ##############     
    
    def keyword_online_service_window_verify_mainSwitch_label(self):
        
        """
        Verify main switch label is visible, enable and text in Online Service Window.
        """
        self.online_service_window_check_mainSwitch_label_is_visible()
        self.online_service_window_check_mainSwitch_label_is_enabled()
        self.online_service_window_check_mainSwitch_label_text(KoolProg_verify.window_property["Online_Service_Window"]["Main_switch_label_text"])

    def keyword_online_service_window_verify_manual_radioButton(self):
        
        """
        Verify manual radiobutton is visible, enable and text in Online Service Window.
        """
        self.online_service_window_check_manual_radiobutton_is_visible()
        self.online_service_window_check_manual_radiobutton_is_enabled()
        self.online_service_window_check_manual_radiobutton_text(KoolProg_verify.window_property["Online_Service_Window"]["Manual_label_text"])
        
    def keyword_online_service_window_verify_start_radioButton(self):
        
        """
        Verify start radiobutton is visible, enable and text in Online Service Window.
        """
        self.online_service_window_check_start_radiobutton_is_visible()
        self.online_service_window_check_start_radiobutton_is_enabled()
        self.online_service_window_check_start_radiobutton_text(KoolProg_verify.window_property["Online_Service_Window"]["Start_label_text"])
        
    def keyword_online_service_window_verify_stop_radioButton(self):
        """
        Verify stop radiobutton is visible, enable and text in Online Service Window.
        """
        self.online_service_window_check_stop_radiobutton_is_visible()
        self.online_service_window_check_stop_radiobutton_is_enabled()
        self.online_service_window_check_stop_radiobutton_text(KoolProg_verify.window_property["Online_Service_Window"]["Stop_label_text"])
    
    def keyword_online_service_window_verify_manual_radioButton_isSelected_by_default_in_input_output_tab(self):
        """
        Verify manual radiobutton is only selected in input output tab.
        """
        self.online_service_window_check_manual_radiobutton_is_selected()
        self.online_service_window_check_start_radiobutton_is_selected(False)
        self.online_service_window_check_stop_radiobutton_is_selected(False)
    
    def keyword_online_service_window_verify_manual_header_label_in_manual_radioButton(self):
        """
        Verify the manual header label in manual radiobutton of input output tab in the Online Service Window.
        """
        self.online_service_window_check_manual_label_in_inputOutput_table_is_visible()
        self.online_service_window_check_manual_label_in_inputOutput_table_is_enabled()
        self.online_service_window_check_manual_label_in_inputOutput_table_text(KoolProg_verify.window_property["Online_Service_Window"]["Input_output_table_text"]["Manual_Header_text"])
        
    def keyword_verify_column_position_of_manual_label_in_input_output_table(self,Manual):
        """
        Verify the manual column position of the input output table in online service window.
        :param Manual: String of Manual.
        :return: True if succeeds.
        """
        header_list = self.online_service_window_get_column_names_in_inputOutput_table()
        if header_list[-2] == Manual:
            self.report_pass("keyword_verify_column_position_of_manual_label_in_input_output_table is passed ...")
            return True
        self.report_fail("keyword_verify_column_position_of_manual_label_in_input_output_table is failed...")
        return False
    
################### Online Service Window ##############  

    def keyword_chartWindow_check_fileType_list_in_saveAs_dialog(self):
        """
        Check list of items present in the list box of fileType in saveas dialog in chart Window.
        window.
        
        """
        self.chartWindow_check_list_items_in_fileType_listbox(KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["SaveAs_dialog"]["Filetypes_available"])
        
    def keyword_chartWindow_write_the_file_name_with_specified_extension_in_dialog(self,dialog,extension):
        """
        Writes the file name with specified extension in dialog in Chart Window.
        :param dialog: Window Dialog
        :param extension: Extension needed to save the file.
        
        """
        file_name = common.randString(7)
        file_name_with_extension = file_name + KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["SaveAs_dialog"]["extension"][extension]
        self. Window_Dialog_write_project_path(file_name_with_extension, dialog)
        
        return {"SAVED_CHART_FILE_NAME": file_name_with_extension }
    
    def keyword_check_file_with_supported_extension_exists_in_specified_path(self, project_name, project_path, controllerFamily):
        """
        Check if file with extension exists in the specified path.
        :param project_name : Project name
        :param project_path: Project working directory
        :param controllerFamily: Controller family.
        """
        project_name_with_extension = self.keyword_get_filename_with_extension(project_name ,controllerFamily)
        self.keyword_check_if_file_exists_in_specified_path(project_name_with_extension, project_path)
        
    def keyword_check_if_file_exists_in_specified_path(self,project_name,path):
        """
        Check if a specified file exists in specified path
        :return: True if succeeds.
        
        """
  
        project_path = path + "\\{}"

        project_name_with_path = project_path.format(project_name)
        
        if common.path_exists(project_name_with_path):
            self.report_log("keyword_check_if_file_exists_in_specified_path passed ....",
                             "fileLocation='{}'".format(project_name_with_path))
            return True
        self.report_log("keyword_check_if_file_exists_in_specified_path failed ....",
                             "fileLocation='{}'".format(project_name_with_path))
        
        
    def keyword_check_list_items_in_zoom_level_listbox(self):
        """
        Check list of items present in the list box of zoom level in chart Window.
        window.
       
        """
        self.chartWindow_check_list_items_in_zoom_level_listbox(KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Zoom_Level_list_items"])
    
    def keyword_check_list_items_in_label_listbox(self):
        """
        Check list of items present in the list box of label in chart Window.
        window.
        """
        self.chartWindow_check_list_items_in_label_listbox(KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Label_list_items"])
    
    
    def keyword_check_list_items_in_log_interval_listbox(self):
        """
        Check list of items present in the list box of log interval in chart Window.
        window.
        
        """
        
        self.chartWindow_check_list_items_in_log_interval_listbox(KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Log_Interval_list_items"])
        
    def keyword_check_list_items_in_log_period_listbox(self):
        """
        Check list of items present in the list box of log period in chart Window.
        window.
        
        """
        self.chartWindow_check_list_items_in_log_period_listbox(KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Log_Period_List_Items"])
        
    def keyword_select_a_list_item_of_log_period_comboBox(self):
        """
        Select a given list item in log period combobox in chart Window.
        :return: List item selected.
        
        """
        list_item_selected = random.choice(KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Log_Period_List_Items"])
        self.chartWindow_select_list_item_of_log_period_comboBox(list_item_selected)
        return {"LIST_ITEM_SELECTED": list_item_selected}
    
    def keyword_check_selected_item_in_log_period_comboBox_is_displayed(self,project_details):
        """
        Check if a selected list item is displayed in log period comboBox in Chart Window.
        :param project_details: Current Project Details.
        :return: True if succeeds.
        
        """
        ui_listItem  = self.chartWindow_get_log_period_combobox_text()
        
        if ui_listItem != project_details["LIST_ITEM_SELECTED"]:
            self.report_fail("keyword_check_selected_item_in_log_period_comboBox_is_displayed is failed ...",
                             "ui_listItem ={} testData ={}".format(ui_listItem, project_details["LIST_ITEM_SELECTED"]))
            return False
        self.report_log("keyword_check_selected_item_in_log_period_comboBox_is_displayed is passed ...",
                             "ui_listItem ={} testData ={}".format(ui_listItem, project_details["LIST_ITEM_SELECTED"]))
        return True
    
    def keyword_check_default_item_in_log_period_comboBox_is_displayed(self):
        """
        Check if a default list item is displayed in log period comboBox in Chart Window.
        :return: True if succeeds.
        
        """
        ui_listItem  = self.chartWindow_get_log_period_combobox_text()
        
        if ui_listItem != KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Log_Period_default"]:
            self.report_fail("keyword_check_default_item_in_log_period_comboBox_is_displayed is failed ...",
                             "ui_listItem ={} testData ={}".format(ui_listItem, KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Log_Period_default"]))
            return False
        self.report_log("keyword_check_default_item_in_log_period_comboBox_is_displayed is passed ...",
                             "ui_listItem ={} testData ={}".format(ui_listItem, KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Log_Period_default"]))
        return True

    def keyword_check_default_item_in_log_interval_comboBox_is_displayed(self):
        """
        Check if a default list item is displayed in log interval comboBox in Chart Window.
        :return: True if succeeds.
        
        """
        ui_listItem  = self.chartWindow_get_log_interval_combobox_text()
        
        if ui_listItem != KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Log_Interval_default"]:
            self.report_fail("keyword_check_default_item_in_log_interval_comboBox_is_displayed is failed ...",
                             "ui_listItem ={} testData ={}".format(ui_listItem, KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Log_Interval_default"]))
            return False
        self.report_log("keyword_check_default_item_in_log_interval_comboBox_is_displayed is passed ...",
                             "ui_listItem ={} testData ={}".format(ui_listItem, KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Log_Interval_default"]))
        return True
    
    
    def keyword_check_default_item_in_zoom_level_comboBox_is_displayed(self):
        """
        Check if a default list item is displayed in zoom level comboBox in Chart Window.
        :return: True if succeeds.
        
        """
        ui_listItem  = self.chartWindow_get_zoom_level_combobox_text()
        
        if ui_listItem != KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Zoom_Level_default"]:
            self.report_fail("keyword_check_default_item_in_zoom_level_comboBox_is_displayed is failed ...",
                             "ui_listItem ={} testData ={}".format(ui_listItem, KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Zoom_Level_default"]))
            return False
        self.report_log("keyword_check_default_item_in_zoom_level_comboBox_is_displayed is passed ...",
                             "ui_listItem ={} testData ={}".format(ui_listItem, KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Zoom_Level_default"]))
        return True
    
    def keyword_check_default_item_in_label_comboBox_is_displayed(self):
        """
        Check if a default list item is displayed in label comboBox in Chart Window.
        :return: True if succeeds.
        
        """
        ui_listItem  = self.chartWindow_get_label_combobox_text()
        
        if ui_listItem != KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Label_default"]:
            self.report_fail("keyword_check_default_item_in_label_comboBox_is_displayed is failed ...",
                             "ui_listItem ={} testData ={}".format(ui_listItem, KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Label_default"]))
            return False
        self.report_log("keyword_check_default_item_in_label_comboBox_is_displayed is passed ...",
                             "ui_listItem ={} testData ={}".format(ui_listItem, KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Label_default"]))
        return True
    
    
    def keywords_check_headers_in_chartdataGrid(self):
        """
        Check headers list in chart datagrid.
        :return: True if succeeds.
        
        """
        
        self.chartWindow_check_headers_in_chartdataGrid(KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["Chart_datagrid_headers_list"])
        

    def keyword_Window_Dialog_get_list_of_files(self,dialog):
        """
        Gets list of files from dialog window.
        :param dialog: Dialog window name
        :return: list of file names.
        
        """
        files_list = self.Window_Dialog_get_list_of_files(dialog)
        return {"Window_dialog_files_list" : files_list}
    
    
    def keyword_verify_chart_file_format(self,project_details):
        """
        Verify chart file saved format.
        :param project_details: New project details.
        :return: True if succeeds.
        
        """
        File_names = project_details["Window_dialog_files_list"]
        for file_name in File_names:
            chart_name_List = file_name.split("_")
            initial_word= KoolProg_verify.window_property["Online_Service_Window"]["chartWindow"]["chart_format_initial_word"]
            ui_initialword = chart_name_List[0]
            if ui_initialword == initial_word:
                self.report_log("keyword_verify_chart_file_format initial word is passed ...",
                             "ui_file_name ={} testData ={}".format(ui_initialword, initial_word))
            else:
                self.report_fail("keyword_verify_chart_file_format initial word failed ...",
                             "ui_file_name ={} testData ={}".format(ui_initialword, initial_word))
                return False
            controllerVariant_name = self.online_get_variant_text()
            controllerFamiy = self.get_controllerFamily_from_controllerVariant(controllerVariant_name)
            if controllerFamiy in chart_name_List[1]:
                self.report_log("keyword_verify_chart_file_format controllerFamily is passed ...",
                             "ui_file_name ={} testData ={}".format(chart_name_List[1], controllerFamiy))
            else:
                self.report_fail("keyword_verify_chart_file_format controllerFamily failed ...",
                             "ui_file_name ={} testData ={}".format(chart_name_List[1], controllerFamiy))
                return False
            
            list_of_dateTime = common.get_list_of_dateTimes_after_adding_and_subtracting_seconds_to_sysDateTime(project_details["System_dateTime"],5)
            
            testDataList = self.keyword_convert_list_of_dateTimes_to_chart_dateTime_format(list_of_dateTime)
                
            
            if chart_name_List[2] in testDataList:
                self.report_log("keyword_verify_chart_file_format dateTime is passed ...",
                             "ui_file_name ={} testData ='{}'".format(chart_name_List[2], testDataList))
            else:
                self.report_fail("keyword_verify_chart_file_format dateTime failed ...",
                             "ui_file_name ={} testData ='{}'".format(chart_name_List[2], testDataList))
                return False
            
            return True

    def keyword_convert_system_date_to_chart_date_format(self,system_date):
        """
        Changes system date to chart date format.
        :param systemdate: System date
        :return: String of chart date format.
        
        """ 
        system_date = str(system_date)
        system_date = system_date.split('-')
        return  system_date[2] + system_date[1] + system_date[0]
            
    def keyword_convert_system_time_to_chart_time_format(self,system_time):
        """
        Changes system time to chart time format.
        :param system_time: System time
        :return: String of chart time format.
        
        """
        system_time = str(system_time) 
        system_time = system_time.split('.')
        return datetime.strptime(system_time[0], '%H:%M:%S').strftime('%I%M%S%p')
                
    def keyword_fetch_system_date_and_time(self):
        """
        Fetch system date and time.
        :return: System date and time.
        
        """
        sys_dateTime = common.get_system_date_and_time()
        
        return {"System_dateTime": sys_dateTime }
    
    def keyword_convert_list_of_dateTimes_to_chart_dateTime_format(self,list_of_dateTime):
        """
        Convert list of dateTimes to chart dateTime Format.
        :param list_of_dateTime: List of dateTimes
        :return: list of dateTimes in chart dateTime Format.
        
        """
        
        testDataList = []
        for dateTime in list_of_dateTime:
            date = common.convert_sysdateTime_to_sysdate(dateTime)
            time = common.convert_sysdateTime_to_systime(dateTime)
            testDate = self.keyword_convert_system_date_to_chart_date_format(date)
            testTime = self.keyword_convert_system_time_to_chart_time_format(time)
            test_date_time = str(testDate) + str(testTime)
            testDataList.append(test_date_time)
        return testDataList

    def Keyword_copy_to_controller_delete_fav_file_in_fav_table(self, details):
        """
        Delete the favorite files from the favorite table in copy to controller.
        :param details:project details
        """
        project_name_list=details["PROJECT_NAME_LIST"]
        for projectname in project_name_list:
            self.Copy_to_controller_delete_fav_file_in_fav_table(projectname)
        

    def keyword_copy_to_controller_disconnect_message(self, controllerFamily, message, window):
        """
        
        """
        if controllerFamily in KoolProg_verify.CRO_controller:
            self.popup_messagebox_window_check_message_text(message, window) 
            self.popup_messagebox_window_click_ok_button(window)
        else:
            self.report_log("connected controller is not from maintenance")
        
        
    def keyword_get_an_index_from_inputSheet_YES(self):
        """
        Fetches "YES" from "toTest" column and returns an index by randomly selecting one "YES" from the list.
        :return: Returns an index for which "toTest" equals "YES".
        
        """
        indexes = self.get_indices_totest_yes_and_isdefault_yes(InputSheet.inputYes)
        index = random.choice(indexes)
        return index
    
    def keyword_get_an_index_from_the_given_controller_variant(self, controllerFamily,controllerVariant):
        """
        Get an index from the given controller variant.
        :param controllerFamily: Controller Family.
        :param controllerVariant: Controller Variant.
        :return: Index.
        """
        variant = KoolProg_verify.Variant[controllerFamily][controllerVariant]
        indx_list = self.get_indices_of_given_controller_variant(variant)
        indx = common.select_randomly_from_a_list(indx_list)
        return indx
    
    def keyword_get_index_from_inputSheet_YES_for_controllerFamily_input(self,controllerFamily):
        """
        Fetches "YES" from "toTest" column of given controller Family and returns an index by randomly selecting one
         "YES" from the list.
        :param controllerFamily: Controller Family name.
        :return: Returns an index for which "toTest" equals "YES" for the controller Family provided.
        
        """
        family_indexes = self.get_indices_of_given_controller_family(controllerFamily)
        toTest_Yes_indexes = self.get_indices_totest_yes_and_isdefault_yes(InputSheet.inputYes)
        indexes = common.get_list_of_same_elements_from_lists(family_indexes,toTest_Yes_indexes)
        if len(indexes) == 0:
            self.report_fail(ReportLog.invalid_controller_details_for_projectCreation+ "None")
        index = random.choice(indexes)
        return index
        
    def keyword_locate_and_unzip_the_CDF(self,controllerinfo_Dict):
        """
        Locates the CDF and unzips it and returns the path of the unzipped folder.
        :param controller_info_Dict: Details of the controller used for validation.
        :return: The path of unzipped Folder.
        
        """
        cdf_location = self.locate_and_unzip_the_CDF(controllerinfo_Dict)
        return {"cdf_location": cdf_location}
        
    def parseTheInputFile(self,controllerinfo_Dict):
        """
        Parses the Database and returns the details.
        :param controller_info_Dict: Details of the controller used for validation.
        :return: Returns the content of the database parsed.
        
        """
        #self.set_language_help_file(controllerinfo_Dict,"Chinese (Simplified) Legacy")
        #self.set_language_file(controllerinfo_Dict,"Chinese (Simplified) Legacy")
        self.parseDatabase(controllerinfo_Dict)        
    
    def keyword_change_structure_in_the_cdf(self, cdf_location, structure_change):
        """
        Change the structure of the file.
        :param cdf_location : Path of the cdf folder.
        :param structure_change: Add/Delete the contents in the CDF.
        :return: Structure changed cdf path
        """
        if structure_change == "Add":
            randString = common.randString(25)
            CDFContentParser.structure_change_in_the_cdf(self, cdf_location, structure_change,randString)
        else:
            CDFContentParser.structure_change_in_the_cdf(self, cdf_location,structure_change)
        loc = os.path.normpath(cdf_location + os.sep + os.pardir)
        zip_path = common.zip_the_files_in_directory(loc, 'structure_changed', cdf_location)
        structure_changed_cdf_path = common.change_the_extension(zip_path ,".cdf")
        dir_fileName = os.path.split(structure_changed_cdf_path) 
        structure_changed_cdf_folder = dir_fileName[0]
        structure_changed_fileName = dir_fileName[1]
        return {"structure_changed_cdf_folder":structure_changed_cdf_folder,"structure_changed_fileName":structure_changed_fileName}                           
                                                                               
##################### Compatible File ########################### 

    def keyword_check_opened_file_is_compatible_to_connnected_controller(self, details):
        """
        Verify Opened Project File Is Compatible To Connected Controller.
        :param details:project details
        """
        if details['controllerVariant'] == details["connected_controllerVariant"]:
            if details['controllerCodeNo'][0:8] == details["connected_controllerCodeNo"]:
                if details['softwareVersion'] == details["connected_softwareVersion"]:
                    self.report_log("Opened file is compatible")
                else:
                    self.report_fail("Connected controller is not compatible to opened project")
    
    def create_project_not_compatible_to_connected_controller(self, details):
        """
        create project with non compatible controller details.
        :param details: connected controller information
        """
        family_indexes = self.get_indices_of_given_controller_family(details["controllerFamily"])
        for index in family_indexes:
            controller_details = self.get_controller_details_from_index(index)
            if controller_details["softwareVersion"] == details["softwareVersion"] and controller_details["controllerVariant"]==details["controllerVariant"]:
                continue
            else:
                break
        self.select_controller_in_new_project_window(controller_details["controllerFamily"], controller_details["controllerVariant"])
        self.new_prj_window_click_next_button()
        self.new_prj_window_AKCC55_app_selection(controller_details["controllerCodeNo"], controller_details["softwareVersion"])
        self.keyword_uncheck_wizard_option(controller_details["controllerFamily"])
        prj_details_not_compatible_dict = self.keyword_merge_dict(controller_details, self.keyword_write_project_name())
        prj_details_not_compatible_dict = self.keyword_merge_dict(controller_details, self.keyword_write_project_description())
        self.new_prj_window_click_finish_button()
        return prj_details_not_compatible_dict
    
##################### Compatible File ########################### 

##################### Controller Selection Window ###########################


    def keyword_new_prj_window_check_variant_list_for_specific_controller_family(self,controller_family):
        """
        Verify controller variant 
        :param controller_family: controller family 
        """
        ui_controller_variant_list = self.new_prj_window_get_variant_list_for_specific_controller_family(controller_family)
        controller_variant_list = KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Product_Details_Selection_Window"]["Controller_Variant_List"][controller_family]
        controller_variant_compare = common.compare_list(ui_controller_variant_list, controller_variant_list)

        if not controller_variant_compare:
            self.report_fail("keyword_new_prj_window_check_variant_list_for_specific_controller_family is failed",
                             " ui_controller_variant_list ={} and testData = {} ".format(ui_controller_variant_list,controller_variant_list))
        else:
            self.report_pass("keyword_new_prj_window_check_variant_list_for_specific_controller_family is passed",
                             " ui_controller_variant_list ={} and testData = {} ".format(ui_controller_variant_list,controller_variant_list))

        
##################### Controller Selection Window ###########################

##################### Tag Import Controller Model ###########################  

    def keyword_get_cdf_file_path(self, details):
        """
        Get cdf folder path
        :param details: connected controller information
        :return : cdf_file_path
        """
        cdf_file_path = common.get_project_file_path(inputConfig.cdf_file_path + KoolProg_verify.New_CDF_File["controllerCodeNo"] + "_" +  KoolProg_verify.New_CDF_File["softwareVersion"] + inputConfig.CDF_File_Extension)
        return {"cdf_file_path" : cdf_file_path}

    def keyword_get_offline_cdf_file(self, details):
        """
        Get offline cdf file
        :param details: connected controller information
        :return : cdf_file_path and cdf_file_name
        """
        cdf_file_path = common.get_project_file_path(inputConfig.cdf_file_path)
        cdf_file_name = details["controllerCodeNo"] +  "_" +  details["softwareVersion"] + inputConfig.CDF_File_Extension
        return {"cdf_file_path" : cdf_file_path, "cdf_file_name" : cdf_file_name} 
                                                           
    def keyword_get_new_offline_cdf_file(self, details):
        """
        Get new offline cdf file
        :param details: connected controller information
        :return : cdf info if selected controller is not default for AKCC
        """
        
        codeNumber,software_version = self.get_new_offline_cdf_inputs(details)
        if details["controllerCodeNo"] == codeNumber and details["softwareVersion"] == software_version:
            self.report_pass("selected code number and software version is already imported")
            cdf_info = self.keyword_get_offline_cdf_file(details)
        else:
            details["controllerCodeNo"] = codeNumber
            details["softwareVersion"] = software_version
            cdf_info = self.keyword_get_offline_cdf_file(details)
        return(cdf_info)
    
  
        
    def keyword_proj_desc_win_check_new_added_code_no(self, details, code_number_available = True):
        """
        Check new added code number into project description window
        :param details: connected controller information
        :param code_number_available : code number is available
        """
        ui_code_no_list = self.new_prj_window_get_list_of_code_number()
        
        if (code_number_available == "True"):
            if details["controllerCodeNo"] in ui_code_no_list:
                self.report_pass("keyword_proj_desc_win_check_new_added_code_no is passed")
            else:
                self.report_fail("keyword_proj_desc_win_check_new_added_code_no is failed",
                             " check code number list ={}".format(ui_code_no_list))
        else:
            default_code_number = KoolProg_verify.default_product_details_info[details["controllerFamily"]][details["controllerVariant"]]["controllerCodeNo"]
            if details["controllerCodeNo"] == default_code_number:
                self.report_log("imported code number is default")
            else:
                if not details["controllerCodeNo"] in ui_code_no_list:
                    self.report_pass("keyword_proj_desc_win_check_new_added_code_no is passed")
                else:
                    self.report_fail("keyword_proj_desc_win_check_new_added_code_no is failed",
                             " check code number list ={}".format(ui_code_no_list))
        
    def keyword_proj_desc_win_check_new_added_sw_version(self, sw_verison, sw_version_available = True):
        """
        Check new added sw version into project description window
        :param sw_verison : sw version
        :param sw_version_available : sw verison is available
        """
        ui_sw_version_list = self.new_prj_window_get_list_of_software_version()
        
        if (sw_version_available == "True"): 
            if sw_verison in ui_sw_version_list:
                self.report_pass("keyword_proj_desc_win_check_new_added_sw_version is passed")
            else:
                self.report_fail("keyword_proj_desc_win_check_new_added_sw_version is failed",
                             " check software version list ={}".format(ui_sw_version_list))

        else:
            if not sw_verison in ui_sw_version_list:
                self.report_pass("keyword_proj_desc_win_check_new_added_sw_version is passed")
            else:
                self.report_fail("keyword_proj_desc_win_check_new_added_sw_version is failed",
                             " check software version list ={}".format(ui_sw_version_list))
    
            
    def keyword_get_koolprog_supported_special_characters_for_file_name(self):
        """
        Get koolprog supported special characters for file
        : return : changedfilename
        """
        changedfilename = common.get_invalid_filename(KoolProg_verify.KoolProg_supported_special_char) + inputConfig.CDF_File_Extension
        return {"changedfilename" : changedfilename}
    
    def keyword_get_window_supported_special_characters_for_file_name(self):
        """
        Get window supported special characters for file
        : return : changedfilename
        """
        changedfilename = common.get_invalid_filename(KoolProg_verify.Window_supported_special_char) + inputConfig.CDF_File_Extension
        return {"changedfilename" : changedfilename}
        
    def keyword_rename_cdf_file(self, details):
        """
        Rename cdf file
        :param details: connected controller information
        """
        if self.renamefile_and_copy(details["cdf_file_path"], details["cdf_file_name"], details["changedfilename"]):
            self.report_pass("keyword_rename_cdf_file is passed ...",
                            "sym = '{}' ".format(details["cdf_file_path"]))
        else:
            self.report_fail("keyword_rename_cdf_file is failed",
                             " check event filepath ={}".format(details["cdf_file_path"]))
            
##################### Tag Import Controller Model ###########################  

##################### AKCC ########################### 


    def create_project_with_new_cdf(self, details):
        """
        Create project with new cdf file
        :param details: connected controller information
        """
        self.select_controller_in_new_project_window(details["controllerFamily"], details["controllerVariant"])
        self.new_prj_window_click_next_button()
        self.new_prj_window_AKCC55_app_selection(details["controllerCodeNo"], details["softwareVersion"])
        self.keyword_uncheck_wizard_option(details["controllerFamily"])
        details = self.keyword_merge_dict(details, self.keyword_write_project_name())
        details = self.keyword_merge_dict(details, self.keyword_write_project_description())
        self.new_prj_window_click_finish_button()
        
##################### AKCC ########################### 
##################### App Data ###########################


    def keyword_clear_app_data(self):
        """
        Clear app data folder
        """
        self.keyword_close_application()
        app_data_path = inputConfig.app_data_path
        self.keyword_clear_the_directory(app_data_path)
        self.keyword_sleep(3)
        
    def keyword_handle_preference_window_and_automation_password(self):
        """
        Check Preference window is available when KoolProg is opened and handle automation password.
        """ 
        if self.Preference_window_return_existence_of_window():
            self.Preferences_window_click_password_protection_checkbox()
            self.keyword_Preference_window_enter_password("Automation")
            self.keyword_Preference_window_enter_confirm_password("Automation")
            self.Preferences_window_click_Save_button() 
            self.popup_messagebox_window_click_ok_button("HOME_WINDOW")
            self.click_settings_icon_in_homepage_window()
            self.Preferences_window_is_visible()
            self.keyword_set_default_language_in_preference_window()
            
    
##################### App Data ###########################

############## Tag bin file ##############

    def keyword_copy_to_controller_window_get_bin_file(self, details):
        """
        Get bin file path
        :param controller_details: connected controller information
        """
        bin_file_path = common.get_project_file_path(inputConfig.cdf_file_path  + details["connected_controllerCodeNo"] + "-" + details["connected_controllerVariant"] + "_" +  details["connected_softwareVersion"] + inputConfig.FW_Upgrade_File_Extension)
        return {"bin_file_path" : bin_file_path}
    
    def keyword_copy_to_controller_window_get_bin_file_for_selected_controller_details(self, details):
        """
        Get bin file path
        :param controller_details: selected controller information
        :return: Bin file path
        
        """
        bin_file_path = common.get_project_file_path(inputConfig.cdf_file_path  + details["controllerCodeNo"]  + "_" +  details["softwareVersion"] + inputConfig.FW_Upgrade_File_Extension)
        return {"bin_file_path" : bin_file_path}
    
    def keyword_copy_to_controller_window_get_non_compatible_bin_file_with_sw_version_mismatch(self, details):
        """
        Get non compatible bin file with SW version mismatch path
        :param controller_details: connected controller information
        :return: Non compatible bin details
        """
        family_indexes = self.get_indices_of_given_controller_family(details["controllerFamily"])
        for index in family_indexes:
            controller_details = self.get_controller_details_from_index(index)
            if (controller_details["controllerVariant"] == details["controllerVariant"]) and (controller_details["controllerCodeNo"] == details["controllerCodeNo"])and (controller_details["softwareVersion"] != details["softwareVersion"]):
                break
            else:
                continue
        non_compatible_bin_details = {"non_compatible_bin_controllerVariant":controller_details["controllerVariant"],"non_compatible_bin_controllerCodeNo":controller_details["controllerCodeNo"],"non_compatible_bin_softwareVersion":controller_details["softwareVersion"]}
        non_compatible_bin_file_path = common.get_project_file_path(inputConfig.cdf_file_path + non_compatible_bin_details["non_compatible_bin_controllerCodeNo"] + "_" +  non_compatible_bin_details["non_compatible_bin_softwareVersion"] + inputConfig.FW_Upgrade_File_Extension)
        return {"non_compatible_bin_file_path" : non_compatible_bin_file_path}
    
    def keyword_copy_to_controller_window_get_non_compliant_bin_file(self, details):
        """
        Get non compliant bin file path
        :param controller_details: connected controller information
        :return: Non compliant bin details
        """
        family_indexes = self.get_indices_of_given_controller_family(details["controllerFamily"])
        for index in family_indexes:
            controller_details = self.get_controller_details_from_index(index)
            if (controller_details["controllerVariant"] != details["controllerVariant"]) and (controller_details["controllerCodeNo"] != details["controllerCodeNo"])and (controller_details["softwareVersion"] != details["softwareVersion"]):
                break
            else:
                continue
        non_compliant_bin_details = {"non_compliant_bin_controllerVariant":controller_details["controllerVariant"],"non_compliant_bin_controllerCodeNo":controller_details["controllerCodeNo"],"non_compliant_bin_softwareVersion":controller_details["softwareVersion"]}
        non_compliant_bin_file_path = common.get_project_file_path(inputConfig.cdf_file_path + non_compliant_bin_details["non_compliant_bin_controllerCodeNo"] + "_" +  non_compliant_bin_details["non_compliant_bin_softwareVersion"] + inputConfig.FW_Upgrade_File_Extension)
        return {"non_compliant_bin_file_path" : non_compliant_bin_file_path}

    def keyword_copy_to_controller_window_get_bin_file_different_than_current_sw(self, details, message):
        """
        Get bin file path for software version lower than the connected controller
        :param details: Project details
        :param message: To upgrade the controller greater or lower than the current software version
        :return: Returns path of the bin file
        """
        cur_dir = inputConfig.cdf_file_path
        bin_files = os.listdir(cur_dir)
        file_list = []
        for file in bin_files:
            if message == 'Lower':
                if file[-3:] == 'BIN' and details["connected_controllerVariant"] in file and details["connected_softwareVersion"] not in file and float(file.split("_").pop()[:4])<float(details["connected_softwareVersion"]):
                    file_list.append(file)                    
            else:
                if file[-3:] == 'BIN' and details["connected_controllerVariant"] in file and details["connected_softwareVersion"] not in file and float(file.split("_").pop()[:4])>float(details["connected_softwareVersion"]):
                    file_list.append(file)
                
        random_bin_file_index = random.randrange(0,len(file_list))
        random_sw_version = file_list[random_bin_file_index]
        bin_file_path = common.get_project_file_path(inputConfig.cdf_file_path + random_sw_version)
        return {"bin_file_path" : bin_file_path}    

    
    
##################### Koolprog Upgrade ########################### 
    def keyword_install_KoolProg(self,installationType):
        """
        Upgrade/Downgrade the KoolProg
        :param installationType: Upgrade or Downgrade
        :return: True if succeeds.
        """
        if installationType == Installation.upgrade_koolprog:
            if not installation().install(inputConfig.upgrade_path):
                self.report_fail("Upgrade KoolProg is failed...")
                return False
        elif installationType == Installation.downgrade_koolprog:
            if not installation().install(inputConfig.downgrade_path):
                self.report_fail("Downgrade KoolProg is failed...")
                return False
        else:
            self.report_fail("keyword_install_KoolProg is failed...")
            return False
        self.report_pass("keyword_install_KoolProg is passed ...")
        return True
            
    
    def keyword_uninstall_KoolProg(self):
        """
        Uninstall the KoolProg.
        :return: True if succeeds
        """
        if not uninstallation().uninstall(inputConfig.uninstall_file):
            self.report_fail("keyword_uninstall_KoolProg is failed...")
            return False
        self.report_pass("keyword_uninstall_KoolProg is passed ...")
        return True

##################### Koolprog Upgrade ########################### 

##################### Project window expand/collpase  ########################### 

    def keyword_prj_details_expand_and_collapse_button_is_visible_and_enabled(self):
        """
        Verify project description expand and collapse is visible and enabled
        """
        self.prj_window_check_project_details_expand_collapse_button_is_visible()
        self.prj_window_check_project_details_expand_collapse_button_is_enabled()
                
    def keyword_prj_details_is_expanded(self):
        """
        Verify project details are expanded when project is opened
        """    
        self.prj_window_check_ProjectName_label_visible()
        self.prj_window_check_code_number_label_is_visible()
        self.prj_window_check_software_version_label_is_visible()
        self.prj_window_product_info_button_is_visible()
        self.prj_window_check_product_name_label_is_visible()    
        
                
    def keyword_prj_details_collapse_when_clicked_on_collapse(self):
        """
        Verify project details are collapsed when click on collapsed
        """
        self.prj_window_click_on_project_details_expand_collapse_button()
        self.prj_window_check_ProjectName_label_visible(False)
        self.prj_window_check_code_number_label_is_visible(False)
        self.prj_window_check_software_version_label_is_visible(False)
        self.prj_window_product_info_button_is_visible(False)
        self.prj_window_check_product_name_label_is_visible(False)
    
    def keywords_prj_details_not_collapsed_when_clicked_on_collapse(self):
        """
        Verify project details are not collapsed when click on collapse button in Project window
        """
        self.prj_window_click_on_project_details_expand_collapse_button()
        self.prj_window_check_ProjectName_label_visible()
        self.prj_window_check_code_number_label_is_visible()
        self.prj_window_check_software_version_label_is_visible()
        self.prj_window_product_info_button_is_visible()
        self.prj_window_check_product_name_label_is_visible()
        
    def keyword_verify_conntected_controller_is_collapsed(self, controllerFamily):
        """
        Verify controller details is collapsed in KoolProg.
        :param controllerFamily: Controller Family name
        """       
        self.prj_window_check_controller_visible_for_expand_and_collapse(False)
    
    def keyword_project_help_description_is_visible_and_enabled(self):
        """
        Verify project description expand and collapse button is visible and enabled
        """
        self.prj_window_check_help_Expand_collapse_button_is_visible()
        self.prj_window_check_help_Expand_collapse_button_is_Enabled()
            
    def keyword_project_help_description_collapsed(self):
        """
        Verify project help button is collapsed when click on collapsed
        """
        self.prj_window_click_help_Expand_collapse_button()
        self.prj_window_check_status_of_help_expand_collapse_button(False)
    
    def keywords_project_help_description_not_collapsed(self):
        """
        Verify project help button is collapsed when click on collapsed
        """
        self.prj_window_click_help_Expand_collapse_button()
        self.prj_window_check_status_of_help_expand_collapse_button()                    

##################### Project window expand/collpase ########################### 
        
##################### Convert Settings ########################### 

    def keyword_verify_convert_setting_window_is_visible_and_enabled(self):
        """
        Verify convert setting window is visible and enabled
        """
        self.convert_settings_window_is_visible()
        self.convert_settings_window_is_enabled()
    
    def keyword_set_specialChar_in_newFileName_textBox(self):
        """
        Set the special characters in New fileName textbox in convert settings window.s
        """
        _char = common.get_invalid_filename(KoolProg_verify.special_characters_for_file_name)
        self.convert_settings_window_set_file_name(_char)
    
    def keyword_set_random_file_name_for_given_length(self, len=None):
        """
        Set a random file name for specified length.
        :param len: Length of file name.
        :return: file name
        """
        new_fileName = common.randString(len)
        self.convert_settings_window_set_file_name(new_fileName)
        return {"new_fileName":new_fileName}

    def keyword_file_name_length_validation(self, length):
        """
        Check the file name should not exceed more than 20 characters.
        :param length: Length of the filename.
        """
        self.report_log("Check the project name should not exceed more than length characters.")
        self.convert_settings_window_check_file_name_length(length)
    
    def keyword_select_software_version_connected_to_controller(self, prj_sw_version):
        """
        Select software version in software version combobox of convert settings window except created project software version.
        :param prj_sw_version: Created project software version.
        """
        sw_version_list = self.convert_settings_window_get_list_of_software_version()
        sw_version_list.remove(prj_sw_version)
        if len(sw_version_list) == 0:
            self.report_fail("keyword_select_software_version_connected_to_controller- No software version to select.")
        new_sw_version = random.choice(sw_version_list)
        self.convert_settings_window_select_software_version_from_combobox(new_sw_version)
        return {"new_sw_version":new_sw_version}  
    
    def keyword_verify_message_of_file_name_cant_be_empty(self):
        """
        Check status message of "select different software version or file name cant be empty" label is visible,enable and text in convert settings window.
        """
        self.convert_settings_window_check_label_of_select_different_SW_version_is_visible()
        self.convert_settings_window_check_label_of_select_different_SW_version_is_enabled()
        self.convert_settings_window_check_select_different_SW_version_label_text(KoolProg_verify.window_property["convert_setting_window"]["windows"]["different SW version or file name not to be empty label text"])
    
    def keyword_verify_convert_file_button(self):
        """
        Verify convert file button visible ,enable,text.
        """
        self.convert_settings_window_check_convert_file_button_is_visible(True)
        self.convert_settings_window_check_convert_file_button_is_enabled(True)
        self.convert_settings_window_check_convert_file_button_text(KoolProg_verify.window_property["convert_setting_window"]["windows"]["convert file button text"])
        
    def keyword_set_file_name_from_project_name(self, project_name):
        """
        Set the project name as the filename in the convert settings window.
        :param project_name: Created Project name
        """
        self.convert_settings_window_set_file_name(project_name)
    
    def keyword_verify_converted_settings_file_report_is_visible(self):
        """
        Verify the converted settings file report window is visible.
        """
        self.convert_settings_window_check_converted_settings_file_report_label_in_converted_settings_report_is_visible()
        self.convert_settings_window_check_X_button_in_converted_settings_report_is_visible()
        self.convert_settings_window_check_close_button_in_converted_settings_report_is_visible()
    
    def keyword_verify_converted_settings_file_report_is_enabled(self):
        """
        Verify the converted settings file report window is enabled.
        """
        self.convert_settings_window_check_close_button_in_converted_settings_report_is_enabled()
        self.convert_settings_window_check_converted_settings_file_report_label_in_converted_settings_report_is_enabled()
        self.convert_settings_window_check_X_button_in_converted_settings_report_is_enabled()
    
    def keyword_verify_changes_in_convert_settings_is_unavailable_in_project_window(self, details):
        """
        Verify changes in project window is not available after clicking cancel button in convert settings window.
        :param details: Project details.
        """
        project_name = self.prj_window_get_project_name()
        controller_details = self.prj_window_get_project_detail_values(details["controllerFamily"])
        if (controller_details["softwareVersion"]!= details["softwareVersion"]) and (details["new_fileName"] != project_name):
            self.report_pass("keyword_verify_changes_in_convert_settings_is_unavailable_in_project_window is passed...")
            return True
        else:
            self.report_fail("keyword_verify_changes_in_convert_settings_is_unavailable_in_project_window is failed...")
            return False
    
    def keyword_verify_message_of_software_version_mismatch_is_not_available(self): 
        """
        Verify software version mismatch is not available in connected controller window.
        """
        self.connected_controller_check_SW_version_mismatch_label_text('')   
    
    def keyword_verify_message_of_software_version_mismatch(self):
        """
        Check status message of "software version mismatch" label is visible,enable and text in convert settings window.
        """
        self.connected_controller_check_SW_version_mismatch_label_is_visible()
        self.connected_controller_check_SW_version_mismatch_label_is_enabled()
        self.connected_controller_check_SW_version_mismatch_label_text(KoolProg_verify.window_property["Project_Window"]["software_version_mismatch"])


##################### Convert Settings ########################### 
    
##################### Quick Settings ###########################
    
    def keyword_verify_sw_version_comboBox_has_imported_cdf(self, details):
        """
        Verify software version combobox contains imported cdf.
        :param details: Project details
        :return: True if succeeds.
        """
        if len(details["sw_version_list"])>1 and (details["softwareVersion"] in details["sw_version_list"]):
                self.report_pass("Cdf file is imported successfully")
                return True   
        else:
            self.report_fail("Cdf file is not imported")
            return False
        
    def keyword_verify_sw_version_comboBox_has_default_CDF(self, details):
        """
        Verify software version combobox contains default CDF.
        :param details: Project details
        :return: True if succeeds.
        """
        fam = details["controllerFamily"]
        var = details["controllerVariant"]
        keys = KoolProg_verify.default_product_details_info[fam].keys()
        default_sw_version = None
        if var in keys:
            prod_details = KoolProg_verify.default_product_details_info[fam][var]
            keys = prod_details.keys()
            if "softwareVersion" in keys:
                default_sw_version = prod_details["softwareVersion"]
        if len(details["sw_version_list"])>1 and default_sw_version in details["sw_version_list"]:
                self.report_pass("Default CDF is available..")
                return True   
        else:
            self.report_fail("Default CDF is not present.")
            return False
            
    def keyword_verify_new_prj_window_quick_wizard_header_label(self):
        """
        Check if "New project" label of quick wizard is visible,enable and text in New Project Window.
        """
        self.quick_settings_window_check_quick_setup_label_is_visible()
        self.quick_settings_window_check_quick_setup_label_is_enabled()
        self.quick_settings_window_check_quick_setup_label_text(KoolProg_verify.window_property["Quick_Settings_Window"]["label"]["text"]["header_label_new_project"])
    
    def keyword_verify_new_prj_window_quick_setting_parameters_label(self):
        """
        Check if "Quick Setting Parameters" label of quick wizard is visible,enable and text in New Project Window.
        """
        self.quick_settings_window_check_quick_setting_parameters_label_is_visible()
        self.quick_settings_window_check_quick_setting_parameters_label_is_enabled()
        self.quick_settings_window_check_quick_setting_parameters_label_text(KoolProg_verify.window_property["Quick_Settings_Window"]["label"]["text"]["Quick_setting_parameters_label"])
    
    def keyword_verify_x_button_from_quick_wizard(self):
        """
        Check if "X" button of quick wizard is visible,enable and text in New Project Window.
        """
        self.quick_settings_window_X_button_visible()
        self.quick_settings_window_X_button_is_enabled()
        self.quick_settings_window_check_X_button_text(KoolProg_verify.window_property["Quick_Settings_Window"]["button"]["text"]["Close_Button"])
    
    def keyword_verify_finish_button_from_quick_wizard(self):
        """
        Check if "FINISH" button of quick wizard is visible,enable and text in New Project Window.
        """
        self.quick_settings_window_finish_button_visible()
        self.quick_settings_window_finish_button_is_enabled()
        self.quick_settings_window_check_finish_button_text(KoolProg_verify.window_property["Quick_Settings_Window"]["button"]["text"]["Finish_Button"])
        
    def keyword_verify_controller_variant_label_from_quick_wizard(self, var):
        """
        Check if "controller variant" label of quick wizard is visible,enable and text in New Project Window.
        :param var: Controller variant.
        """
        self.quick_settings_window_check_controller_variant_label_is_visible()
        self.quick_settings_window_check_controller_variant_label_is_enabled()
        self.quick_settings_window_check_controller_variant_label_text(var)
    
    def keyword_verify_controller_codeNumber_label_from_quick_wizard(self, controllerCodeNo):
        """
        Check if "controller codenumber" label of quick wizard is visible,enable and text in New Project Window.
        :param controllerCodeNo: Controller Code number.
        """
        self.quick_settings_window_check_controller_codeNumber_label_is_visible()
        self.quick_settings_window_check_controller_codeNumber_label_is_enabled()
        self.quick_settings_window_check_controller_codeNumber_label_text(controllerCodeNo)
    
    def keyword_verify_software_version_label_from_quick_wizard(self, softwareVersion):
        """
        Check if "software version" label of quick wizard is visible,enable and text in New Project Window.
        :param softwareVersion: Software Version.
        """
        self.quick_settings_window_check_controller_SW_Version_label_is_visible()
        self.quick_settings_window_check_controller_SW_Version_label_is_enabled()
        self.quick_settings_window_check_controller_SW_Version_label_text(softwareVersion)
    
    def keyword_verify_scrollbar_from_quick_wizard(self):
        """
        Check if "scrollbar" of quick wizard is visible,enable and text in New Project Window.
        """
        self.quick_settings_window_check_parameter_scrollbar_is_visible()
        self.quick_settings_window_check_parameter_scrollbar_is_enabled()
        self.quick_settings_window_check_wired_image_scrollbar_is_visible()
        self.quick_settings_window_check_wired_image_scrollbar_is_enabled()
     
    def keyword_new_prj_window_verify_software_version_with_default_software_version(self, controller_info_dict):        
        """
        Verify only default software version is available in software version combobox in controller details selection window.
        :param controller_info_dict: Project details.
        :return: True if succeeds.
        """
        fam = controller_info_dict["controllerFamily"]
        var = controller_info_dict["controllerVariant"]
        keys = KoolProg_verify.default_product_details_info[fam].keys()
        default_sw_version = None
        if var in keys:
            prod_details = KoolProg_verify.default_product_details_info[fam][var]
            keys = prod_details.keys()
            if "softwareVersion" in keys:
                default_sw_version = prod_details["softwareVersion"]
        sw_version_list = controller_info_dict["sw_version_list"]
        if len(sw_version_list)==1 and default_sw_version in sw_version_list:
                self.report_pass("keyword_new_prj_window_verify_software_version_with_default_software_version is passed..")
                return True
        else:
            self.report_fail("keyword_new_prj_window_verify_software_version_with_default_software_version is failed...")
            return False
    
    def keywords_get_quick_settings_collection(self,controllerinfo_Dict):
        """
        Get the quick settings collection.
        :param controllerinfo_Dict: Controller information
        :return: Quick settings collection.
        """
        self.keyword_parse_input_database(controllerinfo_Dict)
        quick_setting_and_datagrid_collection = self.parse_quicksetting_parameters()
        quick_setting_param_collection_lst = quick_setting_and_datagrid_collection[0]
        return {"QuickSetting_Collection":quick_setting_param_collection_lst}
    
    def keyword_get_quick_setting_parameter_collection_from_UI(self):
        """
        Get the quick settings collection from the UI.
        :return: Quick settings colelction from UI.
        """
        quick_settings_ui = self.quick_settings_window_get_parameter_details()
        return {"quick_settings_ui":quick_settings_ui}
    
    def keyword_verify_tooltip_of_enum_in_quick_wizard(self, controllerinfo_Dict):
        """
        Verify the tooltip of enum in the quick wizard
        :param controllerinfo_Dict: Controller information
        :return: True if succeeds.
        """
        quick_setting_collection = self.keywords_get_quick_settings_collection(controllerinfo_Dict)
        quick_setting = quick_setting_collection["QuickSetting_Collection"]
        quick_setting = self.keyword_filter_the_database_with_input_property_name_and_value("DataType","Enum",quick_setting)
        quick_settings_ui = controllerinfo_Dict["quick_settings_ui"]
        
        found = False
        for anItem in quick_setting:
            for _, parametersList in anItem.items():
                for aParameterInfo in parametersList:
                    found = False
                    for index,quick_settings_ui_parameter_item in enumerate(quick_settings_ui):
                        for key_parameterName, _ in quick_settings_ui_parameter_item.items():
                            if aParameterInfo["Text"] == key_parameterName:
                                found = True
                                if quick_settings_ui[index][key_parameterName]["tooltip"] == '':
                                    self.report_pass("keyword_verify_tooltip_of_enum_in_quick_wizard is passed for '{}'".format(key_parameterName))
                                else:
                                    self.report_fail("keyword_verify_tooltip_of_enum_in_quick_wizard is failed for '{}' where tooltip = '{}'".format(key_parameterName,quick_settings_ui[index][key_parameterName]["tooltip"]))
                                break
                            
                        if found == True:
                            break
      
                                     
                    
    def keyword_verify_tooltip_displayed_with_min_and_max_in_quick_wizard(self, controllerinfo_Dict, language = None):
        """
        Verify the tooltip of editbox parameters in quick settings window.
        :param controllerinfo_Dict: Controller information
        :return: True if succeeds.
        """
        quick_setting_param = self.keyword_get_quick_setting_parameters_list(controllerinfo_Dict)
        quick_settings_ui = controllerinfo_Dict["quick_settings_ui"]
        parsed_datagrid = self.prj_window_parse_the_datagrid()
        quick_settings_min_max_param_list = []
        count=0
        if language is None:
            language = AKCC55_Config.default_language
        for j in parsed_datagrid:
            for groupname, parameter_lst in j.items():
                for parameters in parameter_lst:
                    if parameters["ParameterName"] in quick_setting_param and parameters["Datatype"]!="Enum":
                        quick_settings_min_max_param_list.append({"ParameterName":parameters["ParameterName"],"Min":parameters["Minvalue"],"Max":parameters["Maxvalue"]})
        
        for parameter in quick_settings_ui:
            for k,v in parameter.items():
                for data in quick_settings_min_max_param_list:
                    if data["ParameterName"] == k:
                        tooltip_without_min_max = KoolProg_verify.window_property["Quick_Settings_Window"]["quick_wizard_tooltip"][language]
                        tooltip = tooltip_without_min_max.format(data["Min"],data["Max"])
                        if language not in KoolProg_verify.languages_with_decimals_in_float_values and ',' in v["tooltip"]:
                            self.report_log(language ,"supports comma instead of decimals in float values.")
                        if tooltip == v["tooltip"]:
                            count+=1
                            self.report_pass("keyword_verify_tooltip_displayed_with_min_and_max_in_quick_wizard is passed...","parameterName = {}, ui_tooltip ={}, tooltip ={}".format(data["ParameterName"],v["tooltip"], tooltip))
                        else:
                            self.report_fail("keyword_verify_tooltip_displayed_with_min_and_max_in_quick_wizard is passed...","parameterName = {}, ui_tooltip ={}, tooltip ={}".format(data["ParameterName"],v["tooltip"], tooltip))
                            return False
                        break
        if count == len(quick_settings_min_max_param_list):
            return True         
        else:
            self.report_log("Quick settings Editbox Parameters was not displayed with min and max range")   
    
    def keyword_get_quick_setting_parameters_list(self, controllerinfo_Dict):
        """
        Get the list of quick settings parameters from the quicksettings collection.
        :param controllerinfo_Dict: Controller information
        :return: List of quick setting parameters.
        """
        quick_setting_collection = self.keywords_get_quick_settings_collection(controllerinfo_Dict)
        quick_setting = quick_setting_collection["QuickSetting_Collection"]
        param=[]
        quick_setting_param=[]
        for parameter in quick_setting:
            for grp,param in parameter.items():
                for ele in param:
                    quick_setting_param.append(ele["Text"])
        return quick_setting_param            
    
    def keyword_verify_quick_wizard_collection_from_cdf_with_quickWizardUI(self,controllerinfo_Dict):
        """
        Verify the quick wizard collection from the CDF file with the UI.
        :param quick_settings_cdf_collection: Quick settings collection
        :return: True if succeeds.
        """
        quick_settings_cdf_collection = self.keywords_get_quick_settings_collection(controllerinfo_Dict)
        quick_settings_ui = controllerinfo_Dict["quick_settings_ui"]
        parameter_lst = []
        for parameter_info in quick_settings_cdf_collection:
            for k,v in parameter_info.items():
                for parameter_cdf in v:
                    parameter_lst.append(parameter_cdf['Text'])
        quick_settings_cdf_len = len(parameter_lst)
        count=0
        for parameter_ui in quick_settings_ui:
            for k,v in parameter_ui.items():
                if k in parameter_lst:
                    count+=1
        if count == quick_settings_cdf_len:
            self.report_pass("keyword_verify_quick_wizard_collection_from_cdf_with_quickWizardUI is passed..")
            return True
        else:
            self.report_fail("keyword_verify_quick_wizard_collection_from_cdf_with_quickWizardUI is failed..")
            return False
        
##################### Quick Settings ########################### 

    def keyword_verify_qsjs_is_present_in_extracted_cdf_file(self, cdf_location):
        """
        Verify quicksettings.js file is present in the extracted cdf file 
        :param cdf_location: Path of the extracted cdf file
        :return: True if succeeds
        """
        file_name = inputConfig.qs_file 
        cur_dir = cdf_location 
        while True:
            file_list = os.listdir(cur_dir)
            if file_name not in file_list:
                self.report_fail("quicksetting.js file not present in the current directory...")
                return False
            self.report_pass("quicksetting.js file present in the current directory...")
            return True

############################# FIRMWARE UPGRADE  #############################################
    def keyword_verify_firmware_updated_failed_progress_bar(self):
        """
        Verify the firmware update failed progress bar is visible,enabled and color in connected controller window.
        """
        self.firmware_upgrade_check_firmware_update_failed_progress_bar_is_visible()
        self.firmware_upgrade_check_firmware_update_failed_progress_bar_is_enabled()
        self.keyword_verify_color_of_firmware_upgrade_failed_progress_bar()
    
    def keyword_verify_color_of_firmware_upgrade_failed_progress_bar(self):
        """
        Verify color of firmware upgrade failed progress bar.
        """
        color_to_compare = KoolProg_verify.window_property["Copy_to_controller_window"]["Progress_bar"]["firmware_update_failed_color"]
        self.firmware_upgrade_verify_color_of_firmware_updated_failed_progress_bar(color_to_compare)
    
############################# FIRMWARE UPGRADE  #############################################

############################# VERIFICATION OF LABELS AND BUTTONS IN DANISH LANGUAGE  #############################################

    def keyword_home_window_verify_labels_text_for_selected_language(self, selected_language):
        """
        Verify label text for selected language in home window.
        :param selected_language: Selected Language
        """
        self.Home_window_check_Setparameter_button_text(KoolProg_verify.window_property["home"]["Language"][selected_language]["Set_Parameter"])
        self.Home_window_check_copytocontroller_button_text(KoolProg_verify.window_property["home"]["Language"][selected_language]["Copy_To_Controller"])
        self.Home_window_check_onlineservice_button_text(KoolProg_verify.window_property["home"]["Language"][selected_language]["On_Line_Service"])
        
    def keyword_set_param_window_verify_labels_text_for_selected_language(self,selected_language):
        """
        Verify labels text for selected language in set parameter window.
        :param selected_language: Selected Language
        """
        a= KoolProg_verify.Text_validation_in_windows["windows"]["Language"][selected_language]
        self.set_param_window_check_text_label_controller_model(
            KoolProg_verify.Text_validation_in_windows["windows"]["Language"][selected_language]["set_parameter_window"][
                "controller model header text"])
        self.set_param_window_check_text_label_import_controller_model_button(
            KoolProg_verify.Text_validation_in_windows["windows"]["Language"][selected_language]["set_parameter_window"][
                "controller model header text"])
        self.set_param_window_check_text_label_import_settings_from_controller_button(
            KoolProg_verify.Text_validation_in_windows["windows"]["Language"][selected_language]["set_parameter_window"][
                "import setting controller label text"])
        self.set_param_window_check_text_label_new_button(
            KoolProg_verify.Text_validation_in_windows["windows"]["Language"][selected_language]["set_parameter_window"]["New label text"])
        self.set_param_window_check_text_label_open_button(
            KoolProg_verify.Text_validation_in_windows["windows"]["Language"][selected_language]["set_parameter_window"]["open label text"])
        self.set_param_window_check_text_label_setparameter(
            KoolProg_verify.Text_validation_in_windows["windows"]["Language"][selected_language]["set_parameter_window"]["set parameter header text"])
        self.set_param_window_check_text_label_setting_files(
            KoolProg_verify.Text_validation_in_windows["windows"]["Language"][selected_language]["set_parameter_window"]["setting file header text"])
        self.set_param_window_check_text_label_open_a_recent_setting_file(
            KoolProg_verify.Text_validation_in_windows["windows"]["Language"][selected_language]["set_parameter_window"][
                "open recent setting file header text"])
    
    def keyword_new_prj_controller_selection_window_verify_labels_text_for_selected_language(self,selected_language):
        """
        Verify labels text for selected language in controller selection window.
        :param selected_language: Selected Language
        """
        self.new_project_window_check_header_text(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Controller_Selection_Window"]["Language"][selected_language]
            ["label"]["header_value"])

        self.new_project_window_check_select_controller_model_label_text(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Controller_Selection_Window"]
            ["Language"][selected_language]["label"]["select_controller_model_label_text"])
    
    def keyword_new_prj_controller_selection_window_verify_next_button_text_for_selected_language(self,selected_language):
        """
        Verify button text for selected language in controller selection window.
        :param selected_language: Selected Language
        """
        self.new_prj_controller_selection_window_check_text_of_next_button( KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Controller_Selection_Window"]["Language"][selected_language]
            ["button"]["next_button"])
    
    def keyword_new_prj_project_description_window_verify_labels_text_for_selected_language(self,selected_language):
        """
        Verify labels text for selected language in project description window.
        :param selected_language: Selected Language
        """
        self.new_project_window_check_header_text(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Product_Details_Selection_Window"]["Language"][selected_language][
                "label"]["header_label"])
        self.new_prj_window_check_text_of_project_name_and_description_title(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Product_Details_Selection_Window"]["Language"][selected_language][
                "label"]["project_name_description_label"])
        self.new_prj_window_check_text_of_project_name_label(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Product_Details_Selection_Window"]["Language"][selected_language][
                "label"]["project_name_label"])
        self.new_prj_window_check_text_of_project_description_label(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Product_Details_Selection_Window"]["Language"][selected_language][
                "label"]["project_description_label"])
        self.new_prj_window_check_text_of_select_controller_code_number_and_sw_version_label(KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Product_Details_Selection_Window"]["Language"][selected_language][
                "label"]["select_controller_code_number_and_sw_version_label"])
        self.new_prj_window_check_text_of_code_number_label(KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Product_Details_Selection_Window"]["Language"][selected_language][
                "label"]["code_number_label"])
        self.new_prj_window_check_text_of_sw_version_label(KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Product_Details_Selection_Window"]["Language"][selected_language][
                "label"]["sw_version_label"])
        self.new_prj_window_check_text_of_quick_wizard_option_label(
            KoolProg_verify.window_property["home"]["set_parameter_win"]["NewProject_Product_Details_Selection_Window"]["Language"][selected_language][
                "label"]["use_wizard_label"])
        
    def keyword_new_prj_project_description_window_verify_buttons_text_for_selected_language(self, buttons_required_list,selected_language):
        """
        Verify buttons text for selected language in project description window.
        :param selected_language: Selected Language
        """
        for button in buttons_required_list:
            if button == "next":
                self.new_prj_window_finish_button_is_visible()
                self.new_prj_product_description_window_check_text_of_next_button(
                    KoolProg_verify.window_property["home"]["set_parameter_win"][
                        "NewProject_Product_Details_Selection_Window"]["Language"][selected_language]["button"]["next_button_label_value"])
            if button == "finish":
                self.new_prj_window_finish_button_is_visible()
                self.new_prj_window_check_text_of_finish_button(
                    KoolProg_verify.window_property["home"]["set_parameter_win"][
                        "NewProject_Product_Details_Selection_Window"]["Language"][selected_language]["button"]["finish_button_label_value"])
            if button == "cancel":
                self.new_prj_window_cancel_button_is_visible()
                self.new_prj_window_check_text_of_cancel_button(
                    KoolProg_verify.window_property["home"]["set_parameter_win"][
                        "NewProject_Product_Details_Selection_Window"]["Language"][selected_language]["button"]["cancel_button_label_value"])
            if button == "back":
                self.new_prj_window_back_button_is_visible()
                self.new_prj_window_check_text_of_back_button(
                    KoolProg_verify.window_property["home"]["set_parameter_win"][
                        "NewProject_Product_Details_Selection_Window"]["Language"][selected_language]["button"]["back_button_label_value"])
    
    def keyword_new_prj_window_verify_labels_and_buttons_text_for_selected_language_when_creating_project(self,controllerinfo_Dict):
        """
        Verify labels and buttons text for selected language when creating project in quick wizard window.
        :param controllerinfo_Dict: Controller information.
        """
        self.quick_settings_window_check_quick_setting_parameters_label_text(KoolProg_verify.window_property["Quick_Settings_Window"]["Language"][controllerinfo_Dict["selected_language"]]["label"]["text"]["Quick_setting_parameters_label"])
        self.quick_settings_window_check_finish_button_text(KoolProg_verify.window_property["Quick_Settings_Window"]["Language"][controllerinfo_Dict["selected_language"]]["button"]["text"]["Finish_Button"])
        self.quick_settings_window_check_quick_setup_label_text(KoolProg_verify.window_property["Quick_Settings_Window"]["Language"][controllerinfo_Dict["selected_language"]]["label"]["text"]["header_label_new_prj_window"])
        self.quick_settings_window_check_controller_variant_label_text(controllerinfo_Dict["controllerVariant"])
        self.quick_settings_window_check_controller_codeNumber_label_text(controllerinfo_Dict["controllerCodeNo"])
        self.quick_settings_window_check_controller_SW_Version_label_text(controllerinfo_Dict["softwareVersion"])
    
    def keyword_new_prj_window_verify_labels_and_buttons_text_for_selected_language_after_creating_project(self,controllerinfo_Dict):
        """
        Verify labels and buttons text for selected language after creating project in quick wizard window.
        :param controllerinfo_Dict: Controller information
        """
        self.quick_settings_window_check_quick_setting_parameters_label_text(KoolProg_verify.window_property["Quick_Settings_Window"]["Language"][controllerinfo_Dict["selected_language"]]["label"]["text"]["Quick_setting_parameters_label"])
        self.quick_settings_window_check_finish_button_text(KoolProg_verify.window_property["Quick_Settings_Window"]["Language"][controllerinfo_Dict["selected_language"]]["button"]["text"]["Finish_Button"])
        self.quick_settings_window_check_quick_setup_label_text(KoolProg_verify.window_property["Quick_Settings_Window"]["Language"][controllerinfo_Dict["selected_language"]]["label"]["text"]["header_label_prj_window"])
        self.quick_settings_window_check_controller_variant_label_text(controllerinfo_Dict["controllerVariant"])
        self.quick_settings_window_check_controller_codeNumber_label_text(controllerinfo_Dict["controllerCodeNo"])
        self.quick_settings_window_check_controller_SW_Version_label_text(controllerinfo_Dict["softwareVersion"])
        
        
    
############################# VERIFICATION OF LABELS AND BUTTONS IN DANISH LANGUAGE  #############################################

############################# TREE VIEW  #############################################
    def keyword_get_tree_list_from_UI(self):
        """
        Get the tree list from the UI.
        """
        return {"tree_list_UI":self.project_window_get_tree_view_list()}
    
    def keyword_verify_group_names_in_treeView_with_cdf(self,controllerinfo_Dict,selectedlanguage = AKCC55_Config.default_language):
        """
        Verify the groupnames in the Treeview with the CDF.
        :param controllerinfo_Dict: Controller information details.
        :param selectedlanguage: Selected language
        :return: True if succeeds.
        """
        CDF_groupNames_list = self.get_all_grpnames_from_cdf_in_treeView_format(controllerinfo_Dict)
        tree_list_ui = controllerinfo_Dict["tree_list_UI"]
        tree_list = self.keyword_get_child_list_from_tree_view(tree_list_ui,selectedlanguage)
        self.report_log("tree_list ={}".format(tree_list))
        if not common.compare_list_by_order(CDF_groupNames_list, tree_list[1:]):
            self.report_fail("keyword_verify_group_names_in_treeView_with_cdf is failed ...",
                             "ui_grp_name ={} grp_name ={}".format(tree_list,CDF_groupNames_list))
            return False
        self.report_pass("keyword_verify_group_names_in_treeView_with_cdf is passed...",
                             "ui_grp_name ={} grp_name ={}".format(tree_list,CDF_groupNames_list))
        return True
    
    def keyword_get_child_list_from_tree_view(self,tree_list,selectedlanguage = AKCC55_Config.default_language):
        """
        Get the single parent and nested child groups from the Treeview.
        :param tree_list: Tree list from UI.
        :param selectedlanguage: Selected language.
        :return: List of groupnames.
        """
        self.report_log("tree_list ={}".format(tree_list))
        ui_grp_name_list = list()
        treeView_All_label = KoolProg_verify.window_property["tree_view_headers"]["languages"][selectedlanguage]["label"]["text"]["All"]
        for tree_elements in tree_list:
            if treeView_All_label in tree_elements.keys():
                ui_grp_name_list = self.get_groupname_list_from_treeview_list(tree_elements[treeView_All_label])
                self.report_log("grp_name={}".format(ui_grp_name_list))
        sub_grps=[]
        for group_name in ui_grp_name_list:
            counter = group_name.count('|')
            if counter>1:
                pos = group_name.find('|', group_name.find('|')+1) 
                sub_grps.append(group_name[0:pos])
        parent_grp = list(set(sub_grps))
        grpnames = [i for i in ui_grp_name_list if i not in parent_grp]
        return grpnames
    
    def keyword_verify_group_names_and_headers_under_tree_view(self, controller_info_dict,selectedlanguage):
        """
        Check group names under tree view items.
        :param controller_info_dict: controller details dictionary from automation input sheet.
        :param selectedlanguage: Selected language. 
        :return: None
        """
        tree_list = controller_info_dict["tree_list_UI"]
        lst = list()
        for i in tree_list:
            for k, v in i.items():
                if k!='':
                    lst.append(k)
                for ele in v:
                    if not isinstance(ele,list):
                        for k1, v1 in ele.items():
                            if k1!='':
                                lst.append(k1)
                    else:
                        if len(ele)!=0:
                            lst.append(ele)
        grpnames = self.keyword_verify_group_names_in_treeView_with_cdf(controller_info_dict,selectedlanguage)
        language_dict = KoolProg_verify.window_property["tree_view_headers"]["languages"][selectedlanguage]
        lst1=list()
        lst1.append(language_dict["label"]["text"]["All"])
        lst1.append(language_dict["label"]["text"]["Favourites"])
        lst1.append(language_dict["label"]["text"]["Main menu"])
        if grpnames:
            if common.compare_list(lst, lst1):
                self.report_pass("keyword_verify_group_names_and_headers_under_tree_view is passed...")
                return True
        else:
            self.report_fail("keyword_verify_group_names_and_headers_under_tree_view is failed...")
            return False
        return lst
    
    def keyword_collapse_tree_item(self,tree_item,selectedLanguage = AKCC55_Config.default_language):
        """
        Collapse the tree item.
        :param tree_item: Tree item to collapse.
        :param selectedLangauge: Selected Language
        """
        tree_item_name =  KoolProg_verify.window_property["tree_view_headers"]["languages"][selectedLanguage]["label"]["text"][tree_item]
        self.project_window_expand_tree_view_item(tree_item_name, False)
        
############################# TREE VIEW  #############################################

############################### EXAMPLE FOR COMMON LIBRARY USAGE #################
    def keyword_parse_quicksetting_parameters(self):
        """
        Parse Quick Setting parameters
        
        """
        #quick_setting_data = self.quick_settings_window_get_parameter_details()
        #parsed_datagrid = self.prj_window_parse_the_datagrid()
        #quick_setting_group,dataGrid_data = self.parse_quicksetting_parameters(parsed_datagrid)
        quick_setting_group,dataGrid_data = self.parse_quicksetting_parameters()
        print(quick_setting_group)
        print(dataGrid_data)
        
    def keyword_quickSettingForDebugging(self):
        """
        Use this while debugging while using "parse_quicksetting_parameters"
        
        """
        
        self.quickSettingForDebugging()

    def keyword_enable_a_parameter(self):
        """
        Enable a parameter 
        """
        parsed_datagrid = self.prj_window_parse_the_datagrid()
        #index_list,value_list,old_collection,parameter_collection = self.enable_parameter("注入控制","AKV 开启度 A",parsed_datagrid)
        #index_list,value_list,old_collection,parameter_collection = self.enable_parameter("Injection control","AKV opening A",parsed_datagrid)
        index_list,value_list,old_collection,parameter_collection = self.disable_parameter("Configuration","DI2 Configuration",parsed_datagrid)
        index_list,value_list,old_collection,parameter_collection = self.enable_parameter("Railheat control",None,parsed_datagrid,"Yes")
        parameter_collection = self.get_parameter_collection_after_removing_the_input("ItemType","R",parameter_collection)
        print(str(index_list))
        print(str(value_list))
        print(str(parameter_collection))
        print(str(parameter_collection))
        
        
############################### EXAMPLE FOR COMMON LIBRARY USAGE #################   
    
    def keyword_set_language_and_help_files_for_selected_language(self,controllerinfo_Dict):
        """
        Set the language file and help file.
        :param controllerinfo_Dict : Controller information.
        """
        self.set_language_help_file(controllerinfo_Dict,controllerinfo_Dict["selected_language"])
        self.set_language_file(controllerinfo_Dict,controllerinfo_Dict["selected_language"])
        
    def keyword_parse_input_database(self,controllerinfo_Dict):
        """
        Parse the input database and gets the collection.
        :param controllerinfo_Dict: Input controller details.
        :return: Parameter collection.
        
        """
        #self.set_language_help_file(controllerinfo_Dict,"Chinese (Simplified) Legacy")
        #self.set_language_file(controllerinfo_Dict,"Chinese (Simplified) Legacy")
        parameter_collection = self.parseDatabase(controllerinfo_Dict)
        return {"Parameter_collection" : parameter_collection} 
    
    def keyword_filter_the_database_with_input_property_name_and_value(self,propertyName,propertyValue,collection,remove = False):
        """
        Filter the parameter collection based on the input.
        :param propertyName: Property name to be filtered.
        :param propertyValue: Property value to be filtered.
        :param collection: Parameter collection.
        :return: Filtered collection based on the input
        
        """
        if remove == True:
            filtered_collection = self.get_parameter_collection_after_removing_the_input(propertyName,propertyValue,collection)
            return filtered_collection
        filtered_collection = self.get_parameter_collection_for_filter(propertyName,propertyValue,collection)
        return filtered_collection
        
    def keyword_get_enumText_with_parameterName_for_input_parameter_with_respect_to_language(self,parameterName,parameterEnumValue,collection):
        """
        Gets EnumText and ParameterName with respect to the language selected.
        :param parameterName: Input parameter Name.
        :param parameterEnumValue: Input Enum Value Variable
        :param collection: Cdf Parameter Collection.
        :return: Parameter name with its Enum Value with respect to the selected language.
        
        """
        propertyValue = AKCC55_Config.AKCC_CDF_Details[parameterName]["Label"]
        parameter_collection = self.get_parameter_collection_for_filter("Label",propertyValue,collection)
        for item in parameter_collection:
            for groupName, parameterInfo in item.items():
                for aParameterInfo in parameterInfo:
                    Enum_Value = AKCC55_Config.AKCC_CDF_Details[parameterName][parameterEnumValue]
                    index = aParameterInfo["EnumValue"].index(Enum_Value)
                    Enum_Text = aParameterInfo["EnumText"][index]
                    parameterName_text = aParameterInfo["Text"]
                    groupNameList = aParameterInfo["GroupName"].split(";")
                    index_group = groupNameList.index(groupName)
                    subGroupList = aParameterInfo["SubGroupName"].split(";")
                    groupName_text = self.get_group_name_from_multi_level_group(subGroupList[index_group])
                    break
                
        aDict = { "Parameter_info_for_selected_language":{"Parameter_name":parameterName_text,"Enum":Enum_Text,"GroupName":groupName_text}}
                
        return aDict
    
    def keyword_set_random_values_in_dataGrid_for_the_input_database_collection(self,collection):        
        """
        Set the random values for the input dataBase collection in dataGrid.
        :param collection: Input collection.
        :return: Updated parameter collection.
        
        """
        new_collection = []
        parameter_not_found = []
        for i in collection:
            for groupName, parameterInfo in i.items():
                updated_parameters = []
                for aParameterInfo in parameterInfo:
                    parsed_dataGrid = self.prj_window_parse_the_datagrid()
                    groupNameList = aParameterInfo["GroupName"].split(";")
                    index_group = groupNameList.index(groupName)
                    subGroupList = aParameterInfo["SubGroupName"].split(";")
                    groupName_text = self.get_group_name_from_multi_level_group(subGroupList[index_group])
                    if self.check_if_parameter_is_present_in_dataGrid(groupName_text,aParameterInfo["Text"],parsed_dataGrid):
                        value_to_set = self.get_random_value_for_parameter_input_dict(aParameterInfo,parsed_dataGrid)
                        self.prj_window_set_value_in_datagrid(groupName_text,aParameterInfo["Text"],value_to_set)
                        updated_parameters.append(aParameterInfo)
                    else:
                        parameter_not_found.append({groupName:aParameterInfo})
                        continue
                if len(updated_parameters) > 0:
                    aDict = {groupName:updated_parameters}
                    new_collection.append(aDict)
        
        
        updated_collection = self.applyVisibility_to_collection(new_collection)
        return {"Updated_input_collection" : updated_collection, "Changed_values_collection": new_collection} 
    
    def keyword_get_random_value_for_parameter_input_dict(self, aParameterInfo,parsed_dataGrid, culture=None):
        """
        Get random value for the given parameter information.
        :param aParameterInfo: Parameter dictionary.
        :param parsed_dataGrid: Parsed datagrid information.
        :param culture: Language info.
        :return: Value to be set.
        """
        if aParameterInfo["DataType"] == AKCC55_Config.mapping_int_datatype:
            if aParameterInfo["DynMinIdx"] == -1 and aParameterInfo["DynMaxIdx"] == -1:
                value_to_set = common.get_random_int_value_for_a_range_of_values(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]])
            
            else:
                if aParameterInfo["DynMinIdx"] != -1:
                    IPgroupNameList,IPparameterName = self.getGroupName_and_parameterName_for_provided_index_from_collection(aParameterInfo["DynMinIdx"])
                    
                    for aGroupNameInput in IPgroupNameList:
                        groupName_formatted = self.get_group_name_from_multi_level_group(aGroupNameInput)
                        if self.check_if_parameter_is_present_in_dataGrid(groupName_formatted,IPparameterName,parsed_dataGrid):
                            IPgroupName = groupName_formatted
                            break
                    aParameterInfo["Min"] = int(self.get_propertyValue_of_parameter_in_dataGrid("Value",IPgroupName,IPparameterName,parsed_dataGrid))
                if aParameterInfo["DynMaxIdx"] != -1:
                    IPgroupNameList,IPparameterName = self.getGroupName_and_parameterName_for_provided_index_from_collection(aParameterInfo["DynMaxIdx"])
                    for aGroupNameInput in IPgroupNameList:
                        groupName_formatted = self.get_group_name_from_multi_level_group(aGroupNameInput)
                        if self.check_if_parameter_is_present_in_dataGrid(groupName_formatted,IPparameterName,parsed_dataGrid):
                            IPgroupName = groupName_formatted
                            break
                    aParameterInfo["Max"] = int(self.get_propertyValue_of_parameter_in_dataGrid("Value",IPgroupName,IPparameterName,parsed_dataGrid))
                value_to_set = common.get_random_int_value_for_a_range_of_values(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]])
            aParameterInfo["Value"] = int(value_to_set)
        if aParameterInfo["DataType"] == AKCC55_Config.mapping_float_datatype:
            if aParameterInfo["DynMinIdx"] == -1 and aParameterInfo["DynMaxIdx"] == -1:
                if culture!=None and culture not in KoolProg_verify.languages_with_decimals_in_float_values:
                        aParameterInfo["Min"] = (str(aParameterInfo["Max"]).replace(",","."))
                        aParameterInfo["Min"] = float(aParameterInfo["Min"])
                        aParameterInfo["Max"] = (str(aParameterInfo["Max"]).replace(",","."))
                        aParameterInfo["Max"] = float(aParameterInfo["Max"])
                        aParameterInfo["Default"] = (str(aParameterInfo["Default"]).replace(",","."))
                        aParameterInfo["Default"] = float(aParameterInfo["Default"])
                value_to_set = common.get_random_float_value_for_provided_range(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]],1)
            
            else:
                if aParameterInfo["DynMinIdx"] != -1:
                    IPgroupNameList,IPparameterName = self.getGroupName_and_parameterName_for_provided_index_from_collection(aParameterInfo["DynMinIdx"])
                    for aGroupNameInput in IPgroupNameList:
                        groupName_formatted = self.get_group_name_from_multi_level_group(aGroupNameInput)
                        if self.check_if_parameter_is_present_in_dataGrid(groupName_formatted,IPparameterName,parsed_dataGrid):
                            IPgroupName = groupName_formatted
                            if culture!=None and culture not in KoolProg_verify.languages_with_decimals_in_float_values:
                                min = self.get_propertyValue_of_parameter_in_dataGrid("Value",IPgroupName,IPparameterName,parsed_dataGrid)
                                aParameterInfo["Min"] = (min.replace(",","."))
                                aParameterInfo["Min"] = float(aParameterInfo["Min"])
                            else:
                                aParameterInfo["Min"] = float(self.get_propertyValue_of_parameter_in_dataGrid("Value",IPgroupName,IPparameterName,parsed_dataGrid))
                if aParameterInfo["DynMaxIdx"] != -1:
                    IPgroupNameList,IPparameterName = self.getGroupName_and_parameterName_for_provided_index_from_collection(aParameterInfo["DynMaxIdx"])
                    for aGroupNameInput in IPgroupNameList:
                        groupName_formatted = self.get_group_name_from_multi_level_group(aGroupNameInput)
                        if self.check_if_parameter_is_present_in_dataGrid(groupName_formatted,IPparameterName,parsed_dataGrid):
                            IPgroupName = groupName_formatted
                            if culture!=None and culture not in KoolProg_verify.languages_with_decimals_in_float_values:
                                max = self.get_propertyValue_of_parameter_in_dataGrid("Value",IPgroupName,IPparameterName,parsed_dataGrid)
                                aParameterInfo["Max"] = (max.replace(",","."))
                                aParameterInfo["Max"] = float(aParameterInfo["Max"])
                            else:
                                aParameterInfo["Max"] = float(self.get_propertyValue_of_parameter_in_dataGrid("Value",IPgroupName,IPparameterName,parsed_dataGrid))
                value_to_set = common.get_random_float_value_for_provided_range(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]],1)
                
            aParameterInfo["Value"] = (value_to_set)    
        if aParameterInfo["DataType"] == AKCC55_Config.mapping_enum_datatype:
            value_to_set_enumValue = common.select_randomly_from_a_list(aParameterInfo["EnumValue"],[aParameterInfo["Value"]])
            index_input = aParameterInfo["EnumValue"].index(value_to_set_enumValue)
            aParameterInfo["Value"] = int(value_to_set_enumValue)
            value_to_set = aParameterInfo["EnumText"][index_input]  
        return value_to_set
        
    def keyword_verify_input_collection_with_dataGrid_collection(self,input_collection,parsed_dataGrid,changed_values_only=False,changed_values_check=True,property=None,culture=None):
        """
        Verify input collection with dataGrid collection.
        :param input_collection: Input collection.
        :param parsed_dataGrid: DataGrid Collection.
        :param changed_values_only: Compares only changed value, if value provided is True.
        :param changed_values_check: Boolean input value.
        
        """
        if changed_values_only == True:
            self.keyword_verify_changed_values_in_dataGrid(input_collection,parsed_dataGrid,changed_values_check,culture)
            
        else:
            self.keyword_verify_all_parameters_in_input_collection_with_dataGrid_collection(input_collection,parsed_dataGrid,property,culture)
    
    def keyword_verify_changed_values_in_dataGrid(self,input_collection,parsed_dataGrid,changed_values_check=True,culture=None):
        """
        Verify changed values is present in dataGrid.
        :param input_collection: Input collection.
        :param parsed_dataGrid: DataGrid Collection.
        :param changed_values_check: Boolean input value.
        
        """
        group_not_found =[]
        parameters_not_found = []
        failure_list = []
        for aListItem in input_collection:
            for key_GroupName, key_parametersList in aListItem.items():
                groupFound = False
                for adataGridListItem in parsed_dataGrid:
                    for dataGrid_GroupName, dataGrid_parametersList in adataGridListItem.items():
                        for aParameterInfo in key_parametersList:
                            groupNameList = aParameterInfo["GroupName"].split(";")
                            index_group = groupNameList.index(key_GroupName)
                            subGroupList = aParameterInfo["SubGroupName"].split(";")
                            groupName_text = self.get_group_name_from_multi_level_group(subGroupList[index_group])
                            break
                        if groupName_text == dataGrid_GroupName:
                            groupFound = True
                            for key_parameterInfo in key_parametersList:
                                parameter_found = False
                                for dataGrid_parameterInfo in dataGrid_parametersList:
                                    if key_parameterInfo["Text"] == dataGrid_parameterInfo["ParameterName"]:
                                        parameter_found = True
                                        if key_parameterInfo["DataType"] == AKCC55_Config.mapping_int_datatype:
                                            if changed_values_check == True:
                                                if int(key_parameterInfo["Value"]) != int(dataGrid_parameterInfo["Value"]):
                                                    afailedList = []
                                                    afailedList.extend([{"GroupName":groupName_text},{"ParameterName":key_parameterInfo["Text"]},{"DataGrid_Value":dataGrid_parameterInfo["Value"]},{"Input_testData_Value":key_parameterInfo["Value"]}])
                                                    failure_list.append(afailedList)
                                            else:
                                                if int(key_parameterInfo["Value"]) == int(dataGrid_parameterInfo["Value"]):
                                                    afailedList = []
                                                    afailedList.extend([{"GroupName":groupName_text},{"ParameterName":key_parameterInfo["Text"]},{"DataGrid_Value":dataGrid_parameterInfo["Value"]},{"Input_testData_Value":key_parameterInfo["Value"]}])
                                                    failure_list.append(afailedList)
                                                
                                        if key_parameterInfo["DataType"] == AKCC55_Config.mapping_float_datatype:
                                            if culture!=None and culture not in KoolProg_verify.languages_with_decimals_in_float_values:
                                                key_parameterInfo["Value"] = str(key_parameterInfo["Value"]).replace(",",".")
                                                dataGrid_parameterInfo["Value"] = str(dataGrid_parameterInfo["Value"]).replace(",",".")
                                            if changed_values_check == True:
                                                if float(key_parameterInfo["Value"]) != float(dataGrid_parameterInfo["Value"]):
                                                    afailedList = []
                                                    afailedList.extend([{"GroupName":groupName_text},{"ParameterName":key_parameterInfo["Text"]},{"DataGrid_Value":dataGrid_parameterInfo["Value"]},{"Input_testData_Value":key_parameterInfo["Value"]}])
                                                    failure_list.append(afailedList)
                                            else:
                                                if str(key_parameterInfo["Value"]) == str(dataGrid_parameterInfo["Value"]):
                                                    afailedList = []
                                                    afailedList.extend([{"GroupName":groupName_text},{"ParameterName":key_parameterInfo["Text"]},{"DataGrid_Value":dataGrid_parameterInfo["Value"]},{"Input_testData_Value":key_parameterInfo["Value"]}])
                                                    failure_list.append(afailedList)
                                        if key_parameterInfo["DataType"] == AKCC55_Config.mapping_enum_datatype:
                                            value_index = key_parameterInfo["Value"]
                                            input_index = key_parameterInfo["EnumValue"].index(value_index)
                                            testData_value = key_parameterInfo["EnumText"][input_index]
                                            if changed_values_check == True:
                                                if str(testData_value) != str(dataGrid_parameterInfo["Value"]):
                                                    afailedList = []
                                                    afailedList.extend([{"GroupName":groupName_text},{"ParameterName":key_parameterInfo["Text"]},{"DataGrid_Value":dataGrid_parameterInfo["Value"]},{"Input_testData_Value":testData_value}])
                                                    failure_list.append(afailedList)
                                            else:
                                                if str(testData_value) == str(dataGrid_parameterInfo["Value"]):
                                                    afailedList = []
                                                    afailedList.extend([{"GroupName":groupName_text},{"ParameterName":key_parameterInfo["Text"]},{"DataGrid_Value":dataGrid_parameterInfo["Value"]},{"Input_testData_Value":testData_value}])
                                                    failure_list.append(afailedList)
                                        
                                if parameter_found == False:
                                    parameters_not_found.append({key_GroupName,key_parameterInfo["Text"]})         
                                                
                if groupFound == False:
                        group_not_found.append(key_GroupName)
                        
        if changed_values_check == True:
            if len(failure_list) > 0 or len(group_not_found) > 0 or len(parameters_not_found) > 0:
                self.report_fail("""keyword_verify_changed_values_in_dataGrid is failed.  
                    Value List = {} , Groups not found in dataGrid = {} and parameters not found in dataGrid = {}""".format(failure_list,group_not_found,parameters_not_found))
            else:
                self.report_log("keyword_verify_changed_values_in_dataGrid is passed.")
                                  
        else:
            if len(failure_list) > 0 or len(group_not_found) > 0 or len(parameters_not_found) > 0:
                self.report_fail("""keyword_verify_changed_values_not_present_in_dataGrid is failed.  
                   changed_values_check = {}, Value List = {} , Groups not found in dataGrid = {} and parameters not found in dataGrid = {}""".format(changed_values_check,failure_list,group_not_found,parameters_not_found))
            else:
                self.report_log("keyword_verify_changed_values_not_present_in_dataGrid is passed.")
                    
    def keyword_verify_all_parameters_in_input_collection_with_dataGrid_collection(self,input_collection,parsed_dataGrid,property=None,culture=None):
        """
        Verify all the parameters in input collection is present in dataGrid collection.
        :param input_collection: Input collection.
        :param parsed_dataGrid: DataGrid Collection.
    
        """
        group_not_found =[]
        parameters_not_found = []
        failure_list = []
        for aListItem in input_collection:
            for key_GroupName, key_parametersList in aListItem.items():
                groupFound = False
                for adataGridListItem in parsed_dataGrid:
                    for dataGrid_GroupName, dataGrid_parametersList in adataGridListItem.items():
                        for aParameterInfo in key_parametersList:
                            groupNameList = aParameterInfo["GroupName"].split(";")
                            index_group = groupNameList.index(key_GroupName)
                            subGroupList = aParameterInfo["SubGroupName"].split(";")
                            groupName_text = self.get_group_name_from_multi_level_group(subGroupList[index_group])
                            break
                        if groupName_text == dataGrid_GroupName:
                            groupFound = True
                            for key_parameterInfo in key_parametersList:
                                parameter_found = False
                                for dataGrid_parameterInfo in dataGrid_parametersList:
                                    if key_parameterInfo["Text"] == dataGrid_parameterInfo["ParameterName"]:
                                        parameter_found = True
                                        if property == None:
                                            self.report_log("Need to be implemented if needed...")
                                        else:
                                            CDF_property = AKCC55_Config.propertyMapping[property]
                                            datagrid_property = KoolProg_verify.datagrid_property_mapping["Datagrid"]["propertymapping"][property]
                                            if property == "DataType":
                                                if key_parameterInfo["DataType"] == AKCC55_Config.mapping_enum_datatype:
                                                    enumList_dataGrid = dataGrid_parameterInfo["EnumText"].split(",")
                                                    enum_lst=[]
                                                    for aEnumVal in enumList_dataGrid:
                                                        if ':' in aEnumVal:
                                                            indx = aEnumVal.index(':')
                                                            enum=aEnumVal[indx+1:len(aEnumVal)]
                                                            enum_lst.append(enum)
                                                    if len(enum_lst)!=0:
                                                        if common.compare_list_by_order(enum_lst, key_parameterInfo["EnumText"]):
                                                            self.report_pass("{} with sequence of enum values is maintained..".format(key_parameterInfo["EnumText"]))
                                                    else:
                                                        self.report_fail("{} with sequence of enum values is not maintained..".format(key_parameterInfo["EnumText"]))
                                                else:
                                                    break
                                            if property == "Default" or property =="Value":
                                                if key_parameterInfo["DataType"] == AKCC55_Config.mapping_enum_datatype:
                                                    value_index = key_parameterInfo[CDF_property]
                                                    input_index = key_parameterInfo["EnumValue"].index(value_index)
                                                    testData_value = key_parameterInfo["EnumText"][input_index]
                                                elif key_parameterInfo["DataType"] == AKCC55_Config.mapping_float_datatype:
                                                    testData_value = float(key_parameterInfo["Value"])
                                                else:
                                                    testData_value = int(key_parameterInfo["Value"]) 
                                                if culture !=None:
                                                    if culture not in KoolProg_verify.languages_with_decimals_in_float_values:
                                                        if key_parameterInfo["DataType"] == AKCC55_Config.mapping_float_datatype:
                                                            key_parameterInfo[CDF_property] = float(key_parameterInfo[CDF_property])
                                                            key_parameterInfo[CDF_property] = round(key_parameterInfo[CDF_property],key_parameterInfo["Decimals"])
                                                            testData_value = str(str(key_parameterInfo[CDF_property]).replace('.', ','))
                                                if str(testData_value) != str(dataGrid_parameterInfo[datagrid_property]):
                                                    afailedList = []
                                                    afailedList.extend([{"GroupName":groupName_text},{"ParameterName":key_parameterInfo["Text"]},{"DataGrid_Value":str(dataGrid_parameterInfo[datagrid_property])},{"Input_testData_Value":str(testData_value)}])
                                                    failure_list.append(afailedList)    
                                                else:
                                                    self.report_pass("Property = '{}' , testData = '{}' and DataGrid data = '{}'".format(property,testData_value,dataGrid_parameterInfo[datagrid_property]))                                                                                
                                            elif property == "Min" or property == "Max":
                                                if key_parameterInfo["DataType"] != AKCC55_Config.mapping_enum_datatype:
                                                    if key_parameterInfo["DataType"] == AKCC55_Config.mapping_float_datatype:
                                                        key_parameterInfo[CDF_property] = str(float(key_parameterInfo[CDF_property]))
                                                    if str(key_parameterInfo[CDF_property]) != str(dataGrid_parameterInfo[datagrid_property]):
                                                        self.report_fail("""Property = '{}' , testData = '{}' and DataGrid data = '{}' and Parameter='{}'""".format(property,key_parameterInfo[CDF_property],dataGrid_parameterInfo[datagrid_property],key_parameterInfo["Text"]))
                                            else:                                                  
                                                if key_parameterInfo[CDF_property] != dataGrid_parameterInfo[datagrid_property]:
                                                    self.report_fail("""Property = '{}' , testData = '{}' and DataGrid data = '{}' and Parameter='{}'""".format(property,key_parameterInfo[CDF_property],dataGrid_parameterInfo[datagrid_property],key_parameterInfo["Text"]))
                                                else:
                                                    self.report_pass("""Property = '{}' , testData = '{}' and DataGrid data = '{}' and Parameter='{}'""".format(property,key_parameterInfo[CDF_property],dataGrid_parameterInfo[datagrid_property],key_parameterInfo["Text"]))   
                                               
                                                
                                if parameter_found == False:
                                    parameters_not_found.append({key_GroupName,key_parameterInfo["Text"]})         
                                                
                if groupFound == False:
                        group_not_found.append(key_GroupName)
                        
        if len(failure_list) > 0 or len(parameters_not_found) > 0 or len(group_not_found) > 0 :
            self.report_fail("""keyword_verify_all_parameters_in_input_collection_with_dataGrid_collection is failed.  
               Value List = {} , Groups not found in dataGrid = {} and parameters not found in dataGrid = {}""".format(failure_list,group_not_found,parameters_not_found))
        else:
            self.report_log("keyword_verify_all_parameters_in_input_collection_with_dataGrid_collection is passed.")
                
        
        
    def keyword_verify_color_of_dataGrid_collection(self,input_collection,boxColor,circleColor,parsed_dataGrid):
        """
        Verify color of dataGrid collection.
        :param input_collection: Input collection.
        :param parsed_dataGrid: DataGrid Collection.
        :param boxColor: Box Color to be verified.
        :param circleColor: Circle color to be verified.
        
        """
        
        
        group_not_found =[]
        parameters_not_found = []
        failure_list = []
        for aListItem in input_collection:
            for key_GroupName, key_parametersList in aListItem.items():
                groupFound = False
                for adataGridListItem in parsed_dataGrid:
                    for dataGrid_GroupName, dataGrid_parametersList in adataGridListItem.items():
                        for aParameterInfo in key_parametersList:
                            groupNameList = aParameterInfo["GroupName"].split(";")
                            index_group = groupNameList.index(key_GroupName)
                            subGroupList = aParameterInfo["SubGroupName"].split(";")
                            groupName_text = self.get_group_name_from_multi_level_group(subGroupList[index_group])
                            break
                        if groupName_text == dataGrid_GroupName:
                            groupFound = True
                            for key_parameterInfo in key_parametersList:
                                parameter_found = False
                                for dataGrid_parameterInfo in dataGrid_parametersList:
                                    if key_parameterInfo["Text"] == dataGrid_parameterInfo["ParameterName"]:
                                        parameter_found = True
                                        if circleColor == "Grey":
                                            if not (self.keyword_check_background_color_and_circle_color([dataGrid_parameterInfo["Background_R"],dataGrid_parameterInfo["Background_G"],dataGrid_parameterInfo["Background_B"]],boxColor,[dataGrid_parameterInfo["circle_R"],dataGrid_parameterInfo["circle_G"],dataGrid_parameterInfo["circle_B"]],circleColor) and (dataGrid_parameterInfo["CircleVisible"]==True)):
                                                afailedList = []
                                                afailedList.append({"GroupName":groupName_text})
                                                afailedList.append({"ParameterName":key_parameterInfo["Text"]})
                                                failure_list.append(afailedList)
                                        else:
                                            if not (self.keyword_check_background_color_and_circle_color([dataGrid_parameterInfo["Background_R"],dataGrid_parameterInfo["Background_G"],dataGrid_parameterInfo["Background_B"]],None,[dataGrid_parameterInfo["circle_R"],dataGrid_parameterInfo["circle_G"],dataGrid_parameterInfo["circle_B"]],circleColor) and (dataGrid_parameterInfo["CircleVisible"]==False)):
                                                afailedList = []
                                                afailedList.append({"GroupName":groupName_text})
                                                afailedList.append({"ParameterName":key_parameterInfo["Text"]})
                                                failure_list.append(afailedList)
                                        
                                        
                                if parameter_found == False:
                                    parameters_not_found.append({key_GroupName,key_parameterInfo["Text"]})         
                                                
                if groupFound == False:
                        group_not_found.append(key_GroupName)
                        
        
        if len(failure_list) > 0:
            self.report_log("""keyword_verify_color_of_dataGrid_collection is failed.  
                List = {}""".format(failure_list))
        else:
            self.report_log("keyword_verify_color_of_dataGrid_collection is passed.")
    
    def keyword_get_dynamic_min_and_max_values_and_update_in_CDF_collection(self,input_collection,parsed_dataGrid):
        """
        Get the dynamic min and max values and updated in the CDF collection.
        :param input_collection: Parameter Info
        :param parsed_dataGrid: Parsed datagrid details.
        """
        for aListItem in input_collection:
            for _, key_parametersList in aListItem.items():
                for aParameterInfo in key_parametersList:
                    if aParameterInfo["DynMinIdx"] != -1:
                        IPgroupNameList,IPparameterName = self.getGroupName_and_parameterName_for_provided_index_from_collection(aParameterInfo["DynMinIdx"])
                        
                        for aGroupNameInput in IPgroupNameList:
                            groupName_formatted = self.get_group_name_from_multi_level_group(aGroupNameInput)
                            if self.check_if_parameter_is_present_in_dataGrid(groupName_formatted,IPparameterName,parsed_dataGrid):
                                IPgroupName = groupName_formatted
                                break
                        aParameterInfo["Min"] = str(self.get_propertyValue_of_parameter_in_dataGrid("Value",IPgroupName,IPparameterName,parsed_dataGrid))
                    if aParameterInfo["DynMaxIdx"] != -1:
                        IPgroupNameList,IPparameterName = self.getGroupName_and_parameterName_for_provided_index_from_collection(aParameterInfo["DynMaxIdx"])
                        for aGroupNameInput in IPgroupNameList:
                            groupName_formatted = self.get_group_name_from_multi_level_group(aGroupNameInput)
                            if self.check_if_parameter_is_present_in_dataGrid(groupName_formatted,IPparameterName,parsed_dataGrid):
                                IPgroupName = groupName_formatted
                                break
                        aParameterInfo["Max"] = str(self.get_propertyValue_of_parameter_in_dataGrid("Value",IPgroupName,IPparameterName,parsed_dataGrid))

        return {"Parameter_collection":input_collection}       
 
    def keyword_check_if_main_switch_is_set_to_specified_enum(self,parameterName,enumValue,parsed_dataGrid):
        """
        Check if main switch is set to specified enum in dataGrid.
        :param parameterName: Input parameter name.
        :param enumValue: Enum value of the parameter specified.
        :param parsed_dataGrid: Parsed dataGrid values.
        
        """
        
        for adataGridListItem in parsed_dataGrid:
            for dataGrid_GroupName, dataGrid_parametersList in adataGridListItem.items():
                for dataGrid_parameterInfo in dataGrid_parametersList:
                    if parameterName == dataGrid_parameterInfo["ParameterName"]:
                        if dataGrid_parameterInfo["Value"] != enumValue:
                            self.report_fail("""keyword_check_if_main_switch_is_set_to_specified_enum is failed.  
                testData = {}, uiData = {} , parameterName = {} and GroupName = {}""".format(enumValue,dataGrid_parameterInfo["Value"],parameterName,dataGrid_GroupName))


    def keyword_set_default_language_in_preference_window(self):
        """
        Set the default language in preference window.
        
        """
        self.click_settings_icon_in_homepage_window()
        self.Preferences_window_is_visible()
        self.Preferences_window_select_languange_from_List_of_Languages(AKCC55_Config.default_language)
        self.Preferences_window_click_Save_button()
        
        if self.popup_messagebox_window_OK_button_visibleStatus("HOME_WINDOW"):
            self.popup_messagebox_window_click_ok_button("HOME_WINDOW")
            return True
        self.popup_messagebox_window_click_yes_button("HOME_WINDOW")
        
    def keywords_prj_details_not_collapsed_when_clicked_on_collapse(self):
        """
        Verify project details are not collapsed when click on collapse button in Project window
        """
        self.prj_window_click_on_project_details_expand_collapse_button()
        self.prj_window_check_ProjectName_label_visible()
        self.prj_window_check_code_number_label_is_visible()
        self.prj_window_check_software_version_label_is_visible()
        self.prj_window_product_info_button_is_visible()
        self.prj_window_check_product_name_label_is_visible()
        
    def keywords_project_help_description_not_collapsed(self):
        """
        Verify project help button is collapsed when click on collapsed
        """
        self.prj_window_click_help_Expand_collapse_button()
        self.prj_window_check_status_of_help_expand_collapse_button()    

    def keyword_choose_random_parameters_of_provided_count(self,collection,count):
        """
        Choose random parameters of provided count and return the values.
        :param collection: Input collection.
        :param count: Number of parameters to be chosen randomly.
        :return: Parameter collection of provided count that is chosen randomly.
       
        """
        count=int(count)
        group_parameterList = []
        chosen_list = []
        groups_alreadyPresent = []
        for _ in range(0,count):
            random_dict = self.get_random_parameter_info(collection, chosen_list)
            for key,values in random_dict.items():
                for value in values:
                    chosen_list.append(value["Text"])
                    groupName = key
                    parameterInfoSelected = value
            if len(group_parameterList) == 0:
                group_parameterList.append(random_dict)
                groups_alreadyPresent.append(groupName)
            else:
                if groupName in groups_alreadyPresent:
                    for index, group_parameterListItem in enumerate(group_parameterList):
                        for groupName_present, parameter_present in group_parameterListItem.items():
                            if groupName_present == groupName:
                                parameter_present.append(parameterInfoSelected)
                                group_parameterList[index][groupName] = parameter_present
                else:
                    group_parameterList.append(random_dict)
                    groups_alreadyPresent.append(groupName)
               
       
        return group_parameterList
    

    def merge_collections_for_changed_values_in_datagrid(self,collection1,collection2):
        """
        Merge the list of dictionaries.
        :param collection1: Changed Values collection.
        :param collection2: Changed Values collection.
        :return: Merged collection.
        """
        new_collection = []
        groupName_list = []
        for itemList in collection1:
            for groupName, parameterInfo in itemList.items():
                for aParameterInfo in parameterInfo:
                    groupName_list.append(aParameterInfo["GroupName"])
                    break
                new_collection.append(itemList)
                break        
                    
        for itemList_two in collection2:
            for groupName1, parameterInfo2 in itemList_two.items():
                count = len(itemList_two)
                paramInfo_merged_count = 0
                for aParameterInfo2 in parameterInfo2:
                    if groupName1 in groupName_list:
                        for index,collection_item in enumerate(new_collection):
                            flag_found = False
                            for collectionGroupName, collectionParameterInfo in collection_item.items():
                                if groupName1 == collectionGroupName:
                                    collectionParameterInfo.append(aParameterInfo2)
                                    new_collection[index][collectionGroupName] = collectionParameterInfo
                                    flag_found = True
                                    paramInfo_merged_count+=1
                                    break
                            if flag_found == True:
                                break
                        if paramInfo_merged_count==count:
                            break
                    else:
                        new_collection.append(itemList_two)
                        break

        return {"Merged_Collection" : new_collection}       
                        
        
################################## Verifying Labels Text In Project, Open, Recent, Import Settings From Controller, Copy TO Controller and Online Window #############

    def keywords_verify_product_name_variant_version_and_project_name_is_visible(self):
        """
        Verification of Set Parameter Label, Product Name label, Variant, Software Version, and Project Name Labels Text are visible
        """
        self.prj_window_check_Setparameter_title_visible()
        self.prj_window_check_product_name_label_is_visible()
        self.prj_window_check_code_number_label_is_visible()
        self.prj_window_check_software_version_label_is_visible()
        self.prj_window_check_ProjectName_label_visible()
        
    def keywords_verify_product_name_variant_version_and_project_name_labels_text_wrt_language(self,selectedlanguage):
        """
        Verification of Set Parameter Label, Product Name label, Variant, Software Version, and Project Name Labels Text are visible In Project Window
        :param selectedlanguage: Text in different language to be verified
        """
        language_dict = KoolProg_verify.window_property["Project_Window"]["languages"][selectedlanguage]
        language = list(language_dict.keys())[0]
        self.prj_window_check_Setparameter_title_text(language_dict[language]["label"]["Set_Parameter"])
        self.prj_window_check_product_name_label_text(language_dict[language]["label"]["Product_Name"])
        self.prj_window_check_code_number_label_text(language_dict[language]["label"]["Code_Number"])
        self.prj_window_check_software_version_label_text(language_dict[language]["label"]["Software_version"])
        self.prj_window_check_ProjectName_label_text(language_dict[language]["label"]["Project_Name"])         
        
    def keywords_verify_product_name_variant_version_and_project_name_is_visible_in_copy_to_controller(self):
        """
        Verification of Set Parameter Label, Product Name label, Variant, Software Version
        """
        self.Copy_to_controller_check_title_visible()
        self.keywords_verify_product_name_variant_version_and_project_name_is_visible()
        
    def keywords_verify_product_name_variant_version_and_project_name_labels_text_in_copy_to_controller_wrt_language(self,selectedlanguage):
        """
        Verification of Copy To Controller, Product Name label, Variant, Software Version Text In Copy To Controller Window
        :param selectedlanguage: Text in different language to be verified
        """
        language_dict = KoolProg_verify.window_property["Project_Window"]["languages"][selectedlanguage]
        language = list(language_dict.keys())[0]        
        self.Copy_to_controller_check_title_text(language_dict[language]["label"]["Copy_To_Controller_text"])
        self.prj_window_check_product_name_label_text(language_dict[language]["label"]["Product_Name"])
        self.prj_window_check_code_number_label_text(language_dict[language]["label"]["Code_Number"])
        self.prj_window_check_software_version_label_text(language_dict[language]["label"]["Software_version"])          
        
    def keywords_verify_product_name_variant_version_and_project_name_is_visible_in_online_service_window(self):
        """
        Verification of Parameter, Alarms, Input/Output Tabs Are Visible And Enabled
        """
        self.online_service_window_check_parameters_tab_is_visible()
        self.online_service_window_check_parameters_tab_is_enabled()
        self.online_service_window_check_alarms_tab_is_visible()
        self.online_service_window_check_alarms_tab_is_enabled()
        self.online_service_window_check_input_output_tab_is_visible()
        self.online_service_window_check_input_output_tab_is_enabled()
        
    def keywords_verify_product_name_variant_version_and_project_name_labels_text_in_online_window_wrt_language(self,selectedlanguage):
        """
        Verification of Parameter, Alarms, Input/Output Tabs Labels Text are visible In Online Window
        :param selectedlanguage: Text in different language to be verified
        """
        language_dict = KoolProg_verify.window_property["Online_Service_Window"]["languages"][selectedlanguage]
        language = list(language_dict.keys())[0]        
        self.online_service_window_check_parameters_tab_text(language_dict[language]["label"]["Parameter_tab"])
        self.online_service_window_check_alarms_tab_text(language_dict[language]["label"]["Alarms_tab"])
        self.online_service_window_check_input_output_tab_text(language_dict[language]["label"]["Input/Output_tab"]) 
                                    
################################## Verifying Labels Text In Project, Open, Recent, Import Settings From Controller, Copy TO Controller and Online Window #############

    
    
    def keyword_check_if_file_with_extension_exists_in_specified_path(self,project_name,path):
        """
        Check if a specified file exists in specified path
        :return: True if succeeds.
        
        """
  
        project_path = path + "\\{}"
 
        project_name_with_path = project_path.format(project_name)
        
        if common.path_exists(project_name_with_path):
            self.report_log("keyword_check_if_file_exists_in_specified_path passed ....",
                             "fileLocation='{}'".format(project_name_with_path))
            return True
        self.report_log("keyword_check_if_file_exists_in_specified_path failed ....",
                             "fileLocation='{}'".format(project_name_with_path))
    
    def keyword_verify_language_support_comma_instead_of_decimal_in_floatDataType_quick_wizard(self, controllerinfo_Dict):
        """
        Verify language supports comma instead of decimals in float values in quick wizard window.
        :param controllerinfo_Dict: Controller information.
        :return: True if succeeds.
        """
        quick_settings_ui = controllerinfo_Dict["quick_settings_ui"]      
        quick_setting = self.keywords_get_quick_settings_collection(controllerinfo_Dict)
        count=0
        for parameter in quick_setting:
            for grp,param_lst in parameter.items():
                for data in param_lst:   
                    parameter_ui = quick_settings_ui[count]
                    for k,v in parameter_ui.items():
                        if data["Text"] == k and data["DataType"]=="Float":
                            val = float(data["Value"])
                            value = (str(val).replace(".",","))
                            if value== str(v["Value"]) and ',' in v["Value"]:
                                self.report_pass("keyword_verify_language_support_comma_instead_of_decimal_in_floatDataType_quick_wizard is passed...")
                                return True
                            else:
                                self.report_fail("keyword_verify_language_support_comma_instead_of_decimal_in_floatDataType_quick_wizard is failed...")
                                return False   
                    count+=1 
        
    def keywords_click_grpName_and_verify_scrollBar_in_treeView(self, controller_info_dict,scrollBar_visibility_status_before_clicking_maxWidth_grpName=False,scrollBar_enable_status_before_clicking_maxWidth_grpName=False,scrollBar_visibility_status_after_clicking_maxWidth_grpName=True,scrollBar_enable_status_after_clicking_maxWidth_grpName=True):
        """
        Click the grpname in the treeview and verify the scrollbar is visible.
        :param controller_info_dict: Controller information details.
        :return: True if succeeds.
        """
        grpName = controller_info_dict["GroupName"]
        if self.project_window_check_treeView_scrollBar_is_visible(scrollBar_visibility_status_before_clicking_maxWidth_grpName):
            if self.project_window_check_treeView_scrollBar_is_enabled(scrollBar_enable_status_before_clicking_maxWidth_grpName):
                self.project_window_expand_tree_view_item(grpName)
                if self.project_window_check_treeView_scrollBar_is_visible(scrollBar_visibility_status_after_clicking_maxWidth_grpName):
                    if self.project_window_check_treeView_scrollBar_is_enabled(scrollBar_enable_status_after_clicking_maxWidth_grpName):
                        self.report_pass("keywords_click_grpName_and_verify_scrollBar_in_datagrid is passed.Group name selected={}".format(grpName))
                        return True
        self.report_fail("keywords_click_grpName_and_verify_scrollBar_in_datagrid is failed.Group name selected={}".format(grpName))
        return False
                    
    def keyword_fetch_userDefined_groupIndex(self, controller_info_dict):
        """
        Fetch the group index for the given groupname.
        :param controller_info_dict: Controller information.
        :return: Groupname index.
        """
        GroupName= AKCC55_Config.treeView_scrollBar_groupName
        grpidx= self.fetch_userDefined_groupIndex(controller_info_dict, GroupName)
        return {"Scrollbar_enabling_userDefined_groupNameIndex":grpidx}
    
    def fetchGroupName_from_groupIndex(self,parameter_collection,indx):
        """
        Fetch the groupname from the provided group index.
        :param parameter_collection: CDF parameter collection.
        :param index: Group index
        :return: Group name.
        """
        GrpName_found=None
        for item in parameter_collection:
            for _, parameterInfo in item.items():
                for aParameterInfo in parameterInfo:
                    subGroupList = aParameterInfo["SubGroupNameIdx"].split(";")
                    for subGrpIndx in subGroupList:
                        splittedSubGrpIndex = subGrpIndx.split("|")
                        idx = subGroupList.index(subGrpIndx)
                        if str(indx) in splittedSubGrpIndex:
                            splittedSubGrpName = aParameterInfo["SubGroupName"].split(";")
                            split_fetchedGrpName = splittedSubGrpName[idx].split("|")
                            idx_found = splittedSubGrpIndex.index(str(indx))
                            GrpName_found = split_fetchedGrpName[idx_found]
                            break
                    break
        return {"GroupName":GrpName_found}
    
    def keywords_verify_param_help_in_quick_wizard_window(self,controllerinfo_Dict):
        """
        Verify the parameter and help in quick wizard window.
        :param controllerinfo_Dict: Controller information details.
        :return: True if succeeds.
        """
        quick_setting = self.keywords_get_quick_settings_collection(controllerinfo_Dict)
        quick_settings_ui = controllerinfo_Dict["quick_settings_ui"]
        count=0
        found = False
        for anItem in quick_setting:
            for _, parametersList in anItem.items():
                for aParameterInfo in parametersList:
                    found = False
                    for index,quick_settings_ui_parameter_item in enumerate(quick_settings_ui):
                        for key_parameterName, _ in quick_settings_ui_parameter_item.items():
                            if aParameterInfo["Text"] == key_parameterName:
                                found = True
                                menucode_UI_with_colon = quick_settings_ui[index][key_parameterName]["Menucode"]
                                param_name_UI = quick_settings_ui[index][key_parameterName]["Parameter"]
                                help_description_UI = quick_settings_ui[index][key_parameterName]["Help"]
                                menucode_UI = menucode_UI_with_colon.split()[0]
                                if menucode_UI == aParameterInfo["Label"] and aParameterInfo["Help"]==help_description_UI and aParameterInfo["Text"] == param_name_UI:
                                    count+=1
                                else:
                                    self.report_fail("keywords_verify_param_help_in_quick_wizard_window is failed with  menucode_cdf_ui ={},{} and parameter_cdf_ui ={},{} and help_cdf_ui={},{}".format(aParameterInfo["Label"],menucode_UI,aParameterInfo["Text"],param_name_UI,aParameterInfo["Help"],help_description_UI ))
        if count ==len(parametersList):
            self.report_pass("keywords_verify_param_help_in_quick_wizard_window is passed..")
            return True
        else:
            self.report_fail("keywords_verify_param_help_in_quick_wizard_window is failed...")              
            return False
    
    def keywords_verify_quick_wizard_collection_from_cdf_with_quick_wizard_UI(self,controllerinfo_Dict):
        """
        Verify quick wizard collection from CDF with the quick wizard UI.
        :param controllerinfo_Dict: Controller information details.
        :return: True if succeeds.
        """
        quick_setting = self.keywords_get_quick_settings_collection(controllerinfo_Dict)
        quick_settings_ui = controllerinfo_Dict["quick_settings_ui"]
        
        found = False
        value_found =0
        unit_found =0
        for anItem in quick_setting:
            for _, parametersList in anItem.items():
                for aParameterInfo in parametersList:
                    found = False
                    for index,quick_settings_ui_parameter_item in enumerate(quick_settings_ui):
                        for key_parameterName, _ in quick_settings_ui_parameter_item.items():
                            if aParameterInfo["Text"] == key_parameterName:
                                found = True     
                                if aParameterInfo["DataType"]=="Enum":
                                    list_items_UI = quick_settings_ui[index][key_parameterName]["ListItems"]
                                    list_items_cdf = aParameterInfo["EnumText"]
                                    value_index = aParameterInfo["Value"]
                                    input_index = aParameterInfo["EnumValue"].index(value_index)
                                    aParameterInfo["Value"] = aParameterInfo["EnumText"][input_index]
                                    if common.compare_list(list_items_UI, list_items_cdf):
                                        self.report_log("Enum list matched!.. for parameter = {}, enum_list ={}, enum_list_ui={}".format(key_parameterName,list_items_cdf,list_items_UI))
                                    else:
                                        self.report_fail("Enum list is not matched for parameter = {}, enum_list ={}, enum_list_ui={}".format(key_parameterName,list_items_cdf,list_items_UI))
                                if aParameterInfo["DataType"]=="Float":
                                    aParameterInfo["Value"] = float(aParameterInfo["Value"])
                                value_UI = quick_settings_ui[index][key_parameterName]["Value"]
                                unit_UI = quick_settings_ui[index][key_parameterName]["Unit"]
                                if common.compare_text(str(value_UI), str(aParameterInfo["Value"])):
                                    value_found+=1
                                    self.report_pass("Value matched!.. for parameter = {}, value_cdf ={}, value_ui={}".format(key_parameterName,aParameterInfo["Value"],value_UI))
                                    if common.compare_text(str(unit_UI), str(aParameterInfo["UnitText"])):
                                        value_found+=1
                                        self.report_pass("Unit matched!.. for parameter = {}, unit_cdf ={}, unit_ui={}".format(key_parameterName,aParameterInfo["UnitText"],unit_UI))
                                    else:
                                        unit_found+=1
                                        self.report_fail("Unit not matched!.. for parameter = {}, unit_cdf ={}, unit_ui={}".format(key_parameterName,aParameterInfo["UnitText"],unit_UI))
                                else:
                                    self.report_fail("Value is not matched!.. for parameter = {}, value_cdf ={}, value_ui={}".format(key_parameterName,aParameterInfo["Value"],value_UI))
        if value_found ==len(parametersList) and unit_found ==len(parametersList):
            return True
            self.report_pass("keywords_verify_quick_wizard_collection_from_cdf_with_quick_wizard_UI is passed..")
        else:
            return False
            self.report_pass("keywords_verify_quick_wizard_collection_from_cdf_with_quick_wizard_UI is passed..")
            
    def keyword_get_bin_file_for_selected_project_details(self,details):
        """
         Gets bin file for selected project details.
         :param details: Selected controller details.
         :return: Bin file path.
         
         """
        bin_file_name = details["controllerCodeNo"] +"_"+ details["softwareVersion"]+".BIN"
        bin_file_path = common.get_project_file_path(inputConfig.cdf_file_path  + bin_file_name)
        return {"bin_file_path" : bin_file_path}
    
    def keywords_set_random_values_in_quick_settings_collection(self,quickSetting_collection):
        """
        Set random values in quick settings collection.
        :param quickSetting_collection: Quick Setting collection.
        :return: Returns Updated input collection, updated quick settings collection and changed quick setting collection.
        
        """
        arg_collection = []
        new_collection = []
        parameter_not_found = []
        updated_quickSetting_collection,updated_input_collection = self.parse_quicksetting_parameters(None,None)
    
        
        for i in (quickSetting_collection):
            for groupName, parameterInfo in i.items():
                updated_parameters = []
                for aParameterInfo in (parameterInfo):
                    ui_collection = self.quick_settings_window_get_parameter_details()
                    if self.check_if_parameter_is_present_in_dataGrid_quick_setting_collection(aParameterInfo["Text"],ui_collection):
                        if aParameterInfo["DataType"] == AKCC55_Config.mapping_int_datatype:
                            if aParameterInfo["DynMinIdx"] == -1 and aParameterInfo["DynMaxIdx"] == -1:
                                value_to_set = common.get_random_int_value_for_a_range_of_values(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]])
                            
                            else:
                                if aParameterInfo["DynMinIdx"] != -1:
                                    dynamic_min_max_info = self.get_parameter_collection_for_filter("Idx",aParameterInfo["DynMinIdx"],updated_input_collection)
                                    for key,value in dynamic_min_max_info[0].items():
                                        aParameterInfo["Min"] = int(self.get_propertyValue_of_parameter_in_cdf("Value",key,value[0]["Text"],updated_input_collection))
                                        break
                                    
                                if aParameterInfo["DynMaxIdx"] != -1:
                                    dynamic_min_max_info = self.get_parameter_collection_for_filter("Idx",aParameterInfo["DynMaxIdx"],updated_input_collection)
                                    for key,value in dynamic_min_max_info[0].items():
                                        aParameterInfo["Max"] = int(self.get_propertyValue_of_parameter_in_cdf("Value",key,value[0]["Text"],updated_input_collection))
                                        break
                                value_to_set = common.get_random_int_value_for_a_range_of_values(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]])
                            aParameterInfo["Value"] = int(value_to_set)
                        if aParameterInfo["DataType"] == AKCC55_Config.mapping_float_datatype:
                            if aParameterInfo["DynMinIdx"] == -1 and aParameterInfo["DynMaxIdx"] == -1:
                                value_to_set = common.get_random_float_value_for_provided_range(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]],1)
                            
                            else:
                                if aParameterInfo["DynMinIdx"] != -1:
                                    dynamic_min_max_info = self.get_parameter_collection_for_filter("Idx",aParameterInfo["DynMinIdx"],updated_input_collection)
                                    for key,value in dynamic_min_max_info[0].items():
                                        aParameterInfo["Min"] = float(self.get_propertyValue_of_parameter_in_cdf("Value",key,value[0]["Text"],updated_input_collection))
                                        break
                                    
                                if aParameterInfo["DynMaxIdx"] != -1:
                                    dynamic_min_max_info = self.get_parameter_collection_for_filter("Idx",aParameterInfo["DynMaxIdx"],updated_input_collection)
                                    for key,value in dynamic_min_max_info[0].items():
                                        aParameterInfo["Max"] = float(self.get_propertyValue_of_parameter_in_cdf("Value",key,value[0]["Text"],updated_input_collection))
                                        break
                                value_to_set = common.get_random_float_value_for_provided_range(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]],1)
                                
                            aParameterInfo["Value"] = (value_to_set)    
                        if aParameterInfo["DataType"] == AKCC55_Config.mapping_enum_datatype:
                            value_to_set_enumValue = common.select_randomly_from_a_list(aParameterInfo["EnumValue"],[aParameterInfo["Value"]])
                            index_input = aParameterInfo["EnumValue"].index(value_to_set_enumValue)
                            aParameterInfo["Value"] = int(value_to_set_enumValue)
                            value_to_set = aParameterInfo["EnumText"][index_input]   
                        self.quick_settings_window_set_value_in_quick_wizard_listView(aParameterInfo["Text"],value_to_set)
                        arg_collection.append({groupName:[aParameterInfo]})
                        updated_quickSetting_collection,updated_input_collection = self.parse_quicksetting_parameters(None,arg_collection)
                        updated_parameters.append(aParameterInfo)
                        
                    else:
                        parameter_not_found.append({groupName:aParameterInfo})
                        continue
                if len(updated_parameters) > 0:
                    aDict = {groupName:updated_parameters}
                    new_collection.append(aDict)
        
        
        return {"Updated_input_collection" : updated_input_collection, "Updated_quickSetting_collection": updated_quickSetting_collection,"Changed_quickSetting_collection":new_collection}
    
    def keyword_verify_quickSetting_collection_in_dataGrid(self,property,ui_collection,testData_Collection):
        """
        Verify quickSetting collection in datagrid with the provided collection and required property name.
        :param property: Property Name.
        :param ui_collection: UI Quick Setting collection.
        :param testData_Collection: Quick Setting testData Collection.
        
        """
        parameter_not_found = []
        for testDataListItem in testData_Collection:
            for _, testDataParametersList in testDataListItem.items():
                for testDataParameterInfo in testDataParametersList:
                    parameter_found = False
                    for index,uiListItem in enumerate(ui_collection):
                        for uiParameterName,_ in uiListItem.items():
                            if testDataParameterInfo["Text"] == uiParameterName:
                                parameter_found = True
                                self.report_pass("keyword_verify_quickSetting_collection_in_dataGrid is passed, parameterName ={} ".format(uiParameterName))
                                if property == "ParameterName":
                                    break
                                
                                if testDataParameterInfo["DataType"] == "Enum" and property == "Value":
                                    index_input = testDataParameterInfo["EnumValue"].index(testDataParameterInfo[AKCC55_Config.propertyMapping[property]])
                                    testDataEnum = testDataParameterInfo["EnumText"][index_input]
                                    if testDataEnum == ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]:
                                        self.report_pass("keyword_verify_quickSetting_collection_in_dataGrid is passed, parameterName ={} , property = {} testData = {} uiData = {}".format(uiParameterName,property,testDataEnum,ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]))
                                    else:
                                        self.report_fail("keyword_verify_quickSetting_collection_in_dataGrid is failed, parameterName ={} , property = {} testData = {} uiData = {}".format(uiParameterName,property,testDataEnum,ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]))
                                    break
                                elif property == "Value":
                                    if int(float(str(testDataParameterInfo[AKCC55_Config.propertyMapping[property]]))) == int(float(str(ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]))):
                                        self.report_pass("keyword_verify_quickSetting_collection_in_dataGrid is passed, parameterName ={} , property = {} testData = {} uiData = {}".format(uiParameterName,property,testDataParameterInfo[AKCC55_Config.propertyMapping[property]],ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]))
                                    else:
                                        self.report_fail("keyword_verify_quickSetting_collection_in_dataGrid is failed, parameterName ={} , property = {} testData = {} uiData = {}".format(uiParameterName,property,testDataParameterInfo[AKCC55_Config.propertyMapping[property]],ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]))
                                else:
                                    if testDataParameterInfo[AKCC55_Config.propertyMapping[property]] == ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]:
                                        self.report_pass("keyword_verify_quickSetting_collection_in_dataGrid is passed, parameterName ={} , property = {} testData = {} uiData = {}".format(uiParameterName,property,testDataParameterInfo[AKCC55_Config.propertyMapping[property]],ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]))
                                    else:
                                        self.report_fail("keyword_verify_quickSetting_collection_in_dataGrid is failed, parameterName ={} , property = {} testData = {} uiData = {}".format(uiParameterName,property,testDataParameterInfo[AKCC55_Config.propertyMapping[property]],ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]))
                                       
                    if parameter_found == False:
                        parameter_not_found.append(testDataParameterInfo["Text"])
        if len(parameter_not_found) > 0:
            self.report_fail("keyword_verify_quickSetting_collection_in_dataGrid is failed, parameter_not_found_list = {}".format(parameter_not_found))

    def keyword_check_existence_of_popup_window_in_quick_settings_window(self):
        """
        Check the existence of popup window in the quick settings window.
        """
        if self.popup_messagebox_window_is_visible():
            self.popup_messagebox_window_click_ok_button("PROJECT_WINDOW")
            self.quick_settings_window_click_finish_button()
    
    def keywords_get_parameter_based_on_property_value_in_quickSettings_collection(self, quickSetting_collection, property, property_value):
        """
        Get the Quick settings collection based on the property.
        :param quickSetting_collection: Quick Setting collection.
        :return: Returns filtered quick setting collection.
        """
        new_collection = []
        grpName_with_param_collection = []
        for i in quickSetting_collection:
            for groupName, parameterInfo in i.items():
                for aParameterInfo in parameterInfo:
                    if aParameterInfo[property] == property_value:
                        new_collection.append(aParameterInfo)
                grpName_with_param_collection.append({groupName : new_collection})
        return {"QuickSetting_Collection" : grpName_with_param_collection}
    
    def keywords_set_random_values_in_quick_settings_collection(self,quickSetting_collection, comma_supported=False):
        """
        Set random values in quick settings collection.
        :param quickSetting_collection: Quick Setting collection.
        :return: Returns Updated input collection, updated quick settings collection and changed quick setting collection.
        
        """
        arg_collection = []
        new_collection = []
        parameter_not_found = []
        updated_quickSetting_collection,updated_input_collection = self.parse_quicksetting_parameters(None,None)
        for i in quickSetting_collection:
            for groupName, parameterInfo in i.items():
                updated_parameters = []
                for aParameterInfo in parameterInfo:
                    ui_collection = self.quick_settings_window_get_parameter_details()
                    if self.check_if_parameter_is_present_in_dataGrid_quick_setting_collection(aParameterInfo["Text"],ui_collection):
                        if aParameterInfo["DataType"] == AKCC55_Config.mapping_int_datatype:
                            if aParameterInfo["DynMinIdx"] == -1 and aParameterInfo["DynMaxIdx"] == -1:
                                value_to_set = common.get_random_int_value_for_a_range_of_values(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]])
                            
                            else:
                                if aParameterInfo["DynMinIdx"] != -1:
                                    dynamic_min_max_info = self.get_parameter_collection_for_filter("Idx",aParameterInfo["DynMinIdx"],updated_input_collection)
                                    for key,value in dynamic_min_max_info[0].items():
                                        aParameterInfo["Min"] = int(self.get_propertyValue_of_parameter_in_cdf("Value",key,value[0]["Text"],updated_input_collection))
                                        break
                                    
                                if aParameterInfo["DynMaxIdx"] != -1:
                                    dynamic_min_max_info = self.get_parameter_collection_for_filter("Idx",aParameterInfo["DynMaxIdx"],updated_input_collection)
                                    for key,value in dynamic_min_max_info[0].items():
                                        aParameterInfo["Max"] = int(self.get_propertyValue_of_parameter_in_cdf("Value",key,value[0]["Text"],updated_input_collection))
                                        break
                                value_to_set = common.get_random_int_value_for_a_range_of_values(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]])
                            aParameterInfo["Value"] = int(value_to_set)
                        if aParameterInfo["DataType"] == AKCC55_Config.mapping_float_datatype:
                            if aParameterInfo["DynMinIdx"] == -1 and aParameterInfo["DynMaxIdx"] == -1:
                                value_to_set = common.get_random_float_value_for_provided_range(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]],1)
                            
                            else:
                                if aParameterInfo["DynMinIdx"] != -1:
                                    dynamic_min_max_info = self.get_parameter_collection_for_filter("Idx",aParameterInfo["DynMinIdx"],updated_input_collection)
                                    for key,value in dynamic_min_max_info[0].items():
                                        aParameterInfo["Min"] = float(self.get_propertyValue_of_parameter_in_cdf("Value",key,value[0]["Text"],updated_input_collection))
                                        break
                                    
                                if aParameterInfo["DynMaxIdx"] != -1:
                                    dynamic_min_max_info = self.get_parameter_collection_for_filter("Idx",aParameterInfo["DynMaxIdx"],updated_input_collection)
                                    for key,value in dynamic_min_max_info[0].items():
                                        aParameterInfo["Max"] = float(self.get_propertyValue_of_parameter_in_cdf("Value",key,value[0]["Text"],updated_input_collection))
                                        break
                                value_to_set = common.get_random_float_value_for_provided_range(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]],1)
                                
                            if comma_supported == True:
                                value_to_set = str(value_to_set).replace(".",",")
                                aParameterInfo["Value"] = value_to_set
                            else:
                                aParameterInfo["Value"] = (value_to_set)    
                        if aParameterInfo["DataType"] == AKCC55_Config.mapping_enum_datatype:
                            value_to_set_enumValue = common.select_randomly_from_a_list(aParameterInfo["EnumValue"],[aParameterInfo["Value"]])
                            index_input = aParameterInfo["EnumValue"].index(value_to_set_enumValue)
                            aParameterInfo["Value"] = int(value_to_set_enumValue)
                            value_to_set = aParameterInfo["EnumText"][index_input]
                        if self.popup_messagebox_window_is_visible():
                            self.popup_messagebox_window_click_ok_button()    
                        self.quick_settings_window_set_value_in_quick_wizard_listView(aParameterInfo["Text"],value_to_set)
                        arg_collection.append({groupName:[aParameterInfo]})
                        updated_quickSetting_collection,updated_input_collection = self.parse_quicksetting_parameters(None,arg_collection)
                        updated_parameters.append(aParameterInfo)
                        
                    else:
                        parameter_not_found.append({groupName:aParameterInfo})
                        continue
                if len(updated_parameters) > 0:
                    aDict = {groupName:updated_parameters}
                    new_collection.append(aDict)
        
        
        return {"Updated_input_collection" : updated_input_collection, "Updated_quickSetting_collection": updated_quickSetting_collection,"Changed_quickSetting_collection":new_collection}
    
    def keyword_verify_quickSetting_collection_in_dataGrid(self,property,ui_collection,testData_Collection, values_check=True,filtered_property=None):
        """
        Verify quickSetting collection in datagrid with the provided collection and required property name.
        :param property: Property Name.
        :param ui_collection: UI Quick Setting collection.
        :param testData_Collection: Quick Setting testData Collection.
        
        """
        parameter_not_found = []
        for testDataListItem in testData_Collection:
            for _, testDataParametersList in testDataListItem.items():
                for testDataParameterInfo in testDataParametersList:
                    parameter_found = False
                    for index,uiListItem in enumerate(ui_collection):
                        for uiParameterName,_ in uiListItem.items():
                            if testDataParameterInfo["Text"] == uiParameterName:
                                parameter_found = True
                                self.report_pass("keyword_verify_quickSetting_collection_in_dataGrid is passed, parameterName ={} ".format(uiParameterName))
                                if property == "ParameterName":
                                    break
                                
                                if testDataParameterInfo["DataType"] == "Enum" and property == "Value":
                                    index_input = testDataParameterInfo["EnumValue"].index(testDataParameterInfo[AKCC55_Config.propertyMapping[property]])
                                    testDataEnum = testDataParameterInfo["EnumText"][index_input]
                                    if testDataEnum == ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]:
                                        self.report_pass("keyword_verify_quickSetting_collection_in_dataGrid is passed, parameterName ={} , property = {} testData = {} uiData = {}".format(uiParameterName,property,testDataEnum,ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]))
                                    else:
                                        self.report_fail("keyword_verify_quickSetting_collection_in_dataGrid is failed, parameterName ={} , property = {} testData = {} uiData = {}".format(uiParameterName,property,testDataEnum,ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]))
                                    break
                                elif property == "Value":
                                    if values_check == True:
                                        if int(float(str(testDataParameterInfo[AKCC55_Config.propertyMapping[property]]))) == int(float(str(ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]))):
                                            self.report_pass("keyword_verify_quickSetting_collection_in_dataGrid is passed, parameterName ={} , property = {} testData = {} uiData = {}".format(uiParameterName,property,testDataParameterInfo[AKCC55_Config.propertyMapping[property]],ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]))
                                        else:
                                            self.report_fail("keyword_verify_quickSetting_collection_in_dataGrid is failed, parameterName ={} , property = {} testData = {} uiData = {}".format(uiParameterName,property,testDataParameterInfo[AKCC55_Config.propertyMapping[property]],ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]))
                                    else:
                                        a = str(testDataParameterInfo[AKCC55_Config.propertyMapping[property]])
                                        b = str(ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]])
                                        if str(testDataParameterInfo[AKCC55_Config.propertyMapping[property]]) != str(ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]):
                                            self.report_pass("keyword_verify_quickSetting_collection_in_dataGrid is passed, parameterName ={} , property = {} testData = {} uiData = {}".format(uiParameterName,property,testDataParameterInfo[AKCC55_Config.propertyMapping[property]],ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]))
                                        else:
                                            self.report_fail("keyword_verify_quickSetting_collection_in_dataGrid is failed, parameterName ={} , property = {} testData = {} uiData = {}".format(uiParameterName,property,testDataParameterInfo[AKCC55_Config.propertyMapping[property]],ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]))
                                    
                                else:
                                    if testDataParameterInfo[AKCC55_Config.propertyMapping[property]] == ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]:
                                        self.report_pass("keyword_verify_quickSetting_collection_in_dataGrid is passed, parameterName ={} , property = {} testData = {} uiData = {}".format(uiParameterName,property,testDataParameterInfo[AKCC55_Config.propertyMapping[property]],ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]))
                                    else:
                                        self.report_fail("keyword_verify_quickSetting_collection_in_dataGrid is failed, parameterName ={} , property = {} testData = {} uiData = {}".format(uiParameterName,property,testDataParameterInfo[AKCC55_Config.propertyMapping[property]],ui_collection[index][uiParameterName][KoolProg_verify.ui_quickSetting_dataGrid_propertyMapping[property]]))
                                       
                    if parameter_found == False:
                        parameter_not_found.append(testDataParameterInfo["Text"])
        if len(parameter_not_found) > 0:
            self.report_fail("keyword_verify_quickSetting_collection_in_dataGrid is failed, parameter_not_found_list = {}".format(parameter_not_found))
    
    def keyword_get_Alarm_Parameters(self,controller_infoDict):
        """
         Get the alarm parameters details
         :param controller_info_Dict: Details of the controller used for validation.
         :return: Returns alarm parameter details
        
        """
        
        alarm_parameters = self.get_Alarm_Parameters(controller_infoDict)
        aDict = {"Alarms" : alarm_parameters}
        collection = []
        collection.append(aDict)
        return {"Alarm_Parameter_Collection" : collection}
    
    def keyword_generateAlarm_and_verify_and_cancelAlarm_and_verify(self,controllerDetails):
        """
        Generates Alarms and verification is carried out and cancels the Alarm and verification is carried out.
        :param controllerDetails: Details of the controller used for validation.
        
        """
        alarms = self.get_alarms_list(controllerDetails)
        for anAlarm in alarms:
            self.keyword_generate_alarm(anAlarm)
            self.report_log("Logging (GENERATED THE ALARM)")
            parsed_dataGrid = self.prj_window_parse_the_datagrid()
            alarm_dataGrid = self.online_window_parse_the_activeAlarm_datagrid()
            alarmInfo =  self.get_alarm_details_from_inputDatabase(anAlarm,controllerDetails["Alarm_Parameter_Collection"])
            if alarmInfo:
                self.keyword_verify_alarm_details_in_alarmDataGrid(alarmInfo,alarm_dataGrid)
                self.report_log("Logging (Alarm presence in active alarms DATAGRID is verified)")
                self.online_service_window_click_alarms_tab()
                self.online_service_window_check_alarms_tab_is_enabled()
                self.onlineService_Alarm_tree_click_item("Active alarms")
                alarm_tab_collection = self.online_window_parse_the_alarm_datagrid()
                self.keyword_verify_alarm_details_in_alarm_tab_collection(alarmInfo,alarm_tab_collection,parsed_dataGrid)
                self.report_log("Logging (Alarm presence in active alarms is verified)")
            else:
                self.report_fail("""keyword_generateAlarm_and_verify_and_cancelAlarm_and_verify is failed for 
                missing alarm details in CDF...alarmInfo = '{}'""".format(alarmInfo))
            self.online_service_window_click_parameters_tab()
            self.project_window_tree_click_item("All")
            self.keyword_put_to_sleep_with_respect_to_expected_performance("OFFLINE","LOADING_PARAMETERS_AFTER_CLICKING_ALL_TREE_ITEM")
            self.keyword_degenerate_alarm(anAlarm)
            self.report_log("Logging (DEGENERATED THE ALARM)")
            alarm_dataGrid = self.online_window_parse_the_activeAlarm_datagrid()
            self.keyword_verify_alarm_details_in_alarmDataGrid(alarmInfo,alarm_dataGrid,False)
            self.report_log("Logging (Alarm absence in active alarms DATAGRID is verified)")
            self.online_service_window_click_alarms_tab()
            self.online_service_window_check_alarms_tab_is_enabled()
            self.onlineService_Alarm_tree_click_item("Active alarms")
            alarm_tab_collection = self.online_window_parse_the_alarm_datagrid()
            self.keyword_verify_alarm_details_in_alarm_tab_collection(alarmInfo,alarm_tab_collection,parsed_dataGrid,False)
            self.report_log("Logging (Alarm absence in active alarms is verified)")
            self.onlineService_Alarm_tree_click_item("Cleared alarms")
            self.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE","LOADING_PARAMETERS_AFTER_CLICKING_CLEARED_ALARMS_TREE_ITEM")
            alarm_collection = self.online_window_parse_the_alarm_datagrid()
            self.keyword_verify_alarm_details_in_alarm_tab_collection(alarmInfo,alarm_collection,parsed_dataGrid)
            self.report_log("Logging (Alarm presence in cleared alarms is verified)")
            self.online_service_window_click_parameters_tab()
            self.project_window_tree_click_item("All")
            self.keyword_put_to_sleep_with_respect_to_expected_performance("OFFLINE","LOADING_PARAMETERS_AFTER_CLICKING_ALL_TREE_ITEM")
            
    def keyword_degenerate_alarm(self,alarm):
        """
        Degenerates the specified alarm.
        :param alarm: Alarm input.
        
        """
        alarm_info = self.get_alarm_degenerating_information(alarm)
        parsed_dataGrid = self.prj_window_parse_the_datagrid()
        for aListItem in alarm_info:
            for key,value in aListItem.items():
                if key == "Value":
                    setValue = value
                if key == "parameterInfo":
                    collection = value
        
            for aListItem in collection:
                found = False
                for key_GroupName, key_parametersList in aListItem.items():
                    for aParameterInfo in key_parametersList:
                        groupNameList = aParameterInfo["GroupName"].split(";")
                        index_group = groupNameList.index(key_GroupName)
                        subGroupList = aParameterInfo["SubGroupName"].split(";")
                        groupName_text = self.get_group_name_from_multi_level_group(subGroupList[index_group])
                        print(groupName_text)
                        if self.check_if_parameter_is_present_in_dataGrid(groupName_text,aParameterInfo["Text"],parsed_dataGrid):
                            self.prj_window_set_value_in_datagrid(groupName_text,aParameterInfo["Text"],setValue)
                            found = True
                            break
                    if found == True:
                        break
                if found == True:
                    break
        self.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE","LOADING_ALARMS")
        self.report_log("keyword_degenerate_alarm passed.."," alarm  ={}".format(alarm))
        

            
    def keyword_verify_alarm_details_in_alarm_tab_collection(self,alarmInfo,alarm_tab_collection,parsed_dataGrid,presence = True):
        """
        Verify alarm details in alarm tab collection.
        :param alarmInfo: Alarm information.
        :param alarm_tab_collection: Alarm tab collection.
        :param presence: Verifying presence of Alarms.
        :param parsed_dataGrid: DataGrid collection.
        :return: True if succeeds, False otherwise.
        
        """
        for aListItem in alarm_tab_collection:
            for _, parametersList in aListItem.items():
                for aParameterInfo in parametersList:
                    if alarmInfo["Text"] == aParameterInfo["AlarmName"]:
                        if presence == True:
                            self.report_log("keyword_verify_alarm_details_in_alarm_tab_collection passed..",
                             " alarm name ={}".format(alarmInfo["Text"]))
                            if alarmInfo["Label"] == aParameterInfo["MenuCode"]:
                                self.report_log("keyword_verify_alarm_details_in_alarm_tab_collection passed..",
                             " alarm Label ={}".format(alarmInfo["Label"]))
                            groupNameList, parameterName = self.getGroupName_and_parameterName_for_provided_index_from_collection(alarmInfo["PriorityIdx"])
                            groupName = self.get_group_name_from_multi_level_group(groupNameList[0])
                            priority_value = self.get_propertyValue_of_parameter_in_dataGrid("Value",groupName,parameterName,parsed_dataGrid)
                            if aParameterInfo["Priority"] == priority_value:
                                self.report_log("keyword_verify_alarm_details_in_alarm_tab_collection passed.."," alarm priority ={}".format(aParameterInfo["Priority"]))
                            else:
                                self.report_fail("keyword_verify_alarm_details_in_alarm_tab_collection failed.."," alarm priority ={} and actual priority = {}".format(aParameterInfo["Priority"],priority_value))
                                return False
                            return True
                        else:
                            self.report_fail("keyword_verify_alarm_details_in_alarm_tab_collection #NOT PRESENT failed..",
                         " alarm info ={}".format(alarmInfo))
                            return False
        if presence == False:
            self.report_log("keyword_verify_alarm_details_in_alarm_tab_collection  #NOT PRESENT passed..",
                             " alarm info ={}".format(alarmInfo))
            return True
        else:
            self.report_fail("keyword_verify_alarm_details_in_alarm_tab_collection  failed..",
                             " alarm info ={}".format(alarmInfo))
            return False
                        

        
    def keyword_verify_alarm_details_in_alarmDataGrid(self,alarmInfo,alarm_dataGrid_collection,presence = True):
        """
        Verify alarm details in alarm dataGrid.
        :param alarmInfo: Alarm information.
        :param alarm_dataGrid_collection: Alarm dataGrid collection.
        :param presence: Verifying presence of Alarms.
        :return: True if succeeds, False otherwise.
        
        """
        

        collection = alarm_dataGrid_collection["ParameterTab_Active_alarms_collection"]
        for anItem in collection:
            for key, value in anItem.items():
                if key == alarmInfo["Label"] and value == alarmInfo["Text"]:
                    if presence == True:
                        self.report_log("""keyword_verify_alarm_details_in_alarmDataGrid is passed for 
                            alarmInfo = '{}'""".format(alarmInfo))
                        return True
                    else:
                        self.report_fail("""keyword_verify_alarm_details_in_alarmDataGrid #NOT PRESENT is failed for 
                        alarmInfo = '{}'""".format(alarmInfo))
                        return False
        
        
        if presence == False:
            self.report_pass("""keyword_verify_alarm_details_in_alarmDataGrid #NOT PRESENT is passed for 
                            alarmInfo = '{}'""".format(alarmInfo))
            return True
        return False
        
        
                
            
            
    def keyword_generate_alarm(self,alarm):
        """
        Generates the specified alarm.
        :param alarm: Alarm input.
        
        """
        alarm_info = self.get_alarm_generating_information(alarm)
        parsed_dataGrid = self.prj_window_parse_the_datagrid()
        for aListItem in alarm_info:
            for key,value in aListItem.items():
                if key == "Value":
                    setValue = value
                if key == "parameterInfo":
                    collection = value
        
            for aListItem in collection:
                found = False
                for key_GroupName, key_parametersList in aListItem.items():
                    for aParameterInfo in key_parametersList:
                        groupNameList = aParameterInfo["GroupName"].split(";")
                        index_group = groupNameList.index(key_GroupName)
                        subGroupList = aParameterInfo["SubGroupName"].split(";")
                        groupName_text = self.get_group_name_from_multi_level_group(subGroupList[index_group])
                        print(groupName_text)
                        if self.check_if_parameter_is_present_in_dataGrid(groupName_text,aParameterInfo["Text"],parsed_dataGrid):
                            self.prj_window_set_value_in_datagrid(groupName_text,aParameterInfo["Text"],setValue)
                            found = True
                            break
                    if found == True:
                        break
                if found == True:
                    break
        self.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE","LOADING_ALARMS")
        self.report_log("keyword_generate_alarm passed.."," alarm  ={}".format(alarm))
                     
    def keyword_verify_headerItem_exists_in_alarm_dataGrid(self,headerItem):
        """
        Verify header item exists in alarm datagrid.
        :param headerItem: Input header Item.
        :return: True if exists, false otherwise.
        
        """
        headersList = self.online_service_window_get_headersList_in_alarm_dataGrid()
        if headerItem in headersList:
            self.report_log("keyword_verify_headerItem_exists_in_alarm_dataGrid passed.."," headerItem  ={} List_of_headerItems = {}".format(headerItem,headersList))
            return True
        self.report_fail("keyword_verify_headerItem_exists_in_alarm_dataGrid failed.."," headerItem  ={} List_of_headerItems = {}".format(headerItem,headersList))
        return False
    
    def keyword_generate_alarm_and_verify_search_functionality(self,controllerDetails):
        """
        Generates Alarms and verification is carried out for search functionality.
        :param controllerDetails: Details of the controller used for validation.
        
        """
        alarms = self.get_alarms_list(controllerDetails)
        for anAlarm in alarms:
            self.keyword_generate_alarm(anAlarm)
            self.report_log("Logging (GENERATED THE ALARM)")
            parsed_dataGrid = self.prj_window_parse_the_datagrid()
            alarmInfo =  self.get_alarm_details_from_inputDatabase(anAlarm,controllerDetails["Alarm_Parameter_Collection"])
            self.online_service_window_click_alarms_tab()
            self.online_service_window_check_alarms_tab_is_enabled()
            self.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE","LOADING_ALARMS_TAB")
            self.prj_window_click_on_search_textbox_editor()
            self.prj_window_enter_string_in_search_box(anAlarm)
            self.prj_window_click_on_search_button()
            self.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE","LOADING_PARAMETERS_AFTER_CLICKING_SEARCH_BUTTON")
            alarm_tab_collection = self.online_window_parse_the_alarm_datagrid()
            self.keyword_verify_searched_alarm_details_in_alarm_tab_collection(alarmInfo,alarm_tab_collection,parsed_dataGrid)
            self.report_log("Logging (Alarm presence in Alarms Tab DataGrid is verified)")
            self.online_service_window_click_parameters_tab()
            self.project_window_tree_click_item("All")
            self.keyword_put_to_sleep_with_respect_to_expected_performance("OFFLINE","LOADING_PARAMETERS_AFTER_CLICKING_ALL_TREE_ITEM")
      
    def keyword_verify_searched_alarm_details_in_alarm_tab_collection(self,alarmInfo,alarm_tab_collection,parsed_dataGrid):
        """
        Verify alarm details in alarm tab collection after searching.
        :param alarmInfo: Alarm information.
        :param alarm_tab_collection: Alarm tab collection.
        :param parsed_dataGrid: DataGrid collection.
        :return: True if succeeds, False otherwise.
        
        """
        for aListItem in alarm_tab_collection:
            for _, parametersList in aListItem.items():
                for aParameterInfo in parametersList:
                    if alarmInfo["Label"] == aParameterInfo["MenuCode"]:
                        continue
                    else:
                        self.report_fail("keyword_verify_searched_alarm_details_in_alarm_tab_collection  failed..",
                             " alarm info ={}".format(alarmInfo))  
                        return False
        self.report_log("keyword_verify_searched_alarm_details_in_alarm_tab_collection  passed..",
                             " alarm info ={}".format(alarmInfo))  
        return True
    
    def keyword_generate_alarm_and_verify_interlocks_and_readouts(self,controllerDetails):
        """
        Generate alarms and verify interlocks and readouts.
        :param controllerDetails: Details of the controller used for validation.
        
        """
        alarms = self.get_alarms_list(controllerDetails)
        for anAlarm in alarms:
            self.keyword_generate_alarm(anAlarm)
            self.report_log("Logging (GENERATED THE ALARM)")
            readOutsList = self.get_readOutsList()
            readOutsTestData = self.get_readouts_testData_from_readOutList_and_collection(anAlarm,readOutsList,controllerDetails["Alarm_Parameter_Collection"])
            self.keyword_verify_readouts_of_alarm_is_displayed(readOutsTestData)
            self.online_service_window_click_alarms_tab()
            self.online_service_window_check_alarms_tab_is_enabled()
            self.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE","LOADING_ALARMS_TAB")
            self.online_window_click_onAlarm_in_alarm_dataGrid(anAlarm)
            Interlock_testData = self.get_interLock_testData_from_collection(anAlarm,controllerDetails["Alarm_Parameter_Collection"])
            self.keyword_verify_interlocks_in_Alarm_tab(Interlock_testData)
            self.online_service_window_click_parameters_tab()
            self.project_window_tree_click_item("All")
            self.keyword_put_to_sleep_with_respect_to_expected_performance("OFFLINE","LOADING_PARAMETERS_AFTER_CLICKING_ALL_TREE_ITEM")
    
    def keyword_verify_interlocks_in_Alarm_tab(self,Interlock_testData):
        """
        Verify interlock list displayed in Alarms Tab
        :param Interlock_testData: Interlock list.
        
        """
        ui_interLockList = self.online_window_get_interLockList_from_alarmTab()
        if common.compare_list(ui_interLockList,Interlock_testData):
            self.report_log("keyword_verify_interlocks_in_Alarm_tab  passed..",
                             " ui info ={}, testData = {}".format(ui_interLockList,Interlock_testData))  
        else:
            self.report_fail("keyword_verify_interlocks_in_Alarm_tab  failed..",
                             " ui info ={}, testData = {}".format(ui_interLockList,Interlock_testData))
            
        
    
                    
                    
    
    
    def keyword_verify_readouts_of_alarm_is_displayed(self,readOutsTestData):
        """
        Verify readouts of alarms is displayed.
        :param ui_readOutsList: UI readouts.
        :param readOutsTestData: Test Data readouts.
        
        """
        ui_readOutsList = self.online_window_get_readOutsList_from_dataGrid()
        for aReadOutParameter in readOutsTestData:
            if aReadOutParameter in ui_readOutsList:
                continue 
            else:
                self.report_fail("keyword_verify_readouts_of_alarm_is_displayed  failed..",
                             " ui info ={}, testData = {}".format(ui_readOutsList,readOutsTestData))
        self.report_log("keyword_verify_readouts_of_alarm_is_displayed  passed..",
                             " ui info ={}, testData = {}".format(ui_readOutsList,readOutsTestData))   
             
    def keyword_get_readOutsList_from_dataBase(self):
        """
        Gets ReadOuts List from database.
        :return: Returns readOut List.
        
        """
        return {"ReadOut_List" : self.get_readOutsList()}

    def keyword_verify_property_existence_in_inputDatabase(self,propertyName,parameterCollection):
        """
        Verify property existence in input Database.
        :param propertyName: Input property name.
        :param parameterCollection: Input parameter collection.
        
        """
        for aListItem in parameterCollection:
            for _, parametersList in aListItem.items():
                for aParameterInfo in parametersList:
                    found = False
                    for key,_ in aParameterInfo.items():
                        if key == propertyName:
                            found = True
                            break
                    if found == False:
                        self.report_fail("keyword_verify_property_existence_in_inputDatabase is failed.Property name selected = {}, parameterInfo={}".format(propertyName,aParameterInfo))
                        return False
        self.report_log("keyword_verify_property_existence_in_inputDatabase is passed. Property name selected = {}".format(propertyName))
       
    def keyword_verify_all_values_for_inputProperty_in_collection(self,propertyName,collection,controllerFamily):
        """
        Verifies all itemTypes are available.
        :param propertyName: Property Name.
        :param collection: Parameter collection.
        :param controllerFamily: Controller Family selected.
     
        """
        itemTypes = KoolProg_verify.input_database_properties[controllerFamily][propertyName]
        for anItemType in itemTypes:
            filtered_collection = self.get_parameter_collection_for_filter(propertyName,anItemType,collection)
            if len(filtered_collection) > 0 :
                self.report_pass("keyword_verify_all_values_for_inputProperty_in_collection is passed,propertyName ={} value={}".format(propertyName,anItemType))
            else:
                self.report_fail("keyword_verify_all_values_for_inputProperty_in_collection is failed,propertyName ={} value={}".format(propertyName,anItemType))    
      
    def keyword_verify_readOnly_parameters_are_not_writeable(self,inputcollection,dataGridCollection):
        """
        Verifies if readOnly parameters are not writeable.
        :param inputcollection: Input collection.
        :param dataGridCollection: DataGrid collection.
      
        """
        groupsAvailable = []
        mappingList = {}
        for anListItem in inputcollection:
            for groupName, parametersList in anListItem.items():
                for aParameterInfo in parametersList:
                    groupNameList = aParameterInfo["GroupName"].split(";")
                    index_group = groupNameList.index(groupName)
                    subGroupList = aParameterInfo["SubGroupName"].split(";")
                    groupName_text = self.get_group_name_from_multi_level_group(subGroupList[index_group])
                    aDict = {groupName:groupName_text}
                    mappingList.update(aDict)
                    groupsAvailable.append(groupName_text)
                    break
                break
            
            
            
        for aDataGridListItem in dataGridCollection:
            for dataGrid_groupName, dataGridParametersList in aDataGridListItem.items():
                flag = False
                if dataGrid_groupName in groupsAvailable:
                    for anListItem in inputcollection:
                        for groupName, parametersList in anListItem.items():
                            if dataGrid_groupName == mappingList[groupName]:
                                for aParameterInfo in parametersList:
                                    for dataGridParameterInfo in dataGridParametersList:
                                        if aParameterInfo["Text"] == dataGridParameterInfo["ParameterName"]:
                                            if dataGridParameterInfo["ReadOnly"] == True:
                                                self.report_pass("keyword_verify_readOnly_parameters_are_not_writeable is passed, parameterName ={} ReadOnly ={}".format(dataGridParameterInfo["ParameterName"],dataGridParameterInfo["ReadOnly"]))
                                            else:
                                                self.report_fail("keyword_verify_readOnly_parameters_are_not_writeable is failed, parameterName ={} ReadOnly ={}".format(dataGridParameterInfo["ParameterName"],dataGridParameterInfo["ReadOnly"]))
                                            break
                            else:
                                continue
                            flag = True
                            if flag == True:
                                break
                        if flag == True:
                            break
                            
                            
    def keyword_select_a_group_to_disable(self,parameter_collection,parsed_dataGrid,no_of_groups):
        """
        Selects a group to disable.
        :param parameter_collection: Input parameter collection.
        :param parsed_dataGrid: Datagrid data
        :param no_of_groups: No of groups to disable.
        
        """
        disabling_group_info = self.select_a_group_to_disable(parameter_collection,no_of_groups,parsed_dataGrid)
        return {"Disabling_group_info" : disabling_group_info}  
    
    def keyword_destroy_object_of_common_library(self):
        """
        Destroys the objects of common library.
        
        """
        self.destroy_object()
            
    
    def keyword_set_fav_for_parameters_under_the_group(self,group_disabling_info,parsed_dataGrid):
        """
        Set favourite for the parameters of the group.
        :param group_disabling_info: Group Disabling Info.
        :param parsed_dataGrid: DataGrid collection.
        
        """  
        
        new_collection = []
        for anInfo in group_disabling_info:
            for aListItem in parsed_dataGrid:
                for aGroupName, parametersList in aListItem.items():
                    parameter_info = []
                    if anInfo["DataGrid_groupName"] == aGroupName:
                        for aParameterInfo in parametersList:
                            if self.check_if_parameter_is_present_in_dataGrid(aGroupName,aParameterInfo["ParameterName"],parsed_dataGrid):
                                self.prj_window_set_favourite_in_datagrid(aGroupName,aParameterInfo["ParameterName"],True)
                                parameter_info.append(aParameterInfo)
                    if len(parameter_info) > 0 :
                        aDict = {aGroupName : parameter_info}
                        new_collection.append(aDict)
                        
        return {"Fav_collection" : new_collection}
    
    def keyword_verify_collection_exists_in_the_provided_collection(self,collection1, collection2,existence = True):
        """
        Verify collection exists in the provided collection.
        :param collection1: Parameter collection.
        :param collection2: Parameter collection.
        :param existence: Existence of parameters in another collection.
        
        """
        if existence == False:
            if self.popup_messagebox_window_return_existence_of_window("PROJECT_WINDOW"):
                self.popup_messagebox_window_is_visible("PROJECT_WINDOW", True)
                self.popup_messagebox_window_click_ok_button("PROJECT_WINDOW")
                return True
            else:
                collection2 = self.prj_window_parse_the_datagrid()
        for aKeyListItem in collection1:
            group_found = False
            for aKeyGroupName, aKeyParametersList in aKeyListItem.items():
                for aListItem in collection2:
                    for aGroupName, aParametersList in aListItem.items():
                        if aKeyGroupName == aGroupName:
                            group_found = True
                            for aKeyParameterInfo in aKeyParametersList:
                                found = False
                                for aParameterInfo in aParametersList:
                                    if aKeyParameterInfo["ParameterName"] == aParameterInfo["ParameterName"] and existence == True:
                                        self.report_log("keyword_verify_collection_exists_in_the_provided_collection passed.."," parameterName  ={} GroupName = {}".format(aKeyParameterInfo["ParameterName"],aKeyGroupName))
                                        found = True
                                        break
                                    if aKeyParameterInfo["ParameterName"] == aParameterInfo["ParameterName"] and existence == False:
                                        self.report_fail("keyword_verify_collection_exists_in_the_provided_collection(FALSE EXISTENCE) failed.."," parameterName  ={} GroupName = {}".format(aKeyParameterInfo["ParameterName"],aKeyGroupName))
                                        found = True
                                        break
                                if (found == False) and (existence == True):
                                    self.report_fail("keyword_verify_collection_exists_in_the_provided_collection failed.."," parameterName  ={} GroupName = {}".format(aKeyParameterInfo["ParameterName"],aKeyGroupName))
                                if (found == False) and (existence == False):
                                    self.report_log("keyword_verify_collection_exists_in_the_provided_collection(FALSE EXISTENCE) passed.."," parameterName  ={} GroupName = {}".format(aKeyParameterInfo["ParameterName"],aKeyGroupName))
            if (group_found == False) and (existence == True):
                self.report_fail("keyword_verify_collection_exists_in_the_provided_collection failed.."," GroupName = {}".format(aKeyGroupName))
            if (group_found == False) and (existence == False):
                self.report_log("keyword_verify_collection_exists_in_the_provided_collection(FALSE EXISTENCE) passed.."," GroupName = {}".format(aKeyGroupName))
                      
    def keyword_set_the_values_to_disable_groups(self,disablingInfo,parameter_collection):
        """
        Set the values to disbale the groups.
        :param disablingInfo: Disabling information to hide the groups.
        :param parameter_collection: Parameter collection.
        
        """
        for anInfo in disablingInfo:
            for idx, anIndex in enumerate(anInfo['Index_list']):
                anIndex = int(anIndex)
                collection_to_manipulate = self.get_parameter_collection_for_filter("Idx", anIndex , parameter_collection)
                for aListItem in collection_to_manipulate:
                    for key_groupName, aParametersList in aListItem.items():
                        for aParameterInfo in aParametersList:
                            parsed_dataGrid = self.prj_window_parse_the_datagrid()
                            groupNameList = aParameterInfo["GroupName"].split(";")
                            index_group = groupNameList.index(key_groupName)
                            subGroupList = aParameterInfo["SubGroupName"].split(";")
                            groupName_text = self.get_group_name_from_multi_level_group(subGroupList[index_group])
                            if not self.check_if_group_is_present_in_dataGrid(anInfo["DataGrid_groupName"],parsed_dataGrid):
                                    return True
                            if self.check_if_parameter_is_present_in_dataGrid(groupName_text,aParameterInfo["Text"],parsed_dataGrid):
                                if aParameterInfo["DataType"] == AKCC55_Config.mapping_int_datatype:
                                    value_to_set = int(anInfo["Value_List"][idx])
                                if aParameterInfo["DataType"] == AKCC55_Config.mapping_float_datatype:
                                    value_to_set = int(anInfo["Value_List"][idx])
                                if aParameterInfo["DataType"] == AKCC55_Config.mapping_enum_datatype:
                                    index_input = aParameterInfo["EnumValue"].index(int(anInfo["Value_List"][idx]))
                                    value_to_set = aParameterInfo["EnumText"][index_input]    
                                self.prj_window_set_value_in_datagrid(groupName_text,aParameterInfo["Text"],str(value_to_set))
                                break
                            else:
                                break
                            break
                    break  
    
    def keywords_get_quick_settings_collection_with_respect_to_dataGrid(self, quickSetting_collection, input_collection):
        """
        Get all the quicksettings collection with respect to the datagrid.
        :param quickSetting_collection: Quick settings collection from CDF.
        :return: Quick setting datagrid collection.
        """
        parameter_not_found = []
        param_already_found = []
        new_collection = []
        quick_setting_param = []
        for ListItem in quickSetting_collection:
            for _,parameterInfo in ListItem.items():
                for aParameterInfo in parameterInfo:
                    quick_setting_param.append(aParameterInfo["Text"])
        for testDataListItem in input_collection:
            for dataGridGroupName, testDataParametersList in testDataListItem.items():
                updated_parameters = []
                for index,testDataParameterInfo in enumerate(testDataParametersList):
                    if testDataParameterInfo["Text"] in quick_setting_param and testDataParameterInfo["Text"] not in param_already_found:
                        param_already_found.append(testDataParameterInfo["Text"])
                        updated_parameters.append(testDataParameterInfo)
                if len(updated_parameters) > 0:
                    aDict = {dataGridGroupName:updated_parameters}
                    new_collection.append(aDict)

        return {"quick_setting_collection":new_collection}
    
    def keywords_get_random_values_withIn_provided_range(self, aParameterInfo, updated_input_collection):
        """
        Get the random values within the provided range.
        :param aParameterInfo: Parameter information from CDF.
        :updated_input_collection: Updated input collection.
        :return: Value to set.
        """
        if aParameterInfo["DataType"] == AKCC55_Config.mapping_int_datatype:
            if aParameterInfo["DynMinIdx"] == -1 and aParameterInfo["DynMaxIdx"] == -1:
                value_to_set = common.get_random_int_value_for_a_range_of_values(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]])
            
            else:
                if aParameterInfo["DynMinIdx"] != -1:
                    dynamic_min_max_info = self.get_parameter_collection_for_filter("Idx",aParameterInfo["DynMinIdx"],updated_input_collection)
                    for key,value in dynamic_min_max_info[0].items():
                        aParameterInfo["Min"] = int(self.get_propertyValue_of_parameter_in_cdf("Value",key,value[0]["Text"],updated_input_collection))
                        break
                    
                if aParameterInfo["DynMaxIdx"] != -1:
                    dynamic_min_max_info = self.get_parameter_collection_for_filter("Idx",aParameterInfo["DynMaxIdx"],updated_input_collection)
                    for key,value in dynamic_min_max_info[0].items():
                        aParameterInfo["Max"] = int(self.get_propertyValue_of_parameter_in_cdf("Value",key,value[0]["Text"],updated_input_collection))
                        break
                value_to_set = common.get_random_int_value_for_a_range_of_values(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]])
            aParameterInfo["Value"] = int(value_to_set)
        if aParameterInfo["DataType"] == AKCC55_Config.mapping_float_datatype:
            if aParameterInfo["DynMinIdx"] == -1 and aParameterInfo["DynMaxIdx"] == -1:
                value_to_set = common.get_random_float_value_for_provided_range(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]],1)
            
            else:
                if aParameterInfo["DynMinIdx"] != -1:
                    dynamic_min_max_info = self.get_parameter_collection_for_filter("Idx",aParameterInfo["DynMinIdx"],updated_input_collection)
                    for key,value in dynamic_min_max_info[0].items():
                        aParameterInfo["Min"] = float(self.get_propertyValue_of_parameter_in_cdf("Value",key,value[0]["Text"],updated_input_collection))
                        break
                    
                if aParameterInfo["DynMaxIdx"] != -1:
                    dynamic_min_max_info = self.get_parameter_collection_for_filter("Idx",aParameterInfo["DynMaxIdx"],updated_input_collection)
                    for key,value in dynamic_min_max_info[0].items():
                        aParameterInfo["Max"] = float(self.get_propertyValue_of_parameter_in_cdf("Value",key,value[0]["Text"],updated_input_collection))
                        break
                value_to_set = common.get_random_float_value_for_provided_range(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]],1)
                
            aParameterInfo["Value"] = (value_to_set)    
        if aParameterInfo["DataType"] == AKCC55_Config.mapping_enum_datatype:
            value_to_set_enumValue = common.select_randomly_from_a_list(aParameterInfo["EnumValue"],[aParameterInfo["Value"]])
            index_input = aParameterInfo["EnumValue"].index(value_to_set_enumValue)
            aParameterInfo["Value"] = int(value_to_set_enumValue)
            value_to_set = aParameterInfo["EnumText"][index_input]    
        return value_to_set
        
    def keywords_set_random_values_in_quick_settings_collection(self,quickSetting_collection):
        """
        Set random values in quick settings collection.
        :param quickSetting_collection: Quick Setting collection.
        :return: Returns Updated input collection, updated quick settings collection and changed quick setting collection.
        
        """
        arg_collection = []
        new_collection = []
        parameter_not_found = []
        updated_quickSetting_collection,updated_input_collection = self.parse_quicksetting_parameters(None,None)
        for i in quickSetting_collection:
            for groupName, parameterInfo in i.items():
                updated_parameters = []
                for aParameterInfo in parameterInfo:
                    ui_collection = self.quick_settings_window_get_parameter_details()
                    if self.check_if_parameter_is_present_in_dataGrid_quick_setting_collection(aParameterInfo["Text"],ui_collection):
                        value_to_set =  self.keywords_get_random_values_withIn_provided_range(aParameterInfo, updated_input_collection)
                        self.quick_settings_window_set_value_in_quick_wizard_listView(aParameterInfo["Text"],value_to_set)
                        arg_collection.append({groupName:[aParameterInfo]})
                        updated_quickSetting_collection,updated_input_collection = self.parse_quicksetting_parameters(None,arg_collection)
                        updated_parameters.append(aParameterInfo)
                        
                    else:
                        parameter_not_found.append({groupName:aParameterInfo})
                        continue
                if len(updated_parameters) > 0:
                    aDict = {groupName:updated_parameters}
                    new_collection.append(aDict)
        
        
        return {"Updated_input_collection" : updated_input_collection, "Updated_quickSetting_collection": updated_quickSetting_collection,"Changed_quickSetting_collection":new_collection}
    
    
    def get_parameters_present_in_more_than_one_group_from_input_database(self,parameter_collection):
        """
        Returns the parameters that are present in more than one group.
        :param parameter_collection: Parameter collection.
        :return: The parameters that are present in more than one group.
        
        
        """
        new_collection = []
        for item in parameter_collection:
            for groupName, parametersList in item.items():
                aDict = {}
                resultant_parametersList = []
                for aParameterInfo in parametersList:
                    groupNamesList = aParameterInfo["GroupName"].split(";")
                    if len(groupNamesList) > 2:
                        resultant_parametersList.append(aParameterInfo)
                if len(resultant_parametersList) > 0:
                    aDict[groupName] = resultant_parametersList
                    new_collection.append(aDict)
        
        return {"Duplicate_Parameters_Collection":new_collection}     
    
    

    
    
    
    def keyword_set_random_values_in_dataGrid_for_the_input_database_collection_and_verify_popup_after_clicking_on_input_button_and_set_MainSwitch_ToStart_wrt_input(self,collection,click_button,input_button,groupNameToSet,parameterNameToSet,enumValueToSet):
        """
        Set the random values for the input dataBase collection in dataGrid and verifies the popup.
        :param collection: Input collection.
        :param click_button: Input button to click.
        :param groupNameToSet: Input GroupName.
        :param parameterNameToSet: Input parameter name.
        :param input_button: Input button to click after changing values in dataGrid.
        :param enumValueToSet: Input enum value to set in dataGrid.
        :return: Updated parameter collection.
        
        """
        new_collection = []
        parameter_not_found = []
        for aListItem in collection:
            for groupName, parameterInfo in aListItem.items():
                updated_parameters = []
                for aParameterInfo in parameterInfo:
                    parsed_dataGrid = self.prj_window_parse_the_datagrid()
                    groupNameList = aParameterInfo["GroupName"].split(";")
                    index_group = groupNameList.index(groupName)
                    subGroupList = aParameterInfo["SubGroupName"].split(";")
                    groupName_text = self.get_group_name_from_multi_level_group(subGroupList[index_group])
                    if self.check_if_parameter_is_present_in_dataGrid(groupName_text,aParameterInfo["Text"],parsed_dataGrid):
                        if aParameterInfo["DataType"] == AKCC55_Config.mapping_int_datatype:
                            if aParameterInfo["DynMinIdx"] == -1 and aParameterInfo["DynMaxIdx"] == -1:
                                value_to_set = common.get_random_int_value_for_a_range_of_values(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]])
                            
                            else:
                                if aParameterInfo["DynMinIdx"] != -1:
                                    IPgroupNameList,IPparameterName = self.getGroupName_and_parameterName_for_provided_index_from_collection(aParameterInfo["DynMinIdx"])
                                    
                                    for aGroupNameInput in IPgroupNameList:
                                        groupName_formatted = self.get_group_name_from_multi_level_group(aGroupNameInput)
                                        if self.check_if_parameter_is_present_in_dataGrid(groupName_formatted,IPparameterName,parsed_dataGrid):
                                            IPgroupName = groupName_formatted
                                            break
                                    aParameterInfo["Min"] = int(self.get_propertyValue_of_parameter_in_dataGrid("Value",IPgroupName,IPparameterName,parsed_dataGrid))
                                if aParameterInfo["DynMaxIdx"] != -1:
                                    IPgroupNameList,IPparameterName = self.getGroupName_and_parameterName_for_provided_index_from_collection(aParameterInfo["DynMaxIdx"])
                                    for aGroupNameInput in IPgroupNameList:
                                        groupName_formatted = self.get_group_name_from_multi_level_group(aGroupNameInput)
                                        if self.check_if_parameter_is_present_in_dataGrid(groupName_formatted,IPparameterName,parsed_dataGrid):
                                            IPgroupName = groupName_formatted
                                            break
                                    aParameterInfo["Max"] = int(self.get_propertyValue_of_parameter_in_dataGrid("Value",IPgroupName,IPparameterName,parsed_dataGrid))
                                value_to_set = common.get_random_int_value_for_a_range_of_values(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]])
                            aParameterInfo["Value"] = int(value_to_set)
                        if aParameterInfo["DataType"] == AKCC55_Config.mapping_float_datatype:
                            if aParameterInfo["DynMinIdx"] == -1 and aParameterInfo["DynMaxIdx"] == -1:
                                value_to_set = common.get_random_float_value_for_provided_range(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]],1)
                            
                            else:
                                if aParameterInfo["DynMinIdx"] != -1:
                                    IPgroupNameList,IPparameterName = self.getGroupName_and_parameterName_for_provided_index_from_collection(aParameterInfo["DynMinIdx"])
                                    for aGroupNameInput in IPgroupNameList:
                                        groupName_formatted = self.get_group_name_from_multi_level_group(aGroupNameInput)
                                        if self.check_if_parameter_is_present_in_dataGrid(groupName_formatted,IPparameterName,parsed_dataGrid):
                                            IPgroupName = groupName_formatted
                                            break
                                    aParameterInfo["Min"] = float(self.get_propertyValue_of_parameter_in_dataGrid("Value",IPgroupName,IPparameterName,parsed_dataGrid))
                                if aParameterInfo["DynMaxIdx"] != -1:
                                    IPgroupNameList,IPparameterName = self.getGroupName_and_parameterName_for_provided_index_from_collection(aParameterInfo["DynMaxIdx"])
                                    for aGroupNameInput in IPgroupNameList:
                                        groupName_formatted = self.get_group_name_from_multi_level_group(aGroupNameInput)
                                        if self.check_if_parameter_is_present_in_dataGrid(groupName_formatted,IPparameterName,parsed_dataGrid):
                                            IPgroupName = groupName_formatted
                                            break
                                    aParameterInfo["Max"] = float(self.get_propertyValue_of_parameter_in_dataGrid("Value",IPgroupName,IPparameterName,parsed_dataGrid))
                                value_to_set = common.get_random_float_value_for_provided_range(aParameterInfo["Min"],aParameterInfo["Max"],[aParameterInfo["Default"]],1)
                                
                            aParameterInfo["Value"] = (value_to_set)    
                        if aParameterInfo["DataType"] == AKCC55_Config.mapping_enum_datatype:
                            value_to_set_enumValue = common.select_randomly_from_a_list(aParameterInfo["EnumValue"],[aParameterInfo["Value"]])
                            index_input = aParameterInfo["EnumValue"].index(value_to_set_enumValue)
                            aParameterInfo["Value"] = int(value_to_set_enumValue)
                            value_to_set = aParameterInfo["EnumText"][index_input]
                        if groupNameToSet != None: 
                            self.prj_window_set_value_in_datagrid(groupNameToSet,parameterNameToSet,enumValueToSet)   
                        self.prj_window_set_value_in_datagrid(groupName_text,aParameterInfo["Text"],value_to_set)
                        updated_parameters.append(aParameterInfo)
                        if input_button == "SAVEAS_BUTTON":
                            self.prj_window_click_on_saveas_button()
                        self.keyword_sleep(3)
                        self.popup_messagebox_window_is_visible("PROJECT_WINDOW", True)
                        self.popup_messagebox_window_check_message_text_after_stripping_newlines("This parameter is protected.Do you want to set Main switch in “Stop” position in order to change it?","PROJECT_WINDOW")
                        self.keyword_check_popup_window_yes_no_and_x_button_enable("PROJECT_WINDOW")
                        self.keyword_check_popup_window_yes_no_and_x_button_text("PROJECT_WINDOW")
                        self.popup_messagebox_window_check_KoolProg_label_text("KoolProg","PROJECT_WINDOW")
                        if click_button == "X":
                            self.popup_messagebox_window_click_Close_button("PROJECT_WINDOW")
                        if click_button == "No":
                            self.popup_messagebox_window_click_no_button("PROJECT_WINDOW")
                        if click_button == "Yes":
                            self.popup_messagebox_window_click_yes_button("PROJECT_WINDOW")
                        if index_input == "SAVEAS_BUTTON":
                            self.Window_Dialog_is_enabled("Saveas")
                            self.Window_Dialog_click_cancel_button("SAVEAS")
                        
                    else:
                        parameter_not_found.append({groupName:aParameterInfo})
                        continue
                if len(updated_parameters) > 0:
                    aDict = {groupName:updated_parameters}
                    new_collection.append(aDict)

        updated_collection = self.applyVisibility_to_collection(new_collection)
        return {"Updated_input_collection" : updated_collection, "Changed_values_collection": new_collection}  
    
    def keyword_verify_changed_values_in_quickSetting_with_dataGrid(self,changed_values_collection, parsed_dataGrid, values_check = True):
        """
        Verify the changed values of the quick settings collection is present/not present in the parsed datagrid.
        :param changed_values_collection: Changed values collection.
        :param parsed_dataGrid: Parsed datagrid.
        :return: True if succeeds.
        """
        parameter_not_found = []
        for ListItem in changed_values_collection:
            for _,parameterInfo in ListItem.items():
                for aParameterInfo in parameterInfo:
                    parameter_found = False
                    for testDataListItem in parsed_dataGrid:
                        for _, testDataParametersList in testDataListItem.items():
                            for index,testDataParameterInfo in enumerate(testDataParametersList):
                                if testDataParameterInfo["ParameterName"] == aParameterInfo["Text"]:
                                    parameter_found = True
                                    if aParameterInfo["DataType"] == "Enum":
                                        try:
                                            index_input = aParameterInfo["EnumValue"].index(aParameterInfo["Value"])
                                            value = aParameterInfo["EnumText"][index_input]  
                                        except:
                                            print("hi")
                                    if aParameterInfo["DataType"] != "Enum":
                                        value  = aParameterInfo["Value"]
                                    if values_check == True:
                                        if str(testDataParameterInfo["Value"]) == str(value):
                                            self.report_pass("keyword_verify_changed_values_in_quickSetting_with_dataGrid is passed, parameterName ={} ,testData = {} uiData = {}".format(testDataParameterInfo["ParameterName"],testDataParameterInfo["Value"],value))
                                        else:
                                            self.report_fail("keyword_verify_changed_values_in_quickSetting_with_dataGrid is failed, parameterName ={} , testData = {} uiData = {}".format(testDataParameterInfo["ParameterName"],testDataParameterInfo["Value"],value))
                                    else:
                                        if str(testDataParameterInfo["Value"]) != str(aParameterInfo["Value"]):
                                            self.report_pass("keyword_verify_changed_values_in_quickSetting_with_dataGrid is passed, parameterName ={} ,  testData = {} uiData = {}".format(testDataParameterInfo["ParameterName"],testDataParameterInfo["Value"],value))
                                        else:
                                            self.report_fail("keyword_verify_changed_values_in_quickSetting_with_dataGrid is failed, parameterName ={} , testData = {} uiData = {}".format(testDataParameterInfo["ParameterName"],testDataParameterInfo["Value"],value))
                                if parameter_found == True:
                                    break
                            
                    if parameter_found == False:
                        parameter_not_found.append(aParameterInfo["Text"])
        if len(parameter_not_found) > 0:
            self.report_fail("keyword_verify_quickSetting_collection_in_dataGrid is failed, parameter_not_found_list = {}".format(parameter_not_found))
       
    def keywords_verify_param_help_in_quick_wizard_window(self,quick_setting,quick_settings_ui):
        """
        Verify the Parameter and help in quick wizard window.
        :param quick_setting: Quick setting collection from CDF.
        :param quick_settings_ui: Quick settings UI collection.
        :return: None
        """
        found = False
        for anItem in quick_setting:
            for _, parametersList in anItem.items():
                for aParameterInfo in parametersList:
                    found = False
                    for index,quick_settings_ui_parameter_item in enumerate(quick_settings_ui):
                        for key_parameterName, _ in quick_settings_ui_parameter_item.items():
                            if aParameterInfo["Text"] == key_parameterName:
                                found = True
                                menucode_UI_with_colon = quick_settings_ui[index][key_parameterName]["Menucode"]
                                param_name_UI = quick_settings_ui[index][key_parameterName]["Parameter"]
                                help_description_UI = quick_settings_ui[index][key_parameterName]["Help"]
                                menucode_UI = menucode_UI_with_colon.split()[0]
                                if menucode_UI == aParameterInfo["Label"] and aParameterInfo["Help"]==help_description_UI and aParameterInfo["Text"] == param_name_UI:
                                    self.report_log("keywords_verify_param_help_in_quick_wizard_window with parameter ={} is passed...",aParameterInfo["Text"])
                                else:
                                    self.report_fail("keywords_verify_param_help_in_quick_wizard_window is failed with  menucode_cdf_ui ={},{} and parameter_cdf_ui ={},{} and help_cdf_ui={},{}".format(aParameterInfo["Label"],menucode_UI,aParameterInfo["Text"],param_name_UI,aParameterInfo["Help"],help_description_UI ))
