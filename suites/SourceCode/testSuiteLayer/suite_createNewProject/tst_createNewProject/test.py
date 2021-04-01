ObjectReferenceList=[]
import copy
import __builtin__
CurrentControllerInstance=None
def execute():        
    source(findFile("scripts", "global.py"));
    source(findFile("scripts", "Functions.py"));
    source(findFile("scripts","Actions.py"))
    source(findFile("scripts", "GranularModules.py"))
    parseObjectList()
    fetchModule()
    test.log(str(CommonControllerVariant))

    
def fetchModule():
    global xml_file
    startApplication("KoolProg")
    commonModulesList=[]
    for controller in controllerListInfo:
        global CurrentControllerInstance
        CurrentControllerInstance=copy.copy(controller)
        test.log(str(__builtin__.type(CurrentControllerInstance)))
        for feature in featureListInfo:
            if feature.subFeatures=="createNewProject":
                
                xml_file.add_feature_details("createNewProject", "Currently, this feature is gonna run")
                ReportInfo= str(controller.controllerVariant) +","+ str(controller.controllerCodeNo)+","+ str(controller.controllerFamily)
                xml_file.add_controller_details(controller.controllerFamily, ReportInfo)
                
                if feature.controllerFamily in controller.controllerVariant or feature.controllerFamily=="Common":
                    modules = feature.moduleName
                    modulesScreen = feature.moduleScreen
                    for i in range(0,len(modules)):
                        if (modules[i].startswith("Common") and CommonControllerVariant==controller.controllerVariant)== True:
                            if modules[i] not in commonModulesList:
                                argument=controller.controllerVariant
                                commonModulesList.append(modules[i])
                                eval(modules[i])(argument)
                        elif modules[i].startswith("Common") == False :
                                test.log(str(modules[i]))
                                test.log(str(modulesScreen[i]))
                                if modulesScreen[i] == "None":
                                    #xml_file.add_granular_details(module, "this is an granular module calling ....")
                                    argument=controller.controllerVariant
                                    eval(modules[i])(argument)
                                else:
                                    argument=controller.controllerVariant
                                    eval(modules[i])(argument, modulesScreen[i])
                                
                        
       # mouseClick(waitForObject(":koolProg_btnHome_Button"))


def parseObjectList():
    
    objects = testData.dataset("Objects.xls")
    for obj in objects:
        objName = testData.field(obj, 0)
        symbName = testData.field(obj, 1)
        ObjectReferenceList.append(objName+'#'+symbName)
       
        