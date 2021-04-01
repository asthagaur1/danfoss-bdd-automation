global keywords

# 20 , 30 , 115 , 120 , 125 , 133 138  145 185 240  250 #
CONTROLLER_TO_BE_TEST_INDEX = 30

def Close_KoolProg(context):
    keywords.report_log("Closing KoolProg application...")

@Step("KoolProg Had Opened")
def step(context):
    keywords.report_log("Opening koolprog application")
    context.userData = dict()
    keywords.keyword_destroy_object_of_common_library()
    
@Step("Get The KoolProg Version")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_get_koolprog_version())

@Step("Enable Random Serial Port For AKCC")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.enable_random_serial_port(None,"AK-CC55","Yes"))                                     
        
@Step("KoolProg Main Window Is Visible")
def step(context):
    keywords.check_main_window_visible()

@Step("KoolProg should contain Main Window Elements")
def step(context):
    keywords.check_koolprog_version()

@Step("KoolProg Opened With New Project Window")
def step(context):
    keywords.keyword_check_and_open_new_project_window()

@Step("KoolProg New Project Window Is Visible")
def step(context):
    keywords.new_project_window_is_visible()

@Step("Get Controller Details From Variable")
def step(context):
    
    context.userData["SelectedIndex"] = keywords.keyword_get_user_data_as_variable()
    if context.userData["SelectedIndex"] is None:
        context.userData["SelectedIndex"] = keywords.keyword_get_an_index_from_inputSheet_YES()
    keywords.report_log("context.userData={}".format(context.userData["SelectedIndex"]))
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.get_controller_details_from_index(context.userData["SelectedIndex"]))
    
@Step("Verify Controller Details From User Data")
def step(context):
    
    for i in context.userData["SelectedIndex"]:
        details = keywords.get_controller_details_from_index(i)
        variant = details['controllerVariant']
        family = keywords.get_controllerFamily_from_controllerVariant(variant)
        keywords.select_controller_in_new_project_window(family, variant)
        keywords.Keyword_check_product_image_description_wirediagram_in_controller_selection_window(variant, family)
        keywords.new_prj_window_click_next_button()
        keywords.keyword_set_product_details(details)
        app = details['controllerApplication']
        keywords.keyword_check_product_image_description_wirediagram_in_app_selection_window(variant,app)
        keywords.new_prj_window_click_back_button()
    keywords.new_prj_window_click_close_button()

@Step("KoolProg New Project Window Is Open")
def step(context):
    keywords.nav_goto_newproject_controller_selection_window_from_home_screen()

@Step("Select Controller Variant In New Project Window And Verify Next Button Is Visible, Controller Name Label, Controller Image, Circuit And Description In New Project Window")
def step(context):
    keywords.keyword_validate_newproject_window_respective_controllers()

@Step("Test Navigation method")
def step(context):
    keywords.keyword_test_navigation()

@Step("Go To Controller Details Selection Window")
def step(context):
    keywords.new_prj_window_click_next_button()

@Step("Select A Random Controller")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData, keywords.keyword_select_a_random_controller())

@Step("Collapse Selected Controller Family")
def step(context):
    keywords.select_controller_family_in_new_project_window(context.userData["controllerFamily"], context.userData["controllerVariant"])
    
@Step("Expand Selected Controller Family")
def step(context):
    keywords.select_controller_family_in_new_project_window(context.userData["controllerFamily"], context.userData["controllerVariant"])
    
@Step("Verify Project Name Is Empty")
def step(context):
    keywords.new_prj_window_Chk_project_name_is_empty()

@Step("Click Finish Button In New Project Window")
def step(context):
    keywords.new_prj_window_click_finish_button()

@Step("Verify Popup Message Should Come As '|any|' In Project Window")
def step(context,message_string):
    keywords.keyword_sleep(1)
    keywords.popup_messagebox_window_is_visible("PROJECT_WINDOW", True)
    keywords.keyword_verify_popup_msg_in_window(message_string, "PROJECT_WINDOW")
    
@Step("Verify Popup Window Is Visible In '|any|'")
def step(context,window):
    keywords.keyword_sleep(1)
    keywords.popup_messagebox_window_is_visible(window, True)
    
@Step("Verify OK and X button In Popup Window Is Visible And Enabled In '|any|'")
def step(context,window):
    keywords.keyword_check_popup_window_x_and_ok_button_visible_and_enabled(window)

@Step("Verify Popup Message Should Come As '|any|' In '|any|'")
def step(context,message_string,window):
    keywords.keyword_verify_popup_msg_in_window(message_string, window)

@Step("KoolProg should contain New Project Window Elements")
def step(context):
        keywords.keyword_check_new_project_window_elements()

@Step("Verify, BACK, FINISH, CANCEL and Next button will enable based on the selected controller")
def step(context):
        keywords.keyword_Verify_BACK_FINISH_CANCEL_and_Next_button_will_enable_based_on_the_selected_controller()

@Step("Verify Project Name should Accept Only |integer| Characters")
def step(context, length):
    keywords.keyword_project_name_length_validation(length)

@Step("Set Project Name With '|integer|' Characters Length")
def step(context,len):
    keywords.keyword_set_random_project_name_for_given_length(len)
    
@Step("Write Project Name With Space Between In Project Name")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_project_description_window_set_project_name_with_space())
    
@Step("Verify Give Your Project Filename and Description, Project Name And Description Label Are Visible")
def step(context):
    keywords.keyword_check_new_project_details_window_label_are_visible()
    
@Step("Verify Textbox of Project Name And Project Description Is Visible")
def step(context):
    keywords.keyword_check_project_name_and_project_description_textbox_are_visible()
 
@Step("Verify Text Of Back And Cancel Button")
def step(context):
    keywords.keyword_check_back_and_cancel_button_text()
    
@Step("KoolProg should contain New Project Window controller Family List")
def step(context):
    keywords.keyword_check_new_project_window_controllerFamily_List()

@Step("Verify all controller variant comes under controller family.")
def step(context):
    keywords.keyword_check_new_project_window_controllerVariant_List()

@Step("Enter Special Characters In The Project Name Field And Click Ok Button In The Popup Message Window.")
def step(context):
    keywords.keyword_Enter_special_characters_in_the_Project_Name_field_and_click_Ok_button_in_the_popup_message_Window()

@Step("Click Ok Button In Popup Window In New Project Details Selection Window")
def step(context):
    keywords.popup_messagebox_window_click_ok_button("HOME_WINDOW")
        
@Step("Verify, Blinking Cursor In Project Name Text Box In New Project Details Selection Window")
def step(context):
    keywords.new_project_details_selection_window_cursor_in_text_box_of_project_name_should_blink()
        
@Step("Enter Project Name,Project Description And For Various Controller Selection, Verify, Project Name And Project Description Display The Same Content Entered.")
def step(context):
    keywords.keyword_enter_project_name_and_project_description_and_verify_the_content_displayed_for_various_controller_selection()

@Step("Set Project Description Statement As '|integer|' Characters Length")
def step(context,len):
    keywords.keyword_set_random_project_description_for_given_length(len)
    
@Step("Verify Project Description should Accept Only |integer| Characters")
def step(context,len):
    keywords.keyword_sleep(5)
    keywords.keyword_project_description_length_validation(len)
    
@Step("KoolProg Set Parameter Window Is Visible")
def step(context):
    keywords.set_param_window_is_visible()
    
@Step("Verify, Toolip Of New Button")
def step(context):
    keywords.keyword_set_param_window_check_new_button_tooltip_text()
   
@Step("Go To Set Parameter Window")
def step(context):
    keywords.check_main_window_visible()
    keywords.click_set_parameter_button() 
    keywords.keyword_sleep(2)
    keywords.set_param_window_is_visible()
 
@Step("Write Project Name")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData, keywords.keyword_write_project_name())
    
@Step("Write Project Description")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData, keywords.keyword_write_project_description())
    keywords.keyword_save_userdata(context.userData)
    
@Step("Check Textbox for Project Description Is Empty")
def step(context):
    keywords.check_project_description_textbox_empty()

@Step("Random Controller Is Selected For New Project")
def step(context):
    keywords.nav_goto_newproject_controller_selection_window_from_home_screen()
    context.userData = keywords.keyword_select_a_random_controller()
    keywords.new_prj_window_click_next_button()

@Step("Uncheck The Quick Wizard Option If Selected Controller Has It")
def step(context):
    keywords.keyword_uncheck_wizard_option(context.userData['controllerFamily'])

@Step("Select The Quick Wizard Option In Project Description Window")
def step(context):
    keywords.new_prj_window_check_quick_wizard_option()

@Step("Project Is Complete With Project Name And Description")
def step(context):
    keywords.keyword_set_random_project_name_for_given_length()
    keywords.keyword_set_random_project_description_for_given_length()

@Step("The Project Window Is Visible")
def step(context):
    keywords.project_window_visible() 
    
@Step("Controller Is Selected From Existing Project")
def step(context):
    context.userData = keywords.keyword_get_userdata()
    keywords.nav_goto_newproject_controller_selection_window_from_home_screen()
    keywords.select_controller_in_new_project_window(context.userData["controllerFamily"], context.userData["controllerVariant"])
    keywords.new_prj_window_click_next_button()
    
@Step("Write Project Name And Description From Existing Project")
def step(context):
    keywords.create_new_project_set_text_in_project_name_txt_box(context.userData["project_name"])
    keywords.create_new_project_set_text_in_project_description(context.userData["project_description"])
    
@Step("Verify Project Name And Project Description Displays The Content That Is Entered Before")
def step(context):
    keywords.keyword_verify_content_in_project_name_and_project_description(context.userData["project_name"],context.userData["project_description"])

@Step("Uncheck The Quick Wizard Option If Applicable")
def step(context):
    keywords.keyword_uncheck_wizard_option(context.userData['controllerFamily']) 

@Step("Click On SetParameter Button And SetParameter Window Is Visible")
def step(context):
    keywords.nav_open_setparameters_window_from_home_screen()
    
@Step("Click Close Button In Setparameter Window")
def step(context):
    keywords.keyword_set_param_check_tooltip_text_and_click_close_button()

@Step("Verify Home Window Should Come")
def step(context):
    keywords.check_main_window_visible()
    keywords.Home_window_is_Enable()

@Step("Verify Home Screen Is Visible And Enabled")
def step(context):
    keywords.keyword_verify_home_window_is_visible_and_enabled()

@Step("Verify Home Window Should Not Be Visible")
def step(context):
    keywords.Home_window_check_buttons_and_labels_is_visible(False)

@Step("New Project Window Had Opened")
def step(context):
    keywords.nav_goto_newproject_controller_selection_window_from_home_screen()

@Step("Click Close Button In New Project Window")
def step(context):
    keywords.keyword_new_project_win_check_tooltip_text_and_click_close_button()

@Step("Click Cancel Button In New Project Window")
def step(context):
    keywords.new_prj_window_click_cancel_button()

@Step("Verify Popup Window Is Visible")
def step(context):
    keywords.popup_messagebox_window_is_visible()

@Step("Verify Popup Window Is Enabled")
def step(context):
    keywords.popup_messagebox_window_is_enabled()

@Step("Verify Popup Window Is Not Visible")
def step(context):
    keywords.popup_messagebox_window_is_visible(False)
    
@Step("Select Controller Variant In New Project Window And Check List Of Applications ,Codenumber ,Productversion With Combinations")
def step(context):
    keywords.keyword_check_applications_codenumber_productversion_with_combinations()

@Step("Click No Button In Popup Window In New Project Details Selection Window")
def step(context):
    keywords.popup_messagebox_window_click_no_button()

@Step("Click Yes Button In Popup Window In New Project Details Selection Window")
def step(context):
    keywords.popup_messagebox_window_click_yes_button()

@Step("Click Yes Button In Popup Window In Convert Settings Window")
def step(context):
    keywords.popup_messagebox_window_click_yes_button()
    
@Step("Click Yes Button In '|any|'")
def step(context,window):
    keywords.popup_messagebox_window_click_yes_button(window)
    
@Step("Click No Button In '|any|'")
def step(context,window):
    keywords.popup_messagebox_window_click_no_button(window)
    
@Step("Verify menu bar icons enable and disable in project window")
def step(context):
    keywords.keyword_prj_window_chk_menu_bar_icons_Enable_Disable()
    
@Step("Verify, Project Details Label Should Come")
def step(context):
    keywords.keyword_project_win_project_details_label(context.userData['controllerFamily'])
    
@Step("Select A Controller From Input Sheet Given As Yes")
def step(context): 
    for i in context.userData["SelectedIndex"]:
        details = keywords.get_controller_details_from_index(i)
        variant = details['controllerVariant']
        family = keywords.get_controllerFamily_from_controllerVariant(variant)
        keywords.select_controller_in_new_project_window(family, variant)
        keywords.new_prj_window_click_next_button()
        keywords.keyword_set_product_details(details)
        context.userData = keywords.keyword_merge_dict(context.userData,details)

@Step("Verify Project Details In Project Window")
def step(context):
    keywords.keyword_project_win_check_project_details_label_value(context.userData)
    
@Step("Verify Grid Icons In The  Project Window Are Enable")
def step(context):
    keywords.prj_window_chk_grid_icons_enable()
    
@Step("Verify The Project Name And Description In Project Window")
def step(context):
    keywords.keyword_prj_window_chk_prj_name_prj_desc_text(context.userData["project_name"],context.userData["project_description"])

@Step("Verify Project File Extension In Open Window")
def step(context):   
    keywords.keyword_check_default_filter_text_in_window_dialog("OPEN")

######################## INFO Button ##############################

@Step("Verify Info Button Will Be Enable")
def step(context):
    keywords.prj_window_chk_info_button_enable()

@Step("Click On i Button In Project Window")
def step(context):
    keywords.prj_window_click_on_offline_controller_info_button()

@Step("Verify Product Information Window Is Not Visible")
def step(context):
    keywords.product_info_window_is_visible(False)
    
@Step("Verify Product Information Window Will Be Enable And Product Information Window Should Have Controller Name Label, Controller Image, Circuit And Description")
def step(context):
    keywords.keyword_prj_window_verify_product_info_window(context.userData['controllerVariant'])

######################## INFO Button ##############################

@Step("Click On Open Button In Set Parameters Window")
def step(context):
    keywords.set_param_window_click_open_button()

@Step("Open Window Is Visible")
def step(context):
    keywords.Window_Dialog_is_enabled("OPEN")

@Step("Click On The Setting Icon Button In The Main Window")
def step(context):
    keywords.click_settings_icon_in_homepage_window()

@Step("Click Cancel Button In Preference Window")
def step(context):
    keywords.click_cancel_button_in_preference_window()

@Step("Open Project File In Default Path And enter unavailable File Name")
def step(context):
    keywords.keyword_open_window_open_unavailable_file_in_default_path()
    
@Step("Click Open Button in Open Window")
def step(context):
    keywords.Window_Dialog_click_open_button()

@Step("Verify Popup Message For Unavailable File Displays")
def step(context):
    keywords.Window_Dialog_check_unavailable_file_pop_up()
    
@Step("Click On The Okay Button In Unavailable File Popup Window")
def step(context):
    keywords.Window_Dialog_click_cancel_button("OPEN")

@Step("Click On Open Button In Project Window")
def step(context):
    keywords.keyword_sleep(5)
    keywords.prj_window_click_on_open_button()
    keywords.keyword_sleep(5)
    
@Step("Click On The Open Window Cancel Button")
def step(context):
    keywords.Window_Dialog_click_cancel_button("OPEN")

@Step("Get Filepath From Open Window And Rename The Existing File With New Valid File Name")
def step(context):
    keywords.keyword_get_filepath_from_open_window_rename_valid_filename(context.userData["project_name"],context.userData['controllerFamily'],"OPEN")
    
@Step("Get Filepath From Open Window And Rename The Existing File With New Invalid File Name")
def step(context):
    keywords.keyword_copy_rename_Invalid_filename_and_Open_file(context.userData["PROJECT_WORKING_DIR"],context.userData["project_name"],context.userData['controllerFamily'],"OPEN")
    
@Step("Get last saved filepath and valid filename and open the newly copied file")
def step(context):
    keywords.keyword_copy_rename_valid_filename_and_Open_file(context.userData["PROJECT_WORKING_DIR"],context.userData["project_name"],context.userData['controllerFamily'],"OPEN")

@Step("Get Saved Filepath Which Have Invalid Filename And Open It")
def step(context):
#     context.userData =keywords.keyword_get_temp_saved_filepath_filename()
    keywords.keyword_copy_rename_Invalid_filename_and_Open_file(context.userData["PROJECT_WORKING_DIR"],context.userData["project_name"],context.userData["controllerFamily"],"OPEN")   

@Step("Verify the outside changed file not supported pop-pop Is Visible")
def step(context):
    keywords.validate_common_open_related_popup()
    
@Step("Click Ok Button In Popup Window In '|any|'")
def step(context,window):
    keywords.popup_messagebox_window_click_ok_button(window)
    
@Step("Click Ok Button In Popup Window On Home Window")
def step(context):
    keywords.popup_messagebox_window_click_ok_button("HOME_WINDOW")

@Step("Click Ok Button In Popup Window On Project Window")
def step(context):
    keywords.popup_messagebox_window_click_ok_button("PROJECT_WINDOW")
       
@Step("Validate the project already opened pop message")
def step(context):
    keywords.validate_common_open_related_popup()

@Step("Click ok button in pop message Popup Window")
def step(context):
    keywords.popup_messagebox_window_click_OK_button()
    
@Step("Validate Specile Charcters Not Allowed Pop-Up")
def step(context):
    keywords.popup_messagebox_window_is_visible()

@Step("Enter A Unavailable Filename And Click Open")
def step(context):
    keywords.keyword_open_window_open_unavailable_file_in_default_path()
    keywords.open_save_window_click_open_button()

@Step("Verify File Not Found Popup Message Will Come")
def step(context):
    keywords.check_open_window_popup_dialog_is_enabled_for_unavailable_file()

@Step("Save the project in Temp Location Using Save As Option")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,
                            keywords.keyword_save_project_in_temp_location(context.userData))

    keywords.popup_messagebox_window_is_visible("PROJECT_WINDOW")
    keywords.popup_messagebox_window_check_message_text("Saved Successfully", "PROJECT_WINDOW")
    keywords.popup_messagebox_window_click_ok_button("PROJECT_WINDOW")
    keywords.prj_window_chk_menu_bar_icons_Enable(120)

@Step("Create A project From AKCC Controller")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,
                        keywords.keyword_create_random_AK_CC55_controller_project())
    keywords.report_log("Controller details ={}".format(context.userData))
       
@Step("Add Filters *.cbk in Open Window")
def step(context):
    keywords.keyword_open_save_window_add_file_filters_for_given_name("cbk")

@Step("Verify Open Window Shows Filtered Files Only")
def step(context):
    keywords.keyword_open_window_file_extension("cbk")

@Step("Go To Saved Location From Preference Window")
def step(context):
    keywords.keyword_open_window_go_to_given_location()
    
@Step("Go To Home Window From Project Window")
def step(context):
    keywords.prj_window_chk_menu_bar_icons_Enable(120)
    keywords.keyword_prj_window_click_home_button()

