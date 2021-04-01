import dataclasses
from typing import List
import json



"""

This file contains the CDF structured dataclasses available for AKCC.

"""

@dataclasses.dataclass
class AlarmValuesItemIndex:
    Index:int
    ItemType:str
@dataclasses.dataclass
class Alarms_class:
    AlarmValuesItemIdx:List[AlarmValuesItemIndex]
    Bit:int
    Cid:int
    CustomTextIdx:int
    HelpTextIdx:int
    Idx:int
    Label:int
    PriorityIdx:int
    Text:str
    Text2:str
    TextIdx:int
    UniqueID:int
    Vid:int
    VisibilityIdx:int
@dataclasses.dataclass
class AppConfig_class:
    AlarmStorageMode:int
@dataclasses.dataclass
class EngUnitTypes_class:
    Factor:float
    Idx:int
    Offset:float
    Text:str
    TextIdx:int
    UniqueID:int
@dataclasses.dataclass
class EnumerationsValues:
    Label:str
    Text:str
    TextIdx:int
    Value:int
    VisibilityIdx:int
@dataclasses.dataclass
class Enumerations_class:
    Idx:int
    UniqueID:int
    Values:List[EnumerationsValues]
@dataclasses.dataclass
class GroupsItems:
    Index:int
    ItemType:str
@dataclasses.dataclass
class Groups_class:
    AccLevelR:int
    CustomTextIdx:int
    Idx:int
    Items:List[GroupsItems]
    Label:str
    Text:str
    TextIdx:int
    VisibilityIdx:int
@dataclasses.dataclass
class Code_Numbers:
    CodeNumber:str
    Text:str
    TextIdx:int
@dataclasses.dataclass
class Header_class:
    AppSubType:str
    AppType:str
    CodeNumbers:List[Code_Numbers]
    CDFFormat:str
    CDFVer:int
    ConfigLockVarIdx:int
    Description:str
    DescriptionIdx:int
    MainSwitchVarIdx:int
    Name:str
    QuickSetupMenuIdx:int
    RestoreModeVarIdx:int
    RootMenuIdx:int
    SWVersion:int
    
@dataclasses.dataclass
class IOConfig_class:
    CalibrateVarIdx:int
    DynMaxVarIdx:int
    DynMinVarIdx:int
    Idx:int
    IOCategory:str
    IOFunctionVarIdx:int
    IOTypeVarIdx:int
    OverrideVarIdx:int
    PinName:str
    StaticIOFunctionVarIdx:int
    StatusVarIdx:int
    SupportedINVarIdx:int
    SupportedOUTVarIdx:int
@dataclasses.dataclass
class IOTypesValues:
    BiosTypeID:int
    EngUnitIdx:int
    Label:str
    Text:str
    TextIdx:int
    Value:int
    VisibilityIdx:int
@dataclasses.dataclass
class IOTypes_class:
    Idx:int
    UniqueID:int
    Values:List[IOTypesValues]
@dataclasses.dataclass
class LoggingPoints_class:
    LogVarIdx:int
    SampleMode:int
@dataclasses.dataclass
class OpenTags_class:
    name:str
@dataclasses.dataclass
class Parameters_class:
    AccLevelR:int
    AccLevelW:int
    Bit:int
    Cid:int
    CopyType:str
    CustomTextIdx:int
    DataType:str
    Decimals:int
    Default:float
    DynMaxIdx:int
    DynMinIdx:int
    EngUnitIdx:int
    EnumIdx:int
    HelpTextIdx:int
    Idx:int
    ItemCategory:int
    ItemType:int
    Label:str
    Max:float
    Min:float
    Scale10E:int
    StorageType:int
    Text:str
    TextIdx:int
    UniqueID:int
    Vid:int
    VisibilityIdx:int
    Title: str = dataclasses.field(default = 'Extra Ones')
@dataclasses.dataclass
class Items_Tags:
    status:int
    AlarmStatus:int
    setpoint:int
    CurrentValue:int
    ValveOD:int
    TeTemp:int
    PePressure:int
    S2Temp:int
    S4Temp:int
    S5Temp:int
    FoodTemp:int
    DefStopTemp:int
    Fan:int
    SH:int
    SHref:int
    AlarmAir:int
@dataclasses.dataclass
class Items_views:
    CustomTextIdx:int
    ItemsTags:List[Items_Tags]
@dataclasses.dataclass
class Tagsclass:
    MainSwitch:int
    AppMode:int
    status:int
    AlarmStatus:int
    setpoint:int
    CurrentValue:int
@dataclasses.dataclass
class Views_class:
    CustomTextIdx:int
    Items:List[Items_views]
    Tags:List[Tagsclass]
    Text:str
    TextIdx:int
    ViewInstanceID:str
    ViewLayout:str
    VisibilityIdx:int
@dataclasses.dataclass
class VirtualIO_class:
    CalibrateVarIdx:int
    DefIOTypeIdx:int
    DefMax:int
    DefMin:int
    FunctionID:int
    Idx:int
    IOCategory:int
    OverrideVarIdx:int
    ParamIdx:int
    PreferredPinIdx:int
    Priority:int
    SupportedINType:int
    SupportedOUTType:int
@dataclasses.dataclass
class CDFFileParser:
  
    Alarms:List[Alarms_class]
    AppConfig:List[AppConfig_class]
    EngUnitTypes:List[EngUnitTypes_class]
    Enumerations:List[Enumerations_class]
    Groups:List[Groups_class]
    Header:List[Header_class]
    IOConfig:List[IOConfig_class]
    IOTypes:List[IOTypes_class]
    LoggingPoints:List[LoggingPoints_class]
    OpenTags:List[OpenTags_class]
    Parameters:List[Parameters_class]
    Views:List[Views_class]
    VirtualIO:List[VirtualIO_class]
    
    
@dataclasses.dataclass
class Language:
    LangNameEng:str
    Language:str
    Phrases:list
