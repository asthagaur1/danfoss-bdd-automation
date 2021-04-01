import json
import os
import unicodedata
import xml.etree.ElementTree as ET
import random
import imagehash
from PIL import Image
from faker import Faker
from string import punctuation
import re
import shutil
from datetime import datetime, timedelta
import string
import zipfile

def remove_spaces_with_underscore(input_str):
    """
    Remove spaces with underscore in input string.
    :param input_str: input string
    :return:
    string
    """
    return input_str.replace(" ", "_")


def remove_underscore_with_space(input_str):
    """
    Remove spaces with underscore in input string.
    :param input_str: input string
    :return:
    string
    """
    return input_str.replace("_", " ")


def make_string_Lower_case(input_str):
    """

    :param input_str:
    :return:
    """
    return input_str.lower()


def make_small_letters_rem_space(input_str):
    """

    :param input_str:
    :return:
    """
    return make_string_Lower_case(remove_spaces_with_underscore(input_str))


def captilaise_string(input_str):
    """

    :param input_str:
    :return:
    """
    return input_str.capitalize()


def remove_special_space_chars(input_str):
    """

    :param input_str:
    :return:
    """
    input_str = ''.join(e for e in input_str if e.isalnum())
    return input_str


def unicode_to_ascii_string(input_str):
    """
    """
    return unicodedata.normalize('NFKD', input_str).encode('ascii', 'ignore')


def find_values_and_return_index(list_to_search, value):
    """

    :param list_to_search:
    :param value:
    :return:
    """
    return [i for i, x in enumerate(list_to_search) if x == value]


def compare_images(img1, img2, cutoff=3):
    """
    """
    if os.path.isfile(img1) == True and os.path.isfile(img2) == True:
        hash0 = imagehash.average_hash(Image.open(img1))
        hash1 = imagehash.average_hash(Image.open(img2))
        if hash0 - hash1 < cutoff:
            return True
        else:
            return False
    else:
        return None

def compare_text(ui_text1,ui_text2):
    """
    Returns True if two texts are similar , else return false.
    :param ui_text1: Text Input data
    :param ui_text2: Text Input data
    :return: True if two texts are similar , else false.
    """
    if ui_text1==ui_text2:
        return True
    else:
        return False

def get_currentDirectory():
    """
    """
    return os.getcwd()


def removeFile(file_path):
    """
    """
    if path_exists(file_path):
        os.remove(file_path)
        
def path_exists(check_path):
    """
    """
    return os.path.isfile(check_path)

def path_dir_exists(folder_path):
    """
    """
    return os.path.isdir(folder_path)

def xml_get_text_from_tag(xml_file, tag):
    """
    """
    if path_exists(xml_file):
        text = str()
        tree = ET.parse(xml_file)
        root = tree.getroot()
        data = root.findall(tag)
        for v in data:
            text += v.text
        length = len(text)
        if (length > 1):
            text = text[:(length - 1)]
        return text
    else:
        return None


def compare_uincode_lines(u_text1, u_text2):
    """
    """
    text1_line = u_text1.split(u'\n')
    text2_line = u_text2.split(u'\n')
    if len(text1_line) != len(text2_line):
        return False

    for i, text in enumerate(text1_line):
        text = text.replace('\r', '')
        text2 = text2_line[i].replace('\r', '')
        if not text in text2:
            return False
    return True
     

def get_envir_var_value(en_var):
    """
    """
    return os.environ[en_var]


def get_fake_sentence(length=None):
    """

    :param sym_name:
    :return:
    """
    fake = Faker()
    if not length:
        return fake.text().strip()
    name = str()
    while (len(name) < length):
        name += fake.text(length)

    return name[:length]


def get_fake_name(length=None):
    """
    :param length:
    :return:
    """
    fake = Faker()
    if not length:
        return fake.name()
    name = str()
    while (len(name) < length):
        name += fake.name()

    return name[:length]