@Step("Go To Home Window From Copy To controller Window")
def step(context):
    keywords.keyword_prj_window_click_home_button()

    
@Step("Go To Home Window From On-Service Test Window")
def step(context):   
    keywords.keyword_prj_window_click_home_button()

@Step("Verify Project Details Will Be Available In Project Window")
def step(context): 
    keywords.keyword_verify_project_details_of_current_project(context.userData)
    
@Step("Verify Project Details Will Be Available In Import Setting From Controller Window")
def step(context):
    keywords.keyword_verify_import_setting_project_details_with_connected_controller_info(context.userData)
    
     
@Step("New Project Is Created For Random Controller")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,
                        keywords.keyword_create_prj_with_a_random_controller())

@Step("New Project Is Created For '|any|' Controller")
def step(context, controllerFamily):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_create_prj_with_a_random_controller(None,controllerFamily))  

@Step("Get Koolprog Working Path From Preference Window And Save it")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,
                        keywords.keyword_set_preference_path_as_working_directory())
      

@Step("Verify Open Window Should Open With Temp Path")
def step(context):
    keywords.keyword_verify_temp_path_in_open_dialog(context.userData)

@Step("Go To Temp Folder Location But Dont Open Project")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,
                                                   keywords.keyword_click_saveas_button_but_dont_save_project_in_temp_location(context.userData))

@Step("Verify Open Window Should Not Open With Temp Path")
def step(context):
    keywords.keyword_verify_temp_path_not_in_open_dialog(context.userData)

@Step("Click Cancel Button In Open File Dialog")
def step(context):
    keywords.Window_Dialog_click_cancel_button("OPEN")

@Step("Verify Open Window Should Not Open Dialog With Temp Path")
def step(context):
    keywords.keyword_verify_temp_path_not_in_open_dialog(context.userData)

@Step("Save The Project In Temp Location Using File Copy")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,
                                                   keywords.keyword_copy_project_to_temp_directory(context.userData["project_name"], context.userData["PROJECT_WORKING_DIR"], context.userData["controllerFamily"]))
    
    
@Step("Get Integer Parameters From Database With Random Value")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,
                                                   keywords.keyword_get_database_integer_parameters_with_values(context.userData))

@Step("Modify Parameter Values In Duplicate Project File")
def step(context):
    keywords.keyword_modify_parameter_values_in_duplicate_project_file(context.userData, context.userData["project_name"])
                                                       

@Step("New Project Is Created For Random Controller Expect |any|")
def step(context, family):
    context.userData = keywords.keyword_merge_dict(context.userData,
                        keywords.keyword_select_a_random_controller(family))

@Step("Verify Open Window")
def step(context):
    keywords.Window_Dialog_is_enabled("OPEN")

@Step("Verify Open Window Should Not Visible")
def step(context):
    keywords.Window_Dialog_PopUp_visible(visible=False)
    
@Step("Enter A Unavailable Filename")
def step(context):
    keywords.keyword_open_window_open_unavailable_file_in_default_path(context.userData)

@Step("Browse The File That Is Saved In Temporary Location")
def step(context):
    keywords.keyword_browse_the_file_that_is_saved_in_temporary_location(context.userData["TEMP_DIR"],context.userData["project_name"], "OPEN")

@Step("Click Ok Button In Open Popup Window")
def step(context):
    keywords.Window_Dialog_PopUp_Click_Ok("OPEN")
    
@Step("Verify, Toolip Of Close Button")
def step(context):
    keywords.keyword_set_param_window_check_close_button_tooltip_text()

@Step("Verify, Toolip Of Open Button")
def step(context):
    keywords.keyword_set_param_window_check_open_button_tooltip_text()

@Step("Verify, Toolip Of Import Controller Model Button")
def step(context):
    keywords.keyword_set_param_window_compare_import_controller_model_button_tooltip()

@Step("Verify, Toolip Of Import Setting From Controller Button")
def step(context):
    keywords.keyword_set_param_window_compare_import_setting_from_controller_button_tooltip()


@Step("Get Recent File List From Set Parameter Window")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_set_param_window_get_open_recent_project_files_tooltip_list())

@Step("Check The Recent File ToolTip In Set Parameter Window")
def step(context):
    keywords.keyword_check_the_recent_file_tooltip(context.userData)
  
@Step("Check Preference Window Is Not Visible")
def step(context):
    keywords.Preferences_window_is_visible(False)

  
@Step("Preference Window Is Visible")
def step(context):
    keywords.Preferences_window_is_visible()
    
@Step("Verify Text Of All the Buttons, Headings, Lables In Set Parameter Window")
def step(context):
    keywords.keyword_check_set_paramter_win_buttons_header_label_text()
     

@Step("Verify Controller Family With Variant Is Remain Selected")
def step(context):
    keywords.new_prj_window_verify_given_controller_family_with_variant_is_selected(context.userData["controllerFamily"], context.userData["controllerVariant"])

@Step("Click Back Button In New Project Window")
def step(context):
    keywords.new_prj_window_click_back_button()

@Step("Check New Project Header Text")
def step(context):
        keywords.keyword_check_new_project_header_text()
        
@Step("Check New Project Select Controller Model Label Text")
def step(context):
        keywords.keyword_check_new_project_select_controller_model_label_text()

@Step("Check Close Button ToolTip In New Project Window")
def step(context):
    keywords.keyword_create_new_project_check_close_button_tooltip()

@Step("Verify Project Details Does Not Collapses When Collapse Is Clicked")
def step(context):
    keywords.keywords_prj_details_not_collapsed_when_clicked_on_collapse()     

@Step("Verify Window Help Expander Does Not Collapses When Clicked On Window Help Expander Collapse Button")
def step(context):
    keywords.keywords_project_help_description_not_collapsed() 
    
@Step("Verify Project Name Should Not Accept Special Characters")
def step(context):
    keywords.keyword_verify_project_name_should_not_accept_special_characters("HOME_WINDOW")
    
@Step("Check if Project Name,Description,Give your project filename and description labels are available")
def step(context): 
    keywords.keyword_check_project_name_and_description_labels()
    
@Step("Check Cancel Button Is Visible In Controller Details Selection Window")
def step(context): 
    keywords.new_prj_window_cancel_button_is_visible()
   
@Step("Check Back Button Is Visible In Controller Details Selection Window")
def step(context): 
    keywords.new_prj_window_back_button_is_visible()
     
@Step("Check Finish Button Is Visible In Controller Details Selection Window")
def step(context): 
    keywords.new_prj_window_finish_button_is_visible()
    
@Step("Verify Project Description Should Not Accept Special Characters")
def step(context):
    keywords.keyword_verify_project_description_should_not_accept_special_characters("HOME_WINDOW")

@Step("Change Integer Parameter Values")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData, keywords.keyword_get_database_integer_parameters_with_values(context.userData))
    keywords.keywords_set_integer_parameter_values_in_datagrid(context.userData["Parameters"],context.userData["controllerFamily"])

@Step("Change Integer Parameter Values In Online")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData, keywords.keyword_get_database_integer_parameters_with_values(context.userData))
    context.userData = keywords.keyword_merge_dict(context.userData, keywords.keyword_remove_extra_paramter_online(context.userData["Parameters"], False))
    keywords.keywords_set_integer_parameter_values_in_datagrid(context.userData["Parameters"],context.userData["controllerFamily"])

@Step("Check Saved Successfully Popup Is Displayed")
def step(context):
    keywords.popup_messagebox_window_is_visible("PROJECT_WINDOW")
    keywords.popup_messagebox_window_check_message_text("Saved Successfully","PROJECT_WINDOW")
    
@Step("Write The Default Project Name In SaveAs Window")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_write_the_created_project_file_name_dialog(context.userData,"SAVEAS"))

@Step("Click Ok Button In Saved Successfully Popup Window")
def step(context):
    keywords.popup_messagebox_window_is_visible("PROJECT_WINDOW")   
    keywords.popup_messagebox_window_click_ok_button("PROJECT_WINDOW")
   
@Step("Verify Saved file With Code Number Project Name Should Display If Applicable")
def step(context):
    keywords.keyword_check_saved_file_with_code_number_project_name_should_open_if_applicable(context.userData)

@Step("Write The Different Project Name Instead Of Created Project Name In SaveAs Window")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_write_the_different_project_name_instead_of_created_project_name(context.userData["controllerFamily"],context.userData["PROJECT_WORKING_DIR"],"SAVEAS"))

@Step("Write The Different Project Name Instead Of Created Project Name In SaveAs Window From Temp Path")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_write_the_different_project_name_instead_of_created_project_name(context.userData["controllerFamily"],context.userData["TEMP_DIR"],"SAVEAS"))

@Step("Verify The File Saved With Different Project Name Should Display")
def step(context):
    keywords.keyword_check_saved_file_with_different_project_name_should_open(context.userData)

@Step("Write The Created Project File With Default Path In Dialog")
def step(context):
    keywords.keyword_open_created_file_in_default_path(context.userData["PROJECT_WORKING_DIR"],context.userData["project_name"],context.userData["controllerFamily"])  
    
@Step("Split FileName And Extension")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_split_file_name_and_extension(context.userData["Different_Project_Name"]))
    
@Step("Write The Created Project File Saved With Different Project Name With Default Path In Dialog")
def step(context):
    keywords.keyword_open_created_file_in_default_path(context.userData["PROJECT_WORKING_DIR"],context.userData["filename"],context.userData["controllerFamily"]) 
     
@Step("Open Recent Project From Set Parameter Window")
def step(context):
    keywords.keyword_select_recent_project_file(context.userData["project_name"])

@Step("Open Recent Project Saved In Different Project Name From Set Parameter Window")
def step(context):
    keywords.keyword_select_recent_project_file(context.userData["filename"])

########################## Home Window ####################

@Step("Verify Text Of Set parameters, Copy to controller And On-Line Service On Home Screen")
def step(context):
    keywords.keyword_home_window_check_all_button_text()
    
@Step("Verify KoolProg Version Number On Home Screen")
def step(context):
    keywords.check_koolprog_version()

@Step("Verify KoolProg Version Number After Upgrading On Home Screen")
def step(context):
    keywords.keyword_verify_koolprog_updated_to_latestVersion(context.userData)
    
@Step("Verify Danfoss Website Is Displaying In Home Screen")
def step(context):
    keywords.keyword_prj_window_check_danfoss_website_link_text()

########################## Home Window ####################

########################## Set Parameter Window ####################

@Step("Click On New Button From Set Parameter Window")
def step(context):
    keywords.set_param_window_click_new_button()
    
########################## Set Parameter Window ####################


####################### Project Window #######################

@Step("Verify Menu Bar Icons Visible In Project Window")
def step(context):
    keywords.keyword_prj_window_chk_menu_bar_icons_visible()
    
@Step("Verify the Project Name In Project Window")
def step(context):
    keywords.prj_window_chk_prj_name_text_in_project_name_edit_box(context.userData["project_name"])

@Step("Get Project Details From The UI In Project Window")
def step(context):
    keywords.keyword_merge_dict(context.userData,keywords.keyword_get_project_details_from_UI(context.userData["controllerFamily"]))
 
####################### Project Window #######################

@Step("Verify Menu Bar Icons Enable And Disable In Project Window")
def step(context):
    keywords.keyword_prj_window_chk_menu_bar_icons_Enable_Disable()
    
@Step("Verify Set Parameter Label In Project Window")
def step(context):
    keywords.keyword_prj_window_chk_set_parameter_label()

@Step("Verify Project Name Label Should Be Visible In Project Window")
def step(context):
    keywords.keyword_prj_window_chk_prj_name_label()

@Step("Verify Search And View More Is Visible")
def step(context):
    keywords.keyword_prj_window_verify_search_and_viewmore_button_visible()
    
@Step("Verify Search And View More Are Enable")
def step(context):
    keywords.keyword_prj_window_verifiy_search_and_viewmore_button_enable()
    
    
####################### Project Window #######################

############################# Project Description Window #########################

@Step("Verify Popup Message Should Come As '|any|' In Project Description Window")
def step(context,message_string):

    keywords.popup_messagebox_window_is_visible("HOME_WINDOW", True)
    keywords.keyword_verify_popup_msg_in_window(message_string, "HOME_WINDOW")
    
@Step("Write Project Name As Dot")
def step(context):
    keywords.keyword_project_description_window_set_dot_as_project_name()
    
############################# Project Description Window #########################

@Step("Changed Value Should Show In DataGrid With Pink TextBox And Grey Color Circle")
def step(context):
    keywords.keyword_changed_value_should_show_in_project_dataGrid_with_pink_textBox_and_grey_circle_inputs(context.userData,context.userData["Parameters"],"Pink","Grey")

@Step("Check The Saved File Should Display In The Set Parameter Window Recent Project List")
def step(context):
    keywords.keyword_check_the_saved_file_displays_in_recent_project_list_in_setParameter_Window(context.userData)

@Step("Click On Ok Button In Window Dialog PopUp")
def step(context):
    keywords.Window_Dialog_PopUp_Click_Ok("OPEN")

@Step("Click On Ok Button In SaveAs Window Dialog PopUp")
def step(context):
    keywords.Window_Dialog_PopUp_Click_Ok("SAVEAS")

@Step("Verify The File Name Is Not Valid, Window Dialog Popup Is Visible")
def step(context):
    keywords.Window_Dialog_PopUp_visible()
    
@Step("Verify Project File Name Already Exists, Do You Want To Replace It, Window Dialog Popup Is Visible")
def step(context):
    keywords.Window_Dialog_PopUp_visible()
    
@Step("Verify If The Entered Project Name With Special Characters Is Displayed In Edit Box Of The SaveAs Dialog")
def step(context):
    keywords.keyword_verify_file_name_is_displayed_in_Dialog_EditBox(context.userData["ProjectName_With_SpecialCharacters"],"SAVEAS")
    
@Step("Write Project Name Including Special Characters")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.write_project_name_as_special_characters("SAVEAS"))

@Step("Write Project Name Including Special Characters Along With The Path")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.write_project_name_as_special_characters_along_with_path("SAVEAS", context.userData))

@Step("Write Created Project Name In Dialog EditBox")
def step(context):
    keywords.keyword_save_created_samefile_in_prj_win(context.userData["PROJECT_WORKING_DIR"],context.userData["project_name"],context.userData["controllerFamily"],"SAVEAS")

@Step("Write Connected Created Project Name In Dialog EditBox")
def step(context):
    keywords.keyword_save_created_samefile_in_prj_win(context.userData["PROJECT_WORKING_DIR"],context.userData["connected_project_name"],context.userData["controllerFamily"],"SAVEAS")

@Step("Click Save Button In Project Window")
def step(context):
    keywords.prj_window_chk_menu_bar_icons_Enable(120)
    keywords.prj_window_click_on_save_button()

@Step("New Project Is Created As Per User Selection")
def step(context):
    indx = keywords.keyword_get_user_data_as_variable()
    if indx is None:
        indx = keywords.keyword_get_an_index_from_inputSheet_YES()
    keywords.report_log("indx={}".format(indx))
    context.userData = keywords.keyword_create_new_project_given_index(indx)
    keywords.report_log("Controller details ={}".format(context.userData))

@Step("Verify SW Version Combobox Has Only Default Software Version")
def step(context):
    keywords.keyword_new_prj_window_verify_software_version_with_default_software_version(context.userData)
    
@Step("Verify That Tree View Default Groups Will Expand")
def step(context):
    keywords.keyword_check_tree_view_default_group_expaned(context.userData["controllerFamily"])

@Step("Verify The GroupNames From The TreeView With The CDF")
def step(context):
    keywords.keyword_verify_group_names_in_treeView_with_cdf(context.userData)

@Step("Get The List Of GroupNames From The TreeView")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_get_tree_list_from_UI())

@Step("Get The GroupIndex For Enabling ScrollBar")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_fetch_userDefined_groupIndex(context.userData))
    
@Step("Verify The ScrollBar In TreeView Is Available If GroupName Of Maximum length Is Expanded")
def step(context):
    keywords.keywords_click_grpName_and_verify_scrollBar_in_treeView(context.userData, False,False,True,True)

@Step("Verify The ScrollBar In TreeView Is Not Available If GroupName Of Maximum length Is Expanded")
def step(context):
    keywords.keywords_click_grpName_and_verify_scrollBar_in_treeView(context.userData,False,False,False,False)

@Step("Get The GroupName From The Parameter Collection With Respect To Provided Group Index")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.fetchGroupName_from_groupIndex(context.userData["Parameter_collection"],context.userData["Scrollbar_enabling_userDefined_groupNameIndex"]))

@Step("Verify That All Groups Name Will Come Under All Button")
def step(context):
    keywords.keyword_check_group_names_under_tree_view(context.userData)

@Step("Verify That All Group Name Will Hide And Unhide")
def step(context):
    keywords.keyword_check_group_names_hide_unhide(context.userData["database"])

@Step("Verify Parameters Under Group")
def step(context):
    keywords.verify_parameters_under_given_group_name(context.userData)


@Step("Verify, All Parameter From Reference Database Should Be Available In KoolProg.")
def step(context):
    keywords.keyword_verify_all_parameter_from_reference_database_is_displayed_in_dataGrid(context.userData["database"])

@Step("Verify, Values  In Textbox Of Parameter Will Be Same As Default Value In DataGrid.")
def step(context):
    keywords.keyword_verify_user_values_in_textbox_of_parameter_will_be_same_as_default_value()

@Step("Get Float Parameters With Random Values In Range Of Min And Max From Database")
def step(context):
    decimal_params =dict()
    decimal_params["decimal_params"] = keywords.keyword_parse_database_csv_and_get_decimal_parameters(context.userData)
    context.userData = keywords.keyword_merge_dict(context.userData,decimal_params)

@Step("Verify koolprog Accept Decimal Points Values")
def step(context):
    keywords.keyword_verify_parameter_name_with_values(context.userData["decimal_params"])

@Step("Verify Value Is Accepted Within Min , Max In DataGrid.")
def step(context):
    keywords.verify_value_will_change_within_its_minimum_and_maximum_range_in_dataGrid()

@Step("On-Change In Parameter , Verify Dark Grey Color And Pink Color In The Datagrid Value Column.")
def step(context):
    keywords.check_color_will_change_when_parameter_value_is_changed()

@Step("Verify, Help Will Be Available For Each Parameter.")
def step(context):
    keywords.verify_help_for_each_parameter(context.userData["database"])

@Step("Select A Group In Tree,Verify Corresponding Group First Parameter Help Will Display.")
def step(context):
    keywords.keyword_verify_help_of_first_parameter_of_every_group_when_a_group_is_selected(context.userData["database"])

@Step("Get Parameters List From Database Having Type Of Int And Float With Random Characters And Special Characters")
def step(context):
    decimal_params =dict()
    decimal_params["params"] = keywords.keyword_get_integer_parameter_float_parameter_values_as_text_and_special_characters(context.userData)
    context.userData = keywords.keyword_merge_dict(context.userData,decimal_params)

@Step("Verify Parameters Should Not Accept Text As Values")
def step(context):
    keywords.keyword_verify_parameters_should_not_accept_text_as_values(context.userData["params"])

