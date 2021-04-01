

database_h = ["GroupCode","MenuCode","GroupName","ParameterName","DefaultValue","MinValue","MaxValue","UnitConv","Unit","scale"
              ,"Datatype","Enum","ReadOnly","Help","Decimal","VariableName","App1DefaultValue","App2DefaultValue","App3DefaultValue"
              ,"App4DefaultValue","App5DefaultValue","App6DefaultValue","App0Defaultvalue"]

required_databaseHeader = {
    "GroupCode": ["GrpCode", "GroupCode"],
    "MenuCode": ["MenuCode"],
    "GroupName": ["GroupName"], # ETC groupcode in excel sheet
    "ParameterName": ["Name"],
    "DefaultValue": ["DefaultValue"],
    "MinValue": ["Min"],
    "MaxValue": ["Max"],
    "UnitConv": ["UnitConv"], # AKcc, ETC doesnt have unit conversion
    "Unit": ["Unit"],
    "Scale": ["scale","Scale"],
    "Datatype": ["Datatype"],
    "Enum": ["Enum"],
    "ModelCodeValue":["ModelCodeValue"],
    "ReadOnly": ["ReadOnly"],
    "Help": ["Help"],
    "Decimal": ["Decimal"],
    "UserLevel": ["User"],
    "Visibility": ["Visibility"],
    "VariableName" : ["VariableName"],
    "App1DefaultValue" : ["App1DefaultValue"],
    "App2DefaultValue" : ["App2DefaultValue"],
    "App3DefaultValue" : ["App3DefaultValue"],
    "App4DefaultValue" : ["App4DefaultValue"],
    "App5DefaultValue" : ["App5DefaultValue"],
    "App6DefaultValue" : ["App6DefaultValue"],
    "App0Defaultvalue" : ["App0Defaultvalue"]
}

Datatypes = {
    "float": ["float", "Float"],
    "int" :["int","Int"]
}

Unittypes = {
    "C": ["C","c"],
    "°C": ["°C","°c"],
    "K" : ["K","k"],
    "°K": ["°K","°k"],
    "bar" : ["bar"]
}

ERC21X_family_ModelCodeValue = {"App0": "App0ModelCodeValue",
                                "App1": "App1ModelCodeValue",
                                "App2": "App2ModelCodeValue",
                                "App3": "App3ModelCodeValue",
                                "App4": "App4ModelCodeValue",
                                "App5": "App5ModelCodeValue",
                                "App6": "App6ModelCodeValue",
                                }

database_headers_dict = {
    "AK-CC55": [ 'GrpCode', 'MenuCode',
                'GroupName', 'GroupName_en',
                'GroupName_zh', 'GroupName_da',
                'GroupName_fr', 'GroupName_es',
                'GroupName_de', 'GroupName_pt',
                'GroupName_ru', 'GroupName_it', 'Name',
                'Name_en', 'Name_zh', 'Name_da', 'Name_fr', 'Name_es',
                'Name_de', 'Name_pt', 'Name_ru', 'Name_it',
                'PNU', 'DefaultValue', 'Min', 'Max', 'ItemType', 'CopyType',
                'Unit', 'Scale', 'Datatype', 'Enum', 'EnumVisibility', 'Enum_en',
                'Enum_zh', 'Enum_da', 'Enum_fr', 'Enum_es', 'Enum_de', 'Enum_pt',
                'Enum_ru', 'Enum_it', 'ModelCodeValue', 'ReadOnly',
                'AccLevelR', 'AccLevelW', 'HelpId', 'Help', 'Help_en', 'Help_zh', 'Help_da',
                'Help_fr', 'Help_es', 'Help_de', 'Help_pt', 'Help_ru',
                'Help_it', 'LicenseKey', 'User', 'BitPosition', 'ExpScale',
                'Decimal', 'Visibility', 'GroupVisibility', 'VariableName', 'UniqueID', 'StorageType',
                'Factor', 'Offset', 'UnitUniqueId'],

    "EET": ['GroupCode', 'MenuCode', 'GroupName', 'ChineseGroupName', 'Name',
            'ChineseName', 'PNU', 'DefaultValue', 'Min', 'Max', 'UnitConv', 'Unit', 'scale', 'Datatype', 'Enum',
            'ChineseEnum', 'ModelCodeValue', 'ReadOnly', 'LicenseKey', 'Help', 'ChineseHelp', 'functions',
            'BitPosition', 'User', 'Decimal', 'Visibility', 'VariableName'],

    "EKE1x": ['GrpCode', 'MenuCode', 'GroupName', 'ChineseGroupName',
              'Name', 'ChineseName', 'PNU', 'DefaultValue', 'Min', 'Max',
              'UnitConv', 'Unit', 'Scale', 'Datatype', 'Enum', 'ChineseEnum',
              'ModelCodeValue', 'ReadOnly', 'Help', 'LicenseKey', 'User',
              'BitPosition', 'DefaultAccess', 'Decimal', 'LockedByMainSwitch',
              'Visibility', 'VariableName', 'ChineseHelp', 'QuickParameters'],

    "ERC11x": ['GroupCode', 'MenuCode', 'GroupName', 'ChineseGroupName', 'Name', 'ChineseName',
               'PNU', 'DefaultValue', 'Min', 'Max', 'UnitConv', 'Unit', 'scale', 'DefaultAccess',
               'AccessPNU', 'Datatype', 'Enum', 'ChineseEnum', 'ModelCodeValue', 'ReadOnly',
               'LicenseKey', 'Help', 'ChineseHelp', 'functions', 'BitPosition', 'User', 'Decimal', 'VariableName'],

    "ETC1Hx": ['MenuCode', 'Name', 'ChineseName', 'PNU', 'DefaultValue',
               'Min', 'Max', 'Unit', 'scale', 'Datatype', 'Enum', 'ChineseEnum', 'ReadOnly',
               'LicenseKey', 'Help', 'ChineseHelp', 'GroupCode', 'ChineseGroupCode', 'BitPosition',
               'ModelCodeValue', 'User', 'Decimal', 'VariableName'],

    "ERC21x": ['GrpCode', 'MenuCode', 'GroupName', 'ChineseGroupName', 'Name',
               'ChineseName', 'PNU', 'DefaultValue', 'Min', 'Max', 'UnitConv', 'Unit', 'scale',
               'Datatype', 'Enum', 'ChineseEnum', 'ModelCodeValue', 'ReadOnly', 'Help',
               'ChineseHelp', 'LicenseKey', 'DefaultAccess', 'AccessPNU', 'App1DefaultValue',
               'App2DefaultValue', 'App3DefaultValue', 'App4DefaultValue', 'App5DefaultValue',
               'App6DefaultValue', 'App0ModelCodeValue', 'App1ModelCodeValue', 'App2ModelCodeValue',
               'App3ModelCodeValue', 'App4ModelCodeValue', 'App5ModelCodeValue', 'App6ModelCodeValue',
               'App0Defaultvalue', 'User', 'BitPosition', 'Decimal', 'VariableName']
}

DATABASE_USER_DANFOSS = '1'
DATABASE_USER_ADMIN = '2'
DATABASE_USER_USER = '3'
