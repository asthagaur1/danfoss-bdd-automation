import object
import shutil
import squish
import sys
import test
import time

import common

# Check if Python 3:
if sys.version_info[0] == 3:
    import builtins

else:
    # Make Python 2 look like Python 3:
    import _builtin_ as builtins


class WinappLib(builtins.object):
    """
    This driver does action to user interface of application linked.
    """
    ONE_SECOND_MILLISECOND = 1000
    __VALUE_COLUMN_INDEX_IN_DATAGRID = 7
    __ALENUM_COMBO_VARIABLES = ["--", "RO", "WO", "RW"]
    __ALENUM_MASK_VALUE = 3
    __ALENUM_NO_OF_COMBOBOX = 3
    __items_to_be_collected_from_datagrid_row = ['CircleVisible', 'Datatype', 'DefaultUnit',
                                                 'DefaultValue', 'Description', 'Enum', 'EnumText',
                                                 'FavouritesValue', 'GroupName', 'IsEnabled', 'IsHiddenByFilter',
                                                 'IsSelectedForPlotting', 'Maxvalue', 'MenuCode', 'Minvalue',
                                                 'ParameterName', 'ReadOnly', 'SubGroupName', 'Unit', 'Value']
    
    __items_to_be_collected_from_alarm_datagrid_row = ['AlarmName', 'EndTime', 'HelpText',
                                                 'MenuCode', 'Priority', 'StartTime', 'UniqueID',
                                                 'Values','AlarmGroupName']
    
    __DATAGRID_FAVOURITES_INDEX = 1

    def _init_(self):
        """

        """
        self.mouseclick_timeout = 10
        self.test = test
        self.dataGrid_objects = None

    #     def _ClickButton(self, sym_name):
#         """
#         """
#         try:
#             squish.mousePress(self._wait_until_object_visible(sym_name))
#             squish.mouseRelease(self._wait_until_object_visible(sym_name))
#         except:
#             return False
#         return True


    def _ClickButton(self, sym_name):
        """
        """
        try:
#             squish.mouseClick(self._wait_until_object_visible(sym_name))
            #time.sleep(3)
            squish.mousePress(self._wait_until_object_visible(sym_name))
            squish.mouseRelease(self._wait_until_object_visible(sym_name))
            #time.sleep(1)
        except:
            return False
        return True

    def log(self, message, detail=""):
        """
        Logs into report
        :param message: message to be print
        :param detail: message detail.
        :return: None
        """
        test.log(message, detail)

    def fail(self, message, detail=""):
        """
        Fails test and logs message into report.

        :param message: fail report message.
        :param detail: detail of fail message.
        :return:
        """
        test.fail(message, detail)

    def pass_log(self, message, detail=""):
        """
        Pass test and logs message into report.

        :param message: fail report message.
        :param detail: detail of fail message.
        :return:
        """
        test.passes(message, detail)

    def _checkbox_is_checked(self, sym_Name):
        """
        check specfied checkbox is checked.
        :param sym_Name:
        :return:
        """
        tbl = self._wait_until_object_visible(sym_Name)
        if tbl:
            obj = tbl.nativeObject
            if obj.IsChecked == True:
                return True
            else:
                return False
        return False

    def _checkbox_is_unchecked(self, sym_Name):
        """
        check specified checkbox is checked.
        :param sym_Name:
        :return:
        """
        tbl = self._wait_until_object_visible(sym_Name)
        if tbl:
            obj = tbl.nativeObject
            if obj.IsChecked == False:#changed from obj.IsEnabled
                return True
            else:
                return False
        return False

    def _click_and_select_list_Box(self, sym_name, value):
        """

        :param sym_name:
        :param value:
        :return:
        """
        children = None
        try:
            tbl = self._wait_until_object_visible(sym_name)
            if tbl:
                self._ClickButton(tbl)
#                 squish.mouseClick(tbl, squish.MouseButton.PrimaryButton)
                children = object.children(tbl)
                value = value.lower()
                for child in children:
                    c_text = child.text
                    c_text = c_text.lower()
                    if value in c_text:
                        self._ClickButton(child)
#                         squish.mouseClick(child, squish.MouseButton.PrimaryButton)
                        return True
        except:
            return None
        return None

    def _compare_text(self, sym_name, text):
        """
        Get text from object and compares with text given by user.
        :param sym_name:
        :param text:
        :return:
        """

 

        tbl = self._wait_until_object_visible(sym_name)
        if tbl:
            try:
                t = tbl.text
            except:
                try:
                    t = tbl.value
                except:
                    tbl = tbl.nativeObject
                    t = tbl.Text
            self.log("invoke compare_text", "ui text='{}' text = '{}'".format(t, text))
            if builtins.isinstance(t, str):
                return bool(text == t)
            elif builtins.isinstance(t, unicode):
                return common.compare_uincode_lines(t, text)
        return None
    
    def _get_text(self, sym_name):
        """

        :param sym_name:
        :return:
        """
        tbl = self._wait_until_object_visible(sym_name)
        if tbl:
            try:
                return tbl.text
            except:
                tbl = tbl.nativeObject
                return tbl.Text
    
    def _get_color(self, sym_name):
        
        """
        Get rgb color for the given text.
        :param sym_name: symbolic name of the text.
        :return: rgb color values.
        """
        tbl = self._wait_until_object_visible(sym_name)
        rgb_colors_list = []
        if tbl:
            tbl = tbl.nativeObject.Foreground.Color
            rgb_colors_list = [tbl.R,tbl.G,tbl.B]
            return rgb_colors_list
        return False

    def _get_select_list_Box_text(self, sym_name):
        """
        :param sym_name:
        :return:
        """
        obj = self._wait_until_object_visible(sym_name)
        try:
            if obj.type == "ComboBox":
                value = obj.text
        except:
            value = obj.nativeObject.SelectionBoxItem
        return value

    def _mouse_leftclick(self, sym, timeout=20):
        """
        """
        try:
            obj = squish.waitForObject(sym, timeout)
            self._ClickButton(obj)
#             squish.mouseClick(obj, squish.MouseButton.LeftButton)
            return True
        except:
            squish.snooze(1)

        return None

    def _mouse_rightclick(self, sym, timeout=5):
        """
        """
        try:
            obj = squish.waitForObject(sym, timeout)
            self._ClickButton(obj)