@Step("Get Project Saving Location")    
def step(context): 
    keywords.click_settings_icon_in_homepage_window() 
    keywords.keyword_get_the_path_from_preference_window_and_save_it() 
    keywords.click_cancel_button_in_preference_window()

@Step("Verify Project File Information In Project Window")
def step(context):
    keywords.verify_project_file_parameters_against_project_window_UI(context.userData)

@Step("Enable Required Serial Port")
def step(context):
    userData = keywords.keyword_get_user_data_as_variable()
    if userData is None:
        userData = [CONTROLLER_TO_BE_TEST_INDEX]

    _index = userData.pop()
    context.userData = keywords.keyword_merge_dict(context.userData,
                                                   keywords.get_controller_details_from_index(_index))
    details = context.userData
    keywords.report_log("Enable Required Serial Port details ={}".format(details))
    keywords.keyword_enable_port(details["PortNumber"])

@Step("Verify Online Controller Details")
def step(context):
    keywords.verify_connected_controller_details(context.userData)
    
@Step("Verify Yes, No And Cancel Button Are Visible")
def step(context):
    keywords.keyword_check_popup_window_yes_no_and_cancel_button_visible("PROJECT_WINDOW")
    
@Step("Verify Yes, No And Cancel Button Are Enable")
def step(context):
    keywords.keyword_check_popup_window_yes_no_and_cancel_button_enable("PROJECT_WINDOW")
    
@Step("Verify Text Of Yes, No And Cancel Button")
def step(context):
    keywords.keyword_check_popup_window_yes_no_and_cancel_button_text("PROJECT_WINDOW")

@Step("Click On Confirm Save As PopUp No Button")
def step(context):
    keywords.Window_Dialog_PopUp_Click_No()
    
@Step("Click On Confirm Save As PopUp Yes Button")
def step(context):   
    keywords.Window_Dialog_PopUp_Click_Yes()
    
@Step("Click Cancel Button In SaveAs Dialog")
def step(context):
    keywords.Window_Dialog_click_cancel_button("SAVEAS")
    
@Step("Verify Confirm Save As PopUp Is Visible")
def step(context):
    keywords.keyword_sleep(10)
    keywords.Window_Dialog_PopUp_visible()
    keywords.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE","CONFIRM_SAVEAS_TO_BE_VISIBLE")
    
    
###################### KoolProg Manual Window ##########################

@Step("Click On Help Button")
def step(context):
    keywords.select_help_menuitem("Help")
    
@Step("Verify Help Window is Enable")
def step(context):
    keywords.keyword_help_window_enable()

@Step("Verify Header In Help Window")
def step(context):
    keywords.keyword_koolprog_manual_window_check_header_text()
    
###################### KoolProg Manual Window ##########################

###################### About WIndow ##########################

@Step("Click On About Button")
def step(context):
    keywords.select_help_menuitem("About")
    
@Step("Verify About Window is Enable")
def step(context):
    keywords.keyword_about_window_enable()

@Step("Verify Text In About Window")
def step(context):
    keywords.keyword_about_window_check_text()

@Step("Verify Text Of KoolProg Verison")
def step(context):
    keywords.keyword_about_window_check_koolprog_version_text()
    
@Step("Verify Text Of CopyRight")
def step(context):
    keywords.keyword_about_window_check_copy_right_text()

###################### About WIndow ##########################


######################## Preference Window ###################

@Step("Verify Header Text In Preference Window")
def step(context):
    keywords.keyword_preference_window_verify_header_text()

@Step("Verify Label Text In Preference Window") 
def step(context):
    keywords.keyword_preference_window_verify_label_text()
    
@Step("Verify Button Text In Preference Window")
def step(context):
    keywords.keyword_perfernece_window_verify_button_text()

@Step("Verify Label Text For '|any|' Language In Preference Window")
def step(context,language):
    keywords.keyword_preference_window_verify_label_text_for_selected_language(language)

@Step("Verify Label Text Of Only For AKCC For '|any|' Language In Preference Window")
def step(context,language):
    keywords.keyword_preference_window_verify_only_for_AKCC_label_text_for_selected_language(language)

@Step("Verify Button Text For '|any|' Language In Preference Window")
def step(context,language):
    keywords.keyword_preference_window_verify_button_text_for_selected_language(language)
    
@Step("Verify Default Values For Each Label")
def step(context):
    keywords.keyword_preference_window_verify_default_values()

@Step("Verify Default Baudrate In Preference Window")
def step(context):
    keywords.keyword_preference_window_verify_baudrate_value()
    
@Step("Select '|any|' Language From Language Option")
def step(context, selectedlanguage):
    context.userData["selectedlanguage"] = selectedlanguage
    keywords.keyword_preference_window_select_language_from_list(selectedlanguage)

@Step("Select '|any|' Language In The Preference Window")
def step(context, selectedlanguage):
    keywords.keyword_preference_window_select_language_from_list(selectedlanguage)
    
@Step("Verify AKCC Label Should Come")
def step(context):
    keywords.Preferences_window_check_Only_for_AKCC55_label_is_visible()

@Step("Select '|any|' Unit From Unit Combobox")
def step(context, selectedunit):
    context.userData["selectedunit"] = selectedunit
    keywords.Preferences_window_select_Units_from_List_of_Units(selectedunit)
    
@Step("Click On Browse Button In Preference Window")
def step(context):
    keywords.Preferences_window_click_Browse_button()

@Step("Select New Path In Preference Window")
def step(context):
    keywords.keyword_preference_window_select_new_path()

@Step("Verify Changed Path Should Come In Preference Window")
def step(context):
    keywords.keyword_preference_window_changed_path()

@Step("Verify Changed Path Should Come In Saveas Popup Window From Project Window")
def step(context):
    keywords.keyword_project_window_verify_saveas_path_in_toolbox_path()

@Step("Verify Saveas Path And Preference Path Should Be Same")
def step(context):
    keywords.keyword_verify_saveas_and_preference_path(context.userData)
    
@Step("Select '|any|' Can Baudrate From Can Baudrate Combobox")
def step(context, changed_canbaudrate):
    context.userData["changed_canbaudrate"] = changed_canbaudrate
    keywords.Preferences_window_select_Baudrate_from_List_of_Baudrates(changed_canbaudrate)
    
@Step("Select Random Can Baudrate From Can Baudrate Combobox")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_preference_window_select_random_baudrate())
   
@Step("Select Random CAN Baudrate From CAN Baudrate Combobox Other Than Auto Or 250K")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_preference_window_select_random_baudrate_except_Auto_and_250K())
       
@Step("Click On Save Button In Preference Window")
def step(context):
    keywords.Preferences_window_click_Save_button()
    
@Step("Verify Popup Message Should Come As '|any|' In Preference Window")
def step(context,message_string):
    keywords.popup_messagebox_window_is_visible("HOME_WINDOW", True)
    keywords.keyword_verify_popup_msg_in_window(message_string, "HOME_WINDOW")


@Step("Click Yes Button In Popup Window In Preference Window")
def step(context):
    keywords.popup_messagebox_window_click_yes_button("HOME_WINDOW")
  
@Step("Click No Button In Popup Window In Preference Window")
def step(context):  
    keywords.popup_messagebox_window_click_no_button("HOME_WINDOW")
    
@Step("Check '|any|' Popup Is Displayed In Preference Window")
def step(context,message_string):
    keywords.popup_messagebox_window_is_visible("HOME_WINDOW", True)
    keywords.popup_messagebox_window_check_message_text(message_string,"HOME_WINDOW")
    
@Step("Verify 好 and X button In Popup Window In Preference Window")
def step(context):
    keywords.keyword_check_popup_window_x_and_chinese_ok_button_text("HOME_WINDOW")
    
@Step("Click Ok Button In Saved Successfully Popup Window From Preference Window")
def step(context):  
    keywords.popup_messagebox_window_click_ok_button("HOME_WINDOW")

@Step("Verify KoolProg Will Change To '|any|'")
def step(context, newlanguage):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_language_verification_in_home_window(newlanguage))

@Step("Check Popup Message Should Come As '|any|' With Respect To '|any|' In Preference Window")   
def step(context,message_string,language):
    keywords.keyword_sleep(1)
    keywords.popup_messagebox_window_is_visible("HOME_WINDOW", True)
    keywords.keyword_verify_popup_msg_in_window_wrt_language(message_string, language, "HOME_WINDOW")
    
@Step("Verify '|any|' With Respect To '|any|' Popup Is Displayed In Preference Window")  
def step(context,message_string,language):
    keywords.keyword_sleep(1)
    keywords.popup_messagebox_window_is_visible("HOME_WINDOW", True)
    keywords.keyword_verify_saved_successfully_wrt_language_popup_msg_in_preference_window(message_string, language, "HOME_WINDOW")
      
@Step("Verify KoolProg Will Change To '|any|' Language In Home Window")
def step(context, newlanguage):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_language_verification_in_home_window(newlanguage))
   
@Step("Verify KoolProg Should Restart")
def step(context):
    keywords.check_main_window_visible()

@Step("Verify Changed Language Should Display In Language Combobox")
def step(context):
    keywords.keyword_preference_window_changed_language(context.userData["selected_language"])
    
@Step("Verify Changed Unit Should Display In Unit Combobox")
def step(context):
    keywords.keyword_preference_window_changed_unit(context.userData["selectedunit"])

@Step("Verify Changed Can Baudrate Should Display In Can Baudrate Combobox")
def step(context):
    keywords.keyword_preference_window_changed_can_baudrate(context.userData["changed_canbaudrate"])
   
@Step("Verify Changed Language Should Not Display In Language Combobox")
def step(context):
    keywords.keyword_preference_window_changed_language_should_not_display(context.userData["selectedlanguage"])
   
@Step("Verify Changed Unit Should Not Display In Unit Combobox")
def step(context):
    keywords.keyword_preference_window_no_change_unit(context.userData["selectedunit"])
    
@Step("Verify Changed Can Baudrate Should Not Display In Can Baudrate Combobox")
def step(context):
    keywords.keyword_preference_window_no_change_can_baudrate(context.userData["changed_canbaudrate"])
    
@Step("Verfiy Popup Window Should not display")
def step(context):
    keywords.popup_messagebox_window_is_visible("PRINT_WINDOW", False)
    
@Step("Click On Cancel Button On Preference Window")
def step(context):
    keywords.Preferences_window_click_cancel_button()    

@Step("Verify KoolProg Should Change To Selected Unit")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData, keywords.keyword_get_all_columns_from_database_for_unit_change(context.userData))
    keywords.keywords_verify_changed_units_in_datagrid(context.userData)

@Step("Verify The File Path In Preference Window")
def step(context):
    keywords.Preferences_window_get_default_FilePath(context.userData["PROJECT_WORKING_DIR"])

@Step("Get Selected Language From Preference Window")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_preference_window_get_selected_language())
    
######################## Preference Window ###################    
    
######################## Password Protection ###################     
    
@Step("Click On Use Password Protection Checkbox")
def step(context):
    keywords.Preferences_window_click_password_protection_checkbox() 

@Step("Deselect The Password Protection Checkbox")
def step(context):
    keywords.Preferences_window_deselect_password_protection_checkbox() 
    
@Step("Verify Password Protection Option") 
def step(context):
    keywords.Preferences_window_check_password_label_is_visible()
    keywords.keyword_preference_window_verify_password_protection_label_text() 
    
@Step("Verify Change User Button Should Come")
def step(context):
    keywords.keyword_home_window_verify_change_user_button()

@Step("Verify Admin User Text Should Come")
def step(context):
    keywords.keyword_home_window_verify_admin_user()

@Step("Verify Password Should Not Show")
def step(context):
    keywords.keyword_preference_window_no_password_is_displaying()

@Step("Click On Show Password Checkbox")
def step(context):
    keywords.Preferences_window_click_Show_password_checkbox()
    
@Step("Verify Default Password Should Come")
def step(context):
    keywords.keyword_preference_window_default_password()
    
@Step("Verify Password And Confirm Password Should Be Same")
def step(context):
    keywords.keyword_preference_window_password_and_confirm_password_compare()  
    
@Step("Enter '|any|' Password In Password Textbox")
def step(context, newpassword):
    keywords.keyword_Preference_window_enter_password(newpassword)

@Step("Enter '|any|' Password In Confirm Password Textbox")
def step(context, newconfirmpassword):
    keywords.keyword_Preference_window_enter_confirm_password(newconfirmpassword)
    
@Step("Click On Change User Button")
def step(context):
    keywords.Home_window_click_change_user_button()
    
@Step("Verify Change Password Window Is Visible")
def step(context):
    keywords.Password_window_is_Enabled()
    keywords.Password_window_is_visible()
    
@Step("Verify Header Of Popup Window In Password Window")
def step(context):
    keywords.keyword_password_window_verify_header()  

@Step("Verify Label Text In Password Window")
def step(context):
    keywords.keyword_verify_password_window_verify_label_text()

@Step("Verify Button Text In Password Window")
def step(context):
    keywords.keyword_verify_password_window_verify_button_text()
    
@Step("Get Password From Preference Window")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData, keywords.keyword_preference_window_get_password())
 
    
@Step("Write '|any|' User Name In Password Window")
def step(context, user_name):
    context.userData["user_name"] = user_name
    keywords.keyword_password_window_enter_user(user_name)
    
@Step("Write Password In Password Window")
def step(context):
    keywords.keyword_password_window_enter_password(context.userData["password"])


@Step("Write '|any|' In Password Window")
def step(context, password):
    context.userData["password"] = password
    keywords.keyword_password_window_enter_password(password)
    
@Step("Click On Ok Button In Password Window")
def step(context): 
    keywords.Password_window_click_Ok_Button()
    
@Step("Verify User Access Permission Button After Login As A User")
def step(context):
    keywords.keyword_home_window_user_access_permission()

@Step("Verify User Name In Home Screen")
def step(context):
    keywords.Home_window_check_User_label_text(context.userData["user_name"])

@Step("Remove Password From Password and Confirm Password EditBox")
def step(context):
    keywords.keyword_preference_window_remove_password()
    
@Step("Handled Unexpected Password Window Error")
def step(context):
    keywords.keyword_verify_password_and_home_window()

######################## Password Protection ################### 
    
###################### Project Creation ##########################

@Step("Create Multiple Projects For Random Controller")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_create_multiple_random_projects())


@Step("Get Code Number List From Project Description Window")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData, keywords.keyword_new_prj_window_get_list_of_code_number())

@Step("Get SW Version List From Project Description Window")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData, keywords.keyword_new_prj_window_get_list_of_software_version())

@Step("Select Code Number And Software Version In Project Description Window")
def step(context):
    keywords.new_prj_window_AKCC55_app_selection(context.userData["controllerCodeNo"], context.userData["softwareVersion"])
   
###################### Project Creation ##########################

########################### Project Creation For EKE ###############

@Step("New Project Is Created For Random Controller Only EKE")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,
                        keywords.keyword_create_prj_with_a_random_controller(None,"EKE1x"))
    
########################### Project Creation For EKE ###############

########################### Project Creation For AKCC ###############

@Step("New Project Is Created For Random Controller Except AKCC")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_create_prj_with_a_random_controller(["AK-CC55"],None))

@Step("New Project Is Created For Random Controller Except ERC11x")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_create_prj_with_a_random_controller(["ERC11x"],None))


@Step("New Project Is Created For Random Controller Except EKE, AKCC")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,
                        keywords.keyword_create_prj_with_a_random_controller(["EKE1x", "AK-CC55"],None))

@Step("New Project Is Created For Random Controller Except EET, EKE, AKCC")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,
                        keywords.keyword_create_prj_with_a_random_controller(["EET", "EKE1x", "AK-CC55"],None))

########################### Project Creation For AKCC ###############

################## Treeview ##################


@Step("Verify Tree View Is Collapsed")
def step(context):
    keywords.keyword_check_tree_view_group_not_expaned(context.userData["controllerFamily"])
    
    
################## Treeview ##################


######################## Datagrid ##############

@Step("Get Integer Parameters From Database With Invalid Values")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,
                                                   keywords.keyword_get_database_integer_parameters_with_invalid_values(context.userData))

@Step("Changed Value Should Show In DataGrid Without Pink TextBox And With Grey Color Circle")
def step(context):
    keywords.keyword_changed_value_should_show_in_project_dataGrid_with_pink_textBox_and_grey_circle_inputs(context.userData,context.userData["Parameters"],"Not Pink","Grey")

@Step("Changed Value Should Show In DataGrid Without Pink TextBox And Grey Color Circle")
def step(context):
    keywords.keyword_changed_value_should_show_in_project_dataGrid_with_pink_textBox_and_grey_circle_inputs(context.userData,context.userData["Parameters"], "Not Pink","Grey")

@Step("Changed Value Should Not Show In DataGrid Without Pink TextBox And Without Grey Color Circle")
def step(context):
    keywords.keyword_changed_value_should_show_in_project_dataGrid_with_pink_textBox_and_grey_circle_inputs(context.userData,context.userData["Parameters"],"Not Pink","Grey","False", "False")

@Step("Parse The DataGrid")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_parsed_the_Datagrid())

@Step("Check Parameter Count From Datagrid")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_get_parameter_count_from_datagrid(context.userData["parsed_datagrid"]))

@Step("Verify All The Parameter Should Come In Datagrid")
def step(context):
    keywords.keyword_project_window_verify_all_parameter_in_datagrid(context.userData["parsed_datagrid"], context.userData["parameter_count"])
                                 
@Step("Verify Help Of First Parameter In First Group Should Display")
def step(context):
    keywords.keyword_verify_first_parameter_help_in_first_group("Description")
    
@Step("Changed Random Value Should Show In DataGrid With Pink TextBox And With Grey Color Circle")
def step(context):
    keywords.keyword_changed_value_should_show_in_project_dataGrid_with_pink_textBox_and_grey_circle_inputs(context.userData,context.userData["random_parameter_list"],"Pink","Grey")

    
######################## Datagrid ##############

########################### Open Option  ###############

@Step("Goto Temporary Directory In Open Dialog Window")
def step(context):
    keywords.keyword_go_to_directory_opendialog(context.userData["TEMP_DIR"],"OPEN")

@Step("Goto Working Directory In Open Dialog Window")
def step(context):
    keywords.keyword_go_to_directory_opendialog(context.userData["PROJECT_WORKING_DIR"],"OPEN")

@Step("Clear The Working Directory Folder")
def step(context):
    keywords.keyword_clear_the_directory(context.userData["PROJECT_WORKING_DIR"])

@Step("Select Saved Project From Working Directory Path")
def step(context):
    keywords.keyword_select_project_from_path_open_window(context.userData, "OPEN", context.userData["project_name"])
    keywords.project_window_visible(60)
    
@Step("Select Saved Project From Temp Directory Path")
def step(context):
    keywords.keyword_select_project_from_path_open_window(context.userData, "OPEN", context.userData["project_name"])
    keywords.keyword_sleep(3)
    keywords.project_window_visible(60)

@Step("Open The Created File In Project Window")
def step(context):
    keywords.keyword_open_created_samefile_in_prj_win(context.userData["PROJECT_WORKING_DIR"],context.userData["project_name"],context.userData['controllerFamily'],"OPEN")

