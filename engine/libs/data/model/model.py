""" Model Entity """
class Model:
    def __init__(self, id=-1, name=None, brand=None, timing=None):
        self.id = id
        self.name = name
        self.brand = brand
        self.timing = timing
        self.tests = []

    def __repr__(self):
        return "<id : {0}, name: {1}, brand {2}, timing {3}>".format(\
            self.id, self.name, self.brand, self.timing)