#             squish.mouseClick(obj, squish.MouseButton.RightButton)
            return True
        except:
            squish.snooze(1)

        return None

    def _mouse_double_click(self, sym, timeout=5):
        """
        """
        try:
            obj = squish.waitForObject(sym, timeout)
            squish.doubleClick(obj)
            squish.snooze(1)
            return True
        except:
            squish.snooze(1)

        return None

    def _set_text(self, sym_name, txt):
        """

        :param sym_name:
        :return:
        """
        tbl = self._wait_until_object_visible(sym_name)
        if tbl:
            squish.type(tbl, txt)
            return True
        return None

    def _select_tab_and_click_child(self, sym_name, fam, val):
        """
        """
        obj = self._wait_until_object_visible(sym_name)
        if obj:
            items = object.children(obj)
            for item_1 in items:
                if ((object.properties(item_1)["type"] == "TabItem") and (
                        object.properties(item_1)["name"] == "tabController")):
                    TableItem = object.children(item_1)
                    for table in TableItem:
                        if ((object.properties(table)["type"] == "Table") and (
                                object.properties(table)["name"] == "datagridProducts")):
                            childs = object.children(table)
                            for child in childs:
                                if ((object.properties(child)["type"] == "WPFControl") and (
                                        object.properties(child)["class"] == "System.Windows.Controls.GroupItem")):
                                    expander = object.children(child)
                                    for exp in expander:
                                        if object.properties(exp)["type"] == "Expander":
                                            ExpanderName = None
                                            ExpanderName = exp.nativeObject.DataContext.Name
                                            if str(ExpanderName).strip() == str(fam).strip():
                                                if not exp.expanded:
                                                    if not self._mouse_leftclick(exp):
                                                        test.fail("failed to click button")
                                                    test.log("Expander name in KoolProg is " + str(ExpanderName))
                                                    time.sleep(2)
                                            rows = object.children(exp)
                                            for row in rows:
                                                if object.properties(row)["type"] == "TableRow":
                                                    cells = object.children(row)
                                                    for cell in cells:
                                                        if object.properties(cell)["type"] == "TableCell":
                                                            CellName = None
                                                            CellName = object.properties(cell)["text"]
                                                            if str(CellName).strip() == str(val).strip():
                                                                if not self._mouse_leftclick(cell):
                                                                    test.fail("failed to click button")
                                                                else:
                                                                    return True
                                                                test.log(
                                                                    "Controller name in KoolProg is: " + str(CellName))
        return None

    def _select_tab(self, sym_name, fam, val):
        """
        """
        obj = self._wait_until_object_visible(sym_name)
        if obj:
            items = object.children(obj)
            for item_1 in items:
                if ((object.properties(item_1)["type"] == "TabItem") and (
                        object.properties(item_1)["name"] == "tabController")):
                    TableItem = object.children(item_1)
                    for table in TableItem:
                        if ((object.properties(table)["type"] == "Table") and (
                                object.properties(table)["name"] == "datagridProducts")):
                            childs = object.children(table)
                            for child in childs:
                                if ((object.properties(child)["type"] == "WPFControl") and (
                                        object.properties(child)["class"] == "System.Windows.Controls.GroupItem")):
                                    expander = object.children(child)
                                    for exp in expander:
                                        if object.properties(exp)["type"] == "Expander":
                                            ExpanderName = None
                                            ExpanderName = exp.nativeObject.DataContext.Name
                                            if str(ExpanderName).strip() == str(fam).strip():
                                                test.log("Expander name in KoolProg is " + str(ExpanderName))
                                            rows = object.children(exp)
                                            for row in rows:
                                                if object.properties(row)["type"] == "TableRow":
                                                    cells = object.children(row)
                                                    for cell in cells:
                                                        if object.properties(cell)["type"] == "TableCell":
                                                            CellName = None
                                                            CellName = object.properties(cell)["text"]
                                                            if str(CellName).strip() == str(val).strip():
                                                                rows = object.children(exp)
                                                                for row in rows:
                                                                    self._mouse_leftclick(row)
                                                                    break
        return None
    
    def _select_Expander(self, sym_name, fam):
        """
        select the family name from the expander.
        :param sym_name: symbolic name of controller family tree items
        :param fam: Controller family
        :return: True if succeeds.
        """
        obj = self._wait_until_object_visible(sym_name)
        if obj:
            items = object.children(obj)
            for item_1 in items:
                if ((object.properties(item_1)["type"] == "TabItem") and (
                        object.properties(item_1)["name"] == "tabController")):
                    TableItem = object.children(item_1)
                    for table in TableItem:
                        if ((object.properties(table)["type"] == "Table") and (
                                object.properties(table)["name"] == "datagridProducts")):
                            childs = object.children(table)
                            for child in childs:
                                if ((object.properties(child)["type"] == "WPFControl") and (
                                        object.properties(child)["class"] == "System.Windows.Controls.GroupItem")):
                                    expander = object.children(child)
                                    for exp in expander:
                                        if object.properties(exp)["type"] == "Expander":
                                            ExpanderName = None
                                            ExpanderName = exp.nativeObject.DataContext.Name
                                            if str(ExpanderName).strip() == str(fam).strip():
                                                self._mouse_leftclick(exp)
                                                return True
                                                test.log("Expander name in KoolProg is " + str(ExpanderName))
        return False
                                              
    def _uncheck_checkbox(self, sym_name):
        """
        """
        if self._checkbox_is_checked(sym_name):
            self._ClickButton(sym_name)
            if self._checkbox_is_unchecked(sym_name):
                return True
            else:
                return False
        else:
            return True

    def _visible(self, sym_Name, time=5):
        """
        :param sym_Name:
        :return:
        """
        tbl = self._wait_until_object_visible(sym_Name, time)
        if tbl:
            try:
                obj = tbl.nativeObject
                val = obj.IsVisible
                return val
            except:
                try:
                    val = tbl.visible
                    return val
                except:
                    val = tbl.enabled
                    return val

        return False

    def _check_radioBox_is_Selected(self, sym_Name):
        """
        Check the radio box is selected or not
        :param sym_Name:
        :return:
        """
        tbl = self._wait_until_object_visible(sym_Name)
        if tbl:
            return tbl.selected
        return False
    
    def _dynamic_wait_visible(self, sym_Name, time=5):
        """
        Waits for the squish object to be visible for a specified amount of time.
        :param sym_Name: Symbolic name of squish object.
        :param time: Maximum time to wait till a condition passes.
        :return: True if succeeds.
        """
        time = time * 1000
        try:
            return self._wait_until_object_enabled(sym_Name,"nativeObject.IsVisble",time)
        except:
            try:
                return self._wait_until_object_enabled(sym_Name,"visible",time)
            except:
                return self._wait_until_object_enabled(sym_Name,"enabled",time)

        return False

    def _Enable(self, sym_Name, time=15):
        """
        :param sym_Name: Symbolic name of object
        :param time: Wait time
        :return: Enable value of the object.
        """
        
        tbl = self._wait_until_object_visible(sym_Name, time)
        time = time * 1000
        if tbl:
            obj = tbl.nativeObject
            if obj:
                return self._wait_until_object_enabled(sym_Name,"nativeObject.IsEnabled",time)
            else:
                return self._wait_until_object_enabled(sym_Name,"enabled",time)
        return False
            
    def _wait_until_object_enabled(self,objectName, propertyName,timeoutInMilliseconds):
        """
        Waits for property value of an already existing object
        :param objectName: Object name
        :param propertyName: Property name of the object
        :param timeoutInMilliseconds: Wait time
        :return: True if succeeds
        
        """
    
        condition = "squish.findObject(objectName)." +  propertyName + " == True";
        return squish.waitFor(condition, timeoutInMilliseconds)

    def _wait_until_object_visible(self, sym_Name, sec=10):
        """
        :param sym_Name:
        :return:
        """
        start_time = time.time()
        while time.time() < start_time + sec:
            try:
                return squish.waitForObjectExists(sym_Name, self.ONE_SECOND_MILLISECOND)
            except:
                try:
                    return squish.waitForObject(sym_Name, self.ONE_SECOND_MILLISECOND)
                except:
                    pass
                squish.snooze(1)
        return False

    def _get_image_from_ui(self, sym):
        """
        """
        widget = squish.waitForObject(sym)
        return squish.grabWidget(widget)

    def _tooltip(self, sym_Name):
        """
        
        :param sym_Name:
        :return:
        """
        tbl = self._wait_until_object_visible(sym_Name)
        return tbl.tooltip

    def _getExpanderNames(self, sym_name):
        """
             Fetches and returns the list of expander names.
            :param sym_name:symbolic name of tabFolder that has expanders as its child.
            :return: List of expander names
            """
        squish_object = squish.waitForObject(sym_name)
        controllerFamilyList = []
        controllerFamilyList = self._get_List_of_Group_Of_Expander_textProperty(squish_object, "Expander", "Label",
                                                                                controllerFamilyList)
        return controllerFamilyList

    def _get_List_of_Group_Of_Expander_textProperty(self, squish_object, parentLevel_2, parentLevel_1, resultList):
        """
         Fetches and returns the list of expander names recursively.
        :param squish_object:object of parent that has expanders as its child.
        :param parentLevel_1: Parent of expanders.
        :param parentLevel_2: Parent of parentLevel_1
        :param resultList: List of expander names
        :return: List of expander names
        """
        children = object.children(squish_object)
        for child in children:
            if child.type == parentLevel_2:
                expchildren = object.children(child)
                for expchild in expchildren:
                    if expchild.type == parentLevel_1:
                        resultList = common.append_unique_value_To_List(expchild.text, resultList)
            self._get_List_of_Group_Of_Expander_textProperty(child, parentLevel_2, parentLevel_1, resultList)
        return resultList

    def _get_Expander_Children_List(self, symbolicname, expanderName):
        """
         Fetches and returns the list of expander child names.
        :param symbolicname: Symbolic name of tabFolder that has expander as its child.
        :param expanderName: Expander name is a text value.
        :return: List of expander child names of :param "expanderName".
        """
        resultList = []
        obj = squish.waitForObject(symbolicname)
        if obj:
            items = object.children(obj)
            for item_1 in items:
                if ((object.properties(item_1)["type"] == "TabItem") and (
                        object.properties(item_1)["name"] == "tabController")):
                    TableItem = object.children(item_1)
                    for table in TableItem:
                        if ((object.properties(table)["type"] == "Table") and (
                                object.properties(table)["name"] == "datagridProducts")):
                            childs = object.children(table)
                            for child in childs:
                                if ((object.properties(child)["type"] == "WPFControl") and (
                                        object.properties(child)["class"] == "System.Windows.Controls.GroupItem")):
                                    expander = object.children(child)
                                    for exp in expander:
                                        if object.properties(exp)["type"] == "Expander":
                                            if object.properties(exp)["type"] == "Expander":
                                                ExpanderName = None
                                                ExpanderName = exp.nativeObject.DataContext.Name
                                                if str(ExpanderName).strip() == str(expanderName).strip():
                                                    if not exp.expanded:
                                                        if not self._mouse_leftclick(exp):
                                                            test.fail("failed to click button")
                                                        test.log("Expander name in KoolProg is " + str(ExpanderName))

                                                    rows = object.children(exp)
                                                    for row in rows:
                                                        if object.properties(row)["type"] == "TableRow":
                                                            cells = object.children(row)
                                                            for cell in cells:
                                                                if object.properties(cell)["type"] == "TableCell":
                                                                    CellName = None
                                                                    CellName = object.properties(cell)["text"]
                                                                    resultList.append(CellName)

        return resultList

    def _check_Expander_isExpanded(self, symbolicname, value):
        """
        Verify if an expander is expanded.
        :param symbolicname:symbolic name of tabFolder that has expander as its child.
        :param value: Expander Name as text value
        :return: True: if expander is expanded and False: otherwise.

        """
        squish_object = squish.waitForObjectExists(symbolicname)
        resultList = []
        resultList = self._Expander_Recursive_Expanded_propertyCheck(squish_object, value, resultList)
        return resultList[0]

    def _Expander_Recursive_Expanded_propertyCheck(self, squish_object, value, resultList):

        """
        Verify if an expander is expanded in a recursive manner.
        :param squish_object:object of tabFolder that has expander as its child.
        :param value: Expander Name as text value
        :param resultList: List of values that stores True: if expander is expanded and False: otherwise.
        :return: List of values that stores True: if expander is expanded and False: otherwise.

        """

        items = object.children(squish_object)
        for item_1 in items:
            try:
                if object.properties(item_1)["expanded"]:
                    if str(value) == str(item_1.nativeObject.DataContext.Name):
                        resultList.append(True)
            except:
                self._Expander_Recursive_Expanded_propertyCheck(item_1, value, resultList)
        return resultList

    def _check_Expander_Child_IsSelected(self, symbolicname, expanderName, value):
        """
        Verify if an expander child is selected.
        :param symbolicname:symbolic name of tabFolder that has expander as its child.
        :param expanderName: Expander Name as text value
        :param value: Expander child Name as text value
        :return: True: if expander child is selected and False: otherwise.

        """
        squish_object = squish.waitForObjectExists(symbolicname)
        resultList = []
        resultList = self._Expander_Recursive_Focused_propertyCheck(squish_object, expanderName, value, resultList)
        return resultList[0]

    def _Expander_Recursive_Focused_propertyCheck(self, squish_object, expanderName, value, resultList):

        """
        Verify if an expander child is selected recursively.
        :param squish_object:object of tabFolder that has expander as its child.
        :param expanderName: Expander Name as text value
        :param value: Expander child Name as text value
        :param resultList: List of values that stores True: if expander child is selected and False: otherwise.
        :return: True: if expander child is selected and False: otherwise.
        """

        items = object.children(squish_object)
        for item_1 in items:
            try:
                if object.properties(item_1)["expanded"]:
                    if item_1.nativeObject.DataContext.Name == expanderName:
                        result = self._find_If_Expander_child_IsSelected(item_1, value, resultList)
                        resultList.append(result)
            except:
                self._Expander_Recursive_Focused_propertyCheck(item_1, expanderName, value, resultList)
        return resultList

    def _find_If_Expander_child_IsSelected(self, squish_object, value, resultList):

        """
        Verify if an expander child is selected recursively.
        :param squish_object:object of expander.
        :param value: Expander Name as text value.
        :param resultList: List of values that stores True: if expander child is selected and False: otherwise.
        :return: List of values that stores True: if expander child is selected and False: otherwise.
        """

        rows = object.children(squish_object)
        for row in rows:
            if object.properties(row)["type"] == "TableRow":
                cells = object.children(row)
                for cell in cells:
                    if object.properties(cell)["type"] == "TableCell":
                        CellName = None
                        CellName = object.properties(cell)["text"]
                        if str(CellName).strip() == str(value).strip():
                            resultList = cell.nativeObject.IsSelected

        return resultList

    def _check_cursor_focused(self, sym_name):
        """
        check cursor is focused.
        :param sym_name: symbolic name of a UI object
        :return: True if cursor is focused.
        """
        squish_object = self._wait_until_object_visible(sym_name)
        if squish_object:
            return squish_object.focused
        return False

    def _get_list_box_items(self, sym_name, tooltip=False):
        """
        Get listbox items listed in list box.
        :param sym_name: Symbolic name of listbox
        :param tooltip: boolean True to get list with tooltip.
        :return: List of items from listbox.
        """
        _list = list()
        drop_down_list = self._wait_until_object_visible(sym_name)
        if drop_down_list.type == u"List":
            list_items = object.children(drop_down_list)
            for list_item in list_items:
                if list_item.type == u'ListItem':
                    for item in object.children(list_item):
                        if item.type == 'Label':
                            if not tooltip:
                                _list.append(item.text)
                            else:
                                _list.append({item.text: item.tooltip})

        elif drop_down_list.type == u"ComboBox":
            squish.expand(drop_down_list)
            children = object.children(drop_down_list)
            _list = list()
            for child in children:
                if child.type == "ComboBoxItem" or child.type == "ListItem":
                    _list.append(child.text)
            self._ClickButton(sym_name)
        return _list

    def _select_item_in_list_box(self, sym, item_text):
        """
        Select given "item_text" in list box.
        :param sym: symbolic name of listbox.
        :param item_text: item text to select.
        :return: Boolean True if selected successfully ,else False.
        """
        listbox = self._wait_until_object_visible(sym)

        if listbox.type == u"List":
            list_items = object.children(listbox)
            for list_item in list_items:
                if list_item.type == u'ListItem':
                    for item in object.children(list_item):
                        if item.type == 'Label':
                            if item.text == item_text:
                                self._ClickButton(item)
                                #squish.mouseClick(item, squish.MouseButton.PrimaryButton)
                                return True
        elif listbox.type == "ComboBox":
            squish.expand(listbox)
            list_items = object.children(listbox)
            for list_item in list_items:
                if list_item.type == u'ComboBoxItem' or list_item.type == "ListItem":
                    if item_text in list_item.text:
                        self._ClickButton(list_item)
                        #squish.mouseClick(list_item, squish.MouseButton.PrimaryButton)
                        return True

        return False

    def _get_tree_parent_child_list(self, sym_treeview):
        """
        Get list of parent ,child labels from tree view.
        :param sym_treeview: symbolic name as tree.
        :return:
        list of parent and child as tree.
        """

        parent_child_dict = list()
        if sym_treeview:
            sym_treeview = self._wait_until_object_visible(sym_treeview)
            if sym_treeview.type == u"Tree":
                for tree_item in object.children(sym_treeview):
                    parent_child_dict.append(self._get_tree_item_parent_child_list(tree_item))
        return parent_child_dict

    def _get_tree_item_parent_child_list(self, tree_object):
        """
        Get dictionary of tree item and its child.
        :param tree_object: symbolic name of tree item.
        :return:
        Dictionary of tree item and its child in list.
        """
        parent_child_dict = dict()
        if tree_object.type == u"TreeItem" and tree_object.nativeObject.IsVisible == True:
            parent_child_dict[tree_object.nativeObject.Header.AllMenu] = list()
            if tree_object.itemCount > 0:
                childern = object.children(tree_object)
                if tree_object.itemCount >= len(childern):
                    self._mouse_double_click(tree_object)
                    squish.waitForObject(tree_object)
                    childern = object.children(tree_object)
                for child in childern:
                    if child.type == u"TreeItem" and tree_object.nativeObject.IsVisible == True:
                        parent_child_dict[tree_object.nativeObject.Header.AllMenu].append(
                            self._get_tree_item_parent_child_list(child))
                    else:
                        parent_child_dict[tree_object.nativeObject.Header.AllMenu].append(list())

        return parent_child_dict

    def _find_tree_item_by_header_text(self, tree_object, item_header_text,additional_input):
        """
        find tree item by given header text.
        :param tree_object: Tree object.
        :param additional_input: Additional input if any, like alarms tab treeView.
        :param item_header_text: text to find in tree item.
        :return: object of tree item.
        """
        if tree_object.type == u"TreeItem":
            if additional_input != "Alarms_Tab":
                if tree_object.nativeObject.Header.AllMenu == item_header_text:
                    return tree_object
            else:
                if tree_object.text == item_header_text:
                    return tree_object
            if tree_object.itemCount > 0:
                for child in object.children(tree_object):
                    if child.type == u"TreeItem":
                        tree_obj = self._find_tree_item_by_header_text(child, item_header_text,additional_input)
                        if tree_obj:
                            return tree_obj
                        result = self._find_tree_item_by_header_text(child, item_header_text,additional_input)
                        if result is None:
                            continue
                        else:
                            return result
        return None

    def _find_tree_item(self, sym_treeview, item_header_text,additional_input):
        """
        Find tree item from tree.
        :param sym_treeview: symbolic name of tree view.
        :param additional_input: Additional input if any, like alarms tab treeView.
        :param item_header_text: text to find the tree item
        :return: tree item by using header text.
        """
        if sym_treeview:
            sym_treeview = self._wait_until_object_visible(sym_treeview)
            if sym_treeview.type == u"Tree":
                for tree_item in object.children(sym_treeview):
                    res_item = self._find_tree_item_by_header_text(tree_item, item_header_text,additional_input)
                    if res_item:
                        return res_item
        return None

    def _tree_view_check_item_is_expanded(self, sym_treeview, tree_item_name_list, expand=True):
        """
        Check tree view item is expanded in tree.
        :param sym_treeview: symbolic name of tree.
        :param tree_item_name_list: list of items check to be expaned.
        :param expand: expansion check , true or false.
        :return: Boolean True - if list of items are expaned in tree.
        """
        for tree_item_name in tree_item_name_list:
            tree_item = self._find_tree_item(sym_treeview, tree_item_name)
            if expand:
                if not tree_item.nativeObject.Header.IsExpanded:
                    return False
            else:
                st = True
                try:
                    st = tree_item.nativeObject.Header.IsExpanded
                except:
                    st = False
                if st:
                    return False
        return True

    def _tree_view_check_item_is_visible(self, sym_treeview, tree_item_name_list, visible=True):
        """
        Check tree view item is visible in tree.
        :param sym_treeview: symbolic name of tree.
        :param tree_item_name_list: list of items check to be visible.
        :param visible: visiblity check , true or false.
        :return: Boolean True - if list of items are visible in tree.
        """
        for tree_item_name in tree_item_name_list:
            tree_item = self._find_tree_item(sym_treeview, tree_item_name)
            if tree_item.nativeObject.IsVisible != visible:
                return False
        return True

    def _expand_tree_view_item(self, sym_treeview, tree_item_name, expand=True):
        """
        Set tree item as "expand" option is given.
        :param sym_treeview: symbolic name of tree.
        :param tree_item_name: name of tree item
        :return:
        """
        tree_item = self._find_tree_item(sym_treeview, tree_item_name,None)
        if tree_item:
            if tree_item.nativeObject.Header.IsExpanded != expand:
                self._mouse_double_click(tree_item)
                return True
        return False

    def _tree_view_click_item(self, sym_treeview, tree_item_name,additional_input):
        """
        Click tree item.
        :param sym_treeview: symbolic name of tree.
        :param tree_item_name: name of tree item.
        :param additional_input: Additional input if any, like alarms tab treeView.
        :return: Boolean True - it item is found and click.
        """
        tree_item = self._find_tree_item(sym_treeview, tree_item_name,additional_input)
        if tree_item:
            self._ClickButton(tree_item)
            return True
        return False

    def _check_visibility_of_tree_view_item(self, sym_treeview, tree_item_name, visible=True):
        """
        Check visibility of tree item in a tree
        :param sym_treeview: symbolic name of tree.
        :param tree_item_name: name of tree item.
        :return: Boolean True - it item is found and visible value is equal,
                 else returns false
        """
        tree_item = self._find_tree_item(sym_treeview, tree_item_name)
        if tree_item:
            if tree_item.nativeObject.IsVisible == visible:
                return True
        return False

    def _dialogEnabled(self, sym_name):
        """
        Checks if Dialog is enabled.
        :return: True if succeeds.
        """
        tbl = self._wait_until_object_visible(sym_name)
        if tbl:
            return tbl.enabled

    def _get_group_name_expand_value_in_DataGrid(self, sym_name, group_name):
        """
        get group name expand value from datagrid.
        :param sym_name: symbolic name of datagrid
        :param group_name: group name to check expand.
        :return: True or False expand property values of group name else None.
        """
        tbl = squish.waitForObjectExists(sym_name)
        items_1 = object.children(tbl)
        for item_1 in items_1:
            if item_1.type == "WPFControl":
                expander = object.children(item_1)
                for child in expander:
                    if child.type == "Expander":
                        if child.nativeObject.DataContext.Name == group_name:
                            return child.nativeObject.IsExpanded
        return None

    def _click_on_group_name_in_DataGrid(self, sym_name, group_name):
        """
        Click on group name in datagrid
        :param sym_name: symbolic name of datagrid
        :param group_name: group name to is expand or collapse.
        :return: True if group name id present and able to click.
        """
        tbl = squish.waitForObjectExists(sym_name)
        items_1 = object.children(tbl)
        for item_1 in items_1:
            if item_1.type == "WPFControl":
                expander = object.children(item_1)
                for child in expander:
                    if child.type == "Expander":
                        if child.nativeObject.DataContext.Name == group_name:
                            exp = object.children(child)
                            for itm in exp:
                                if itm.type == "Label":
                                    self._ClickButton(itm)
                                    return True
        return False

    def _get_row_count_of_dataGrid(self, sym_name):
        """
        Gets row count of the dataGrid in KoolProg.
        :param sym_name: Symbolic name of dataGrid.
        :return: Row count of the dataGrid.
        
        """
        datagridObject = squish.waitForObject(sym_name)
        return datagridObject.rowCount

    def _parse_the_datagrid(self, sym_name, sym_name_help, sym_name_menu, sym_name_paraname):
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
        parameter_model_dict_list = []
        parameter_info_dict_list = []
        self.__click_on_first_row_in_dataGrid(sym_name)
        parameter_model = self.__get_selected_row_object_in_dataGrid(sym_name)
        GroupName = parameter_model['GroupName']
        count = self._get_row_count_of_dataGrid(sym_name)
        for i in range(count):
            if GroupName != parameter_model['GroupName']:
                parameter_model_dict_list.append({GroupName: parameter_info_dict_list})
                GroupName = parameter_model['GroupName']
                parameter_info_dict_list = list()
            parameter_info_dict = self.__get_datagrid_row(parameter_model)
            parameter_info_dict.update({"Help_dataGrid":self._get_text(sym_name_help)})
            menuCode = self._get_text(sym_name_menu)
            menuCode = common.remove_invertedCommas(menuCode)
            parameter_info_dict.update({"Menu_Code":menuCode})
            parameter_info_dict.update({"Parameter_Name":self._get_text(sym_name_paraname)})
            parameter_info_dict_list.append(parameter_info_dict)
            self._press_Enter_in_keyBoard()
            parameter_model = self.__get_selected_row_object_in_dataGrid(sym_name)
        parameter_model_dict_list.append({GroupName: parameter_info_dict_list})
        return parameter_model_dict_list
    
    def __get_selected_row_object_in_dataGrid(self, sym_name):
        """
        Get selected row object from datagrid.
        :param sym_name:Symbolic name of dataGrid.
        :return:object of a row in datagrid.
        """
        datagridObject = squish.waitForObject(sym_name)
        parameter_model = datagridObject.nativeObject.Items.CurrentItem
        return parameter_model
    

        
        
    def _get_current_highlighted_row_from_dataGrid(self, sym_name):
        """
        Get current highlighted row from dataGrid.
        :param sym_name: Symbolic name of dataGrid.
        :return: Parameter Name of the highlighted/ selected row in dataGrid.
        """
        row_object = self.__get_selected_row_object_in_dataGrid(sym_name)
        parameter_info_dict = self.__get_datagrid_row(row_object)
        return parameter_info_dict

    def __get_datagrid_row(self, row_object):
        """
        Get datagrid row dictionary from given row.
        :param row_object:row object
        :return:dictionary of row.
        """
        parameter_info_dict = {}
        for key in self.__items_to_be_collected_from_datagrid_row:
            try:
                parameter_info_dict[key] = row_object[key]
            except:
                parameter_info_dict[key] = None
                continue
        parameter_info_dict['circle_R'] = row_object.CircleColor.Color.R
        parameter_info_dict['circle_G'] = row_object.CircleColor.Color.G
        parameter_info_dict['circle_A'] = row_object.CircleColor.Color.A
        parameter_info_dict['circle_B'] = row_object.CircleColor.Color.B
        parameter_info_dict['Background_R'] = row_object.BackgroundBrush.Color.R
        parameter_info_dict['Background_G'] = row_object.BackgroundBrush.Color.G
        parameter_info_dict['Background_B'] = row_object.BackgroundBrush.Color.B
        parameter_info_dict['Background_A'] = row_object.BackgroundBrush.Color.A
        return parameter_info_dict


    def __click_on_first_row_in_dataGrid(self, sym_name):
        """
            Get datagrid list from UI
            :param datagrid_column_names: column names as per index of datagrid.
            :param seperator: list seperator for multiple values.
            :return: datagrid list
            :warning : must call 'parse_the_dataGrid' before calling this function.
            """
        sym_name = squish.waitForObject(sym_name)
        items = object.children(sym_name)
        for item in items:
            if item.type == "WPFControl":
                expander = object.children(item)
                for child in expander:
                    if child.type == "Expander" and child.nativeObject.IsExpanded == True:
                        rows = object.children(child)
                        for row in rows:
                            if row.type == "TableRow" and row.nativeObject.IsVisible and \
                                    row.enabled == True:
                                fields = object.children(row)
                                for field in fields:
                                    self._ClickButton(field)