@Step("Open The Converted File In Project Window")
def step(context):
    keywords.keyword_open_created_samefile_in_prj_win(context.userData["PROJECT_WORKING_DIR"],context.userData["new_fileName"],context.userData['controllerFamily'],"OPEN")
 
    
@Step("Open The Created New File In Import Settings Window")
def step(context):
    keywords.keyword_open_created_samefile_in_prj_win(context.userData["PROJECT_WORKING_DIR"],context.userData["connected_project_name"],context.userData['controllerFamily'],"OPEN")

@Step("Open Created Project In Set Parameter Window")
def step(context):
    keywords.keyword_open_created_samefile_in_prj_win(context.userData["PROJECT_WORKING_DIR"], context.userData["project_name"],context.userData['controllerFamily'], "OPEN")
 
@Step("Opening Saved Project From Temp Path")
def step(context):
    keywords.keyword_open_project_from_temp_path(context.userData, "OPEN", context.userData["project_name"])
   
@Step("Open Project File In Specific Path")
def step(context):
    keywords.keyword_open_window_open_project_file("OPEN")
    
########################### Open Option  ###############


########################### Tag Save Window ###############################

@Step("Verify Project Path And File With Extension For Saved File Is Exist")
def step(context):
    keywords.keyword_check_file_with_supported_extension_exists_in_specified_path(context.userData["project_name"], context.userData["PROJECT_WORKING_DIR"], context.userData["controllerFamily"])

########################### Tag Save Window ###############################


########################### Save as Window ###############################
@Step("Verify Project Path And File With Extension For Saved File Is Exist In SaveAs Window")
def step(context):
    keywords.keyword_check_file_with_supported_extension_exists_in_specified_path(context.userData["Different_Project_Name"], context.userData["PROJECT_WORKING_DIR"], context.userData["controllerFamily"])

@Step("Click On Saveas Button In Project Window")
def step(context):
    keywords.keyword_prj_window_click_saveas_button(context.userData)
    keywords.keyword_put_to_sleep_with_respect_to_expected_performance("OFFLINE","DIALOG_TO_OPEN")

@Step("Click On Saveas Button In Online Service Window")
def step(context):
    keywords.keyword_prj_window_click_saveas_button(context.userData)
    keywords.keyword_put_to_sleep_with_respect_to_expected_performance("OFFLINE","DIALOG_TO_OPEN")
    
@Step("Verify Saveas Window In Project Window")
def step(context): 
    keywords.Window_Dialog_is_enabled("Saveas")

@Step("Verify Saveas Window In Project Window Is Not Enabled")
def step(context): 
    keywords.Window_Dialog_is_enabled("Saveas")

@Step("Verify Default Project Name Is Not Available")
def step(context):
    keywords.Window_Dialog_check_file_name_text("SAVEAS")
    
@Step("Click On Save Button In SaveAs Window")
def step(context):
    keywords.Window_Dialog_click_save_button("SAVEAS")
    keywords.keyword_sleep(10)

@Step("Get Temp Path From Dialog Window")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,
                            keywords.keyword_get_temp__path_from_dialog_window((context.userData),"SAVEAS"))

@Step("Open Different Project File With Different Project Name Which Is Already Created From Temp Path")
def step(context):
    project_file = keywords.keyword_open_project_file_in_project_window(context.userData["TEMP_DIR"], context.userData["Different_Project_Name"],"OPEN")

@Step("Goto Working Directory In SaveAs Dialog Window")
def step(context):
    keywords.keyword_go_to_directory_opendialog(context.userData["PROJECT_WORKING_DIR"],"SAVEAS")

@Step("Verify The SaveAs Dialog Opens With Working Directory")
def step(context):
    keywords.keyword_verify_working_path_in_dialog(context.userData, "SAVEAS")

@Step("'|any|' The KoolProg To Latest Version")
def step(context, installationType):
    keywords.keyword_install_KoolProg(installationType)

@Step("Set The Project Working Directory Path And Version In The Text File")
def step(context):
    keywords.keyword_set_text_of_project_details_in_file(context.userData)

@Step("Get The Project Working Directory And Koolprog Version From Text File")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_get_project_details_from_text_file())


########################### Save as Window ###############################



############################ EXPORT #######################################

@Step("Check Settings Exported Successfully To Controller Text Is Displayed In PopUp Window")
def step(context):
    keywords.popup_messagebox_window_check_message_text("Settings exported successfully to controller", "PROJECT_WINDOW")


############################ EXPORT #######################################



################# Print Option ############

@Step("Click On Print Button")
def step(context):
    keywords.prj_window_click_on_print_button()
    keywords.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE","PARAMETER_SHEET_TO_DISPLAY_AFTER_CLICKING_ON_PRINT_BUTTON")
    
@Step("Click On Print Button In Online Window")
def step(context):
    keywords.prj_window_click_on_print_button()
    

@Step("Verify Popup Message Should Come As '|any|' In Print Window")
def step(context,message_string):
    keywords.popup_messagebox_window_is_visible("PRINT_WINDOW", True)
    keywords.keyword_verify_popup_msg_in_window(message_string, "PRINT_WINDOW")

@Step("Verify Text Of Button In Print Window")
def step(context):
    keywords.keyword_print_window_button_text("PRINT_WINDOW")
    
@Step("Click On Parameter Sheet Button")
def step(context):
    keywords.popup_messagebox_window_click_Parameter_sheet_button("PRINT_WINDOW")
    keywords.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE","OPENING_PARAMETER_SHEET")
    
@Step("Verify Parameter Sheet Is Visible")
def step(context):
    keywords.keyword_sleep(20)
    keywords.Print_Paramter_Sheet_window_is_visible()

@Step("Verify Parameter Sheet Is Not Visible")
def step(context):
    keywords.keyword_sleep(20)
    keywords.Print_Paramter_Sheet_window_is_visible(False)
 
@Step("Click On Export Button In Parameter Sheet Window")
def step(context):
    keywords.Print_Paramter_Sheet_window_click_on_Export_button()

@Step("Verify Parameter Sheet In PDF Format")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,
                                keywords.keyword_paramter_sheet_in_pdf_format("PRINT_SAVEAS"))

@Step("Click On X Button On Popup Window In Print Window")
def step(context):
    keywords.popup_messagebox_window_click_Close_button("PRINT_WINDOW")
    
@Step("Verify Default PDF Parameter Sheet Name Is Available In Saved Path")
def step(context):
    keywords.keyword_verify_pdf_file_path_is_exists(context.userData["PDF_FILE_DIR"])

################# Print Option ############

################# Search Option ############

@Step("Click On Search Editbox")
def step(context):
    keywords.prj_window_check_search_textbox_editor_is_enabled()
    keywords.prj_window_click_on_search_textbox_editor()
    
@Step("Click On Search Button In Search Bar")
def step(context):
    keywords.prj_window_click_on_search_button()

@Step("Get Random Parameter Details From Database")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData, keywords.keyword_get_database_integer_parameters_with_values(context.userData))
    context.userData = keywords.keyword_merge_dict(context.userData, keywords.keyword_get_random_parameter_details_for_search(context.userData["Parameters"], "MenuCode"))
    
@Step("Write Random Menu Code In Search Editbox")
def step(context):
    keywords.keyword_prj_window_enter_string_in_search_box(context.userData["random_parameter_list"]["MenuCode"])

@Step("Write Parameter Name In Search Editbox")
def step(context):
    keywords.keyword_prj_window_enter_string_in_search_box(context.userData["random_parameter_list"]["ParameterName"])
    
@Step("Verify If The Searched Menu Code Displays In Datagrid")
def step(context):
    keywords.keyword_project_window_verify_searched_value(context.userData["random_parameter_list"], "MenuCode")

@Step("Verify If The Searched Parameter Name Displays In Datagrid")
def step(context):
    keywords.keyword_project_window_verify_searched_value(context.userData["random_parameter_list"], "ParameterName")
    
@Step("Click On Cancel Button In Search Bar")
def step(context):
    keywords.prj_window_click_on_search_button()
    
@Step("Change The Value Of Searched Parameter")
def step(context):
    keywords.keywords_set_integer_parameter_values_in_datagrid(context.userData["random_parameter_list"],context.userData["controllerFamily"])

@Step("Verify Cursor Is Not Focused In Search Editbox")
def step(context):
    keywords.prj_window_cursor_in_edit_box_of_search_editor_should_blink(False)
    
################# Search Option ############

######################## FAVORITES ############################################
@Step("Click On The Favorite Group In Tree View")
def step(context):
    keywords.project_window_tree_click_item("Favourites")

@Step("Check The CheckBox Of Integer Parameters To Set As Favorite")
def step(context):
    keywords.keyword_select_randomly_selected_parameters_to_plot_or_favorite(context.userData["Parameters"],  "Favorite")
    
@Step("UnCheck The CheckBox Of Randomly Selected Parameters In Favorite Table")
def step(context):
    keywords.keyword_select_randomly_selected_parameters_to_plot_or_favorite(context.userData["Parameters"], "Favorite_verify")    

@Step("Verify Selected Favorite Parameters In Favorite Table")
def step(context):
    keywords.keyword_project_window_verify_searched_value(context.userData["Parameters"], "ParameterName")

@Step("Get The Integer Parameter To Set As A Favorite")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData, keywords.keyword_get_database_integer_parameters_with_values(context.userData))

######################## FAVORITES ############################################

################# View More ###############

@Step("Click On View More Button And Verify View More Window Opened")
def step(context):
    keywords.keyword_click_and_verify_view_more_window(context.userData["controllerFamily"])
    
################# View More ##############

##################### Factory Reset ###############

@Step("Click On Factory Reset Button")
def step(context):
    keywords.prj_window_click_on_factory_reset_button()
    
@Step("Click On In Controller Button In Popup Window")
def step(context):
    keywords.popup_messagebox_window_click_InController_button("PROJECT_WINDOW")
    
@Step("Click On In Project Button In Popup Window")
def step(context):
    keywords.popup_messagebox_window_click_InProject_button("PROJECT_WINDOW")
    
@Step("Check InProject Button Is Enabled In PopUp Window")
def step(context):
    keywords.popup_messagebox_window_check_InProject_button_isEnabled("PROJECT_WINDOW")


@Step("Check InController Button Is Enabled In PopUp Window")
def step(context):
    keywords.popup_messagebox_window_check_InController_button_isEnabled("PROJECT_WINDOW")
    
##################### Factory Reset ###############


##################### Import Setting From Controller ###############

@Step("Click On Import Setting From Controller Button")
def step(context):
    keywords.nav_goto_import_setting_from_controller_from_home_screen()

    
@Step("Get Connected Controller Information")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData, keywords.keywords_connected_controller_information())

@Step("Verify Connected Controller Information Is Visible")
def step(context):
    keywords.keyword_verify_connected_controller_details_is_visible(context.userData["controllerFamily"])

@Step("Verify Connected Controller Information Is Enabled")
def step(context):
    keywords.keyword_verify_connected_controller_details_is_enabled()
    
@Step("Check If NewFileName PopUp Is Visible")
def step(context):
    keywords.newfilename_window_is_visible(True,60)
    keywords.newfilename_window_is_enabled(True,60)
    
@Step("Set A FileName In NewFileName PopUp EditBox")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keywords_import_setting_from_controller_window_create_new_project_file())

@Step("Set Default FileName In NewFileName PopUp")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keywords_import_setting_from_controller_window_create_new_project_file())
    
@Step("Click Ok Button In NewFileName PopUp Window")
def step(context):
    keywords.newfilename_window_click_ok_button()
    
@Step("Verify Message Should Come As '|any|' In Import Setting From Controller Window")
def step(context, message_string):
    keywords.chk_please_connect_controller_label_is_visible()
    keywords.online_service_window_chk_please_connect_controller_label_text(message_string)

@Step("Check Text Of NewFileName PopUp")
def step(context):
    keywords.keyword_verify_label_text_import_setting_from_controller_window()
    
@Step("Verify Ok Button In NewFileName PopUp")
def step(context):
    keywords.keyword_verify_ok_button_import_setting_from_controller_window()
    
@Step("Verify Code Number Should Be Displayed In File Name Editbox By Default")
def step(context):
    keywords.keyword_verify_default_file_name_import_setting_from_controller_window(context.userData)
    
@Step("'|any|' Message Should Come In Import Setting From Controller Window")
def step(context, messagestring):
    keywords.Connecting_controller_progress_label_visible()
    keywords.Connecting_controller_progress_label_text(messagestring)
    keywords.keyword_sleep(5)

@Step("'|any|' Message Should Come After Connecting Controller In Import Setting From Controller Window")
def step(context, messagestring):
    keywords.Import_Setting_controller_model_progress_label_visible()
    keywords.Import_Setting_controller_model_progress_label_text(messagestring)

@Step("Controller Should Not Go To Fadeout State")
def step(context):
    keywords.check_online_controller_image_is_fadeout(False)
    
@Step("Controller Should Go To Fadeout State")
def step(context):
    keywords.check_online_controller_image_is_fadeout(True)

@Step("Save The Project In Temp Location Using File Copy From Import Setting From Controller")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,
                                                   keywords.keyword_copy_project_to_temp_directory(context.userData["connected_project_name"], context.userData["PROJECT_WORKING_DIR"], context.userData["controllerFamily"]))


@Step("Select Saved Project From Temp Directory Path In Import Setting From Controller")
def step(context):
    keywords.keyword_select_project_from_path_open_window(context.userData, "OPEN", context.userData["connected_project_name"])
    keywords.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE","OPENING_PROJECT_IN_IMPORT_SETTINGS_FROM_CONTROLLER_WINDOW")
    

@Step("Opening Saved Project From Temp Path In Import Setting From Controller")
def step(context):
    keywords.keyword_open_project_from_temp_path(context.userData, "OPEN", context.userData["connected_project_name"])

@Step("Verify Project Path And File With Extension For Saved File Is Exist From Import Setting From Controller")
def step(context):
    keywords.keyword_check_if_file_with_extension_exists_in_specified_path(context.userData["connected_project_name"], context.userData["PROJECT_WORKING_DIR"], context.userData["controllerFamily"])


@Step("Modify Parameter Values In Duplicate Project File From Import Setting From Controller")
def step(context):
    keywords.keyword_modify_parameter_values_in_duplicate_project_file(context.userData, context.userData["connected_project_name"])
                                                       
@Step("Get last Saved Filepath And Valid Filename And Open The Newly Copied File In Import Setting From Controller")
def step(context):
    keywords.keyword_copy_rename_valid_filename_and_Open_file(context.userData["PROJECT_WORKING_DIR"],context.userData["connected_project_name"],context.userData['controllerFamily'],"OPEN")


##################### Import Setting From Controller ###############


############# Tag Copy To Controller ###########

@Step("Verify Set Main Switch On After Copying Label Is Visible") 
def step(context):
    keywords.copy_to_controller_check_text_and_checkbox_of_mainswitch_isVisible()

@Step("Verify Set Main Switch On After Copying Label Is Not Visible") 
def step(context):
    keywords.copy_to_controller_check_text_and_checkbox_of_mainswitch_isVisible(False)
    
@Step("Verify Set Main Switch On After Copying Label Is Enabled") 
def step(context):
    keywords.copy_to_controller_check_text_and_checkbox_of_mainswitch_is_enabled()    
    
@Step("Verify The Checkbox Status Is Unchecked By Default")    
def step(context):
    keywords.copy_to_controller_mainswitch_checkbox_status(False)

