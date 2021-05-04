""" Model Entity """
class CameraClass:
    def __init__(self, status=None, name=None, r_value=None, g_value=None, b_value=None, gamma=None, exposure=None):
        self.status = status
        self.name = name
        self.r_value = r_value
        self.g_value = g_value
        self.b_value = b_value
        self.gamma = gamma
        self.exposure = exposure

    def __repr__(self):
        return "<status: {0}, name {1}, r_value {2}, g_value {3}, b_value {4}, gamma {5}, exposure {6}>".format(\
            self.status, self.name, self.r_value, self.g_value, self.b_value, self.gamma, self.exposure)