#                                     squish.mouseClick(field)
                                    return True

        
    def _set_favourite_in_datagrid(self, sym_name_dataGrid, groupName, parameterName, check):
        """
        Check or uncheck favourite checkbox for given parameter name .
        :param sym_name_dataGrid:symbolic name of datagrid
        :param groupName: string of group name or expander name of parameter.
        :param parameterName: string parameter name to set value
        :param check: boolean True/False - checkbox value of parameter.
        :return: True if parameter is found , else returns False.
        """
        tbl = squish.waitForObjectExists(sym_name_dataGrid)
        items_1 = object.children(tbl)
        for item_1 in items_1:
            if item_1.type == "WPFControl":
                expander = object.children(item_1)
                for child in expander:
                    if child.type == "Expander":
                        if child.nativeObject.DataContext.Name == groupName:
                            rows = object.children(child)
                            for row in rows:
                                if (row.type == "TableRow") and (row.nativeObject.IsVisible == True):
                                    if row.nativeObject.DataContext.ParameterName == parameterName:
                                        fields = object.children(row)
                                        if self.__DATAGRID_FAVOURITES_INDEX < len(fields):
                                            fav = object.children(fields[self.__DATAGRID_FAVOURITES_INDEX])
                                            fav = list(fav).pop()
                                            if fav.type == "CheckBox":
                                                if fav.checked != check:
                                                    self._ClickButton(fav)
                                            return True
        return None

    def _get_favourite_in_datagrid(self, sym_name_dataGrid, groupName, parameterName):
        """
        get favourite checkbox value for given parameter name .
        :param sym_name_dataGrid:symbolic name of datagrid.
        :param groupName: string of group name or expander name of parameter.
        :param parameterName: string parameter name to set value.
        :return: True or False if parameter is found , else returns None.
        """
        tbl = squish.waitForObjectExists(sym_name_dataGrid)
        items_1 = object.children(tbl)
        for item_1 in items_1:
            if item_1.type == "WPFControl":
                expander = object.children(item_1)
                for child in expander:
                    if child.type == "Expander":
                        if child.nativeObject.DataContext.Name == groupName:
                            rows = object.children(child)
                            for row in rows:
                                if (row.type == "TableRow") and (row.nativeObject.IsVisible == True):
                                    if row.nativeObject.DataContext.ParameterName == parameterName:
                                        if not row.nativeObject.DataContext.IsEnabled:
                                            return None
                                        fields = object.children(row)
                                        if self.__DATAGRID_FAVOURITES_INDEX < len(fields):
                                            fav = object.children(fields[self.__DATAGRID_FAVOURITES_INDEX])
                                            fav = list(fav).pop()
                                            if fav.type == "CheckBox":
                                                return fav.checked
        return None

    def _set_value_in_datagrid(self, sym_name_dataGrid, groupName, parameterName, setValue):
        """
        Set value for given parameter in datagrid.
        :param sym_name_dataGrid:symbolic name of datagrid
        :param groupName: string of group name or expander name of parameter.
        :param parameterName: string parameter name to set value
        :param setValue: string set value of parameter.
        :return: True if parameter is found , else returns False.
        """
        tbl = squish.waitForObjectExists(sym_name_dataGrid)
        items_1 = object.children(tbl)
        alenum_combo_index = 0
        for item_1 in items_1:
            if item_1.type == "WPFControl":
                expander = object.children(item_1)
                for child in expander:
                    if child.type == "Expander":
                        if child.nativeObject.DataContext.Name == groupName:
                            rows = object.children(child)
                            for row in rows:
                                if (row.type == "TableRow") and (row.nativeObject.IsVisible == True):
                                    if row.nativeObject.DataContext.ParameterName == parameterName:
                                        if not row.nativeObject.DataContext.IsEnabled:
                                            return False
                                        fields = object.children(row)
                                        for field in fields:
                                            if field.type == "TableCell" and \
                                                    field.column == self.__VALUE_COLUMN_INDEX_IN_DATAGRID:
                                                edits = object.children(field)
                                                for edit in edits:                                                    
                                                        if edit.type == "Edit" and edit.name == "txtValue":
                                                            self._set_text(edit, setValue)
                                                            return True
                                                        if edit.type == "ComboBox":
                                                            if edit.nativeObject.DataContext.Datatype == "Enum":
                                                                self._click_and_select_list_Box(edit, setValue)
                                                                return True
                                                            elif edit.nativeObject.DataContext.Datatype == "ALENUM":
                                                                # save loop number and set value
                                                                value = (int(
                                                                    setValue) >> (
                                                                                 2 * alenum_combo_index)) & self.__ALENUM_MASK_VALUE
                                                                value = self.__ALENUM_COMBO_VARIABLES[value]
                                                                self._select_item_in_list_box(edit, value)
                                                                alenum_combo_index = alenum_combo_index + 1
                                                                if alenum_combo_index == self.__ALENUM_NO_OF_COMBOBOX:
                                                                    return True
            
        return False

    def _get_list_of_files_from_open_dialog(self, sym_name):
        """
        Get list of files from open window.
        :param sym_name: symbolic name of list in open window.
        :return: list of files present in open dialog.
        """
        file_list_item = list()
        file_list = self._wait_until_object_visible(sym_name)
        for child in object.children(file_list):
            if child.type == "ListItem":
                file_list_item.append(child.nativeObject.Name)
        return file_list_item

    def _select_file_from_list_of_files_from_window_dialog(self, sym_name, filename):
        """
        Get list of files from open window.
        :param sym_name: symbolic name of list in open window.
        :param filename:filename to open
        :return: list of files present in open dialog.
        """
        
        file_list = self._wait_until_object_visible(sym_name)
        h = object.children(file_list)
        for child in h:
            if child.type == "ListItem":
                if child.nativeObject.Name == filename:
                    #self._ClickButton(child)
                    #squish.mouseClick(child, squish.MouseButton.PrimaryButton)
                    self._mouse_leftclick(child)
                    return True
        return False
      
    def _opendialog_get_current_explorer_path(self, explorer_toolbar_path):
        """
        Get open dialog window path
        :param explorer_toolbar_path: open window get current explorer path.
        :return: get current directory from window.
        """
        tbl = self._wait_until_object_visible(explorer_toolbar_path)
        if tbl:
            return tbl.text
        return False

    def _press_Tab_in_Keyboard(self):
        """

        :return:
        """
        squish.keyPress("<Tab>")

    def _squish_expand(self, sym):
        """
        Expands a item like tree or list.
        :param sym: symbolic name of item to expand.
        :return: None
        """
        squish.expand(squish.waitForObject(sym))

    def _press_Enter_in_keyBoard(self):
        """
        Function that simulates the press operation of the "Enter" button.
        :return: True if succeeds

        """
        squish.keyPress("<Return>")
        return True

    def _press_Backspace_in_keyBoard(self):
        """
        Function that simulates the press operation of the "Backspace" button.
        :return: True if succeeds

        """
        squish.keyPress("<Backspace>")
        return True
    
    def _get_opacity_value(self, sym):
        """
        Get opacity value from
        :return: opacity value
        """
        obj = self._wait_until_object_visible(sym)
        return obj.nativeObject.Content.Opacity

    def _get_list_of_menu_item(self, sym):
        """
        Get list of menu items from sym
        :param sym: symbolic name of menu item.
        :return: list of menu items.
        """
        obj = self._wait_until_object_visible(sym)
        children = object.children(obj)
        lst = list()
        for child in children:
            if child.type == "MenuItem":
                lst.append(child.text)
        return lst

    def _select_menu_item(self, sym, item_name):
        """
        Get list of menu items from sym
        :param sym: symbolic name of menu item.
        :param item_name: string menu item to select.
        :return: True if selected successfully else False.
        """
        obj = self._wait_until_object_visible(sym)
        self._ClickButton(obj)
        children = object.children(obj)
        for child in children:
            if child.type == "MenuItem":
                if child.text == item_name:
                    self._ClickButton(child)
                    return True
        return False

    def _select_folder(self, sym_name, Path):
        """
        Select folder in the Browse dialog in preference window
        :param sym_name: symbolic name of Browse dialog
        :param Path:Path to select
        :return:True if succeeds
        """
        obj = self._wait_until_object_visible(sym_name)
        if obj:
            items = object.children(obj)
            for item_1 in items:
                if ((object.properties(item_1)["type"] == "Pane")):
                    TableItem = object.children(item_1)
                    for table in TableItem:
                        if ((object.properties(table)["type"] == "Tree")):
                            folders = object.children(table)       
                            for folder in folders:
                                if ((object.properties(folder)["type"] == "TreeItem")):
                                    if ((object.properties(folder)["text"] == "This PC")):
                                        folderitems = object.children(folder)
                                        path_list = Path.split("\\")
                                        if  not self._click_on_path(folderitems,path_list):
                                            return False
                                        else: 
                                            return True
                                        
    def _click_on_path(self, folderitems,path_list):
        """
        Select folder in the Browse dialog in preference window
        :param folderitems:folder list 
        :param path_list:path list to select
        :return:True if succeeds
        """
        for path in path_list:
            for item in folderitems:
                value=item.text  
                if path == "C:":
                    path="OSDisk (C:)"
                if value == path:
                    self._ClickButton(item)   
                    time.sleep(5)
                    child2 = object.children(item)
                    if path == "OSDisk (C:)":
                        path="C:"
                    path_list.remove(path)
                    if not path_list :
                        break
                    else:
                        self._click_on_path(child2,path_list)
                        return True
            
    def _select_fav_file(self, sym_name, project_name):
        """
        Select file from the favorite table
        :param project_name:project name to be selected as favorite
        :param sym_name: symbolic name of favorite table
        :return: True if success
        """
        obj = self._wait_until_object_visible(sym_name)
        if obj:
            items = object.children(obj)
            for item_1 in items:
                if ((object.properties(item_1)["type"] == "TableRow")):
                    item2=object.children(item_1)
                    for item in item2:
                        if ((object.properties(item)["type"] == "TableCell")):
                            if item.column==0:
                                if project_name == item.text:
                                    self._ClickButton(item)
                                    return True
                                
                                
    def _delete_fav_file(self, sym_name, project_name):
        """
        Delete the favorite file from the favorite grid
        :param sym_name: symbolic name of favorite table
        :param project_name:project name to be deleted
        :return: True if success
        """
        obj = self._wait_until_object_visible(sym_name)
        if obj:
            items = object.children(obj)
            for item_1 in items:
                if ((object.properties(item_1)["type"] == "TableRow")):
                    item2=object.children(item_1)
                    for item in item2:
                        if ((object.properties(item)["type"] == "TableCell")):
                            if item.column==0:
                                if project_name == item.text:
                                    for item in item2:
                                        if item.column==3:
                                            deletebutton=object.children(item)
                                            for item in deletebutton:
                                                if ((object.properties(item)["type"] == "Button")):
                                                    self._ClickButton(item)
                                                    return True
    
    def _get_fav_files_list(self, sym_name):
        """
        Get favorite files from the favorite table from Copy to controller window.
        :param sym_name: symbolic name of favorite table
        :return: True if success
        """
        fav_file_info_list=[]
        fav_file_info_dict_list=[]
        obj = self._wait_until_object_visible(sym_name)
        if obj:
            items = object.children(obj)
            for item_1 in items:
                if ((object.properties(item_1)["type"] == "TableRow")):
                    item2=object.children(item_1)
                    fav_file_info_dict={}
                    fav_file_info_list=[]
                    for item in item2:
                        if ((object.properties(item)["type"] == "TableCell")):
                            if item.column==0:
                                fav_file_info_dict["ProjectName"]=item.text
                            elif item.column==1:
                                fav_file_info_dict["ProjectPath"]=item.text
                            elif item.column==2:
                                fav_file_info_dict["ControllerVariant"]=item.text   
                            elif item.column==3:
                                deletebutton=object.children(item)
                                for item in deletebutton:
                                    if ((object.properties(item)["type"] == "Button")):
                                        fav_file_info_dict["deletebutton"]=item 
                    fav_file_info_list.append(fav_file_info_dict)
                    fav_file_info_dict_list.append({fav_file_info_dict["ProjectName"]:fav_file_info_list})
            
            return fav_file_info_dict_list
        
    def _check_the_checkbox_in_datagrid(self, sym_name_dataGrid, groupName, parameterName, type="plot"):
        """
        Set checkbox for given parameter in datagrid.
        :param sym_name_dataGrid:symbolic name of datagrid
        :param groupName: string of group name or expander name of parameter.
        :param parameterName: string parameter name to set value
        :return: True if parameter is found and checked , else returns False.
        """
        tbl = squish.waitForObjectExists(sym_name_dataGrid)
        items_1 = object.children(tbl)
        for item_1 in items_1:
            if item_1.type == "WPFControl":
                expander = object.children(item_1)
                for child in expander:
                    if child.type == "Expander":
                        #if child.nativeObject.DataContext.Name == groupName:
                            rows = object.children(child)
                            for row in rows:
                                if (row.type == "TableRow") and (row.nativeObject.IsVisible == True):
                                    if row.nativeObject.DataContext.ParameterName == parameterName:
                                        fields = object.children(row)
                                        if type == "plot":
                                            for field in fields:
                                                if field.type == "TableCell" and \
                                                        field.column == 2:
                                                    edits = object.children(field)
                                                    for edit in edits:
                                                        if edit.type == "CheckBox" and edit.name == "chkService":
                                                            self._check_checkbox(edit)
                                                            return True
                                        elif type == "Favorite":
                                            for field in fields:
                                                if field.type == "TableCell" and \
                                                        field.column == 1:
                                                    edits = object.children(field)
                                                    for edit in edits:
                                                        if edit.type == "CheckBox" and edit.name == "chkFavourites":
                                                            self._check_checkbox(edit)
                                                            return True
                                        else:
                                            for field in fields:
                                                if field.type == "TableCell" and \
                                                        field.column == 1:
                                                    edits = object.children(field)
                                                    for edit in edits:
                                                        if edit.type == "CheckBox" and edit.name == "chkFavourites":
                                                            self._Uncheck_checkbox(edit)
                                                            return True
        return False
    
    def _check_checkbox(self, sym_name):
        """
        Check the checkBox if it is not checked.
        :param sym_name: Symbolic name of checkbox object.
        :return: True if succeeds.
        
        """
        tbl = self._wait_until_object_visible(sym_name)
        if tbl:
            if tbl.checked == False:
                self._ClickButton(sym_name)
                if tbl.checked == True:
                    return True
                else:
                    return False
            else: 
                return True            

    def _Uncheck_checkbox(self, sym_name):
        """
        UnCheck the checkBox if it is checked.
        :param sym_name: Symbolic name of checkbox object.
        :return: True if succeeds.
        
        """
        tbl = self._wait_until_object_visible(sym_name)
        if tbl:
            if tbl.checked == True:
                self._ClickButton(sym_name)
                if tbl.checked == False:
                    return True
                else:
                    return False
            else: 
                return True    
            
    def _checkbox_status(self, sym_Name):
        """
        Status of the  specfied checkbox is returned.
        :param sym_Name: Symbolic name of Squish checkbox object.
        :return: Status of the checkbox.
        
        """
        tbl = self._wait_until_object_visible(sym_Name)
        if tbl:
            obj = tbl.nativeObject
            return obj.IsChecked

    def _get_header_items_text_list_from_chart_dataGrid(self,sym_name):
        """
        Get header items text list from chart dataGrid.
        :param sym_name: Symbolic name of chart dataGrid.
        :return: List of header items text of chart dataGrid.
        
        """
        header_list = []
        obj = self._wait_until_object_visible(sym_name)
        if obj:
            items = object.children(obj)
            for item_1 in items:
                if (object.properties(item_1)["type"] == "HeaderItem"):
                    TableItem = object.children(item_1)
                    for table in TableItem:
                        if (object.properties(table)["type"] == "Label"):
                            header_list.append(table.text)
                            
        return header_list                 
    
    def _get_child_list_from_tab(self,sym_name,fam): 
        """
        Get the child items list from the tabFolder.
        :param sym: Symbolic name of the tabFolder
        :param fam: controller family 
        :return: List of the child items from tabFolder.
        """
        variant_list=[]
        obj = self._wait_until_object_visible(sym_name)
        if obj:
            items = object.children(obj)
            for item_1 in items:
                if ((object.properties(item_1)["type"] == "TabItem") and (
                        object.properties(item_1)["name"] == "tabController")):
                    TableItem = object.children(item_1)
                    for table in TableItem:
                        if ((object.properties(table)["type"] == "Table") and (
                                object.properties(table)["name"] == "datagridProducts")):
                            childs = object.children(table)
                            for child in childs:
                                if ((object.properties(child)["type"] == "WPFControl") and (
                                        object.properties(child)["class"] == "System.Windows.Controls.GroupItem")):
                                    expander = object.children(child)
                                    for exp in expander:
                                        if object.properties(exp)["type"] == "Expander":
                                            ExpanderName = None
                                            ExpanderName = exp.nativeObject.DataContext.Name
                                            if str(ExpanderName).strip() == str(fam).strip():
                                                if not exp.expanded:
                                                    if not self._mouse_leftclick(exp):
                                                        test.fail("failed to click button")
                                                    test.log("Expander name in KoolProg is " + str(ExpanderName))
                                            rows = object.children(exp)
                                            for row in rows:
                                                if str(ExpanderName).strip() == str(fam).strip():
                                                    if object.properties(row)["type"] == "TableRow":
                                                        cells = object.children(row)
                                                        for cell in cells:
                                                            if object.properties(cell)["type"] == "TableCell":
                                                                variant_list.append(cell.text)
        return variant_list
    
    def _get_type(self, sym_name):
        """
        Get the type of the UI object.
        :param sym_name: Symbolic name of the UI object.
        :return: Type of the UI object.
        """
        tbl = self._wait_until_object_visible(sym_name)
        if tbl:
            try:
                return tbl.type
            except:
                tbl = tbl.nativeObject
                return tbl.Type

    def _getParameterDetails_from_quickSettingListView(self, sym_name,sym_name_ok_button,menucode_sym_name, param_sym_name,help_sym_name):
        """
        Get the parameter and its values from the quicksetting listview.
        :param sym_name: Symbolic name of the parameter listview in quicksettings window.
        :param sym_ok_button: Symbolic name of the Ok button in popup window.
        :param help_sym_name: Symbolic name of the help description.
        :param menucode_sym_name: Symbolic name of the menu code.
        :param param_sym_name: Symbolic name of the parameter name.
        :return: list of dictionaries containing parameter,unit,combobox list,editbox text.
        """
        time.sleep(2)
        obj = self._wait_until_object_visible(sym_name)
        children = object.children(obj)
        boxTypeList = list()
        parameter_unit_list = list()
        parameter_value_list = list()
        parameter_listItems_list = list()
        parameter_names_list = list()
        parameter_tooltip_list = list()
        menucode_list = list()
        param_list = list()
        help_list = list()
        for ele in children:
            items = object.children(ele)
            for item in items:
                if item.nativeObject.IsVisible == True:
                    if (object.properties(item)["type"] == "Edit"):
                        if item.nativeObject.DataContext.IsTextBoxVisible == True:
                            boxTypeList.append("Edit")
                            parameter_listItems_list.append(None)
                            parameter_names_list.append(item.nativeObject.DataContext.ParameterName)
                            parameter_unit_list.append(item.nativeObject.DataContext.ParameterUnit)
                            parameter_value_list.append(item.nativeObject.DataContext.Value)
                            self._ClickButton(item)
                            if self._visible(sym_name_ok_button):
                                self._ClickButton(sym_name_ok_button)
                            parameter_tooltip_list.append(item.tooltip)
                            menucode_list.append(self._get_text(menucode_sym_name))
                            param_list.append(self._get_text(param_sym_name))
                            help_list.append(self._get_text(help_sym_name))
                            break
                    if  (object.properties(item)["type"] == "ComboBox"):
                        if item.nativeObject.DataContext.IsTextBoxVisible != True:
                            boxTypeList.append("ComboBox")
                            parameter_listItems_list.append(self._get_list_box_items(item))
                            parameter_names_list.append(item.nativeObject.DataContext.ParameterName)
                            parameter_unit_list.append(item.nativeObject.DataContext.ParameterUnit)
                            parameter_value_list.append(item.nativeObject.DataContext.Value)
                            parameter_tooltip_list.append(item.tooltip)
                            menucode_list.append(self._get_text(menucode_sym_name))
                            param_list.append(self._get_text(param_sym_name))
                            help_list.append(self._get_text(help_sym_name))
                            break
        param_details = [{parameter_names_list[i]: {"Unit": parameter_unit_list[i],"BoxType": boxTypeList[i],"ListItems":parameter_listItems_list[i],"Value":parameter_value_list[i],"tooltip":parameter_tooltip_list[i],"Parameter":param_list[i],"Help":help_list[i],"Menucode":menucode_list[i]}}for i in range (len(parameter_names_list))]
        return param_details
    
    def _getParameterDetails_from_chart_dataGrid(self, sym_name):
        """
        Get the parameter and its values from the chart dataGrid.
        :param sym_name: Symbolic name of the chart dataGrid Table..
        :return: list of dictionaries containing parameter,parameter plotted,menucode,min,max and value.
        """
        obj = self._wait_until_object_visible(sym_name)
        parameter_list = []
        menucode_list = []
        min_list = []
        max_list = []
        value_list = []
        parameter_plotted_list = []
        if obj:
            items = object.children(obj)
            for item in items:
                if (object.properties(item)["type"] == "TableRow"):
                    parameter_list.append(object.properties(item)["nativeObject"]["DataContext"]["ParameterName"])
                    menucode_list.append(object.properties(item)["nativeObject"]["DataContext"]["MenuCode"])
                    min_list.append(object.properties(item)["nativeObject"]["DataContext"]["Min"])
                    max_list.append(object.properties(item)["nativeObject"]["DataContext"]["Max"])
                    value_list.append(object.properties(item)["nativeObject"]["DataContext"]["Value"])
                    parameter_plotted_list.append(object.properties(item)["nativeObject"]["DataContext"]["IsPlotted"])
        param_details = [{parameter_list[i]: [{"parameter plotted":parameter_plotted_list[i]},{"Menucode": menucode_list[i]},{"Min": min_list[i]},{"Max":max_list[i]},{"Value":value_list[i]}]}for i in range (len(parameter_list))]
        return param_details
    
    def _get_columnNames_from_dataGrid(self, sym_name):
        """
        Get Column names from the datagrid table.
        :param sym_name: Symbolic name of the datagrid table.
        return: list of column names. 
        """
        obj = self._wait_until_object_visible(sym_name)
        header_details = []
        if obj:
            items = object.children(obj)
            for item in items:
                if (object.properties(item)["type"] == "HeaderItem"):
                    header_details.append(object.properties(item)["text"])
        return header_details
    
    def _set_value_in_quick_settings(self, sym_name_ok_button,sym_name, parameterName, setValue):
        
        """
        Sets value of provided parameter in quick setting window.
        :param sym_name_ok_button: Symbolic name of the Ok button in popup window.
        :param parameterName: Parameter Name
        :param sym_name: Symbolic name of quick setting ListView
        :param setValue: Set value 
        
        """
        
        obj = self._wait_until_object_visible(sym_name)
        children = object.children(obj)
        found = False
        for ele in children:
            items = object.children(ele)
            for item in items:
                if item.nativeObject.IsVisible == True:
                    if item.nativeObject.DataContext.ParameterName  == parameterName:
                        found = True
                        if item.nativeObject.DataContext.IsTextBoxVisible == True:
                            if (object.properties(item)["type"] == "Edit"):
                                self._mouse_double_click(item)
                                if self._visible(sym_name_ok_button):
                                    self._ClickButton(sym_name_ok_button)
                                self._set_text(item, setValue)
                                return True
                        if item.nativeObject.DataContext.IsComboBoxVisibile == True:
                            if (object.properties(item)["type"] == "ComboBox"):
                                self._select_item_in_list_box(item, setValue)
                                return True
            if found == True:
                break
        return False
    
    def _get_headers_from_the_datagrid(self, symName):
        """
        Get the headers from the datagrid.
        :param symName: Symbolic name of the datagrid.
        :return: List of headeritem.
        """
        obj = self._wait_until_object_visible(symName)
        children = object.children(obj)
        lst=[]
        for ele in children:
            if ele.type == "HeaderItem" and ele.text != '':
                lst.append(ele.nativeObject.DataContext)
        return lst 
    
    def _parse_the_alarm_datagrid(self, sym_name):
        """
        Gets the datagrid information.
        :param sym_name: Symbolic name of dataGrid.
        :return: datagrid Information will be returned
        
        """
        parameter_model_dict_list = []
        parameter_info_dict_list = []
        self.__click_on_first_row_in_dataGrid(sym_name)
        parameter_model = self.__get_selected_row_object_in_dataGrid(sym_name)
        GroupName = parameter_model['AlarmGroupName']
        count = self._get_row_count_of_dataGrid(sym_name)
        for _ in range(count):
            if GroupName != parameter_model['AlarmGroupName']:
                parameter_model_dict_list.append({GroupName: parameter_info_dict_list})
                GroupName = parameter_model['AlarmGroupName']
                parameter_info_dict_list = list()
            parameter_info_dict = self.__get_alarm_datagrid_row(parameter_model)
            parameter_info_dict_list.append(parameter_info_dict)
            self._press_Enter_in_keyBoard()
            parameter_model = self.__get_selected_row_object_in_dataGrid(sym_name)
        parameter_model_dict_list.append({GroupName: parameter_info_dict_list})
        return parameter_model_dict_list

    def __get_alarm_datagrid_row(self, row_object):
        """
        Get datagrid row dictionary from given row.
        :param row_object:row object
        :return:dictionary of row.
        """
        parameter_info_dict = {}
        for key in self.__items_to_be_collected_from_alarm_datagrid_row:
            try:
                parameter_info_dict[key] = row_object[key]
            except:
                parameter_info_dict[key] = None
                continue
        return parameter_info_dict
    
    def _parse_active_alarm_dataGrid(self,sym_name):
        """
        Gets the active alarm datagrid information.
        :param sym_name: Symbolic name of dataGrid.
        :return: datagrid Information will be returned
        
        """
        parameter_collection_info = []
        time.sleep(5)
        sym_name = squish.waitForObject(sym_name)
        items = object.children(sym_name)
        for item in items:
            if item.type == "TableRow" and item.nativeObject.IsVisible and \
                    item.nativeObject.IsEnabled == True:
                children_items = object.children(item)
                
                count = 0
                for children_item in children_items:
                    if children_item.type == "TableCell" and children_item.column == 0 :
                        menuCode = children_item.text
                        count = count + 1
                    if children_item.type == "TableCell" and children_item.column == 1 :
                        parameterName = children_item.text
                        count = count + 1
                    if count == 2:
                        aDict = {menuCode:parameterName}
                        parameter_collection_info.append(aDict)
                        count = 0
         
        return {"ParameterTab_Active_alarms_collection" : parameter_collection_info}
                    
    def _get_headersList_in_alarm_dataGrid(self, sym_name):
        """
        Gets the header List information from alarm DataGrid.
        :param sym_name: Symbolic name of dataGrid.
        :return: Header List information from alarm DataGrid.
        
        """
        headers_list = []
        sym_name = squish.waitForObject(sym_name)
        items = object.children(sym_name)
        for item in items:
            if item.type == "HeaderItem" and item.nativeObject.IsVisible and item.nativeObject.IsEnabled == True:
                children_items = object.children(item)
                for children_item in children_items:
                    if children_item.type == "Label":
                        headers_list.append(children_item.text)
                        
        return headers_list
    
    def _get_readOutsList_from_dataGrid(self, sym_name):
        """
        Gets the readouts List information from DataGrid.
        :param sym_name: Symbolic name of dataGrid.
        :return: Readouts List information from DataGrid.
        
        """
        readouts_list = []
        sym_name = squish.waitForObject(sym_name)
        items = object.children(sym_name)
        for item in items:
            if item.type == "TableRow" and item.nativeObject.IsEnabled == True:
                children_items = object.children(item)
                for children_item in children_items:
                    if children_item.type == "TableCell" and children_item.column == 1:
                        readouts_list.append(children_item.text)
                        break
                        
        return readouts_list
    
    def _get_interLockList_from_alarmTab(self, sym_name):
        """
        Gets the interLock List information.
        :param sym_name: Symbolic name of WPF Control.
        :return: InterLock List information.
        
        """
        sym_name = squish.waitForObject(sym_name)
        items = object.children(sym_name)
        interLock_parameters = []
        for item in items:
            if item.type == "Label" and item.nativeObject.IsVisible == True:
                if item.nativeObject.DataContext.AlarmName not in interLock_parameters:
                    interLock_parameters.append(item.nativeObject.DataContext.AlarmName)
                        
        return interLock_parameters
    
    def _click_onAlarm_in_alarm_dataGrid(self,sym_name,alarmName):
        """
        Clicks on the specified alarm row.
        :param sym_name: Symbolic name of dataGrid.
        :param alarmName: Alarm name.
        :return: True if succeeds, False otherwise.
        
        """
        sym_name = squish.waitForObject(sym_name)
        items = object.children(sym_name)
        for item in items:
            if item.type == "WPFControl" and item.nativeObject.IsVisible and \
                    item.nativeObject.IsEnabled == True:
                children_items = object.children(item)
                
                for children_item in children_items:
                    if children_item.type == "Expander" and children_item.nativeObject.IsVisible == True :
                        sub_children_items = object.children(children_item)
                        for aSubchild in sub_children_items:
                            if aSubchild.type == "TableRow" and aSubchild.nativeObject.IsVisible == True:
                                fields = object.children(aSubchild)
                                for field in fields:
                                    if field.type == "TableCell":
                                        if alarmName == field.text:
                                            self._ClickButton(field)
                                            return True
        return False
