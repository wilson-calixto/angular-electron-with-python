""" """
import os
from subprocess import Popen, PIPE

#TODO: fcntl library only works on Linux
# code above used to cross-platform with Windows
if os.name == 'nt':
    class USBResetter:
        def reset(self, usb_device):
            return False
else:
    import fcntl

    class USBResetter:

        def create_usb_list(self):
            device_list = list()
            try:
                lsusb_out = Popen('lsusb -v', shell=True, bufsize=64, stdin=PIPE, stdout=PIPE, close_fds=True).stdout.read().strip().decode('utf-8')
                usb_devices = lsusb_out.split('%s%s' % (os.linesep, os.linesep))
                for device_categories in usb_devices:
                    if not device_categories:
                        continue
                    categories = device_categories.split(os.linesep)
                    device_stuff = categories[0].strip().split()
                    bus = device_stuff[1]
                    device = device_stuff[3][:-1]
                    device_dict = {'bus': bus, 'device': device}
                    device_info = ' '.join(device_stuff[6:])
                    device_dict['description'] = device_info
                    for category in categories:
                        if not category:
                            continue
                        categoryinfo = category.strip().split()
                        if categoryinfo[0] == 'iManufacturer':
                            manufacturer_info = ' '.join(categoryinfo[2:])
                            device_dict['manufacturer'] = manufacturer_info
                        if categoryinfo[0] == 'iProduct':
                            device_info = ' '.join(categoryinfo[2:])
                            device_dict['device'] = device_info
                    path = '/dev/bus/usb/%s/%s' % (bus, device)
                    device_dict['path'] = path

                    device_list.append(device_dict)
            except Exception as ex:
                print('Failed to list usb devices! Error: %s' % ex)
                device_list = None
            return device_list

        def reset_usb_device(self, dev_path):
            USBDEVFS_RESET = 21780
            result = False
            try:
                f = open(dev_path, 'w', os.O_WRONLY)
                fcntl.ioctl(f, USBDEVFS_RESET, 0)
                print('Successfully reset %s' % dev_path)
                result = True
            except Exception as ex:
                pass

            return result

        def reset(self, usb_device):
            connected = False
            usb_list = self.create_usb_list()

            for device in usb_list:
                text = '%s %s %s' % (device['description'], device['manufacturer'], device['device'])
                if usb_device in text:
                    self.reset_usb_device(device['path'])
                    connected = True

            return connected
