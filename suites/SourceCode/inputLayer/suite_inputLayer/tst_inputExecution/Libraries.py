import Constants
import os
import xml
from xml.etree.ElementTree import Element, SubElement, Comment, tostring
import xml.etree.ElementTree as ET
class SourceLocator():
    """
    Gets the name of the file from the user that the user wish to locate and returns the path of that file.
    """
    
    def __init__(self):
        pass
    
    def find_TestSuiteLocation(self,testSuiteName,scriptName,testCaseName=None):
        """ 
            Finds the complete path of the Test case of the desired Test Suite according to the architecture defined and returns the path.

            Parameters:
            
            testSuiteName(string): Test Suite Name given by the user.
            
            testCaseName(string): Test Case Name given by the user.

            scriptName(string): The destination script (Python script) inside the user given test case. 

            Returns:

            Path of the test case of the given Test Suite. 
        """
        
        if testCaseName== None:
            path_TestSuiteTestCase="suite_"+testSuiteName+ "\\tst_"+ testSuiteName
        else:
            path_TestSuiteTestCase="suite_"+testSuiteName+ "\\tst_"+ testCaseName
            
        path = os.getcwd()
        
        return os.path.join(path, Constants.TestSuitePath,path_TestSuiteTestCase,"test.py")

class ReportXml(object):
    """

    """
    top=None
    featureElement=None
    currentController=None
    currentGranularModule=None

    def __init__(self):
        pass

    def project_name(self, name):
        """

        :param name:
        :return:
        """
        self.top = ET.Element(name)
        

    def add_report(self, parent_obj, tag_name, info):
        """
        Add a child report details.

        :param parent_obj:
        :param tag_name:
        :param info:
        :return:
        """
        report = SubElement(parent_obj, tag_name)
        report.text = info
        return report

    def add_controller_details(self, name, info):
        """
        Prints info in xml
        :param info:
        :return:
        """
        self.currentController = ET.SubElement(self.featureElement, name)
        self.currentController.text=info

    def add_feature_details(self, name, info):
        """
        Prints info in xml
        :param info:
        :return:
        """
        self.featureElement = ET.SubElement(self.top, name)
        self.featureElement.text=info

    def add_granular_details(self, name, info):
        """
        Prints info in xml
        :param info:
        :return:
        """
        self.currentGranularModule = ET.SubElement(self.currentController, name)
        self.currentGranularModule.text=info

    def add_comment(self, parent, info):
        """

        :param parent:
        :param info:
        :return:
        """
        comment = Comment(info)
        parent.append(comment)

    def function_details(self, parent_obj, name, info):
        """
        Prints info in xml
        :param info:
        :return:
        """
        return self.add_report(parent_obj, name, info)

    def log_fail(self, parent_obj, info):
        """
        Prints info in xml
        :param info:
        :return:
        """
        test.fail(info)
        return self.add_report(parent_obj, "fail", info)

if __name__ == '__main__':
    xml_file = ReportXml('as');

    obj = xml_file.project_name("KOOLPROG_TESTNG")
    obj = xml_file.add_controller_details(obj, "EETC", " code number version pv ")
    xml_file.add_comment(obj, "this comment fot EETC controller ...")
    obj = xml_file.add_feature_details(obj, "create_new_prj", "this is an creating new project")
    xml_file.add_comment(obj, "this comment fot create new controller ...")
    obj = xml_file.add_granular_details(obj, "grannular_module", "this is an granular module calling ....")
    xml_file.add_comment(obj, "this comment grannualr module ...")

    print(tostring(xml_file.top))