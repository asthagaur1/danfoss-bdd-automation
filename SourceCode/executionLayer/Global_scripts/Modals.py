class ControllerInfo:
    def __init__(self, controllerFamily, controllerVariant , controllerCodeNo , softwareVersion, controllerPV , controllerApplication ,database,portNumber,Isdefault):
        self.controllerFamily = controllerFamily
        self.controllerVariant = controllerVariant
        self.controllerCodeNo = controllerCodeNo
        self.controllerSV = softwareVersion
        self.controllerPV = controllerPV
        self.controllerApplication = controllerApplication
        self.database = database
        self.portNumber=portNumber
        self.Isdefault=Isdefault
       
class FeaturesInfo :
    def __init__(self,mainFeatures,subFeatures,scope,controllerFamily,moduleName,moduleScreen):
        self.mainFeatures = mainFeatures
        self.subFeatures = subFeatures
        self.scope = scope
        self.controllerFamily = controllerFamily
        self.moduleName = moduleName
        self.moduleScreen = moduleScreen
        
class ProductSpecificInfo :
    def __init__(self,moduleName,controllerFamily,operationList,symbolicNameList):
        self.moduleName = moduleName
        self.controllerFamily = controllerFamily
        self.operationList = operationList
        self.symbolicNameList = symbolicNameList