def get_fake_email():
    """
    :param sym_name:
    :return:
    """
    fake = Faker()
    return fake.email()

def get_fake_country():
    """
    :param sym_name:
    :return:
    """
    fake = Faker()
    return fake.country()

def get_fake_url():
    """
    :param sym_name:
    :return:
    """
    fake = Faker()
    return fake.url()


def add_two_list(list1, list2):
    """

    :param list1:
    :param list2:
    :return:
    """
    for itm in list2:
        list1 = append_unique_value_To_List(itm, list1)
    return list1


def append_unique_value_To_List(value, inputList):
    """
    Returns the list of unique values after appending to the list.
    :param inputList: input list
    :return: List of unique values after appending to it.
    """
    if value not in inputList:
        inputList.append(value)
    return inputList

def compare_list(list1, list2):
    """
    Returns True if two lists are similar , else return false.
    :param list1: input list
    :param list2: input list
    :return: True if two lists are similar , else false.
    """
    list1.sort()
    list2.sort()
    if list1 == list2:
        return True
    return False

def merge_dict(dict1, dict2):
    """
    Merge two dictionary
    """
    dict1.update(dict2)
    return (dict1)

def save_user_data_into_file(file_name, info):
    """
    Save user info into file.
    """
    try:
        f = open(file_name, "w+")
        f.write(json.dumps(info))
        f.close()
        return True
    except:
        return False

def get_user_data_from_file(file_name):
    """
    Save user info into file.
    """
    try:
        f = open(file_name, "r")
        read_string = f.readlines()
        f.close()
        return json.loads(read_string.pop())
    except:
        return False

def list_remove_duplicates_with_order(seq):
    """

    :param seq:
    :return:
    """
    seen = set()
    seen_add = seen.add
    return [x for x in seq if not (x in seen or seen_add(x))]

def get_list_of_same_elements_from_lists(l1, l2):
    """
    Create a new list from two list by collecting same elements.
    :param l1: list 1
    :param l2: list 2
    :return:  list
    """
    return [l for l in l2 if l in l1]

def compare_list_by_order(l1, l2):
    """
    Compare two list by its order.
    :param l1:
    :param l2:
    :return:
    """
    if len(l1) != len(l2):
        return False

    for i, _ in enumerate(l1):
        if l1[i] != l2[i]:
            return False
    return True

def get_list_of_unique_both_elements_from_int_lists(l1, l2):
    """
    Create a new list from two list by collecting same elements.
    :param l1: list 1
    :param l2: list 2
    :return:  list
    """
    for l in l2:
        if l not in l1:
            l1.append(l)
    l1.sort()
    return l1

def get_valid_filename(length):
    """
    get the fake string used as valid file name
    """
    return randString(length)


def get_invalid_filename(special_characters):
    """
    get the invalid file name using special characters
    :param special_characters:specile characters to create invalid filename
    """
    return convert_char_Tostring(special_characters)

def convert_char_Tostring(special_characters):
    """
    convert character to string
    :param special_characters:special characters list
    """
    new = ""
    for characters in special_characters:
        new += characters
    return new

def get_project_file_path(project_path):
    """
    Get the project file  path
    :param project_path : project folder
    :retuen : project folder path
    """
    return os.path.abspath(project_path)


def compare_text_without_newlines(text1, text2):
    """

    Compare description by stripping off whitespaces and new Lines..
    :param text1: Text Input data
    :param text2: Text Input data
    :return: True if succeeds.

    """
    text1 = str(text1)
    text1 = text1.replace("\n","")
    text1 = text1.replace("\r","")
    text1 = text1.replace(" ","")
    text2 = str(text2)
    text2 = text2.replace("\n","")
    text2 = text2.replace("\r","")
    text2 = text2.replace(" ","")
    if text1 == text2:
        return True
    return False


