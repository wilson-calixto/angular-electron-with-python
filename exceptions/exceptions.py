""" Package containing all project Exceptions """

class HardwareException(Exception):
    hardware = None
    error_code = None
    description = None

    def __init__(self, hardware, error_code=None, description=None):
        self.hardware = hardware
        self.error_code = error_code
        self.description = description

class PortException(Exception):
    message = "Port not opened or not connected"
    def __init__(self):
        pass

class MalfunctionException(Exception):
    hardware = None
    error_code = None
    description = None

    def __init__(self, hardware, error_code=None, description=None):
        self.hardware = hardware
        self.error_code = error_code
        self.description = description

class DeviceNotFoundException(Exception):
    hardware = None
    error_code = "Device not found"

    def __init__(self, hardware):
        self.hardware = hardware

class DeviceException(Exception):
    """ Any logic error in Device implementation """
    hardware = None
    message = None

    def __init__(self, hardware, message=None):
        self.hardware = hardware
        self.message = message

class MissingTestParams(Exception):
    """ Exception if some parameter is missing in the class test """

    def __init__(self, test_name, message):
        self.test_name = test_name
        self.message = message

class CameraException(Exception):
    """ Exception if some error occurred in camera device"""

    def __init__(self, message):
        self.message = message

class ANNException(Exception):
    """ Exception if some error occurred in ANN"""

    def __init__(self, test_name, message):
        self.test_name = test_name
        self.message = message

class ImageException(Exception):
    """ Exception if some error occurred in image"""
    error_code = None

    def __init__(self, message, error_code=None):
        self.message = message
        self.error_code = error_code

class ConnectionException(Exception):
    """ Exception if some error occurred in ConnectionException"""
    error_code = None

    def __init__(self, message, error_code=None):
        self.message = message
        self.error_code = error_code
