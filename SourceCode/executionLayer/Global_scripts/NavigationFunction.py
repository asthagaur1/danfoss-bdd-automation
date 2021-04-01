source(findFile("scripts", "Functions.py"));
      
def nav_NewProject_Cancel(controllerVariant):
    file="nav_NewProject_Cancel.xlsx"
    keyAction(file,controllerVariant)
    
def Common_nav_NewProject_Close(controllerVariant):
    file="nav_NewProject_Close.xlsx"
    keyAction(file,controllerVariant)
def nav_NewProject_Close(controllerVariant):
    file="nav_NewProject_Close.xlsx"
    keyAction(file,controllerVariant)
    
def nav_createNewProject(controllerVariant):
    file="nav_home_to_newProject.xls"
    keyAction(file,controllerVariant)
def Common_nav_createNewProject(controllerVariant):
    file="nav_home_to_newProject.xls"
    keyAction(file,controllerVariant)   
 
def nav_NewProject_Next(controllerVariant):
    file="nav_NewProject_Next.xlsx"
    keyAction(file,controllerVariant)
    
def nav_selectController(controllerVariant):
    file="nav_selectController.xlsx"
    keyAction(file,controllerVariant)
    
def nav_NewProjectWindow2(controllerVariant):
    file='nav_NewProjectWindow2.xlsx'
    keyAction(file,controllerVariant)
        
def nav_home_to_SetparameterScreen(controller):
    nav_createNewProject(controller)
    nav_selectController(controller)
    nav_NewProject_Next(controller)
    nav_NewProjectWindow2(controller)
    chk_WizardCheckBox(controller)
    nav_Finish_Button(controller)
    try:
        symbName=getSymbolicName("YES_Button")
        mouseClick(waitForObject(symbName))
    except:
        snooze(10)
    snooze(5)
        
def nav_Finish_Button(controllerVariant): 
    file="nav_Finish_Button.xlsx"
    keyAction(file,controllerVariant)
    
    
def nav_YES_Button(controllerVariant):
    file="nav_YES_Button.xlsx"
    keyAction(file,controllerVariant)

def nav_Home_Button(controller):
    file="nav_Home_Button.xlsx"
    keyAction(file,controller)
    
def nav_Copy_to_controller(controller):
    file="nav_Copy_to_controller.xlsx"
    keyAction(file,controller)
    
def nav_On_line_service(controller):
    file="nav_On_line_service.xlsx"
    keyAction(file,controller)
    

    

    
