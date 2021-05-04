from .parameter import ParameterTypeEnum
class TestParameterValue(object):

    converter_functions_dict = {\
        ParameterTypeEnum.INTEGER : int,\
        ParameterTypeEnum.FLOAT : float,\
        ParameterTypeEnum.STRING : str\
    }

    @staticmethod
    def get_function(key):
        return TestParameterValue.converter_functions_dict.get(key, None)

    def __init__(self, param_id, test_id=None, model_id=None, value=None):
        self.param_id = param_id
        self.test_id = test_id
        self.model_id = model_id
        self.value = value


    def __repr__(self):
        return "< value : {0} >".format(self.value)

    def cast_value(self, type_value):
        func = TestParameterValue.get_function(type_value)
        if not func is None:
            self.value = func(self.value)