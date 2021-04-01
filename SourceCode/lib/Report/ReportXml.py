import xml
from xml.etree.ElementTree import Element, SubElement, Comment, tostring



class ReportXml(object):
    """

    """

    def __init__(self, filename):
        pass

    def project_name(self, name):
        """

        :param name:
        :return:
        """
        self.top = Element(name)
        return self.top

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

    def add_controller_details(self, parent_obj, name, info):
        """
        Prints info in xml
        :param info:
        :return:
        """
        return self.add_report(parent_obj, name, info)

    def add_feature_details(self, parent_obj, name, info):
        """
        Prints info in xml
        :param info:
        :return:
        """
        return self.add_report(parent_obj, name, info)

    def add_granular_details(self, parent_obj, name, info):
        """
        Prints info in xml
        :param info:
        :return:
        """
        return self.add_report(parent_obj, name, info)

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