@Step("Check Single And Multiple Controller Programming Label Is Disable For Bin File In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_check_sinlgle_multi_contr_prgm_visible(False)
    
@Step("Check Single Controller Programming Label Is Disable For Bin File In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_check_sinlgle_controller_prgm_visible(False)
    
@Step("Check Multiple Controller Programming Label Is Disable For Bin File In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_check_multiple_controller_prgm_visible(False)
    
@Step("Verify Favorite Table Is Enable")
def step(context):
    keywords.keyword_copy_to_controller_check_fav_table_enabled(True)
    keywords.keyword_copy_to_controller_check_fav_table_visible(True)
    
@Step("Verify Favorite Table Is Disable For Bin File")
def step(context):
    keywords.keyword_copy_to_controller_check_fav_table_visible(False)

@Step("Verify The Firmware Update Failed Progress Bar")
def step(context):
    keywords.keyword_verify_firmware_updated_failed_progress_bar()

@Step("Verify The Firmware Update Failed Progress Bar Is Not Visible")
def step(context):
    keywords.firmware_upgrade_check_firmware_update_failed_progress_bar_is_visible(False)

############# Tag Copy To Controller ###########

##################### On-line Service  ###############

@Step("Navigate To On-line Service Window")
def step(context):
    keywords.nav_goto_online_service_from_home_screen()
    
@Step("On-line Service Window Is Visible")
def step(context):
    keywords.online_service_window_visible()

@Step("Verify Chart Window Is Visible After Opening Chart From On-line Service Window")
def step(context):
    keywords.check_open_chartWindow_is_visible()
    keywords.check_open_chartWindow_is_Enabled()

@Step("Verify Parameters Tab Is Visible And Enabled")
def step(context):
    keywords.keyword_online_service_window_check_parameters_tab_is_visible_and_enabled()
    
@Step("Verify Parameters Tab Label Text")
def step(context):
    keywords.keyword_online_service_window_check_parameters_tab_label_text()       
    
@Step("Verify Alarms Tab Is Visible And Enabled")
def step(context):
    keywords.keyword_online_service_window_check_alarms_tab_is_visible_and_enabled()  

@Step("Verify Alarms Tab Label Text")
def step(context):
    keywords.keyword_online_service_window_check_alarms_tab_label_text()   
   
@Step("Verify Input/Output Tab Is Visible And Enabled")
def step(context):
    keywords.keyword_online_service_window_check_input_output_tab_is_visible_and_enabled()    
    
@Step("Verify Input/Output Tab Label Text")
def step(context):
    keywords.keyword_online_service_window_check_input_output_tab_label_text()     
    
@Step("Click On The Input/Output Tab")
def step(context):
    keywords.online_service_window_click_input_output_tab()

@Step("Verify The MainSwitch Label In Input Output Tab")
def step(context):
    keywords.keyword_online_service_window_verify_mainSwitch_label()
    
@Step("Verify The Manual RadioButton In Input Output Tab")
def step(context):
    keywords.keyword_online_service_window_verify_manual_radioButton()

@Step("Verify The Start RadioButton In Input Output Tab")
def step(context):
    keywords.keyword_online_service_window_verify_start_radioButton()

@Step("Verify The Stop RadioButton In Input Output Tab")
def step(context):
    keywords.keyword_online_service_window_verify_stop_radioButton()

@Step("Click on the Manual RadioButton In Input Output Tab")
def step(context):
    keywords.online_service_window_click_manual_radiobutton()
    
@Step("Click on the Start RadioButton In Input Output Tab")
def step(context):
    keywords.online_service_window_click_start_radiobutton()

@Step("Click on the Stop RadioButton In Input Output Tab")
def step(context):
    keywords.online_service_window_click_stop_radiobutton()

@Step("Verify Manual RadioButton Is Selected By Default In Input Output Tab")
def step(context):
    keywords.keyword_online_service_window_verify_manual_radioButton_isSelected_by_default_in_input_output_tab()

@Step("Verify The Manual Header Label Is Available After Clicking Manual RadioButton")
def step(context):
    keywords.keyword_online_service_window_verify_manual_header_label_in_manual_radioButton()
    
@Step("Verify The Manual Header Label Is Not Available After Clicking Start RadioButton")
def step(context):
    keywords.online_service_window_check_manual_label_in_inputOutput_table_is_visible(False)
    keywords.online_service_window_check_manual_label_in_inputOutput_table_is_enabled(False)

@Step("Verify The Manual Header Label Is Not Available After Clicking Stop RadioButton")
def step(context):
    keywords.online_service_window_check_manual_label_in_inputOutput_table_is_visible(False)
    keywords.online_service_window_check_manual_label_in_inputOutput_table_is_enabled(False)

@Step("Verify The Column Position Of Manual Header Label In Input Output Table")
def step(context):
    keywords.keyword_verify_column_position_of_manual_label_in_input_output_table("Manual")
       
##################### On-line Service  ###############


################### Ploting ###########

@Step("Verify Chart Window Is Visible")
def step(conytext):
    keywords.check_chartWindow_is_visible()
    keywords.check_chartWindow_is_enable()

@Step("Verify Chart Window Should Not Visible")
def step(conytext):
    keywords.check_chartWindow_is_visible(False)
    keywords.check_chartWindow_is_enable(False)

@Step("Opening Saved Chart From Working Directory Path")
def step(context):
    keywords.keyword_open_created_samefile_in_prj_win(context.userData["PROJECT_WORKING_DIR"],context.userData["SAVED_CHART_FILE_NAME"],context.userData['controllerFamily'],"OPEN")
    
@Step("Write Saved Chart From Working Directory Path")
def step(context):
    keywords.Window_Dialog_write_project_path(context.userData["SAVED_CHART_FILE_NAME"], "OPEN")
    keywords.project_window_visible(60)
  
@Step("Select Saved Chart From Working Directory Path")
def step(context):
    keywords.Window_Dialog_select_file_from_list_of_files_in_window("OPEN", context.userData["SAVED_CHART_FILE_NAME"])
    keywords.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE","OPENING_CHART_PROJECT_IN_ONLINE_SERVICE_WINDOW")

@Step("Enter A Unavailable Chartname")
def step(context):
    keywords.keyword_open_window_open_unavailable_file_in_default_path(context.userData,True)
    
@Step("Opening Opened Chart From Working Directory Path")
def step(context):
    keywords.keyword_open_created_samefile_in_prj_win(context.userData["PROJECT_WORKING_DIR"],context.userData["SAVED_CHART_FILE_NAME"],context.userData['controllerFamily'],"OPEN")
    
@Step("Verify Chart Button Is Enabled")
def step(context):
    keywords.online_service_window_chk_chart_button_Enable()
    
@Step("Verify The Chart Name After Opening The Saved Chart")
def step(context):
    keywords.keyword_on_line_service_verify_already_opened_chart(context.userData)

@Step("Verify Chart File Extension In Open Window")
def step(context):   
    keywords.keyword_check_default_chart_filter_text_in_window_dialog("OPEN")

################### Ploting ###########    

########################### Common Steps For Popup Window ###############


@Step("Check '|any|' Text Is Displayed In PopUp Window")
def step(context,messageString):
    keywords.popup_messagebox_window_check_message_text(messageString, "PROJECT_WINDOW")
    
@Step("Check '|any|' Text Is Displayed In PopUp Window After Stripping Newlines in '|any|'")
def step(context,messageString,window):
    keywords.popup_messagebox_window_check_message_text_after_stripping_newlines(messageString, window)
    
@Step("Verify OK and X button In Popup Window In '|any|'")   
def step(context,window):
    keywords.keyword_check_popup_window_x_and_ok_button_text(window)

@Step("Check Cancel Button Is Enabled In Popup Window")
def step(context):
    keywords.popup_messagebox_window_CANCEL_button_Enabled("PROJECT_WINDOW")

@Step("Verify Header Of Popup Window In Preference Window")
def step(context):
    keywords.keyword_verfiy_popup_window_header_text("HOME_WINDOW")

@Step("Verify Header Of Popup Window In Copy To Controller Window")
def step(context):
    keywords.keyword_verfiy_popup_window_header_text("COPY_TO_CONTROLLER_WINDOW")

@Step("Verify Header Of Popup Window In Set Parameter Window")
def step(context):
    keywords.keyword_verfiy_popup_window_header_text("HOME_WINDOW")
    
@Step("Verify Header Of Popup Window In Project Description Window")
def step(context):
    keywords.keyword_verfiy_popup_window_header_text("HOME_WINDOW")

@Step("Verify Header Of Popup Window In Project Window")
def step(context):
    keywords.keyword_verfiy_popup_window_header_text("PROJECT_WINDOW")
    
@Step("Verify Header Of Popup Window In Convert Settings Window")
def step(context):
    keywords.keyword_verfiy_popup_window_header_text("CONVERTSETTINGS_WINDOW")
    
@Step("Verify Header Of Popup Window In Print Window")
def step(context):
    keywords.keyword_verfiy_popup_window_header_text("PRINT_WINDOW")

@Step("Verify Header Of Popup Window In Online Service Window")
def step(context):
    keywords.keyword_verfiy_popup_window_header_text()
    
@Step("Click On No Button On PopUp Window")
def step(context):
    keywords.popup_messagebox_window_click_no_button()
    
@Step("Click On Yes Button On PopUp Window")
def step(context):
    keywords.popup_messagebox_window_click_yes_button()

@Step("Verify Popup Message Should Come As '|any|' In Set Parameter Window")
def step(context,message_string):
    keywords.popup_messagebox_window_is_visible("HOME_WINDOW", True)
    keywords.keyword_verify_popup_msg_in_window(message_string, "HOME_WINDOW")

@Step("Verify OK and X button In Popup Window In Set Parameter Window")   
def step(context):
    keywords.keyword_check_popup_window_x_and_ok_button_text("HOME_WINDOW")
    
@Step("Verify OK and X button In Popup Window In Preference Window")   
def step(context):
    keywords.keyword_check_popup_window_x_and_ok_button_text("HOME_WINDOW")

@Step("Verify OK and X button For '|any|' In Popup Window In Preference Window")   
def step(context,language):  
    keywords.keyword_check_popup_window_x_and_ok_button_text_for_selected_language(language,"HOME_WINDOW")
    
@Step("Verify OK and X button In Popup Window In Project Description Window")   
def step(context):
    keywords.keyword_check_popup_window_x_and_ok_button_text("HOME_WINDOW")

@Step("Verify OK and X button In Popup Window In Project Window")   
def step(context):
    keywords.keyword_check_popup_window_x_and_ok_button_text("PROJECT_WINDOW")

@Step("Verify OK and X button In Popup Window In Copy To Controller Window")   
def step(context):
    keywords.keyword_check_popup_window_x_and_ok_button_text("COPY_TO_CONTROLLER_WINDOW")

@Step("Verify OK and X button In Popup Window In Online Service Window")   
def step(context):
    keywords.keyword_check_popup_window_x_and_ok_button_text("ONLINE_SERVICE_WINDOW")
    
@Step("Put To Sleep For '|integer|' Sec")
def step(context, time):
    keywords.keyword_sleep(time)  

@Step("Verify Popup Message Should Come As '|any|' In Online Service Window")
def step(context,message_string):
    keywords.keyword_sleep(1)
    keywords.popup_messagebox_window_is_visible()
    keywords.keyword_verify_popup_msg_in_window(message_string, "ONLINE_SERVICE_WINDOW")
    
########################### Common Step For Popup Window ###############

################ 'File already exists. Do you want to overwrite?' Popup ##################

@Step("Verify Yes, No And X Button Are Visible")
def step(context):
    keywords.keyword_check_popup_window_yes_no_and_x_button_visible("HOME_WINDOW")
    
@Step("Verify Yes, No And X Button Are Enable")
def step(context):
    keywords.keyword_check_popup_window_yes_no_and_x_button_enable("HOME_WINDOW")
    
@Step("Verify Text Of Yes, No And X Button")
def step(context):
    keywords.keyword_check_popup_window_yes_no_and_x_button_text("HOME_WINDOW") 

################ 'File already exists. Do you want to overwrite?' Popup ##################

################## 'Do you want to save the Changes made?' Popup #################

@Step("Verify Yes, No And X Button Are Visible In Project Window")
def step(context):
    keywords.keyword_check_popup_window_yes_no_and_x_button_visible("PROJECT_WINDOW")
    
@Step("Verify Yes, No And X Button Are Enable In Project Window")
def step(context):
    keywords.keyword_check_popup_window_yes_no_and_x_button_enable("PROJECT_WINDOW")
    
@Step("Verify Text Of Yes, No And X Button In Project Window")
def step(context):
    keywords.keyword_check_popup_window_yes_no_and_x_button_text("PROJECT_WINDOW") 

@Step("Click On Cancel Button On Popup Window")
def step(context):
    keywords.popup_messagebox_window_click_Cancel_button("PROJECT_WINDOW")

@Step("Click On X Button On Popup Window")
def step(context):
    keywords.popup_messagebox_window_click_Close_button("PROJECT_WINDOW")
    
@Step("Verify, Do you want to save the Changes made?, Popup Window Is Not Visible")
def step(context):
    keywords.popup_messagebox_window_is_visible("PROJECT_WINDOW", False)

################## 'Do you want to save the Changes made?' Popup #################


################### Close The Application #############

@Step("Close The Application")
def step(context):
    keywords.keyword_close_application()

################### Close The Application #############
    
    
@Step("Click On OnLine Service Button In Home Window")
def step(context):
    keywords.click_online_service_button()
    
@Step("Verify Controller Is Connected With KoolProg")
def step(context):
    keywords.keyword_verify_controller_is_connected_with_koolProg(context.userData["controllerFamily"])
    
@Step("Verify Menu Icons And Grid Icons In Online Service Window Is Enabled")
def step(context):
    keywords.keyword_verify_menu_icons_in_online_service_window_is_enabled()

@Step("Check Controller Is Connecting Image Is Visible")
def step(context):
    keywords.check_online_controller_loading_image_is_visible(True,60)
    
@Step("Check The Connected Controller Variant Name")
def step(context):
    keywords.check_connected_controller_online_variant_text_is_visible(True,60)
    keywords.check_online_variant_text(context.userData["controllerVariant"])
    
@Step("Check The Connected Controller Image")
def step(context):
    keywords.check_online_controller_image(keywords.get_product_image_path(
            context.userData["controllerVariant"]))

##################### Recent Project ##############

@Step("Open Recent Project From Set Parameter Window During Controller Connected Mode")
def step(context):
    keywords.keyword_select_recent_project_file(context.userData["connected_project_name"])
   

@Step("Verify All Created Projects Should Come In Recent Project")
def step(context):
    keywords.keyword_created_projects_in_recent_project(context.userData)
    
##################### Recent Project ##############



###########################################PLUG AND PLAY###################################################

@Step("Disable All Serial Ports")
def step(context):
    keywords.keyword_disable_all_ports()
    

    
@Step("Enable Random Serial Port")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.enable_random_serial_port())

@Step("Enable Random Serial Port Except AKCC, EKE, ERC21x")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.enable_random_serial_port(["AK-CC55","EKE1x","ERC21x"],None))

@Step("Enable Random Serial Port Except AKCC, EKE")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.enable_random_serial_port(["AK-CC55","EKE1x"],None))


@Step("Enable Random Serial Port Except EET, ERC11x, ETC1Hx")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.enable_random_serial_port(["EET","ERC11x","ETC1Hx"],None))

@Step("Enable Serial Port For '|any|' Controller")
def step(context, controllerfamily):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.enable_random_serial_port(None,controllerfamily))

@Step("Enable Serial Port For '|any|'")
def step(context, controllerfamily):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.enable_random_serial_port(None,controllerfamily,"Yes"))

@Step("Enable Serial Port For '|any|' Controller To Import New Cdf")
def step(context, controllerfamily):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_enable_serial_port_for_importing_new_cdf(controllerfamily))

@Step("Break The Communication Of Port With KoolProg")
def step(context):
    keywords.click_on_disable_button_in_KoolProg()
    
@Step("Verify Please Connect A Controller Label Is Visible")
def step(context):
    keywords.chk_please_connect_controller_label_is_visible(True,10)

@Step("Verify Please Connect A Controller Label Text Is Displayed")
def step(context):
    keywords.keyword_online_service_window_chk_please_connect_controller_label_text()

@Step("Verify Menu Icons In Online Service Window Is Enabled")
def step(context):
    keywords.online_service_window_chk_menu_bar_icons_Enable(40)
    
@Step("Enable The Port Again")
def step(context):
    keywords.keyword_enable_port(context.userData["PortNumber"],context.userData["controllerVariant"],context.userData["softwareVersion"])
    keywords.click_on_enable_button_in_KoolProg()

@Step("Click On The Enable Button In KoolProg")
def step(context):
    keywords.click_on_enable_button_in_KoolProg()
    
@Step("Verify Open, Home, Help Icons Are Enable")
def step(context):
    keywords.online_service_check_open_home_help_icons_are_enabled(30)

    
@Step("Verify SaveAs, Print Icons Are Disable")
def step(context):
    keywords.keyword_check_print_saveAs_icons_are_disable()
    
@Step("Click Copy To Controller Button In Main Window")
def step(context):
    keywords.home_window_click_copy_to_controller_button()
    
@Step("Check Save, SaveAs, Export, Print Icons Is Disable")
def step(context):
    keywords.keyword_check_save_saveAs_export_print_icons_are_disable()
    
@Step("Enable The Port For Created Project")
def step(context):
    keywords.keyword_enable_port(context.userData["PortNumber"],context.userData["controllerVariant"],context.userData["softwareVersion"])
    
@Step("Enable The Port For Non Compatible Project")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_choose_port_for_controller_details_other_than_created_project(context.userData))
    keywords.keyword_enable_port(context.userData["connected_portNumber"],context.userData["connected_controller_variant"],context.userData["connected_softwareVersion"])
   
@Step("Verify Please Connect A Controller Label Text Is Displayed In Connected Controller Status Message")
def step(context):
    keywords.keyword_chk_please_connect_controller_label_text()
    
@Step("Check Export Button Is Enabled")
def step(context):
    keywords.prj_window_check_export_button_is_enabled()
    
@Step("Check Export Button Is Disabled")
def step(context):
    keywords.prj_window_check_export_button_is_enabled(False)

@Step("Check Print Button Is Enabled")
def step(context):
    keywords.prj_window_check_print_button_is_enabled()

@Step("Check Save Button Is Enabled")
def step(context):
    keywords.prj_window_check_save_button_is_enabled()
    
@Step("Check Save Button Is Disabled")
def step(context):
    keywords.prj_window_check_save_button_is_enabled(False)
    
@Step("Check The Connected Controller Variant Text Is Visible")
def step(context):
    keywords.check_connected_controller_online_variant_text_is_visible(True,60)

@Step("Check The Connected Controller Variant Text Is Enabled")
def step(context):
    keywords.check_the_connected_controller_variant_is_enabled()

@Step("Click On Import Settings From Controller Button In SetParameter Window")
def step(context):
    keywords.set_param_window_click_import_setting_from_controller_button()
    
@Step("Enable All Ports")
def step(context):
    keywords.keyword_enable_all_ports()
    
@Step("Click On Copy To Controller Button In Home Window")
def step(context):
    keywords.home_window_click_copy_to_controller_button()

