import numpy as np
from pypylon import pylon
from .libs.data.database import Database
#from .camera import CameraClass
from .utils.decorators import Singleton
from exceptions.exceptions import *
import time
import threading
import logging
import traceback
import sys
import multiprocessing as mp
import queue
from collections import deque

from datetime import datetime as dt
import imageio
logger = logging.getLogger('camera_dev_panel_test')


    
@Singleton
class CameraDevPanelTest():

    camera = None
    maxCamerasToUse = 2
    lock = None
    formatConverter = None
    index_of_left_camera=0
    index_of_right_camera=1
    
    index_of_camera_to_use=0
    cameras_configurations=[ {'name': 'acA3800-14uc 22740663', 'side': 'left', 'standard_exposure': 8954.3, 'standard_gamma': 1.0, 'mura_black_exposure': 8954.3, 'mura_black_gamma': 1},
 {'name': 'acA3800-14um 23234612', 'side': 'right', 'standard_exposure': 8954.3, 'standard_gamma': 1.0, 'mura_black_exposure': 8954.3, 'mura_black_gamma': 1}]
    images_buffer = None
    photos_process=[None,None]



    def __init__(self):
            


        # mp.set_start_method('spawn')
        # self.images_buffer = [queue.LifoQueue(10),queue.LifoQueue(10)]


        # self.images_buffer = [mp.Queue(10),mp.Queue(10)]
        # self.images_buffer = [deque( maxlen=1),deque( maxlen=1)]
        self.images_buffer = [deque( maxlen=5),deque( maxlen=5)]


        try:
            self.reload()
            self.lock = threading.Lock()
        except Exception as e:
            # print("CAMERA DEV:",str(e))
            raise CameraException("Camera basler")

    def reload(self):
        try:
            tlFactory = pylon.TlFactory.GetInstance()
            devices = tlFactory.EnumerateDevices()
            
            self.camera = pylon.InstantCameraArray(min(len(devices), self.maxCamerasToUse))
            l = self.camera.GetSize()

            # Create and attach all Pylon Devices.
            for i, cam in enumerate(self.camera):
                cam.Attach(tlFactory.CreateDevice(devices[i]))
            # Set output pixel format to BGR8 for opencv
            for device in devices:
                
                if 'uc' in device.GetFriendlyName():
                    self.polychromatic_format()
                else:
                    self.monochromatic_format()
                
                


            for i, cam in enumerate(self.camera):
                if(self.camera[i].IsOpen() == False):
                    self.open(i)
            time.sleep(2)

            self.change_config(exposure='standard_exposure',gamma='standard_gamma')           
            self.print_camera_config(key='a')

        except Exception as e:
            logger.debug("CAMERA DEV:" + str(e))
            logger.error("CAMERA DEV Exception:" + str(e))
            traceback.print_exc(file=sys.stdout)
            raise CameraException("Camera basler")

    
    def get_cameras_names(self):
        cameras_names = []
        try:
            tlFactory = pylon.TlFactory.GetInstance()
            devices = tlFactory.EnumerateDevices()

            for device in devices:
                holder_name = device.GetFriendlyName()
                camera_name = holder_name.split()
                cameras_names.append(camera_name[1] + ' ' + device.GetSerialNumber())
            return cameras_names

        except Exception as e:
            logger.debug("CAMERA DEV:" + str(e))
            logger.error("CAMERA DEV Exception:" + str(e))
            traceback.print_exc(file=sys.stdout)
            raise CameraException("Camera basler")
    
    def get_full_camera_name(self,index=None):
        if(index  is None):
            index=self.index_of_camera_to_use

        try:
            full_camera_name = self.camera[index].GetDeviceInfo().GetModelName() + ' ' + self.camera[index].DeviceSerialNumber()
            return full_camera_name

        except Exception as e:
            # logger.debug("CAMERA DEV:" + str(e))
            # logger.error("CAMERA DEV Exception:" + str(e))
            # traceback.print_exc(file=sys.stdout)
            raise CameraException("Camera basler")

    def switch_camera(self, index=0):
        self.index_of_camera_to_use=index
        self.open()


 
    def open(self,camera_index=None):
        if(camera_index is None):
            camera_index=self.index_of_camera_to_use

        try:
            if self.camera.IsCameraDeviceRemoved() is True:
                camera_index = 0
            if self.camera[camera_index] is not None:

                if self.camera[camera_index].IsOpen() is False:
                    self.camera[camera_index].Open()
                    if 'uc' in self.get_camera_name():                        
                        self.polychromatic_format()
                    else:
                        self.monochromatic_format()
                    

                if 'um' in self.get_full_camera_name(camera_index):                
                    self.cameras_configurations[camera_index] = Database.request_panel_test_camera(self.get_full_camera_name(camera_index))
                else:
                    self.cameras_configurations[camera_index] = Database.request_camera(self.get_full_camera_name(camera_index))
                    # self.set_properties()

            else:
                raise CameraException("Camera basler")
        except Exception as e:
            print("CAMERA DEV:" + str(e))
            raise CameraException("Camera basler")

    def tes(self,camera_index):
        try:
            self.start_photos_old()
        except Exception as e:
            print("!!!!! e ",str(e))
            # raise e

    def tes2(self,camera_index):
        try:
            self.start_photos_single_camera()
        except Exception as e:
            print("\n\n\nstart_photos_single_camera!!!!! ",str(e)," \n\n\n")
            # raise e
        
    def test_camera(self):
        if(self.camera[self.index_of_camera_to_use].IsOpen() is False):
            raise CameraException("Camera basler")

        if ('uc' in self.get_full_camera_name(self.index_of_camera_to_use)):
            print("indo pr get_photo")
            self.get_photo()
        else:
            print("indo pr get_photo_from_buffer")
            self.get_photo_from_buffer(self.index_of_camera_to_use)
            

        return True

    def start_photos_old(self):
        try:
            # for i, cam in enumerate(self.camera):

            self.StartGrabbing(self.index_of_left_camera)
            self.StartGrabbing(self.index_of_right_camera)

            while self.camera[self.index_of_left_camera].IsGrabbing() and self.camera[self.index_of_right_camera].IsGrabbing():
                self.grabResult1 = self.camera[self.index_of_left_camera].RetrieveResult(5000, pylon.TimeoutHandling_ThrowException)
                self.grabResult2 = self.camera[self.index_of_right_camera].RetrieveResult(5000, pylon.TimeoutHandling_ThrowException)
                
                if self.grabResult1.GrabSucceeded() and self.grabResult2.GrabSucceeded():
                    image1 = self.formatConverter.Convert(self.grabResult1)
                    image2 = self.formatConverter.Convert(self.grabResult2)
                    img1 = image1.GetArray()
                    img2 = image2.GetArray()
                    self.grabResult1.Release()
                    self.grabResult2.Release()

                    self.images_buffer[self.index_of_left_camera].append(img1)
                    self.images_buffer[self.index_of_right_camera].append(img2)



                # else:
                #     raise CameraException(grabResult.ErrorDescription)
        except Exception as error:
            print("CAMERA DEV:" , str(error))
            # attention, this exception will be thrown in a secondary process
            raise CameraException("Camera basler")
            
    def start_photos_single_camera(self):
        try:
            # for i, cam in enumerate(self.camera):

            self.StartGrabbing(self.index_of_camera_to_use)

            print('while')
            while self.camera[self.index_of_camera_to_use].IsGrabbing():

                self.grabResult1 = self.camera[self.index_of_camera_to_use].RetrieveResult(5000, pylon.TimeoutHandling_ThrowException)
                #print(dir(self.grabResult1))

                if self.grabResult1.GrabSucceeded():

                    image1 = self.formatConverter.Convert(self.grabResult1)
                    img1 = image1.GetArray()
                    self.grabResult1.Release()
                    #print('no buffer')

                    self.images_buffer[self.index_of_camera_to_use].append(img1)



                # else:
                #     raise CameraException(grabResult.ErrorDescription)
        except Exception as error:
            print("\n\n\nCAMERA DEV:" , str(error))
            # attention, this exception will be thrown in a secondary process
            raise CameraException("Camera basler")



    def close_all_cameras(self):
        for i, cam in enumerate(self.camera):
            if(self.camera[i].IsOpen()):
                self.close(i)

    def close(self,camera_index=None):
        if(camera_index is None):
            camera_index = self.index_of_camera_to_use   

        try:
            if self.camera[camera_index] is not None:
                if self.camera[camera_index].IsOpen() is False:
                    raise CameraException("Camera is not opened")
                else:
                    self.StopGrabbing()
                    self.camera[camera_index].Close()
            else:
                raise CameraException("Camera basler")
        except Exception as e:
            logger.debug("CAMERA DEV:" + str(e))
            raise CameraException("Camera basler")

    def StartGrabbing(self,camera_index=None):
        if(camera_index is None):
            camera_index=self.index_of_camera_to_use

        if not self.camera[camera_index].IsGrabbing():
            self.camera[camera_index].StartGrabbing(pylon.GrabStrategy_LatestImageOnly, 
                      pylon.GrabLoop_ProvidedByUser)



    def stop_all_grabbings(self):
        for i, cam in enumerate(self.camera):            
            if self.camera[i].IsGrabbing():
                self.camera[i].StopGrabbing()



    def StopGrabbing(self,camera_index=index_of_camera_to_use):
        if self.camera[self.index_of_camera_to_use].IsGrabbing():
            self.camera[self.index_of_camera_to_use].StopGrabbing()

    def get_photo_by_side(self,side='left'):

        return self.get_photo()

    def get_left_photo(self):
        # self.switch_camera(self.index_of_left_camera)
        # self.monochromatic_format()
        return self.get_photo_from_buffer(self.index_of_left_camera)

    def get_right_photo(self):
        self.switch_camera(self.index_of_right_camera)
        # self.monochromatic_format()
        return self.get_photo_from_buffer()


    def save_all_photos(self):
        
        camera_index=0
        l=list(self.images_buffer[camera_index])
        self.StopGrabbing(camera_index)
        self.StopGrabbing(1)
        
        for photo in l:

            timestamp = dt.now().strftime('%Y-%m-%d_%H-%M-%S')
            
            final_path = str(timestamp) 
            imageio.imsave("{0}.png".format(final_path), photo)

    def get_photo_from_buffer(self,camera_index=None):

        try:            
            max_tryes=10
            c=0
            if(camera_index is None):
                camera_index=self.index_of_camera_to_use      
            print('get_photo_from_buffer camera_index',self.images_buffer[self.index_of_camera_to_use])


            while(len(list(self.images_buffer[camera_index])) == 0):
                print('images_buffer camera_index',self.images_buffer[camera_index])
                #print('images_buffer 1',self.images_buffer[1])
                c+=1
                if(c==max_tryes):
                    break
                #pass
            

            return self.images_buffer[camera_index].pop()
            
        except Exception as e:
            print("CAMERA basler error:", str(e))
            raise CameraException("POOL Camera basler")

        
        
    def print_state(self,camera_index):
        print("camera ",camera_index, len(list(self.images_buffer[camera_index])))
        
        




    def get_two_photos(self,camera_index=index_of_camera_to_use):
        self.grabResult2=[]
        '''grab single image'''
        with self.lock:
            try:
                #open()
                # time.sleep(.2)
                
                # print('\n\n exposure, gamma',self.camera[self.index_of_camera_to_use].ExposureTime.GetValue(),self.camera[self.index_of_camera_to_use].Gamma.GetValue())

                self.StartGrabbing(0)
                self.StartGrabbing(1)
                # self.StartGrabbing(self.index_of_camera_to_use)

                self.grabResult2[0] = self.camera[0].RetrieveResult(5000, pylon.TimeoutHandling_ThrowException)
                self.grabResult2[1] = self.camera[1].RetrieveResult(5000, pylon.TimeoutHandling_ThrowException)
                
                if self.grabResult2[0].GrabSucceeded() and self.grabResult2[1].GrabSucceeded():
                    imgs = []
                    for i in range(2):
                        image = self.formatConverter.Convert(self.grabResult2[i])
                        imgs[i] = image.GetArray()
                        self.grabResult2[i].Release()
                    
                    return imgs
                else:
                    #print("Error: ", grabResult.ErrorCode, grabResult.ErrorDescription)
                    raise CameraException(grabResult.ErrorDescription)
            except Exception as error:
                logger.debug("CAMERA DEV:" + str(error))
                raise CameraException("Camera basler")



    def monochromatic_format(self):
        self.formatConverter = pylon.ImageFormatConverter()
        self.formatConverter.OutputBitAlignment = pylon.OutputBitAlignment_MsbAligned
    
    def polychromatic_format(self):
        self.formatConverter = pylon.ImageFormatConverter()
        self.formatConverter.OutputPixelFormat = pylon.PixelType_BGR8packed
        self.formatConverter.OutputBitAlignment = pylon.OutputBitAlignment_MsbAligned
    
    def get_photo_monochromatic_camera(self,camera_index=index_of_camera_to_use):
        self.get_photo()

    def get_photo(self,camera_index=None):
        if(camera_index is not None):
            self.index_of_camera_to_use=camera_index
        '''grab single image'''
        print("get photo1")
        with self.lock:
            try:
                #open()
                # time.sleep(.2)
                print("get photo2")

                self.StartGrabbing(self.index_of_camera_to_use)
                print("get photo3")

                self.grabResult = self.camera[self.index_of_camera_to_use].RetrieveResult(5000, pylon.TimeoutHandling_ThrowException)
                print("get photo4")

                if self.grabResult.GrabSucceeded():
                    
                    print("get photo5")

                    image = self.formatConverter.Convert(self.grabResult)
                    print("get photo6")

                    img = image.GetArray()
                    self.grabResult.Release()
                    print("get photo7")

                    return img
                else:
                    #print("Error: ", grabResult.ErrorCode, grabResult.ErrorDescription)
                    raise CameraException("Camera basler error on grab")
            except Exception as error:
                print("CAMERA DEV  get photo=============================:" + str(error))
                raise CameraException("Camera basler")


    def get_camera_name(self,camera_index=index_of_camera_to_use):
        return self.get_full_camera_name()
        # return self.camera[self.index_of_camera_to_use].GetDeviceInfo().GetModelName()


    def BalanceRatio(self, color, value):

        if self.camera.IsOpen() is False:
            raise CameraException("Camera basler")

        try:
            if color == 'R':
                self.camera.BalanceRatioSelector = 'Red'
                self.camera.BalanceRatio = value
            elif color == 'G':
                self.camera.BalanceRatioSelector = 'Green'
                self.camera.BalanceRatio = value
            elif color == 'B':
                self.camera.BalanceRatioSelector = 'Blue'
                self.camera.BalanceRatio = value
            else:
                raise CameraException('')
        except CameraException as e:
            logger.debug("CAMERA DEV:" + str(e))
            raise CameraException("Color param in BalanceRatio is wrong")
        except Exception as e:
            logger.debug("CAMERA DEV:" + str(e))
            raise CameraException("BalanceRatio Node is not writable")

    def change_config(self,exposure,gamma):

        try:
                # pass
            # print('self.camera',self.camera)

            # print('self.cameras_configurations[0]',self.cameras_configurations[0])
            # print('self.cameras_configurations[1]',self.cameras_configurations[1])
            for i, cam in enumerate(self.camera):
                config=self.cameras_configurations[i]
                # print('\n\nchange_camera_config',config[exposure], config[gamma],'\n\n')
                for j in range(2):
                    # print("1")
                    self.set_exposure_time(config[exposure],i)
                    # print("4")
                    
                    self.set_gamma(config[gamma],i)
                    # print("3")

        except Exception as e:
            print(e)
            # raise e
                
                
    def print_camera_config(self,key):
        # print('\n\n cam',self.cameras_configurations[self.index_of_camera_to_use])
        print('')
        # print('\n\n key',key,'--',self.cameras_configurations[self.index_of_camera_to_use][key])

    def is_two_cameras_open(self):
        index, _ = enumerate(self.camera)
        if(len(index) == 1):
            return False
        
        

        for i, cam in enumerate(self.camera):
            if(self.camera[i].IsOpen() is False):
                return False
        return True

    def set_exposure_time(self,value,i=None):
        if(i is None):
           i=self.index_of_camera_to_use


        if self.camera[i].IsOpen() is False:
            raise CameraException("Camera basler")

        try:
            # self.camera[i].ExposureTimeAbs.SetValue( value )
            self.camera[i].ExposureTime.SetValue( value )
            # self.camera[i].ExposureTime = value

        except Exception as e:
            logger.debug("CAMERA DEV:" + str(e))
            raise CameraException("ExposureTime Node is not writable")

    def set_gamma(self, value, i=None):
        if(i is None):
           i=self.index_of_camera_to_use

        if self.camera[i].IsOpen() is False:
            raise CameraException("Camera basler")

        try:
            self.camera[i].Gamma.SetValue( value ) 
        except Exception as e:
            logger.debug("CAMERA DEV:" + str(e))
            raise CameraException("Gamma Node is not writable")

    def set_properties(self,camera_index=index_of_camera_to_use):
        cam_name = self.get_full_camera_name()
        print("cam_name",cam_name)

        self.cam = Database.request_camera(cam_name)
        print("self.cam",self.cam)

        try:
            if 'uc' in cam_name:
                self.camera[self.index_of_camera_to_use].BalanceWhiteAuto = 'Continuous'

            self.camera[self.index_of_camera_to_use].ExposureAuto.SetValue('Off')
            self.set_exposure_time(self.cam.exposure,self.index_of_camera_to_use)
            self.set_gamma(self.cam.gamma,self.index_of_camera_to_use)


            # self.camera[self.index_of_camera_to_use].ExposureTime = self.cam.exposure
            # self.camera[self.index_of_camera_to_use].Gamma = self.cam.gamma

        except Exception as e:
            print(e)
            logger.debug("CAMERA DEV:" + str(e))
            raise CameraException("Properties Nodes are not writable")

    def devices_connected(self):
        try:
            # Get the transport layer factory.
            tlFactory = pylon.TlFactory.GetInstance()
            # Get all attached devices
            devices = tlFactory.EnumerateDevices()


            if len(devices) > 0:
                return True

            return False

        except Exception as e:
            logger.debug("CAMERA DEV:" + str(e))
            raise CameraException("Camera basler")

    def isOpened(self,camera_index=index_of_camera_to_use):
        if self.camera[self.index_of_camera_to_use].IsOpen() is True:
            return True
        return False

    def get_color(self, color,camera_index=index_of_camera_to_use):
        if self.camera[self.index_of_camera_to_use].IsOpen() is False:
            raise CameraException("Camera basler")
        try:
            if(color == 'R'):
                self.camera[self.index_of_camera_to_use].BalanceRatioSelector = 'Red'
            elif(color == 'G'):
                self.camera[self.index_of_camera_to_use].BalanceRatioSelector = 'Green'
            else:
                self.camera[self.index_of_camera_to_use].BalanceRatioSelector = 'Blue'
            value = self.camera[self.index_of_camera_to_use].BalanceRatio()
            return value
        except Exception as e:
            logger.debug("CAMERA DEV:" + str(e))
            raise Exception (e)

    def get_gamma(self,camera_index=index_of_camera_to_use):
        if self.camera[self.index_of_camera_to_use].IsOpen() is False:
            raise CameraException("Camera basler")
        try:
            value = self.camera[self.index_of_camera_to_use].Gamma.GetValue()
            return value
        except Exception as e:
            logger.debug("CAMERA DEV:" + str(e))
            raise Exception (e)

    def get_exposure_time(self,camera_index=index_of_camera_to_use):
        if self.camera[camera_index].IsOpen() is False:
            raise CameraException("Camera basler")
        try:
            value = self.camera[camera_index].ExposureTime.GetValue()
            return value
        except Exception as e:
            logger.debug("CAMERA DEV:" + str(e))
            raise Exception (e)

    def AutoBalance(self,camera_index=index_of_camera_to_use):
        if self.camera[self.index_of_camera_to_use].IsOpen() is False:
            raise CameraException("Camera basler")
        try:

            self.camera[self.index_of_camera_to_use].BalanceWhiteAuto = 'Off'
            self.camera[self.index_of_camera_to_use].BalanceWhiteAuto = 'Continuous'
            self.camera[self.index_of_camera_to_use].BalanceWhiteAuto()
            self.get_photo()
            self.camera[self.index_of_camera_to_use].BalanceWhiteAuto = 'Off'

            if(self.get_color('R') > 5.0):
                self.camera[self.index_of_camera_to_use].BalanceRatioSelector = 'Red'
                self.camera[self.index_of_camera_to_use].BalanceRatio = 5.0
            if(self.get_color('G') > 5.0):
                self.camera[self.index_of_camera_to_use].BalanceRatioSelector = 'Green'
                self.camera[self.index_of_camera_to_use].BalanceRatio = 5.0
            if(self.get_color('B') > 5.0):
                self.camera[self.index_of_camera_to_use].BalanceRatioSelector = 'Blue'
                self.camera[self.index_of_camera_to_use].BalanceRatio = 5.0
            
        except Exception as e:
            logger.debug("CAMERA DEV:" + str(e))

    def AutoBalanceResetAll(self,camera_index=index_of_camera_to_use):
        if self.camera[self.index_of_camera_to_use].IsOpen() is False:
            raise CameraException("Camera basler")
        try:
            
            self.set_gamma(1.23)
            self.set_exposure_time(7000)

            self.BalanceRatio('R', 1.5)
            self.BalanceRatio('G', 1.5)
            self.BalanceRatio('B', 1.5)
            self.camera[self.index_of_camera_to_use].BalanceWhiteAuto = 'Off'
            self.camera[self.index_of_camera_to_use].BalanceWhiteAuto = 'Continuous'
            self.camera[self.index_of_camera_to_use].BalanceWhiteAuto()
            self.get_photo()
            self.camera[self.index_of_camera_to_use].BalanceWhiteAuto = 'Off'

            if(self.get_color('R') > 5.0):
                self.camera[self.index_of_camera_to_use].BalanceRatioSelector = 'Red'
                self.camera[self.index_of_camera_to_use].BalanceRatio = 5.0
            if(self.get_color('G') > 5.0):
                self.camera[self.index_of_camera_to_use].BalanceRatioSelector = 'Green'
                self.camera[self.index_of_camera_to_use].BalanceRatio = 5.0
            if(self.get_color('B') > 5.0):
                self.camera[self.index_of_camera_to_use].BalanceRatioSelector = 'Blue'
                self.camera[self.index_of_camera_to_use].BalanceRatio = 5.0

        except Exception as e:
            logger.debug("CAMERA DEV:" + str(e))

    def reset_exposure(self,camera_index=index_of_camera_to_use):
        if self.camera[self.index_of_camera_to_use].IsOpen() is False:
            raise CameraException("Camera basler")
        try:
            self.set_gamma(1.23)
            self.set_exposure_time(7000)

        except Exception as e:
            logger.debug("CAMERA DEV:" + str(e))

    def reset_exposure_gamma(self,camera_index=index_of_camera_to_use):
        if self.camera[self.index_of_camera_to_use].IsOpen() is False:
            raise CameraException("Camera basler")
        try:
            self.camera[self.index_of_camera_to_use].ExposureTime.SetValue( self.cam.exposure )
            self.camera[self.index_of_camera_to_use].Gamma.SetValue( self.cam.gamma )

        except Exception as e:
            logger.debug("CAMERA DEV:" + str(e))