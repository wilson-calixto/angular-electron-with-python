""" edid package info """
from pathlib import Path

class EdidInfo:
    """ This class reads edid file data """

    edid_data_format = {
        'header': (0x00, 8),
        'manufacturer name': (0x08, 2),
        'product code': (0x0A, 2),
        'input': (0x14, 1),
        'checksum': (0x7F, 1)
        }

    EDID_FILE_SIZE = 128
    INPUT_DIGITAL_MASK = 0x80 # 1000 0000
    ASC2_ALPHABETIC = 0x40
    BASE_HEXA = 16
    MANUFACTURER_NAME_HEXA_LEN = 4
    MANUFACTURER_NAME_SIZE = 3
    MANUFACTURER_NAME_SHIFT = 5
    MANUFACTURER_NAME_MASK = 0x1F
    HEXA_SIZE = 2

    INPUT_DIGUTAL = 'Digital'
    INPUT_ANALOG = 'Analog'

    def __init__(self):
        self.data = []

    def open_edid_file(self, model):
        file_name = "./db/edid-tables/{0}/{1}.dat".format(model.brand, model.name)

        if Path(file_name).is_file():
            with open(file_name, 'r') as file:
                for line in file.readlines():
                    self.data += [x for x in line.split()]

    def check_edid_file_size(self, edid):
        result = False
        if len(edid) >= self.EDID_FILE_SIZE:
            result = True
        return result

    def get_info(self):
        """ get edid file info """

        parameter_values = []

        if self.check_edid_file_size(self.data):
            for key in self.edid_data_format:
                index, offset = self.edid_data_format[key]
                field = ''
                for item in self.data[index:index+offset]:
                    field += item

                if key == 'manufacturer name':
                    field = self.get_manufacturer_name(field)
                elif key == 'input':
                    field = self.get_input(field)
                elif key == 'product code':
                    field = self.get_product_code(field)

                param_values_item = {'name': key, 'value': field}
                parameter_values += [param_values_item]

        return parameter_values

    def get_input(self, field):
        result = self.INPUT_ANALOG
        if int(field, self.BASE_HEXA) & self.INPUT_DIGITAL_MASK != 0:
            result = self.INPUT_DIGUTAL
        return result

    def get_manufacturer_name(self, field):
        manufacturer_name = ''
        if len(field) == self.MANUFACTURER_NAME_HEXA_LEN:
            field_number = int(field, self.BASE_HEXA)
            for i in range(self.MANUFACTURER_NAME_SIZE):
                letter = field_number >> self.MANUFACTURER_NAME_SHIFT * i
                letter = letter & self.MANUFACTURER_NAME_MASK
                letter += self.ASC2_ALPHABETIC
                manufacturer_name += chr(letter)
        return manufacturer_name[::-1]

    def get_product_code(self, field):
        return  field[self.HEXA_SIZE:]+field[:self.HEXA_SIZE]