@Step("Check Single Multi Controller Programming Label Is Enabled In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_check_sinlgle_multi_contr_prgm_Enabled()
    
@Step("Check Please Connect A Controller Text Is Enabled In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_check_please_connect_controller_Enabled()
    
@Step("Check Single Controller Programming Label Is Enabled In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_check_sinlgle_controller_prgm_Enabled()
    
@Step("Check Multiple Controller Programming Label Is Enabled In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_check_multiple_controller_prgm_Enabled()

@Step("Check Start Label Is Not Visible In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_check_start_label_visible(False)

@Step("Check Start Label Is Visible In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_check_start_label_visible()
    
@Step("Check Start Label Is Disabled In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_check_start_label_Enabled(False)
    
@Step("Check Home Button Is Enabled")
def step(context):
    keywords.prj_window_check_home_button_is_enabled()

    
@Step("Check Browse Button Is Enabled In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_check_browse_button_Enabled()

@Step("Check Browse Button Is Disabled In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_check_browse_button_Enabled(False)

@Step("Check Set As Fav Button Is Enabled In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_check_set_as_fav_button_label_visible(True)
    
@Step("Check Set As Fav Button Is Not Visible In Copy To Controller")
def step(context):
    keywords.Copy_to_controller_check_set_as_fav_button_label_visible(False)

@Step("Check Single Controller Programming Label Is Disabled In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_check_sinlgle_controller_prgm_Enabled(False)
    
@Step("Check Multiple Controller Programming Label Is Disabled In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_check_multiple_controller_prgm_Enabled(False)


@Step("Verify Non Compliant Controller Details")
def step(context):
    keywords.keyword_verify_non_compliant_controller_details()

@Step("Verify Browsed File And Connected Controller Details Are Compatible")
def step(context):
    keywords.keyword_verify_browsed_file_and_connected_controller_details_are_compatible()

@Step("Verify Browsed File And Connected Controller Details Are Not Compatible")
def step(context):
    keywords.keyword_verify_browsed_file_and_connected_controller_details_are_not_compatible()
    
@Step("Check Disconnected from device Text Is Displayed In PopUp Window")
def step(context):
    keywords.popup_messagebox_window_check_message_text("Disconnected from device.", "PROJECT_WINDOW")
    
@Step("Click OK Button In Popup Window")
def step(context):
    keywords.popup_messagebox_window_click_ok_button("HOME_WINDOW")

@Step("Create A Project By Choosing A Random Port")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_create_a_project_by_choosing_a_random_port())

@Step("Create A Project By Choosing A Random Port Except EKE , AKCC")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_create_a_project_by_choosing_a_random_port(["EKE1x", "AK-CC55"],None))

@Step("Create A Project For '|any|' Controller")
def step(context, controller_family):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_create_a_project_by_choosing_a_random_port(None, controller_family, "Yes"))

@Step("New Project Is Created For Selected Controller Details")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_create_new_project_given_index(context.userData["SelectedIndex"]))
    keywords.report_log("Controller details ={}".format(context.userData))
    
@Step("Click On Browse Button In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_click_Browse_button()
    
@Step("Click On Start Button In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_click_start_button()
   
@Step("Click On Single Controller Programming Button In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_click_single_controller_pgm_button() 
    
@Step("Check Unable To Write Data To Device Text Is Displayed In PopUp Window")
def step(context):
    keywords.popup_messagebox_window_check_message_text("Unable to write data to device", "PROJECT_WINDOW")
    
@Step("Check Start Label Is Enabled In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_check_start_label_Enabled()
    
@Step("Click On Multiple Controller Programming Button In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_click_multiple_controller_pgm_button()
    
@Step("Set The Counter Value As 10 In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_enter_set_counter(10)
    
@Step("Click On Count Up Button In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_click_count_Up_timer_button()
    
@Step("Click On Count Down Timer In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_click_count_down_timer_button()

@Step("Verify Firmware Password Window Is Visible In Copy To Controller Window")
def step(context):
    keywords.keyword_verify_firmware_password_window_is_visible()

@Step("Verify Firmware Password Window Is Not Visible In Copy To Controller Window")
def step(context):
    keywords.keyword_verify_firmware_password_window_is_not_visible()
    
@Step("Verify Firmware Password Window Is Enabled In Copy To Controller Window")
def step(context):
    keywords.keyword_verify_firmware_password_window_is_enabled()
    
@Step("Verify Firmware Password Window Labels And Buttons Text In Copy To Controller Window")
def step(context):
    keywords.keyword_verify_firmware_password_window_text()

@Step("Set Password In Firmware Password Window")
def step(context):
    keywords.Copy_to_controller_set_text_in_password_editbox(context.userData["password"])
    
@Step("Set '|any|' Password In Firmware Password Window")
def step(context,password):
    keywords.Copy_to_controller_set_text_in_password_editbox(password)

@Step("Click Ok Button In Firmware Password Window")
def step(context):
    keywords.Copy_to_controller_firmwarePassword_click_ok_button()
    
@Step("Click On Chart Button In Online Service Window")
def step(context):
    keywords.online_service_click_chart_button()
    keywords.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE","SWITCHING_FROM_ONLINE_SERVICE_WINDOW_TO_CHART_WINDOW")
    
    
@Step("Click On All Tree Item In Tree View")
def step(context):
    keywords.project_window_tree_click_item("All")
    keywords.keyword_put_to_sleep_with_respect_to_expected_performance("OFFLINE","LOADING_PARAMETERS_AFTER_CLICKING_ALL_TREE_ITEM")

@Step("Click On '|any|' Tree Item In Tree View For Selected Language")
def step(context,tree_item):
    keywords.keyword_click_tree_item_with_respect_to_selected_language(tree_item,context.userData["selected_language"])
    keywords.keyword_put_to_sleep_with_respect_to_expected_performance("OFFLINE","LOADING_PARAMETERS_AFTER_CLICKING_ALL_TREE_ITEM")
    
@Step("Select And Fetch '|any|' Parameter Details For Chart Window")
def step(context,parameterCount):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.select_and_return_parameter_details_from_dataGrid(parameterCount))
    
@Step("Check Menu Icons Are Enabled In Chart Window")
def step(context):
    keywords.chartWindow_chk_menu_bar_icons_Enable()
    
@Step("Check Menu Icons Are Disabled In Chart Window")
def step(context):
    keywords.chartWindow_chk_menu_bar_icons_Disable()
@Step("Click On Export Button")
def step(context):
    keywords.prj_window_click_on_export_button()
    keywords.keyword_put_to_sleep_with_respect_to_expected_performance("ONLINE","EXPORTING_SETTING_TO_CONTROLLER")
    
@Step("Check Export Settings Failed Text Is Displayed In PopUp Window")
def step(context):
    keywords.popup_messagebox_window_check_message_text("Export settings failed", "PROJECT_WINDOW")
    
@Step("Check Start Button Is Enabled In Chart Window")
def step(context):
    keywords.chartWindow_check_stop_is_Enabled()
    
@Step("Check All Labels Are Displayed In Chart Window")
def step(context):
    keywords.chartWindow_check_all_Labels_are_visible()
    
@Step("Check The Connected Controller Image In Chart Window")
def step(context):
    keywords.check_online_controller_image(keywords.get_product_image_path(
            context.userData["controllerVariant"]),"chartWindow")
    
@Step("Verify Popup Window Is Visible In Online Service Window")
def step(context):
    keywords.popup_messagebox_window_is_visible("PROJECT_WINDOW")
    
@Step("Check Please Select Only 10 Parameters Text Is Displayed In PopUp Window")
def step(context):
    keywords.popup_messagebox_window_check_message_text("Please select only 10 parameters", "PROJECT_WINDOW")
 
@Step("Check Ok Button Is Enabled In PopUp Window")
def step(context):
    keywords.popup_messagebox_window_OK_button_Enabled("PROJECT_WINDOW")

@Step("Check '|any|' Header Text In PopUp Window")
def step(context,koolProg_header):
    keywords.popup_messagebox_window_check_KoolProg_label_text(koolProg_header,"PROJECT_WINDOW")
    
@Step("Add Required Delay For '|any|' for '|any|' mode")
def step(context,moment,mode):
    keywords.keyword_put_to_sleep_with_respect_to_expected_performance(mode,moment)
    
@Step("Check X Button Is Enabled In Popup Window")
def step(context):
    keywords.popup_messagebox_window_X_button_Enabled("PROJECT_WINDOW")
    
@Step("Click Back Button In Chart Window")
def step(context):
    keywords.chartWindow_click_back_button()

    
@Step("Check Unable to complete your request, Please stop the chart and try again Text Is Displayed In PopUp Window")
def step(context):
    keywords.popup_messagebox_window_check_message_text("Unable to complete your request. Please stop the chart and try again.", "PROJECT_WINDOW")
 
@Step("Click Start/Stop Button In Chart Window")
def step(context):
    keywords.chartWindow_click_stop_or_start_button()
    
@Step("Chart Window Is Visible")
def step(context):
    keywords.check_chartWindow_is_visible()
    
@Step("Click SaveAs Button In Chart Window")
def step(context):
    keywords.chartWindow_click_saveAs_button()
    
@Step("Check Default FileType In SaveAs Dialog In Chart Window")
def step(context):
    keywords.keyword_chartWindow_check_default_fileType_in_saveAs_dialog()
    
@Step("Verify The Filetypes Available In SaveAs Dialog In Chart Window")
def step(context):
    keywords.keyword_chartWindow_check_fileType_list_in_saveAs_dialog()

@Step("Write The File Name In SaveAs Dialog In Chart Window With Default Csv Extension")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_chartWindow_write_the_file_name_with_specified_extension_in_dialog("SAVEAS","CSV_extension"))
    
@Step("Check If Saved Chart File Is Located In Default Location")
def step(context):
    keywords.keyword_check_if_file_exists_in_specified_path(context.userData["SAVED_CHART_FILE_NAME"],context.userData["PROJECT_WORKING_DIR"])
    

@Step("Write The File Name In SaveAs Dialog In Chart Window With Png Extension")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_chartWindow_write_the_file_name_with_specified_extension_in_dialog("SAVEAS","PNG_extension"))
 
 
@Step("Verify Zoom Level List Items In Chart Window")
def step(context):
    keywords.keyword_check_list_items_in_zoom_level_listbox()
    
    
@Step("Verify Label List Items In Chart Window")
def step(context):
    keywords.keyword_check_list_items_in_label_listbox()
    
    
@Step("Verify Log Interval List Items In Chart Window")
def step(context):
    keywords.keyword_check_list_items_in_log_interval_listbox()
    
@Step("Check The Grid CheckBox In Chart Window")
def step(context):
    keywords.chartWindow_check_grid_checkbox()
    
@Step("Check Grid Is Visible In Graph In Chart Window")
def step(context):
    keywords.chartWindow_check_grid_is_visible_in_graph_view()
    
@Step("Verify Log Period List Items In Chart Window")
def step(context):
    keywords.keyword_check_list_items_in_log_period_listbox()
    
@Step("Select A List Item In Log Period ComboBox In Chart Window")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_select_a_list_item_of_log_period_comboBox())
    
@Step("Verify If The Selected List Item Is Displayed In Log Period ComboBox In Chart Window")
def step(context):
    keywords.keyword_check_selected_item_in_log_period_comboBox_is_displayed(context.userData)
    
@Step("Verify Default List Item Is Displayed In Log Period Combobox In Chart Window")
def step(context):
    keywords.keyword_check_default_item_in_log_period_comboBox_is_displayed()
    
@Step("Verify Default List Item Is Displayed In Log Interval Combobox In Chart Window")
def step(context):
    keywords.keyword_check_default_item_in_log_interval_comboBox_is_displayed()
    
@Step("Verify Default List Item Is Displayed In Zoom Level Combobox In Chart Window")
def step(context):
    keywords.keyword_check_default_item_in_zoom_level_comboBox_is_displayed()
    
@Step("Verify Default List Item Is Displayed In Label Combobox In Chart Window")
def step(context):
    keywords.keyword_check_default_item_in_label_comboBox_is_displayed()
    
@Step("Verify If The Save Checkbox In Chart Window Is Checked")
def step(context):
    keywords.chartWindow_check_save_checkbox_ischecked(True)
    
@Step("Verify If The Grid Checkbox In Chart Window Is Unchecked")
def step(context):
    keywords.chartWindow_check_grid_checkbox_ischecked(False)
    
@Step("Verify Headers List In Chart Window Datagrid")
def step(context):
    keywords.keywords_check_headers_in_chartdataGrid()
    
@Step("Check Line Graph Label Is Visible In Chart Window")
def step(context):
    keywords.chartWindow_check_line_graph_label_is_visible(True)

@Step("Get List Of Files From Open Dialog")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_Window_Dialog_get_list_of_files("OPEN"))
    
@Step("Verify The Dialog Opens With Working Directory")
def step(context):
    keywords.keyword_verify_working_path_in_dialog(context.userData)
    
@Step("Verify Chart File Format")
def step(context):
    keywords.keyword_verify_chart_file_format(context.userData)
    
@Step("Fetch The System Date And Time")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_fetch_system_date_and_time())

@Step("Check KoolProg Header Text In PopUp Window")
def step(context):
    keywords.popup_messagebox_window_check_KoolProg_label_text("PROJECT_WINDOW")
    
@Step("Check Help Button Is Enabled")
def step(context):
    keywords.prj_window_check_help_button_is_enabled()    

@Step("Verify Please Connect A Controller Label Is Visible In Copy To Controller Window")
def step(context):
    keywords.Copy_to_controller_check_please_connect_controller_visible() 

@Step("Verify Please Connect A Controller Label Text Is Displayed In Copy To Controller Window")
def step(context):
    keywords.keyword_copy_to_controller_window_chk_please_connect_controller_label_text() 
    
@Step("Check Single Controller Radio Button Is Selected")
def step(context):
    keywords.Copy_to_controller_check_single_controller_prgmng_Is_Selected()    

@Step("Verify All The Supported Extensions In Window Dialog")
def step(context):
    keywords.keyword_check_supported_filters_texts_in_window_dialog("OPEN")

@Step("Verify Set As Favourite Button Text")
def step(context):
    keywords.keyword_chk_Set_as_fav_button(True) 
    
@Step("Verify Popup Message Should Come As '|any|' In Copy To controller Window")
def step(context,message_string):
    keywords.popup_messagebox_window_is_visible("PROJECT_WINDOW", True)
    keywords.keyword_verify_popup_msg_in_window(message_string, "PROJECT_WINDOW")

@Step("Verify The CountUp And Countdown Label")
def step(context):
    keywords.keyword_check_countUp_countdown_label()  

@Step("Verify Counter Should Not Accept More Than Maximum Count Value")
def step(context):
    keywords.keyword_copy_to_controller_check_counter_not_accept_more_than_maximum_count_value()

@Step("Verify Counter Should Not Accept less Than Minimum Count Value")
def step(context):
    keywords.keyword_check_counter_not_accept_more_than_minimum_count_value()

@Step("Click On Set As Favorite Button")
def step(context):
    keywords.Copy_to_controller_click_Set_As_Fav_button()    

@Step("Verify Created File Name In The Favorite Grid")
def step(context):
    keywords.keyword_verify_same_created_file_name_in_fav_table(context.userData["project_name"])
    keywords.Copy_to_controller_delete_fav_file_in_fav_table(context.userData["project_name"])
    

@Step("Verify Multiple Favorite Files Are In Favorite Grid")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_verify_multiple_favorite_files_in_fav_data_grid(context.userData))
    
@Step("Create Multiple Projects For Connected Controller")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_create_multiple_project_with_same_project_details(context.userData))

@Step("Verify Browse Multiple Files and Set Them As Favorite")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_set_multiple_files_as_favorite(context.userData))


@Step("Verify the Multiple Favorite Files In The Favorite Grid")
def step(context):
    context.userData = keywords.keyword_verify_multiple_favorite_files_in_fav_data_grid(context.userData)
    keywords.Keyword_copy_to_controller_delete_fav_file_in_fav_table(context.userData)
                                                                     
                                                                     
@Step("Set the Count value as '|any|'")
def step(context, count):
    context.userData["count"] = count
    keywords.Copy_to_controller_enter_set_counter(count)

@Step("Programming The File Multiple Times To Controller '|any|'")
def step(context,incrementDecrement):
    keywords.keyword_Copy_the_file_multiple_time(context.userData["count"], "PROJECT_WINDOW", context.userData["PortNumber"], context.userData["controllerFamily"],incrementDecrement)

@Step("Select The Favorite File From DataGrid")
def step(context):
    keywords.Copy_to_controller_select_fav_file_in_fav_table(context.userData["project_name"])

@Step("Delete the Favorite File From Favorite Grid In Copy To Controller")
def step(context):
    keywords.Copy_to_controller_delete_fav_file_in_fav_table(context.userData["project_name"])

@Step("Verify The Browsed Project File Details In Copy To Controller")
def step(context):
    keywords.Keyword_copy_to_controller_compare_project_details(context.userData)

@Step("Verify the Connecting Controller Text")
def step(context, text):
    keywords.Check_status_text_of_online_connecting_controller(text)

@Step("Verify Connected Controller Information Is Not Available")
def step(context):
    keywords.keyword_verify_controller_is_not_connected_with_koolprog(context.userData["controllerFamily"])

######################## Plotting ########################

@Step("Remove The ReadOnly Parameters From The Parsed DataGrid")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_eliminate_readOnly_parameters_from_parsed_dataGrid(context.userData["parsed_datagrid"]))
    
@Step("Select '|any|' Random Parameter Values From DataGrid After Eliminating ReadOnly Parameters")
def step(context,count):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_select_random_parameters_from_dataGrid_values_fetched(context.userData["Parsed_dataGrid_eliminating_readOnly_parameters"],count,True))
    

@Step("Check The CheckBox Of Selected Parameters From DataBase For Plotting")
def step(context):
    keywords.keyword_select_randomly_selected_parameters_to_plot_or_favorite(context.userData["Integer_Parameters_Table"])
            
####################### Plotting ##########################

############################# Progress Label ####################

@Step("Progress Label Is Visible")
def step(context):
    keywords.Connecting_controller_progress_label_visible()

@Step("'|any|' Message Should Come In Progress Label")
def step(context, messagestring):
    keywords.Connecting_controller_progress_label_text(messagestring)
    
############################# Progress Label ####################

####################### Menu icon #######################

    
@Step("Check Home Button Is Disabled")
def step(context):
    keywords.prj_window_check_home_button_is_enabled(False) 
    
@Step("Check Help Button Is Disabled")
def step(context):
    keywords.prj_window_check_help_button_is_enabled(False) 
    
@Step("Check Open Button Is Disabled")
def step(context):
    keywords.prj_window_check_open_button_is_enabled(False)
    
@Step("Check SaveAs Button Is Enabled")
def step(context):
    keywords.prj_window_check_saveas_button_is_enabled()
    
@Step("Check Open Button Is Enabled")
def step(context):
    keywords.prj_window_check_open_button_is_enabled()
    
@Step("Check Chart Button Is Enabled")
def step(context):
    keywords.online_service_check_chart_button_is_enabled()
    
@Step("Check Expand/Collapse Button Near Project Details In Project Window Is Enabled")
def step(context):
    keywords.prj_window_check_project_details_expand_collapse_button_is_enabled()
    
@Step("Check Expand/Collapse Button In Parameter Descrption Details In Project Window Is Enabled")
def step(context):
    keywords.prj_window_check_help_Expand_collapse_button_is_Enabled()
    
##################### Menu icon ############################

##################### Database###########################

@Step("Parse The Database And Get Integer Parameters Details Table")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_parseDatabase_get_integer_parameters_table(context.userData))

##################### Database###########################

@Step("New Project Is Created As Per User Selection For '|any|'")
def step(context,controllerFamily):
    indx = keywords.keyword_get_index_from_inputSheet_YES_for_controllerFamily_input(controllerFamily)
    keywords.report_log("indx={}".format(indx))
    context.userData = keywords.keyword_create_new_project_given_index(indx)
    keywords.report_log("Controller details ={}".format(context.userData))

@Step("Locate And Unzip The CDF")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_locate_and_unzip_the_CDF(context.userData))

@Step("'|any|' The Random Data To Change the CDF structure")
def step(context, structure_change):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_change_structure_in_the_cdf(context.userData["cdf_location"],structure_change))

@Step("Import Structure Changed CDF File")
def step(context):
    keywords.keyword_open_project_file_in_project_window(context.userData["structure_changed_cdf_folder"], context.userData["structure_changed_fileName"],"OPEN")

@Step("Set Language And Help Files For Selected Language")
def step(context):
    keywords.keyword_set_language_and_help_files_for_selected_language(context.userData)
    
##################### Compatible File ###########################  

@Step("Verify Connected Controller And Project Details Is Matching")
def step(context):
    keywords.keyword_check_connected_controller_details_with_project_details(context.userData)

@Step("Verify Connected Controller And Selected Controller Information Is Matching")  
def step(context):  
    keywords.keyword_verify_connnected_and_selected_controller_information(context.userData)

@Step("Verify Connected Controller And CopyToController Details Is Matching")
def step(context):
    keywords.keyword_check_connected_controller_details_with_copyToController_details()
    
@Step("Verify Opened Project File Is Compatible To Connected Controller")
def step(context): 
    keywords.keyword_check_opened_file_is_compatible_to_connnected_controller(context.userData)

@Step("Create Project Not Compatible To Connected Controller")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.create_project_not_compatible_to_connected_controller(context.userData))

##################### Compatible File ###########################  

##################### Controller Selection Window ###########################
   
@Step("Select '|any|' Controller Family")
def step(context,controllerFamily ):
    keywords.new_prj_window_select_controller_family(controllerFamily)
    
@Step("Verify Controller Variant In Controller Selection Window")
def step(context):
    keywords.keyword_new_prj_window_check_variant_list_for_specific_controller_family("AK-CC55")

##################### Controller Selection Window ###########################

##################### Compatible File ###########################  


##################### Tag Import Controller Model ###########################  

@Step("Click On Import Controller Model")
def step(context):
    keywords.set_param_window_click_import_controller_model()

@Step("Get Offline CDF File")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_get_offline_cdf_file(context.userData))

@Step("Get New Offline CDF File")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_get_new_offline_cdf_file(context.userData))

@Step("Import Offline CDF File")
def step(context):
    keywords.keyword_open_project_file_in_project_window(context.userData["cdf_file_path"], context.userData["cdf_file_name"],"OPEN")

@Step("Verify New Imported Code Number Is Added Into Project Description Window")
def step(context):
    keywords.keyword_proj_desc_win_check_new_added_code_no(context.userData, "True")
    
