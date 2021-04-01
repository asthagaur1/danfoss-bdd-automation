from winappLib import WinappLib


class WinappLibAPI(WinappLib):
    """
    This driver does action to user interface of application linked.
    """

    def __init__(self):
        """

        """
        super(WinappLibAPI, self).__init__()

    def ClickButton(self, sym_name):
        """
        """
        return self._ClickButton(sym_name)

    def checkbox_is_checked(self, sym_Name):
        """
        check specfied checkbox is checked.
        :param sym_Name:
        :return:
        """
        return self._checkbox_is_checked(sym_Name)

    def checkbox_is_unchecked(self, sym_Name):
        """
        check specified checkbox is checked.
        :param sym_Name:
        :return:
        """
        return self._checkbox_is_unchecked(sym_Name)

    def click_and_select_list_Box(self, sym_name, value):
        """

        :param sym_name:
        :param value:
        :return:
        """
        return self._click_and_select_list_Box(sym_name, value)

    def compare_text(self, sym_name, text):
        """
        Get text from object and compares with text given by user.
        :param sym_name:
        :param text:
        :return:
        """
        return self._compare_text(sym_name, text)

    def get_text(self, sym_name):
        """

        :param sym_name:
        :return:
        """
        return self._get_text(sym_name)
    
    def get_color(self, sym_name):
        """
        Get rgb color for the given text.
        :param sym_name: symbolic name of the text.
        :return: rgb color values.
        """
        return self._get_color(sym_name)

    def get_select_list_Box_text(self, sym_name):
        """

        :param sym_name:
        :return:
        """
        return self._get_select_list_Box_text(sym_name)

    def mouse_leftclick(self, sym, timeout=20):
        """
        """
        return self._mouse_leftclick(sym, timeout)

    def mouse_rightclick(self, sym, timeout=5):
        """
        """
        return self._mouse_rightclick(sym, timeout)

    def mouse_double_click(self, sym, timeout=5):
        """
        """
        return self._mouse_double_click(sym, timeout)

    def set_text(self, sym_name, txt):
        """

        :param sym_name:
        :return:
        """
        return self._set_text(sym_name, txt)

    def select_tab_and_click_child(self, sym_name, fam, val):
        """
        """
        return self._select_tab_and_click_child(sym_name, fam, val)
    
    def select_tab(self, sym_name, fam, val):
        """
        """
        return self._select_tab(sym_name, fam, val)
    
    def select_Expander(self, sym_name, fam):
        """
        select the family name from the expander.
        :param sym_name: Symbolic name of controller family tree items
        :param fam: Controller family
        :return: True if succeeds.
        """
        return self._select_Expander(sym_name, fam)

    def uncheck_checkbox(self, sym_name):
        """
        """
        return self._uncheck_checkbox(sym_name)

    def visible(self, sym_Name, time=5):
        """
        :param sym_Name:
        :return:
        """
        return self._visible(sym_Name, time)

    def check_radioBox_is_Selected(self, sym_Name):
        """
        Check the radio box is selected or not
        :param sym_Name:
        :return:
        """
        return self._check_radioBox_is_Selected(sym_Name)
    
    def dynamic_wait_visible(self, sym_Name, time=5):
        """
        :param sym_Name: Symbolic name Of Squish Objects
        :return: True if succeeds.
        """
        return self._dynamic_wait_visible(sym_Name, time)

    def Enable(self, sym_Name, time=15):
        """
        :param sym_Name:
        :return:
        """
        return self._Enable(sym_Name, time)

    def wait_until_object_visible(self, sym_Name, sec=10):
        """
        :param sym_Name:
        :return:
        """
        return self._wait_until_object_visible(sym_Name, sec)

    def get_image_from_ui(self, sym):
        """
        """
        return self._get_image_from_ui(sym)

    def tooltip(self, sym_Name):
        """
        
        :param sym_Name:
        :return:
        """
        return self._tooltip(sym_Name)

    def getExpanderNames(self, sym_name):
        """
         Fetches and returns the list of expander names.
        :param sym_name:symbolic name of tabFolder that has expanders as its child.
        :return: List of expander names
        """
        return self._getExpanderNames(sym_name)

    def get_Expander_Children_List(self, symbolicname, expanderName):
        """
         Fetches and returns the list of expander child names.
        :param symbolicname: Symbolic name of tabFolder that has expander as its child.
        :param expanderName: Expander name is a text value.
        :return: List of expander child names of :param "expanderName".
        """
        return self._get_Expander_Children_List(symbolicname, expanderName)

    def check_Expander_isExpanded(self, symbolicname, value):
        """
        Verify if an expander is expanded.
        :param symbolicname:symbolic name of tabFolder that has expander as its child.
        :param value: Expander Name as text value
        :return: True: if expander is expanded and False: otherwise.
        
        """
        return self._check_Expander_isExpanded(symbolicname, value)

    def check_Expander_Child_IsSelected(self, symbolicname, expanderName, value):
        """
        Verify if an expander child is selected.
        :param symbolicname:symbolic name of tabFolder that has expander as its child.
        :param expanderName: Expander Name as text value
        :param value: Expander child Name as text value
        :return: True: if expander child is selected and False: otherwise.
        
        """
        return self._check_Expander_Child_IsSelected(symbolicname, expanderName, value)

    def check_cursor_focused(self, sym_name):
        """
        check cursor is focused.
        :param sym_name: symbolic name of a UI object
        :return: True if cursor is focused.
        """
        return self._check_cursor_focused(sym_name)

    def get_list_box_items(self, sym_name,tooltip=False):
        """
        Get listbox items listed in list box.
        :param sym_name: Symbolic name of listbox
        :param tooltip: boolean True to get list with tooltip.
        :return: List of items from listbox.
        """
        return self._get_list_box_items(sym_name, tooltip)

    def select_item_in_list_box(self, sym, item_text):
        """
        Select given "item_text" in list box.
        :param sym: symbolic name of listbox.
        :param item_text: item text to select.
        :return: Boolean True if selected successfully ,else False.
        """
        return self._select_item_in_list_box(sym, item_text)

    def get_tree_parent_child_list(self, sym_treeview):
        """
        Get list of parent ,child labels from tree view.
        :param sym_treeview: symbolic name as tree.
        :return:
        list of parent and child as tree.
        """
        return self._get_tree_parent_child_list(sym_treeview)

    def tree_view_check_item_is_expanded(self, sym_treeview, tree_item_name_list, expand=True):
        """
        Check tree view item is expanded in tree.
        :param sym_treeview: symbolic name of tree.
        :param tree_item_name_list: list of items check to be expaned.
        :param expand: expansion check , true or false.
        :return: Boolean True - if list of items are expaned in tree.
        """
        return self._tree_view_check_item_is_expanded(sym_treeview, tree_item_name_list, expand)

    def tree_view_check_item_is_visible(self, sym_treeview, tree_item_name_list, visible=True):
        """
        Check tree view item is visible in tree.
        :param sym_treeview: symbolic name of tree.
        :param tree_item_name_list: list of items check to be visible.
        :param visible: visibility check , true or false.
        :return: Boolean True - if list of items are visible in tree.
        """
        return self._tree_view_check_item_is_visible(sym_treeview, tree_item_name_list, visible)

    def expand_tree_view_item(self, sym_treeview, tree_item_name, expand=True):
        """
        Set tree item as "expand" option is given.
        :param sym_treeview: symbolic name of tree.
        :param tree_item_name: name of tree item
        :return: True if expand successfully, False if already expanded or unable to expand.
        """
        return self._expand_tree_view_item(sym_treeview, tree_item_name, expand)

    def tree_view_click_item(self, sym_treeview, tree_item_name, additional_input=None):
        """
        Click tree item.
        :param sym_treeview: symbolic name of tree.
        :param additional_input: Additional input if any, like alarms tab treeView.
        :param tree_item_name: name of tree item.
        :return: Boolean True - it item is found and click.
        """
        return self._tree_view_click_item(sym_treeview, tree_item_name,additional_input)

    def check_visibility_of_tree_view_item(self, sym_treeview, tree_item_name, visible=True):
        """
        Check visibility of tree item in a tree
        :param sym_treeview: symbolic name of tree.
        :param tree_item_name: name of tree item.
        :return: Boolean True - it item is found and visible value is equal,
                 else returns false
        """
        return self._check_visibility_of_tree_view_item(sym_treeview, tree_item_name, visible)

    def get_group_name_expand_value_in_DataGrid(self, sym_name, group_name):
        """
        get group name expand value from datagrid.
        :param sym_name: symbolic name of datagrid
        :param group_name: group name to check expand.
        :return: True or False expand property value of group name.
        """
        return self._get_group_name_expand_value_in_DataGrid(sym_name, group_name)

    def click_on_group_name_in_DataGrid(self, sym_name, group_name):
        """
        Click on group name in datagrid result to is expand or collapse.
        :param sym_name: symbolic name of datagrid
        :param group_name: group name to is expand or collapse.
        :return: True if group name id present and able to click.
        """
        return self._click_on_group_name_in_DataGrid(sym_name, group_name)

    def get_row_count_of_dataGrid(self, sym_name):
        """
        Gets row count of the dataGrid in KoolProg.
        :param sym_name: Symbolic name of dataGrid.
        :return: Row count of the dataGrid.

        """
        return self._get_row_count_of_dataGrid(sym_name)

    def parse_the_datagrid(self, sym_name, sym_name_help, sym_name_menucode, sym_name_para_name):
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
        return self._parse_the_datagrid(sym_name, sym_name_help, sym_name_menucode, sym_name_para_name)

    def set_value_in_datagrid(self, sym_name_dataGrid, groupName, parameterName, value):
        """
        Set value for given parameter in datagrid.
        :param sym_name_dataGrid:symbolic name of datagrid
        :param groupName: string of group name or expander name of parameter.
        :param parameterName: string parameter name to set value
        :param value: string set value of parameter.
        :return: True if parameter is found , else returns False.
        """
        return self._set_value_in_datagrid(sym_name_dataGrid, groupName, parameterName, value)

    def set_favourite_in_datagrid(self, sym_name_dataGrid, groupName, parameterName, check):
        """
        Check or uncheck favourite checkbox for given parameter name .
        :param sym_name_dataGrid:symbolic name of datagrid
        :param groupName: string of group name or expander name of parameter.
        :param parameterName: string parameter name to set value
        :param check: boolean True/False - checkbox value of parameter.
        :return: True if parameter is found , else returns False.
        """
        return self._set_favourite_in_datagrid(sym_name_dataGrid, groupName, parameterName, check)

    def get_favourite_in_datagrid(self, sym_name_dataGrid, groupName, parameterName):
        """
        get favourite checkbox value for given parameter name .
        :param sym_name_dataGrid:symbolic name of datagrid.
        :param groupName: string of group name or expander name of parameter.
        :param parameterName: string parameter name to set value.
        :return: True or False if parameter is found , else returns None.
        """
        return self._get_favourite_in_datagrid(sym_name_dataGrid, groupName, parameterName)

    def get_selected_row_in_dataGrid(self, sym_name):
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
        return self._get_current_highlighted_row_from_dataGrid(sym_name)

    def press_Enter_in_keyBoard(self):
        """
        Function that simulates the press operation of the "Enter" button.
        :return: True if succeeds

        """
        return self._press_Enter_in_keyBoard()

    def press_Backspace_in_keyBoard(self):
        """
        Function that simulates the press operation of the "Backspace" button.
        :return: True if succeeds

        """
        return self._press_Backspace_in_keyBoard()
                                             
    def dialogEnabled(self, sym_name):
        """
        Checks if Dialog is enabled.
        :return: True if dialog is enabled.
        """
        return self._dialogEnabled(sym_name)

    def get_list_of_files_from_open_dialog(self, sym_name):
        """
        Get list of files from open window.
        :param sym_name: symbolic name of list in open window.
        :return: list of files present in open dialog.
        """
        return self._get_list_of_files_from_open_dialog(sym_name)

    def select_file_from_list_of_files_from_window_dialog(self, sym_name, filename):
        """
        select file from the list of files from open window.
        :param sym_name: symbolic name of list in open window.
        :param filename:filename to open
        :return: Able to Select file from the list of files present in open dialog.
        """
        return self._select_file_from_list_of_files_from_window_dialog(sym_name, filename)



    def opendialog_get_current_explorer_path(self,explorer_toolbar_path):
        """
        Get open dialog window path
        :param explorer_toolbar_path: open window get current explorer path.
        :return: get current directory from window.
        """
        return self._opendialog_get_current_explorer_path(explorer_toolbar_path)

    def get_opacity_value(self, sym):
        """
        Get opacity value from
        :return: opacity value
        """
        return self._get_opacity_value(sym)

    def select_menu_item(self, sym, item_name):
        """
        Get list of menu items from sym
        :param sym: symbolic name of menu item.
        :param item_name: string menu item to select.
        :return: True if selected successfully else False.
        """
        return self._select_menu_item(sym, item_name)

    def get_list_of_menu_item(self, sym):
        """
        Get list of menu items from sym
        :param sym: symbolic name of menu item.
        :return: list of menu items.
        """
        return self._get_list_of_menu_item(sym)


    def select_folder(self, sym_name, Path):
        """
        Select the folder in Browse dialog in Preference Window
        :param sym_name: symbolic name of Browse dialog
        :param Path:Path to select.
        :return:True if succeeds
        """
        return self._select_folder(sym_name, Path)
    
    
    def select_fav_file(self, sym_name, project_name):
        """
        Select file from the favorite table
        :param project_name:project name
        :param sym_name: symbolic name of favorite table
        :return: True if success
        """
        return self._select_fav_file(sym_name, project_name)

    def delete_fav_file(self, sym_name, project_name):
        """
        Delete file from the favorite table
        :param project_name:project name
        :param sym_name: symbolic name of favorite table
        :return: True if success
        """
        return self._delete_fav_file(sym_name, project_name)
        

    def fav_files_list(self, sym_name):
        """
        Get favourite files from the favourite table from Copy to controller window.
        :param sym_name: symbolic name of favourite table
        :return: True if success
        """
        return self._get_fav_files_list(sym_name)

    
    def check_the_checkbox_in_datagrid(self, sym_name_dataGrid, groupName, parameterName, type):
        """
        Set checkbox for given parameter in datagrid.
        :param sym_name_dataGrid:symbolic name of datagrid
        :param groupName: string of group name or expander name of parameter.
        :param parameterName: string parameter name to set value
        :return: True if parameter is found and checked , else returns False.
        """
        
        return self._check_the_checkbox_in_datagrid(sym_name_dataGrid, groupName, parameterName, type)
    
    def check_checkbox(self, sym_name):
        """
        Check the checkBox if it is not checked.
        :param sym_name: Symbolc name of checkbox object.
        :return: True if succeeds.
        
        """
        return self._check_checkbox(sym_name)
    
    def checkbox_status(self, sym_Name):
        """
        Status of the  specfied checkbox is returned.
        :param sym_Name: Symbolic name of Squish checkbox object.
        :return: Status of the checkbox.
        
        """
        return self._checkbox_status(sym_Name)
    
    def get_header_items_text_list_from_chart_dataGrid(self,sym_name):
        """
        Get header items text list from chart dataGrid.
        :param sym_name: Symbolic name of chart dataGrid.
        :return: List of header items text of chart dataGrid.
        
        """
        return self._get_header_items_text_list_from_chart_dataGrid(sym_name)
    
    def get_child_list_from_tab(self,sym,fam):
        """
        Get the child items list from the tabFolder.
        :param sym: Symbolic name of the tabFolder
        :param fam: controller family 
        :return: List of the child items from tabFolder.
        """
        return self._get_child_list_from_tab(sym,fam)
    
    def get_type(self, sym_name):
        """
        Get the type of the UI object.
        :param sym_name: Symbolic name of the UI object.
        :return: Type of the UI object.
        """
        return self._get_type(sym_name)
    
    def getParameterDetails_from_quickSettingListView(self, sym_name,sym_name_ok_button,menucode_sym_name, param_sym_name,help_sym_name):
        """
        Get the parameter and its values from the quicksetting listview.
        :param sym_name: Symbolic name of the parameter listview in quicksettings window.
        :param sym_ok_button: Symbolic name of the Ok button in popup window.
        :param help_sym_name: Symbolic name of the help description.
        :param menucode_sym_name: Symbolic name of the menu code.
        :param param_sym_name: Symbolic name of the parameter name.
        :return: list of dictionaries containing parameter,unit,combobox list,editbox text.
        """
        return self._getParameterDetails_from_quickSettingListView(sym_name,sym_name_ok_button,menucode_sym_name, param_sym_name,help_sym_name)
    
    def getParameterDetails_from_chart_dataGrid(self, sym_name):
        """
        Get the parameter and its values from the chart dataGrid.
        :param sym_name: Symbolic name of the chart dataGrid Table.
        :return: list of dictionaries containing parameter,parameter plotted,menucode,min,max and value.
        """
        return self._getParameterDetails_from_chart_dataGrid(sym_name)
    
    def get_columnNames_from_dataGrid(self, sym_name):
        """
        Get Column names from the datagrid table.
        :param sym_name: Symbolic name of the datagrid table.
        return: list of column name.
        """
        return self._get_columnNames_from_dataGrid(sym_name)
    
    def set_value_in_quick_settings(self, sym_name_ok_button,sym_name , parameterName, setValue):
        
        """
        Sets value of provided parameter in quick setting window.
        :param sym_name_ok_button: Symbolic name of the Ok button in popup window.
        :param parameterName: Parameter Name
        :param sym_name: Symbolic name of quick setting ListView
        :param setValue: Set value 
        
        """
       
        return self._set_value_in_quick_settings(sym_name_ok_button,sym_name, parameterName, setValue)
    
    def get_headers_from_the_datagrid(self, symName):
        """
        Get headers from the datagrid.
        :param symName: Symbolic name of the datagrid.
        :return: List of headers from the datagrid.
        """
        return self._get_headers_from_the_datagrid(symName)
    
    def parse_active_alarm_dataGrid(self,sym_name):
        
        """
        Gets the active alarm datagrid information.
        :param sym_name: Symbolic name of dataGrid.
        :return: datagrid Information will be returned
        
        """
        return self._parse_active_alarm_dataGrid(sym_name)
        

    def parse_the_alarm_datagrid(self, sym_name):
        """
        Gets the datagrid information.
        :param sym_name: Symbolic name of dataGrid.
        :return: datagrid Information will be returned
        
        """
        return self._parse_the_alarm_datagrid(sym_name)
    
    def get_headersList_in_alarm_dataGrid(self, sym_name):
        """
        Gets the header List information from alarm DataGrid.
        :param sym_name: Symbolic name of dataGrid.
        :return: Header List information from alarm DataGrid.
        
        """
        return self._get_headersList_in_alarm_dataGrid(sym_name)
    
    def get_readOutsList_from_dataGrid(self, sym_name):
        """
        Gets the readouts List information from DataGrid.
        :param sym_name: Symbolic name of dataGrid.
        :return: Readouts List information from DataGrid.
        
        """
        
        return self._get_readOutsList_from_dataGrid(sym_name)
    
    def get_interLockList_from_alarmTab(self, sym_name):
        """
        Gets the interLock List information.
        :param sym_name: Symbolic name of WPF Control.
        :return: InterLock List information.
        
        """
        return self._get_interLockList_from_alarmTab(sym_name)
    
    def click_onAlarm_in_alarm_dataGrid(self,sym_name,alarmName):
        """
        Clicks on the specified alarm row.
        :param sym_name: Symbolic name of dataGrid.
        :param alarmName: Alarm name.
        :return: True if succeeds, False otherwise.
        
        """
        return self._click_onAlarm_in_alarm_dataGrid(sym_name,alarmName)
