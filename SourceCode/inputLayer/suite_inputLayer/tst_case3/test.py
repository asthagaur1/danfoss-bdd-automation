# -*- coding: utf-8 -*-

import names

def main():
    startApplication("KoolProg")
    mouseClick(waitForObject(names.koolProg_imgSetParams_Image))
    mouseClick(waitForObject(names.danfoss_T4CClient_SetParameters_ListFileItems_ERC11x080G3231_Label))
    clickButton(waitForObject(names.koolProg_i_Button))
    clickButton(waitForObject(names.product_information_X_Button))
    mouseClick(waitForObject(names.koolProg_imgProductleft_Image))