@Step("Verify New Imported Software Version Is Added Into Project Description Window")
def step(context):
    keywords.keyword_proj_desc_win_check_new_added_sw_version(context.userData["softwareVersion"], "True")
    
@Step("Verify New Imported Code Number Is Not Added Into Project Description Window")
def step(context):
    keywords.keyword_proj_desc_win_check_new_added_code_no(context.userData, "False")
    
@Step("Verify New Imported Software Version Is Not Added Into Project Description Window")
def step(context):
    keywords.keyword_proj_desc_win_check_new_added_sw_version(context.userData["softwareVersion"], "False")
    
@Step("Import Already Exist Offline CDF File")
def step(context):
    keywords.keyword_open_project_file_in_given_path(context.userData["cdf_file_path"],context.userData["cdf_file_name"],"OPEN")
    
@Step("Get KoolProg Supported Special Characters File Name")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_get_koolprog_supported_special_characters_for_file_name())

@Step("Get Window Supported Special Characters File Name")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_get_koolprog_supported_special_characters_for_file_name())
      
@Step("Rename CDF File")
def step(context):
    keywords.keyword_rename_cdf_file(context.userData)

@Step("Import CDF File")
def step(context):
    keywords.keyword_open_project_file_in_project_window(context.userData["cdf_file_path"],context.userData["changedfilename"], "OPEN")
    
##################### Import Controller Model ########################### 

##################### AKCC ########################### 

@Step("Select Controller Family And It's Variant")
def step(context):
    keywords.select_controller_in_new_project_window(context.userData["controllerFamily"], context.userData["controllerVariant"])
    
@Step("Create A Project With Imported CDF File")
def step(context):
    keywords.create_project_with_new_cdf(context.userData)
    
##################### AKCC ########################### 

##################### App Data ###########################

@Step("Delete Imported New Code Number And Software Version")
def step(context):
    keywords.keyword_clear_app_data()
    
##################### App Data ###########################

@Step("Check Existence Of Preference Window After Deleting App Data")
def step(context):
    keywords.keyword_handle_preference_window_and_automation_password()
    
##################### App Data ###########################

##################### Compatible File ########################### 


############## Tag bin file ##############

@Step("Get Bin File In Copy To Controller Window")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_copy_to_controller_window_get_bin_file(context.userData))
    
@Step("Get Bin File Of Selected Controller Information")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_copy_to_controller_window_get_bin_file_for_selected_controller_details(context.userData))
    
@Step("Open Non Compatible Bin File With SW Version Mismatch In Copy To Controller Window")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_copy_to_controller_window_get_non_compatible_bin_file_with_sw_version_mismatch(context.userData))
    keywords.Window_Dialog_write_project_path_and_click_open_button(context.userData["non_compatible_bin_file_path"],"OPEN")

@Step("Open Bin File In Copy To Controller Window")
def step(context):
    keywords.Window_Dialog_write_project_path_and_click_open_button(context.userData["bin_file_path"],"OPEN")

@Step("Open Non Compliant Bin File In Copy To Controller Window")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_copy_to_controller_window_get_non_compliant_bin_file(context.userData))
    keywords.Window_Dialog_write_project_path_and_click_open_button(context.userData["non_compliant_bin_file_path"],"OPEN")

@Step("Get Bin File '|any|' Than The Current Software Version In Copy To Controller Window")  
def step(context, message):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_copy_to_controller_window_get_bin_file_different_than_current_sw(context.userData, message)) 

############## Tag bin file ##############

########################### Tag Save Window ###############################

##################### Compatible File ########################### 

##################### Project Window Expand/Collapse ##################

@Step("Check If Project Details Expand And Collapse Button Is Visible and Enabled")
def step(context):
    keywords.keyword_prj_details_expand_and_collapse_button_is_visible_and_enabled() 

@Step("Check If Project Details Is Expanded")
def step(context):
    keywords.keyword_prj_details_is_expanded()
    
@Step("Verify Controller Details Are Visible When Project Details Is Expanded")
def step(context):
    keywords.keyword_verify_controller_is_connected_with_koolProg(context.userData["controllerFamily"])    
    
@Step("Verify Project Details Collapses When Collapse Is Clicked")
def step(context):
    keywords.keyword_prj_details_collapse_when_clicked_on_collapse()    
    
@Step("Verify Controller Details Are Not Visible When Project Details Is Collapsed")
def step(context):
    keywords.keyword_verify_conntected_controller_is_collapsed(context.userData["controllerFamily"])          
 
@Step("Check If Help Expander Button Is Visible And Enabled")
def step(context):
    keywords.keyword_project_help_description_is_visible_and_enabled()   
 
@Step("Verify If Help Expander Is Expanded")
def step(context):
    keywords.prj_window_check_status_of_help_expand_collapse_button() 

@Step("Verify Window Help Expander Collapses When Clicked Collapse Button")
def step(context):
    keywords.keyword_project_help_description_collapsed()      
    
@Step("Check If Project Details Description Is Expanded In Online Service")
def step(context):
    keywords.online_service_window_check_parameters_tab_is_visible(True)     
    
##################### Project Window Expand/Collapse ##################      

##################### Quick Wizard ########################### 

@Step("Verify Quick Wizard Icon Is Visible")
def step(context):
    keywords.prj_window_check_if_quick_setting_icon_is_visible()
    
@Step("Verify Quick Wizard Button Is Enabled")
def step(context):
    keywords.prj_window_check_if_quick_setting_icon_is_enabled()

@Step("Click On the Quick Settings Icon")
def step(context):
    keywords.prj_window_click_quick_settings_button()

@Step("Verify Quick Settings Window Is Visible")
def step(context):
    keywords.quick_settings_window_is_visible()

@Step("Verify Quick Settings Window Is Enabled")
def step(context):
    keywords.quick_settings_window_is_enabled()
    
@Step("Verify Quick Wizard Window In New Project Window")
def step(context):
    keywords.create_project_to_verify_quick_wizard_window(context.userData)

@Step("Verify Quick Settings Window Is Not Visible")
def step(context):
    keywords.quick_settings_window_is_visible(False)

@Step("Verify Quick Wizard Header Label From New Project Window")
def step(context):
    keywords.keyword_verify_new_prj_window_quick_wizard_header_label()

@Step("Verify Quick Setting Parameters Label From New Project Window")
def step(context):
    keywords.keyword_verify_new_prj_window_quick_setting_parameters_label()

@Step("Verify X button in Quick Setup Window")
def step(context):
    keywords.keyword_verify_x_button_from_quick_wizard()

@Step("Verify Finish Button In Quick Setup Window")
def step(context):
    keywords.keyword_verify_finish_button_from_quick_wizard()

@Step("Verify Scrollbar in Quick Setup Window")
def step(context):
    keywords.keyword_verify_scrollbar_from_quick_wizard()

@Step("Verify Wired Image Is Visible And Enabled")
def step(context):
    keywords.quick_settings_window_check_wiring_image_is_visible()
    keywords.quick_settings_window_check_wiring_image_is_enabled()
    
@Step("Verify Controller Variant In Quick Setup Window")
def step(context):
    keywords.keyword_verify_controller_variant_label_from_quick_wizard(context.userData["controllerVariant"])

@Step("Verify Controller Code Number In Quick Setup Window")
def step(context):
    keywords.keyword_verify_controller_codeNumber_label_from_quick_wizard(context.userData["controllerCodeNo"])

@Step("Verify Software Version In Quick Setup Window")
def step(context):
    keywords.keyword_verify_software_version_label_from_quick_wizard(context.userData["softwareVersion"])
    
@Step("Verify Quick Wizard Icon Is Visible And Enabled")
def step(context):
    keywords.prj_window_check_if_quick_setting_icon_is_visible()
    keywords.prj_window_check_if_quick_setting_icon_is_enabled()

@Step("Verify Software Version Combobox Has Imported Cdf")
def step(context):
    keywords.keyword_verify_sw_version_comboBox_has_imported_cdf(context.userData)
    
@Step("Click On Quick Wizard Icon")
def step(context):
    keywords.prj_window_click_quick_settings_button() 
    
@Step("Verify Quick Setting Window Is Visible And Enabled")
def step(context):
    keywords.keyword_quick_setting_window_is_visble_and_enabled()  

@Step("Verify Tooltip In Quick Wizard Has Commas In Place Of Decimals")
def step(context):
    keywords.keyword_verify_tooltip_displayed_with_min_and_max_in_quick_wizard(context.userData,context.userData["selected_language"])  

@Step("Click On Finish Button In Quick Settings Window")
def step(context):
    keywords.quick_settings_window_click_finish_button() 

@Step("Click On X Button In Quick Settings Window")
def step(context):
    keywords.quick_settings_window_click_X_button()  

@Step("Verify Tooltip Of Quick Wizard Displayed Along With Min And Max Range")
def step(context):
    keywords.keyword_verify_tooltip_displayed_with_min_and_max_in_quick_wizard(context.userData)

@Step("Verify Quick Wizard Collection From CDF File With The Quick Wizard UI")
def step(context):
    context.userData = keywords.keyword_verify_quick_wizard_collection_from_cdf_with_quickWizardUI(context.userData)

@Step("Get The Quick Settings Collection From The UI")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData, keywords.keyword_get_quick_setting_parameter_collection_from_UI())

@Step("Verify Tooltip Of Enum Parameter Is Not Displayed")
def step(context):
    keywords.keyword_verify_tooltip_of_enum_in_quick_wizard(context.userData)
    
@Step("Check The '|any|' Is Not Present In The '|any|'")
def step(context,Changed_quickSetting_collection,parsed_datagrid):
    keywords.keyword_verify_changed_values_in_quickSetting_with_dataGrid(context.userData[Changed_quickSetting_collection],context.userData[parsed_datagrid],False)
    
@Step("Check The '|any|' Is Present In The '|any|'")
def step(context,Changed_quickSetting_collection,parsed_datagrid):
    keywords.keyword_verify_changed_values_in_quickSetting_with_dataGrid(context.userData[Changed_quickSetting_collection],context.userData[parsed_datagrid],True)
    
@Step("Check Existence Of Popup Window After Clicking Finish Button In Quick Settings Window")
def step(context):
    keywords.keyword_check_existence_of_popup_window_in_quick_settings_window() 
  
@Step("Get The Quick Settings Collection With Respect To Datagrid")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keywords_get_quick_settings_collection_with_respect_to_dataGrid(context.userData["QuickSetting_Collection"],context.userData["Parameter_collection"]))

@Step("Verify '|any|' In The DataGrid Are Present In The '|any|'")
def step(context,Changed_values_collection,quick_settings_ui):
    keywords.keyword_verify_changed_values_in_dataGrid_with_quickSettings_UI(context.userData["quick_settings_ui"],context.userData["Changed_values_collection"])

@Step("Set Values In The '|any|' For '|any|'")
def step(context,QuickSetting_Collection,DataType_Enum_Collection):
    keywords.keyword_set_values_in_quickWizard_for_all_enum_collection(context.userData[QuickSetting_Collection],context.userData[DataType_Enum_Collection],context.userData["variant"])

@Step("Get The Selected Controller Variant")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_get_selected_controller_variant(context.userData["controllerFamily"],context.userData["controllerVariant"]))

##################### Quick Wizard ###########################  

##################### Convert Setting ###########################
@Step("Verify Convert Setting Icon Is Visible")
def step(context):
    keywords.prj_window_check_convert_settings_button_is_visible()

@Step("Verify Convert Setting Icon Button Is Enabled")
def step(context):
    keywords.prj_window_check_convert_settings_button_is_enabled()
   
@Step("Check Convert Setting Window Is Visible And Enabled")
def step(context):
    keywords.keyword_verify_convert_setting_window_is_visible_and_enabled()    

@Step("Verify Labels In Convert Settings Window Are Visible And Enable")
def step(context):
    keywords.keyword_verify_convert_settings_window_labels_are_visible_and_enable() 
     
@Step("Verify Labels Texts In Convert Settings Window")
def step(context):
    keywords.keyword_verify_convert_settings_window_label_texts() 
    
@Step("Verify Image And Buttons In Convert Settings Window Are Visible And Enable")
def step(context):
    keywords.keyword_verify_convert_settings_window_image_and_buttons_are_visible_and_enable(context.userData["controllerVariant"])     
    
@Step("Verify Buttons Texts In Convert Settings Window")
def step(context):
    keywords.keyword_verify_convert_settings_window_image_and_buttons_texts()     

@Step("Verify Software Version Mismatch Message Will Display")
def step(context):
    keywords.keyword_verify_message_of_software_version_mismatch()

@Step("Verify The Message Of Software Version Mismatch Is Not Available")
def step(context):
    keywords.keyword_verify_message_of_software_version_mismatch_is_not_available()   

@Step("Click On Convert Setting Icon")
def step(context):
    keywords.prj_window_click_convert_settings_button()

@Step("Verify Convert File Button Is Not Enabled")
def step(context):
    keywords.convert_settings_window_check_convert_file_button_is_enabled(False)

@Step("Click On The Cancel Button In Convert Settings Window")
def step(context):
    keywords.convert_settings_window_click_cancel_button()

@Step("Click Ok Button In Popup Window On Convert Settings Window")
def step(context):
    keywords.popup_messagebox_window_click_ok_button("CONVERTSETTINGS_WINDOW")

@Step("Verify OK and X button In Popup Window Is Visible And Enabled In Convert Settings Window")
def step(context):
    keywords.keyword_check_popup_window_x_and_ok_button_visible_and_enabled("CONVERTSETTINGS_WINDOW")

@Step("Verify OK and X button In Popup Window In Convert Settings Window")   
def step(context):
    keywords.keyword_check_popup_window_x_and_ok_button_text("CONVERTSETTINGS_WINDOW")

@Step("Set FileName With Special Characters")
def step(context):
    keywords.keyword_set_specialChar_in_newFileName_textBox()

@Step("Verify New File Name Should Accept Only |integer| Characters")
def step(context, length):
    keywords.keyword_file_name_length_validation(length)

@Step("Set New File Name With '|integer|' Characters Length")
def step(context,len):
    context.userData = keywords.keyword_merge_dict(context.userData, keywords.keyword_set_random_file_name_for_given_length(len))

@Step("Select Software Version Which Is Connected To Controller")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData, keywords.keyword_select_software_version_connected_to_controller(context.userData["softwareVersion"]))

@Step("Select Software Version Which Is Connected To Controller In Import Settings")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData, keywords.keyword_select_software_version_connected_to_controller(context.userData["connected_softwareVersion"]))

@Step("Verify New FileName Is Empty")
def step(context):
    keywords.convert_settings_window_check_new_file_name_is_empty()

@Step("Verify Message Of File Name Cant Be Empty In Convert Settings Window")
def step(context):
    keywords.keyword_verify_message_of_file_name_cant_be_empty()

@Step("Verify Convert File Button")
def step(context):
    keywords.keyword_verify_convert_file_button()

@Step("Select CodeNumber In Convert Settings Window")
def step(context):
    keywords.convert_settings_window_select_code_number_from_combobox(context.userData["controllerCodeNo"])
    
@Step("Click On Convert File Button")
def step(context):
    keywords.convert_settings_window_click_convert_file_button()

@Step("Set Existing Project Name As The File Name In Convert Settings Window")
def step(context):
    keywords.keyword_set_file_name_from_project_name(context.userData["project_name"])
    
@Step("Set Existing Project Name As The File Name In Convert Settings Window For Import Settings From Controller Window")
def step(context):
    keywords.keyword_set_file_name_from_project_name(context.userData["connected_project_name"])
    
@Step("Verify Converted Settings File Report Is Visible And Enabled")
def step(context):
    keywords.keyword_verify_converted_settings_file_report_is_visible()
    keywords.keyword_verify_converted_settings_file_report_is_enabled()

@Step("Click On Close Button In Converted Settings File Report")
def step(context):
    keywords.convert_settings_window_click_close_button_in_converted_settings_report()

@Step("Write The Converted Project File With Default Path In Dialog")
def step(context):
    keywords.keyword_open_created_file_in_default_path(context.userData["PROJECT_WORKING_DIR"],context.userData["new_fileName"],context.userData["controllerFamily"])

@Step("Open Converted File In Recent Project From Set Parameter Window")
def step(context):
    keywords.keyword_select_recent_project_file(context.userData["new_fileName"])

@Step("Verify Product Name In Convert Settings Window")
def step(context):
    keywords.convert_settings_window_check_product_name_text(context.userData["controllerVariant"])

@Step("Verify Product Name In Convert Settings Window In Import Settings")
def step(context):
    keywords.convert_settings_window_check_product_name_text(context.userData["connected_controllerVariant"])

@Step("Verify Popup Message Should Come As '|any|' In Convert Settings Window")
def step(context,message_string):
    keywords.keyword_sleep(1)
    keywords.popup_messagebox_window_is_visible("CONVERTSETTINGS_WINDOW", True)
    keywords.keyword_verify_popup_msg_in_window(message_string, "CONVERTSETTINGS_WINDOW")

@Step("Verify The Changes Made In The Convert Settings Is Not Available In Project Window")
def step(context):
    keywords.keyword_verify_changes_in_convert_settings_is_unavailable_in_project_window(context.userData)
    
@Step("Verify Project Path And File With Extension For Converted File Is Exist")
def step(context):
    keywords.keyword_check_if_file_with_extension_exists_in_specified_path(context.userData["new_fileName"], context.userData["PROJECT_WORKING_DIR"])
    
@Step("Check Convert Setting Icon Is Visible And Enabled")
def step(context):  
    keywords.keyword_verify_convert_setting_icon_is_visible_and_enabled()    
    
@Step("Check Info Button Is Visible And Enabled")   
def step(context):
    keywords.keyword_info_button_is_visible_and_enabled()    
    
@Step("Click On Info Button")    
def step(context):
    keywords.convert_settings_window_click_i_button()
    
@Step("Check Product Information Window Is Visible")
def step(context):
    keywords.product_info_window_is_visible()       

@Step("Verify The List Of Code Numbers In Convert Settings Window")
def step(context):
    keywords.convert_settings_window_verify_list_of_code_number(context.userData["code_number_list"])

@Step("Verify The List Of Software Versions In Convert Settings Window")
def step(context):
    keywords.convert_settings_window_verify_list_of_sw_version(context.userData["sw_version_list"])

@Step("Select Software Version Which Is Used In Creating Project")
def step(context):
    keywords.convert_settings_window_select_software_version_from_combobox(context.userData["softwareVersion"])
    
##################### Convert Setting ########################### 



##################### quicksetting.js file ###########################  

@Step("Verify Quicksettings JS File Is Present In The CDF File")
def step(context):
    keywords.keyword_verify_qsjs_is_present_in_extracted_cdf_file(context.userData["cdf_location"]) 
    
@Step("Get The Parsed File Details If Used For Debugging")
def step(context):
    keywords.parseTheInputFile(context.userData)
    keywords.keyword_quickSettingForDebugging()

@Step("Common Library Usage Example")
def step(context):
    keywords.parseTheInputFile(context.userData)
    #keywords.keyword_parse_quicksetting_parameters()
    #cdf_data = self.get_parameter_collection_after_removing_the_input("ItemType","R",cdf_data)
    #keywords.parse_datagrid()
