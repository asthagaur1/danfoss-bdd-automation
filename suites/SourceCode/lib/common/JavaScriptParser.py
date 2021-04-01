import re
import test
class JavaScriptRulesParser():

    def parse_js_rules(self,fileName_with_path):
        
        """
        Parse the js file and return its content.
        :param fileName_with_path: Path and FileName of the Js File.
        :return: Contents of the js File.
        
        """
        
        js = open(fileName_with_path, "r").readlines()[3:-3]       
        Rule = []
        for ele in js: 
            regex= re.findall(r'RuleId (.*?) re',ele) 
            X = ','.join( str(a) for a in regex )  
            regex1=re.findall(r'(\d+)',X) 
            Y=','.join( str(a) for a in regex1)  
            regex2=re.findall(r'return (.*);',ele) 
            Z=','.join( str(a) for a in regex2)  
            aDict = {Y:Z}
            Rule.append(aDict)
            
        return Rule
             
    
    def parse_quickSetting_js(self,fileName_with_path):
        """
        
        Parse the js file and return its content.
        :param fileName_with_path: Path and FileName of the Js File.
        :return: Contents of the js File.
        
        """
        js = open(fileName_with_path, "r").readlines()    
        total_parsed_list = []
        stopping_loop = None
        special_increment = None
        stop_iteration = None
        for i in range(0,len(js)):
            x = re.search("switch",js[i])
            if stop_iteration:
                break
            if x:
                while(i<len(js)):
                    stop_iteration = "success"
                    special_increment = None 
                    regex=re.compile('case (\d+)')
                    y=re.findall(regex,js[i])
                    if y:
                        for k in range(i,len(js)):
                            if stopping_loop:
                                mainDict = {y[0]:parsed_list}
                                total_parsed_list.append(mainDict)
                                stopping_loop = None
                                break
                            z = re.search("switch",js[k])
                            if z:
                                parsed_list = []
                                while(k<len(js)):
                                    stopping_loop = re.search("}",js[k])
                                    if stopping_loop:
                                        special_increment = k+1
                                        break
                                    regex = re.compile('case (\d+)')
                                    a=re.findall(regex,js[k])
                                    result = []
                                    l = k
                                    if a: 
                                        for m in range(l+1,len(js)):
                                            b = re.search("break;",js[m])
                                            if not b:
                                                item = js[m].replace("\t","").replace("\n","").replace(";","")
                                                result.append(item)
                                            if b:
                                                k=m
                                                break
                                        dict = {} 
                                        dict[a[0]]=result
                                        parsed_list.append(dict)
                                        print(parsed_list)
                                    if a:
                                        k = m
                                    else:
                                        k = k+1
                                         
                    if special_increment == None:
                        i = i+1
                    else:
                        i = special_increment + 1                   
        
        return total_parsed_list                                    