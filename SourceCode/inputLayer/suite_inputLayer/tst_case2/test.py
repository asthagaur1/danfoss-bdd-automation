# -*- coding: utf-8 -*-

import names

def main():
    startApplication("KoolProg")
    mouseClick(waitForObject(names.koolProg_imgSetParams_Image))
    mouseClick(waitForObjectItem(":SetParameters_List_3", "Danfoss.T4CClient.SetParameters+ListFileItems"))
