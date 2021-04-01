from KoolProgApi import KoolprogApi


class Navigation(KoolprogApi):
    """
    """

    def __init__(self, sym_names):
        """
        """
        KoolprogApi.__init__(self, sym_names)

    def nav_open_koolprog(self):
        """
        """
        startApplication("KoolProg")

    def nav_open_setparameters_window_from_home_screen(self):
        """
        """
        self.check_main_window_visible()
        self.click_set_parameter_button()
        self.set_param_window_is_visible()

    def nav_goto_newproject_controller_selection_window_from_home_screen(self):
        """
        """
        self.check_main_window_visible()
        self.click_set_parameter_button()
        self.set_param_window_is_visible()
        self.set_param_window_click_new_button()
        self.new_project_window_is_visible()


    def nav_goto_import_controller_model_from_home_screen(self):
        """
        navigating to import controller model window
        """
        self.check_main_window_visible()
        self.click_set_parameter_button()
        self.set_param_window_is_visible()
        self.set_param_window_click_import_controller_model()
        
    def nav_goto_import_setting_from_controller_from_home_screen(self):
        """
        navigating to "import setting from controller" window from Home window
        """
        self.check_main_window_visible()
        self.click_set_parameter_button()
        self.set_param_window_is_visible()
        self.set_param_window_click_import_setting_from_controller_button()
        
    def nav_goto_online_service_from_home_screen(self):
        """
        navigating to online-service window from home window
        """
        self.check_main_window_visible()
        self.click_online_service_button()
        