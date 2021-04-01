import os














file_name = "..\\..\\..\\testSuiteLayer"

subFeature = "createNewProject"

testFeature = "suite_" + subFeature + "\\tst_" + subFeature + "\\" + "test.py"

file = file_name + "\\" + testFeature

path = os.getcwd()
path = path + "\\" + file

print("path = {}".format(path))

# print("file exist:" + str(path.exists('guru99.txt')))