def find_key_list_of_dict(list_of_dict, key):
    """
    Find given key in list of dictionary.
    :param list_of_dict: List contains dictionary
    :param key: key valur to search or find.
    :return: list contains index found else None.
    """
    for i, dic in enumerate(list_of_dict):
        if key in list(dic.keys()):
            return [i]
    return None


def get_name_with_special_characters():
    """
    Get a name with special characters within it.
    :return: string
    """
    fake = Faker()
    return fake.name() + str(punctuation)


def check_string_should_not_contains_list_of_given_characters(string_to_check):
    """
    Check string not contains any one of characters from given unwnanted_character_string.
    :param string_to_check: string to validate or to be tested.
    :return: Boolean True if not a single character from "unwnanted_character_string" not present in string.
    else returns False.
    """
    regex = re.compile('[@_!#$%^&*()<>?/\|}{~:]')
    if regex.search(string_to_check) is None:
        return True
    return False


def check_string_contains_any_character_from_string(string1, string_of_characters_find):
    """
    Check string1 contains any character from string_of_characters_find.
    :param string1: string to check characters.
    :param string_of_characters_find: string of characters to find.
    :return:
    """
    for char in string_of_characters_find:
        if char in string1:
            return False
    return True


def check_alphabets_present_in_given_string(string):
    """
    Check string contains alphabets in given string.
    :param string: string to check alphabets
    :return: Boolean True if string contains alphabets.
    """
    return bool(re.search('[a-zA-Z]', string))


def get_special_characters_as_list():
    """
    Get a name with special characters within it.
    :return: string
    """
    return list(punctuation)


def get_special_characters_as_string():
    """
    Get a name with special characters within it.
    :return: string
    """
    return str(punctuation)

def delete_if_file_exist(prj_filepth_filename):
    """
    remove the file if already exists 
    :param prj_filepth_filename:project path with file name to be removed
    """
    removeFile(prj_filepth_filename)
        
def delete_all_contents_in_folder(folder):
    """
    Deletes all files in a folder
    :param folder: path of folder
    :return: True
    """
    if path_dir_exists(folder):
        for filename in os.listdir(folder):
            file_path = os.path.join(folder, filename)
            try:
                if os.path.isfile(file_path) or os.path.islink(file_path):
                    os.unlink(file_path)
                elif os.path.isdir(file_path):
                    shutil.rmtree(file_path)
            except Exception as e:
                print('Failed to delete %s. Reason: %s' % (file_path, e))
        return True
    else:
        return False
    
    
def copy_file(source_file, dest_path):
    """
    Copy a source file in destination path
    :param source_file: source file to copy.
    :param dest_path:destination path to copy file.
    :return: True if file copied succeed else False.
    """
    if not path_exists(source_file):
        return False
    else:
        shutil.copy(source_file,dest_path)
        return True
    

def copy_file_to_dir(source_file, dest_dir):
    """
    Copy a source file to destination directory
    :param source_file: source file to copy.
    :param dest_dir:destination directory to copy file.
    :return: True if file copied succeed else False.
    """
    if not path_dir_exists(dest_dir):
        os.makedirs(dest_dir)

    if not path_exists(source_file) or not path_dir_exists(dest_dir):
        return False

    shutil.copy(source_file,dest_dir)
    return True
   
def make_dir_if_not_exists(dir):
    """
    Create a directory if it does not exists.
    :param dir: Input directory
    
    """
    if not path_dir_exists(dir):
        os.makedirs(dir)

def get_random_int_value_for_a_range_of_values(min,max,list_of_unwanted_values=[None]):
    """
    Returns a random integer for the set of provided range.
    :param min: Minimum value
    :param max: Maximum value
    :param list_of_unwanted_values: List of values to eliminate if it equals to the generated value.
    :return: Random integer between the range provided.
    
    """
    iteration = 0
    value =  random.randint(int(float(min)), int(float(max)))
    while (value in list_of_unwanted_values) or (iteration == 100):
        value =  random.randint(int(float(min)), int(float(max)))
        iteration = iteration + 1
    return value


