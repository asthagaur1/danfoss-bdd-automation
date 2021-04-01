required_fields_from_input_sheet = ["controllerFamily", "controllerVariant", "controllerCodeNo", "softwareVersion",
                                    "controllerPV", "controllerApplication", "database", "toTest", "PortNumber"
    , "Isdefault"]

output = {
    required_fields_from_input_sheet[0]: [0, 1, 2, 3, 4, 5, 6],

    "Totest" : ['yes',"no",""]
}

##loop for yes
list_ = output["Totest"]
#