from enum import IntEnum


class Parameter:

    def __init__(self,id = -1, name=None, type=None, default_value =-1):
        self.id = id
        self.name = name
        self.default_value = default_value
        self.type = type

    def __repr__(self):
        return "< id {0}, name : {1} >".format(self.id, self.name) 
    #def __TypeEnum(Enum):


class ParameterTypeEnum(IntEnum):
    INTEGER = 1
    FLOAT = 2
    STRING = 3
    ARRAY_INTEGER = 4
    NONE_TYPE = -1
