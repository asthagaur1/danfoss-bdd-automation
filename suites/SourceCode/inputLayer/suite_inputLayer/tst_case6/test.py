# -*- coding: utf-8 -*-

import names

def main():
    startApplication("KoolProg")
    mouseClick(waitForObject(names.datagridProducts_System_Windows_Controls_StackPanel_Expander))
    mouseClick(waitForObject(names.system_Windows_Controls_StackPanel_0_0_TableCell))
    clickButton(waitForObject(names.newproject_btnRightArrow_Button))
    expand(waitForObject(names.product_Name_cmbApplication_ComboBox))
    mouseClick(waitForObject(names.cmbApplication_DUALDEFROST_ComboBoxItem))
    drop_down_list=waitForObject(names.product_Name_cmbApplication_ComboBox)
    children = object.children(drop_down_list)
    test.log(str(children))
    for child in children:
        if child.type=="ComboBoxItem":
            test.log(str(child.text))
        