def remove_spaces_from_string(inputString):
    """
    Removes spaces from the input string.
    :param inputString:Input string
    :return: String without spaces.
    
    """
    inputString = inputString.replace(" ", "")
    return inputString

def get_a_string_for_given_length(len):
    """
    Returns a string for the provided length.
    :param len: Length of the string.
    :return: A string for the provided length.
    
    """
    string = 'i'
    for _ in range(0,int(len-1)):
        string = string + 'i'
    return string

def randString(length=5):
    """
    Returns a string with randomly selected letters.
    :param length: Length of a string
    :return: String with randomly selected letters.
    
    """
    letters='abcdefghijklmnopqrstuvwxyz'
    return ''.join((random.choice(letters) for i in range(length)))

def convert_sysdateTime_to_sysdate(sysdateTime):
    """
    Converts system datetime to date format
    :param sysdateTime: System dateTime.
    :return: System date.
    
    """
    return datetime.date(sysdateTime)

def convert_sysdateTime_to_systime(sysdateTime):
    """
    Converts system datetime to system time format
    :param sysdateTime: System dateTime.
    :return: System time.
    
    """
    return datetime.time(sysdateTime)


def get_system_date_and_time():
    """
    Returns system date and time.
    :return: system date and time.
    
    """
    return datetime.now()

def add_each_second_provided_to_system_dateTime(system_dateTime,count):
    """
    Returns a list of dayTimes, containing each second added to system datetime with number of times provided in count argument.
    :param system_dateTime: System  datetime.
    :param count: Number of times produced after adding each second.
    :return: Returns a list of dayTimes, containing each second added to system datetime with number of times provided in count argument.
    
    """
    dateTimeList = []
    dateTimeList.append(system_dateTime)
    j = 0
    for _ in range(0,count):
        j = j + 0.00027778
        dateTime = system_dateTime + timedelta(hours = j)
        dateTimeList.append(dateTime)
    return dateTimeList
    
    
def get_list_of_dateTimes_after_adding_and_subtracting_seconds_to_sysDateTime(sysdateTime,count):
        """
        
        Adds and subtracts the seconds to the provided sysDateTime and returns the list of dateTimes.
        :param sysdateTime: system Datetime
        :param count: No of dateTimes needed to be added and subtracted.
        :return: list of dateTimes.
        
        """

        list_of_dateTime = []
        list_of_dateTime_addition = add_each_second_provided_to_system_dateTime(sysdateTime,count)
        list_of_dateTime.extend(list_of_dateTime_addition)
        list_of_dateTime_subtracted = subtract_each_second_provided_to_system_dateTime(sysdateTime,count)
        list_of_dateTime.extend(list_of_dateTime_subtracted)
        return list_of_dateTime
        
        
def subtract_each_second_provided_to_system_dateTime(system_dateTime,count):
    """
    Returns a list of dayTimes, containing each second subtracted to system datetime with number of times provided in count argument.
    :param system_dateTime: System  datetime.
    :param count: Number of times produced after subtracting each second.
    :return: Returns a list of dayTimes, containing each second subtracted to system datetime with number of times provided in count argument.
    
    """
    dateTimeList = []
    dateTimeList.append(system_dateTime)
    j = 0
    for _ in range(0,count):
        j = j + 0.00027778
        dateTime = system_dateTime - timedelta(hours = j)
        dateTimeList.append(dateTime)
    return dateTimeList

def rename_file(filePath,fileName,renamedFileName=None):
    """
    Rename a file from the specific path provided.
    :param filePath_with_fileName: Path of the file with its filename to be renamed.
    :param renamedFileName: New fileName.
    :return: Renamed file name.
    """
    os.chdir(filePath)
    file,extension = os.path.splitext(fileName)
    if path_dir_exists(filePath):
        if renamedFileName is None:
            renamedFileName=randString(5)
        renamedfile = renamedFileName+str(extension)
        os.rename(fileName, renamedfile)
        return renamedfile
    else:
        return False
    