#     keywords.applyChangesInCDFCollection()
    keywords.keyword_enable_a_parameter()
    
##################### quicksetting.js file ###########################  


################################# Input Database###################

@Step("Get The Parameter Collection From Input Database")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_parse_input_database(context.userData))
    
@Step("Get The '|any|' Of '|any|' From '|any|'")
def step(context,propertyName,propertyValue,collection):
    input = propertyName + "_" +propertyValue + "_Collection" 
    filtered_collection = keywords.keyword_filter_the_database_with_input_property_name_and_value(propertyName,propertyValue,context.userData[collection])
    aDict = {input:filtered_collection}
    context.userData = keywords.keyword_merge_dict(context.userData,aDict)

@Step("Get '|any|' Parameter '|any|' Value With Respect To Selected Language")
def step(context,parameterName,parameterEnumValue):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_get_enumText_with_parameterName_for_input_parameter_with_respect_to_language(parameterName,parameterEnumValue,context.userData["Parameter_collection"]))

@Step("Set The Main Switch To Start In DataGrid")
def step(context):
    keywords.prj_window_set_value_in_datagrid(context.userData["Parameter_info_for_selected_language"]["GroupName"],context.userData["Parameter_info_for_selected_language"]["Parameter_name"],context.userData["Parameter_info_for_selected_language"]["Enum"])

@Step("Set Random Values In DataGrid For '|any|'")
def step(context,collection):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_set_random_values_in_dataGrid_for_the_input_database_collection(context.userData[collection]))

@Step("Get Random Values Count '|any|' for '|any|' In DataGrid For '|any|'")
def step(context,count,dataType,collection):
    group_parameterList = keywords.keyword_choose_random_parameters_of_provided_count(context.userData[collection],count)   
    aDict = {dataType+"_updated_collection":group_parameterList}
    context.userData = keywords.keyword_merge_dict(context.userData,aDict)

@Step("Remove '|any|' Of '|any|' From '|any|'")
def step(context,propertyName,propertyValue,collection):
    filtered_collection = keywords.keyword_filter_the_database_with_input_property_name_and_value(propertyName,propertyValue,context.userData[collection],True)
    aDict = {collection:filtered_collection}
    context.userData = keywords.keyword_merge_dict(context.userData,aDict)
    
@Step("Verify '|any|' Are Present In The '|any|' For Property '|any|' For '|any|' Language")
def step(context,input_collection,parsed_dataGrid,property,language):
    keywords.keyword_verify_input_collection_with_dataGrid_collection(context.userData[input_collection],context.userData[parsed_dataGrid],False,False,property,context.userData["selected_language"])
    
@Step("Verify '|any|' Are Present In '|any|'")
def step(context,input_collection,parsed_dataGrid):
    input = input_collection+"_collection"
    keywords.keyword_verify_input_collection_with_dataGrid_collection(context.userData[input],context.userData[parsed_dataGrid],True,True)

@Step("Verify '|any|' Are Present In '|any|' For '|any|' Language")
def step(context,input_collection,parsed_dataGrid,language):
    input = input_collection+"_collection"
    keywords.keyword_verify_input_collection_with_dataGrid_collection(context.userData[input],context.userData[parsed_dataGrid],True,True,None,context.userData["selected_language"])

@Step("Verify '|any|' Are Not Present In '|any|'")
def step(context,input_collection,parsed_dataGrid):
    input = input_collection+"_collection"
    keywords.keyword_verify_input_collection_with_dataGrid_collection(context.userData[input],context.userData[parsed_dataGrid],True,False)


@Step("Verify '|any|' Color Where Box Is '|any|' And Circle Is '|any|' In '|any|'")
def step(context,input_collection,boxColor,circleColor,parsed_dataGrid):
    input = input_collection+"_collection"
    keywords.keyword_verify_color_of_dataGrid_collection(context.userData[input],boxColor,circleColor,context.userData[parsed_dataGrid])


@Step("Verify '|any|' In '|any|' And '|any|'")
def step(context,property,input_collection,parsed_dataGrid):
    keywords.keyword_verify_input_collection_with_dataGrid_collection(context.userData[input_collection],context.userData[parsed_dataGrid],False,False,property,None)

@Step("Verify '|any|' Is Not Matching In '|any|' And '|any|'")
def step(context,property,input_collection,parsed_dataGrid):
    keywords.keyword_verify_input_collection_with_dataGrid_collection(context.userData[input_collection],context.userData[parsed_dataGrid],False,True,property,None)

@Step("Check If Main Switch Is Set To Stop In '|any|'")
def step(context,parsed_dataGrid):
    keywords.keyword_check_if_main_switch_is_set_to_specified_enum(context.userData["Parameter_info_for_selected_language"]["Parameter_name"],context.userData["Parameter_info_for_selected_language"]["Enum"],context.userData[parsed_dataGrid])
    
@Step("Check If Main Switch Is Set To Start In '|any|'")
def step(context,parsed_dataGrid):
    keywords.keyword_check_if_main_switch_is_set_to_specified_enum(context.userData["Parameter_info_for_selected_language"]["Parameter_name"],context.userData["Parameter_info_for_selected_language"]["Enum"],context.userData[parsed_dataGrid]) 


@Step("Combine The Collection '|any|' And '|any|'")
def step(context,collection1,collection2):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.merge_collections_for_changed_values_in_datagrid(context.userData[collection1],context.userData[collection2]))

################################# Input Database###################

################################# Verification Of Language Labels And Button Texts ###################

@Step("Verify Labels Text For Selected Language In Home Window")
def step(context):
    keywords.keyword_home_window_verify_labels_text_for_selected_language(context.userData["selected_language"])

@Step("Verify Labels Text For Selected Language In Set Parameter Window")
def step(context):
    keywords.keyword_set_param_window_verify_labels_text_for_selected_language(context.userData["selected_language"])
     
@Step("Verify Labels Text For Selected Language In Controller Selection Window")
def step(context):
    keywords.keyword_new_prj_controller_selection_window_verify_labels_text_for_selected_language(context.userData["selected_language"])

@Step("Verify Next Button Text For Selected Language In Controller Selection Window")
def step(context):
    keywords.keyword_new_prj_controller_selection_window_verify_next_button_text_for_selected_language(context.userData["selected_language"])

@Step("Verify Labels Text For Selected Language In Project Description Window")
def step(context):
    keywords.keyword_new_prj_project_description_window_verify_labels_text_for_selected_language(context.userData["selected_language"])

@Step("Verify Buttons Text For Selected Language Before Unchecking Quick Wizard Option In Project Description Window")
def step(context):
    keywords.keyword_new_prj_project_description_window_verify_buttons_text_for_selected_language(["next","back","cancel"],context.userData["selected_language"])

@Step("Verify Buttons Text For Selected Language After Unchecking Quick Wizard Option In Project Description Window")
def step(context):
    keywords.keyword_new_prj_project_description_window_verify_buttons_text_for_selected_language(["finish","back","cancel"],context.userData["selected_language"])

@Step("Verify Buttons Text For Default Language Before Unchecking Quick Wizard Option In Project Description Window")
def step(context):
    keywords.keyword_validate_the_buttons(["next","back","cancel"])

@Step("Verify Buttons Text For Default Language After Unchecking Quick Wizard Option In Project Description Window")
def step(context):
    keywords.keyword_validate_the_buttons(["finish","back","cancel"])

@Step("Verify Labels And Buttons Text For Selected Language When Creating Project In Quick Wizard Window")
def step(context):
    keywords.keyword_new_prj_window_verify_labels_and_buttons_text_for_selected_language_when_creating_project(context.userData)

@Step("Verify Labels And Buttons Text For Selected Language After Creating Project In Quick Wizard Window")
def step(context):
    keywords.keyword_new_prj_window_verify_labels_and_buttons_text_for_selected_language_after_creating_project(context.userData)

@Step("Verify The Float Values In Quick Wizard Are Comma Separated For '|any|' Language")
def step(context,language):
    keywords.keyword_verify_language_support_comma_instead_of_decimal_in_floatDataType_quick_wizard(context.userData)

@Step("Set The Default Language And Help Files In CDF")
def step(context):
    keywords.keyword_set_language_and_help_files_for_default_language(context.userData)

@Step("Verify '|any|' Are Present In '|any|' Collection For '|any|' Datatype")
def step(context,input_collection,quick_settings_ui,datatype):
    input = input_collection+"_collection"
    keywords.keyword_verify_changed_values_in_quick_wizard_UI(context.userData[input],context.userData[quick_settings_ui],True,datatype)

@Step("Verify '|any|' Are Not Present In '|any|' Collection For '|any|' Datatype")
def step(context,input_collection,quick_settings_ui,datatype):
    input = input_collection+"_collection"
    keywords.keyword_verify_changed_values_in_quick_wizard_UI(context.userData[input],context.userData[quick_settings_ui],False,datatype)

################################# Verification Of Language Labels And Button Texts ###################
@Step("Set The Default Language In Preference Window")
def step(context):
    keywords.keyword_set_default_language_in_preference_window()

@Step("Set CodeNumber In Project Description Window")   
def step(context): 
    keywords.new_prj_window_AKCC55_codeNumber_selection(context.userData["controllerCodeNo"])

@Step("Click On Close Button In SetParameters Window")
def step(context):
    keywords.set_param_window_click_close_button()

@Step("Verify The Quick Wizard Collection From The CDF With The Quick Wizard UI")
def step(context):
    keywords.keywords_verify_quick_wizard_collection_from_cdf_with_quick_wizard_UI(context.userData)

@Step("Check The Parameter And Help In Quick Wizard Window")
def step(context):
    keywords.keywords_verify_param_help_in_quick_wizard_window(context.userData)

@Step("Verify The Headers And Groupnames In Treeview For '|any|' language")
def step(context,selectedlanguage):
    keywords.keyword_verify_group_names_and_headers_under_tree_view(context.userData,context.userData["selected_language"])

@Step("Get The List Of Elements From The Tree View")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_get_tree_list_from_UI())
    
@Step("Get Headers From The Datagrid")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_get_headers_from_dataGrid())

@Step("Verify The Headers From The Datagrid")
def step(context):
    keywords.keyword_verify_headers_from_the_datagrid(context.userData["dataGrid_headers"],context.userData["selected_language"])

##################################### Project Labels In Languages #######################################

@Step("Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible") 
def step(context):
    keywords.keywords_verify_product_name_variant_version_and_project_name_is_visible()   
    
@Step("Verify Product Name, Variant, Software Version And Project Name Labels Text In '|any|'") 
def step(context,language):
    keywords.keywords_verify_product_name_variant_version_and_project_name_labels_text_wrt_language(language)   
    
@Step("Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Copy To Controller Window") 
def step(context):
    keywords.keywords_verify_product_name_variant_version_and_project_name_is_visible_in_copy_to_controller()   
    
@Step("Verify Product Name, Variant, Software Version And Project Name Labels Text In Online Window In '|any|' In Copy To Controller") 
def step(context,language):
    keywords.keywords_verify_product_name_variant_version_and_project_name_labels_text_in_copy_to_controller_wrt_language(language)      
    
@Step("Verify Product Name, Variant, Software Version And Project Name Labels Text Are Visible In Online Window") 
def step(context):
    keywords.keywords_verify_product_name_variant_version_and_project_name_is_visible_in_online_service_window()   
    
@Step("Verify Product Name, Variant, Software Version And Project Name Labels Text In '|any|' In Online Window") 
def step(context,language):
    keywords.keywords_verify_product_name_variant_version_and_project_name_labels_text_in_online_window_wrt_language(language)   
    
##################################### Project Labels In Languages #######################################    
@Step("Get Respective Bin File For The Selected Project Details")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_get_bin_file_for_selected_project_details(context.userData))

@Step("Verify Software Version Combobox Has Default CDF")
def step(context):
    keywords.keyword_verify_sw_version_comboBox_has_default_CDF(context.userData)
  
@Step("Get the index For The '|any|' family and '|any|' Variant")
def step(context,family,variant):
    context.userData["SelectedIndex"] = keywords.keyword_get_an_index_from_the_given_controller_variant(family,variant)
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.get_controller_details_from_index(context.userData["SelectedIndex"]))
    
@Step("Verify Circuit Diagram,Wiring Diagram And Product Description Details In Controller Selection Window")
def step(context):
    keywords.keyword_check_prodImage_wiringDiagram_in_new_project_controlller_selection_window(context.userData["controllerVariant"])

@Step("Get The Quick Setting Collection From Input Database")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keywords_get_quick_settings_collection(context.userData))
    
@Step("Set Random Values In QuickSetting For '|any|'")
def step(context,collection):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keywords_set_random_values_in_quick_settings_collection(context.userData[collection]))

@Step("Set Random Values In The QuickSetting For '|any|' With Comma Supported Values")
def step(context,collection):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keywords_set_random_values_in_quick_settings_collection(context.userData[collection], True))

@Step("Get Quick Settings Collection For '|any|' With '|any|' Value")
def step(context, property, property_value):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keywords_get_parameter_based_on_property_value_in_quickSettings_collection(context.userData["QuickSetting_Collection"],property, property_value))
    
@Step("Verify '|any|' Of '|any|' Of Quick Setting Collection And '|any|'")
def step(context,property,collection1_uiData,collection2_testData):
    keywords.keyword_verify_quickSetting_collection_in_dataGrid(property,context.userData[collection1_uiData],context.userData[collection2_testData])

@Step("Verify '|any|' Is Not Matching In '|any|' Of Quick Setting Collection And '|any|'")
def step(context,property,collection1_uiData,collection2_testData):
    keywords.keyword_verify_quickSetting_collection_in_dataGrid(property,context.userData[collection1_uiData],context.userData[collection2_testData],False)

@Step("Update The Dynamic Min And Max Values In The CDF Collection")
def step(context):
    keywords.keyword_get_dynamic_min_and_max_values_and_update_in_CDF_collection(context.userData["Parameter_collection"],context.userData["parsed_datagrid"])

@Step("Verify If All Parameters Have '|any|' Property In '|any|'")
def step(context,propertyName,parameterCollection):
    keywords.keyword_verify_property_existence_in_inputDatabase(propertyName,context.userData[parameterCollection])
    
@Step("Verify All The '|any|' Is Available In '|any|'")
def step(context,propertyName,collection):
    keywords.keyword_verify_all_values_for_inputProperty_in_collection(propertyName,context.userData[collection],context.userData["controllerFamily"])
    
@Step("Verify '|any|' Are Not Writeable In '|any|'")
def step(context,inputcollection,dataGridCollection):
    keywords.keyword_verify_readOnly_parameters_are_not_writeable(context.userData[inputcollection],context.userData[dataGridCollection])
    
@Step("Parse The Alarm DataGrid")
def step(context):
    keywords.online_window_parse_the_alarm_datagrid()

@Step("Click On All Tree Item In Tree View In Alarm Tab")
def step(context):
    keywords.onlineService_Alarm_tree_click_item("All")
    
@Step("Get Alarm Parameters Collection From The DataBase")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_get_Alarm_Parameters(context.userData))
    
@Step("Generate Alarms And Verify In Active Alarms,Alarms Tab Followed By Cancellation Of Alarms And Verify In Cleared Alarms")
def step(context):
    keywords.keyword_generateAlarm_and_verify_and_cancelAlarm_and_verify(context.userData)
    
@Step("Parse The Active Alarms In DataGrid")
def step(context):
    keywords.online_window_parse_the_activeAlarm_datagrid()
    
@Step("Click On Alarms Tab In Online Service Window")
def step(context):
    keywords.online_service_window_click_alarms_tab()
    
@Step("Click On '|any|' TreeItem In Alarm Tab TreeView")
def step(context,treeItemName):
    keywords.onlineService_Alarm_tree_click_item(treeItemName) 

@Step("Verify '|any|' HeaderItem Is Present In DataGrid")
def step(context,headerItem):
    keywords.keyword_verify_headerItem_exists_in_alarm_dataGrid(headerItem)
    
@Step("Click On Reset Alarms Button In Online Service Window- Alarm Tab")
def step(context):
    keywords.online_service_window_click_resetAlarms_button()
    
@Step("Generate Alarm And Search The Generated Alarm In Alarm Tab DataGrid")
def step(context):
    keywords.keyword_generate_alarm_and_verify_search_functionality(context.userData)
    
@Step("Generate Alarms And Verify The InterLocks And ReadOuts")
def step(context):
    keywords.keyword_generate_alarm_and_verify_interlocks_and_readouts(context.userData)
    
@Step("Get ReadOuts List From Input Database")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_get_readOutsList_from_dataBase())
    
@Step("Verify ReadOuts In Online Service Window")
def step(context):
    keywords.keyword_verify_readouts_of_alarm_is_displayed(context.userData["ReadOut_List"])

@Step("Choose '|any|' Group To Make It Hidden")
def step(context,count):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_select_a_group_to_disable(context.userData["Parameter_collection"],context.userData["parsed_datagrid"],count))
    
@Step("Set The Favourite For The Parameters Of The Group Selected")
def step(context):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_set_fav_for_parameters_under_the_group(context.userData["Disabling_group_info"],context.userData["parsed_datagrid"]))
    
@Step("Verify '|any|' Exists In '|any|'")
def step(context,collection1,collection2):
    keywords.keyword_verify_collection_exists_in_the_provided_collection(context.userData[collection1],context.userData[collection2])  
    
@Step("Set The Values To Disable The Groups Using '|any|'")
def step(context,disablingInfo):
    keywords.keyword_set_the_values_to_disable_groups(context.userData[disablingInfo],context.userData["Parameter_collection"])
    
@Step("Verify '|any|' Does Not Exists In '|any|'")
def step(context,collection1,collection2):
    keywords.keyword_verify_collection_exists_in_the_provided_collection(context.userData[collection1],context.userData[collection2],False)

@Step("Go To Home Window From Import Settings From Controller Window")
def step(context):   
    keywords.keyword_prj_window_click_home_button()
    
@Step("Get Parameters That Are Present In More Than One Group In '|any|'")
def step(context,parameter_collection):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.get_parameters_present_in_more_than_one_group_from_input_database(context.userData[parameter_collection]))
    
@Step("Set Random Values In DataGrid For '|any|' And Verify The PopUp Window And Its Text And Click On '|any|' Button And Set Main Switch To Start")
def step(context,collection,clickButton):
    context.userData = keywords.keyword_merge_dict(context.userData,keywords.keyword_set_random_values_in_dataGrid_for_the_input_database_collection_and_verify_popup_after_clicking_on_input_button_and_set_MainSwitch_ToStart_wrt_input(context.userData[collection],clickButton,None,context.userData["Parameter_info_for_selected_language"]["GroupName"],context.userData["Parameter_info_for_selected_language"]["Parameter_name"],context.userData["Parameter_info_for_selected_language"]["Enum"]))

@Step("Write The Created Online Project File With Default Path In Dialog")
def step(context):
    keywords.keyword_open_created_file_in_default_path(context.userData["PROJECT_WORKING_DIR"],context.userData["connected_project_name"],context.userData["controllerFamily"])  

@Step("Click On The Parameters Tab In Online Service Window")
def step(context):
    keywords.online_service_window_click_parameters_tab()
