from enum import IntEnum
from .test_params_value import TestParameterValue

class Test:
    def __init__(self, id = -1,name=None, type_val=-1, activated=False):
        self.id = id
        self.name = name
        self.type_val = type_val
        self.activated = activated
        self.parameters = []
        self.parameter_values = []
        self.sequence = -1

    def __repr__(self):
        return "< id:{0}, name: {1}, type_val: {2}>".format(self.id, self.name,self.type_val)

    def build_parameter_values(self):
        param_values = {}
        for i in range(len(self.parameters)):
            key = self.parameters[i].name
            value = self.parameter_values[i].value
            param_values[key] = value

        return param_values


class TestEnum(IntEnum):
    POWER_TEST = 1
    STANDBY_TEST = 2
    EDID_TEST = 3
    GRAYLEVEL_TEST = 4
    SERVICETAG_TEST = 5
    HDMI_TEST = 6
    PANEL_TEST = 7
    SEND_CMD = 8
    DPPORT_TEST = 9
    SEND_CMD_VALUE = 10
    NONE = -1