def rename_folder(folder, folder_to_be_renamed,renamedFolderName=None):
    """
    Rename a folder from the specific path provided.
    :param folder: path of the folder to be renamed.
    :param renamedFolderNamee: New folderName.
    :return: Renamed folder name
    """
    os.chdir(folder)
    if path_dir_exists(folder):
        if renamedFolderName is None:
            renamedFolderName=randString(5)
        os.rename(folder_to_be_renamed, renamedFolderName)
        return renamedFolderName
    else:
        return False
       
def delete_the_directory(directory):
    """
    Deletes the directory specified in the argument.
    :param directory: Input folder Name along with the path.
    
    """
    shutil.rmtree(directory) 

def zip_the_files_in_directory(destinationFolderPath, zippedFileName, folderToZipUp):
    """
    Zip all the files in the directory
    :param folderPath: path of the directory
    :param zippedFileName: zip file name.
    :return: Path of the zip file.
    """ 
    zip_file_location = destinationFolderPath +'/' + zippedFileName
    zip_path = shutil.make_archive(zip_file_location, 'zip', folderToZipUp)
    return zip_path
    
def change_the_extension(fileName_with_path,extension):
    """
    Changes the extension of the file according the input extension provided.
    :param fileName_with_path: Input fileName with the path.
    :param extension: Input extension provided.
    
    """
    base = os.path.splitext(fileName_with_path)[0]
    os.rename(fileName_with_path, base + extension)
    return base+extension
    
def unzip_the_file(fileName_with_path, pathToExtract):
    """
    Unzips the file to the path provided.
    :param fileName_with_path: Input file name along with its path.
    :param pathToExtract: Input path to extract the contents of the zipped file.
    
    """
    with zipfile.ZipFile(fileName_with_path, 'r') as zip_ref:
            zip_ref.extractall(pathToExtract)
            
def select_randomly_from_a_list(input_list):
    """
    Select a random element from the list provided.
    :param input_list: Input list
    :return: Randomly selected element from the list.
    
    """
    return random.choice(input_list)

def get_random_float_value_for_provided_range(min,max,list_of_unwanted_values=[None],precision=2):
    """
    Returns randomly generated value between the range provided, with provided precision.
    :param min: Minimum value
    :param max: Maximum value
    :param list_of_unwanted_values: List of values to eliminate if it equals to the generated value.
    :param precision: Precision to generate the provided number of decimal places.
    :return: Randomly generated value between the range provided, with provided precision.
    
    """ 
    iteration = 0
    value =  round(random.uniform(min, max), precision)
    while (value in list_of_unwanted_values) or (iteration == 100):
        value =  round(random.uniform(min, max), precision)
        iteration = iteration + 1
    return value

def select_randomly_from_a_list(input_list,list_of_unwanted_values=[None]):
    """
    Select a random element from the list provided.
    :param input_list: Input list
    :param list_of_unwanted_values: List of values to eliminate if it equals to the generated value.
    :return: Randomly selected element from the list.
    
    """
    
    iteration = 0
    value = random.choice(input_list)
    while (value in list_of_unwanted_values) or (iteration == 100):
        value = random.choice(input_list)
        iteration = iteration + 1
    return value

def inverted_commas_exists(text):
    """
    Check if the inverted commas exists in the text.
    :param text: String .
    :return: True if inverted commas exists in the text, else False.
    """
    if "'" in text:
        return True
    else:
        return False 

def remove_invertedCommas(text):
    """
    Remove the inverted commas in the text.
    :param text: String with inverted commas.
    :return: String without inverted commas.
    """
    inverted_commas_exists(text)
    text = text.replace("'","")
    return text
