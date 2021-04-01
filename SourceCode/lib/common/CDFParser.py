import json
import random
import AKCC55_Config
from DataModel.AKCC_CDF_Parser import CDFFileParser,Language

class CDFContentParser():

    def parse_jso_with_dataModel(self,fileName_with_path,dataModel=None):
        
        """
        Parse the jso file and return its content in the form of dataModel Object.
        :param fileName_with_path: Path and FileName of the Jso File.
        :param dataModel: Input Data Model.
        :return: Contents in dataModel Object Format.
        
        """
        
        with open(fileName_with_path,encoding='utf-8-sig') as complex_data:
            data =complex_data.read()
            json_data = json.loads(data)
   
        CDFobject=dataModel(**json_data)
        return CDFobject 
    
    def structure_change_in_the_cdf(self, cdf_location, structure_change,randString=None):
        """
        Add/Delete random data to Change the structure of the file
        :param cdf_location : Path of the cdf folder.
        :param structure_change:Add/Delete the contents in the CDF.
        :param randString: Random string.
        :return: True if succeeds
        """
        file = cdf_location + "\\device.jso"
        with open(file, "r") as fin:
            data_list = fin.readlines()
            fin.close()
        if structure_change == 'Add':
            data_list.append(randString)
        else:
            del data_list[1:23]
        with open(file, "w") as fout:
            fout.writelines(data_list)
            self.report_log("File has been written successfully!!!")
            return True
   