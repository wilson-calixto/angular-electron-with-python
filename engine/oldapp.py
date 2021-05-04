import time
from .state_machine import *
from .camera_dev_panel_test import CameraDevPanelTest as CameraDev
from multiprocessing import Process, Manager
from multiprocessing.managers import BaseManager
import multiprocessing
import threading
import imageio
import pickle
import codecs
import sys, json

class ApplicationManager(StateMachine):
    def __init__(self):

        StateMachine.__init__(self, "[sm_test]: ")
        self.sm['initial'] = {0: self.load_configuration,
                              1: self.setup_station,11: self.feedback,12: self.get_all_models_by_brand}
        self.sm['configured_system'] = {
            2: self.update_system,
            3: self.select_model,11: self.feedback,12: self.get_all_models_by_brand}

        self.sm['selected_model'] = {
            4: self.configure_model_testing, 3: self.select_model,11: self.feedback,12: self.get_all_models_by_brand
}

        self.sm['tests_configured'] = {
            5: self.start_a_test_sequence,
            3: self.return_to_system_configuration,
            11: self.feedback,12: self.get_all_models_by_brand

        }

        self.sm['executing_a_test_sequence'] = {
            6: self.running_a_test_sequence, 7: self.cancel_a_test_sequence, 9: self.report_error_in_hw,
            11: self.feedback,12: self.get_all_models_by_brand

        }

        self.sm['hw_error'] = {
            10: self.return_to_configuration_of_test,
            11: self.feedback,12: self.get_all_models_by_brand
        }

        self.state = 'initial'
        BaseManager.register('CameraDev', CameraDev)
        self.manager = BaseManager()
        self.manager.start()
        self.camera=None
        self.photos_process=None
        self.__init_camera_event = threading.Event()
        self.__finish_camera_event = threading.Event()     

        #remove this call after tests
        self.try_to_use_camera()   
        
        self.temp_dict={0: "load_configuration",
1: "setup_station",
2: "update_system",
3: "select_model",
4: "configure_model_testing",
3: "select_model",
5: "start_a_test_sequence",
3: "return_to_system_configuration",
6: "running_a_test_sequence",
7: "cancel_a_test_sequence",
9: "report_error_in_hw",
10: "return_to_configuration_of_test",
11:"feedback",
12:"get_all_models_by_brand"

}    
    def show_available_events(self):
        for key in self.sm[self.state].keys():
            my_dict={"available_event_number":key,"event_name":self.temp_dict[key]}
            print(json.dumps(my_dict))   
    def try_finish_camera(self,args=None):

        self.finish_camera()
        self.__finish_camera_event.wait() #wait end camera finish (close all cameras)        
    
    def finish_camera(self):   
        print("\nfinish_camera\n") 
        try:

            if(self.camera is not None):
                self.camera.close_all_cameras()
                self.camera.stop_all_grabbings()
                # self.app.grabbing = False
            self.camera=None

            if(self.photos_process is not None):
                self.photos_process.terminate()
                self.photos_process.join()
                self.photos_process=None

        except Exception as e:
            print("\n\n\ne",str(e))

        self.__finish_camera_event.set()        



    def try_to_use_camera(self,args=None):


        try:
            time.sleep(1)
            self.camera.test_camera()
            if(self.camera is None):
                self.init_camera()

            if(self.camera.is_two_cameras_open() is False):
                self.init_camera()     

        except Exception as e:
            print("EXCEPT TRY TO USE",str(e))
            self.init_camera()
        print("self.__init_camera_event.wait")
        self.__init_camera_event.wait() #wait end camera config        

    def init_camera(self):

        # print('init_camera',self.camera)

        try:


            self.camera = self.manager.CameraDev()
            if self.camera is not None:

                self.camera.reload()
                # self.camera.open()

                self.camera.set_properties()

                # self.camera.monochromatic_format()
                self.camera.change_config(exposure='standard_exposure',gamma='standard_gamma')


            if ('uc' in self.camera.get_full_camera_name()):
                #self.camera.get_photo()
                print('\n\n\nuc 1')
                self.photos_process = multiprocessing.Process(target=self.camera.tes2, args=(0,))
                self.photos_process.start()

                print('\n\n\nuc 2')


                self.__init_camera_event.set()

        except Exception as e:
            self.__init_camera_event.set()
            self.try_finish_camera()
        

    def load_configuration(self, args: dict = None):
        #print('\nload_configuration\n')
        phtp = ''

        try:
            phtp=self.camera.get_photo()
        except Exception as e:
            print(str(e))
        self.on_event(11,{'image':phtp})

        self.state = 'configured_system'
        args["set_receive_finish"](3)


    def setup_station(self, args: dict = None):
        #print('\nsetup_station\n')
        

        self.on_event(11,{'image':"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/=="})

        self.state = 'configured_system'

    def update_system(self, args: dict = None):
        #print('\nupdate_system\n')
        self.state = 'configured_system'

    def select_model(self, args: dict = None):
        #print('\nselect_model\n')
        self.state = 'selected_model'

    def configure_model_testing(self, args: dict = None):
        #print('\nconfigure_model_testing\n')
        self.state = 'tests_configured'

    def start_a_test_sequence(self, args: dict = None):
        #print('\nstart_a_test_sequence\n')
        self.state = 'executing_a_test_sequence'

    def running_a_test_sequence(self, args: dict = None):
        
        '''image = cv2.resize(cv2.imread('./img_test_hdmi.png'), (1152, 824))


        retval, buffer = cv2.imencode('.png', image)
        jpg_as_text = base64.b64encode(buffer)'''
        
        self.on_event(11,{'image':"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/=="})






    def do_resize(self,img, img_width = 56, img_height=56):

        img_result = cv2.resize(img, (img_width, img_height))
        img_result = cv2.merge((img_result, img_result, img_result))
        
        return img_result

    def feedback(self, args: dict = None):
        print('\n\nfeedback 1\n\n')
        temp_img = self.camera.get_photo_from_buffer()
        img = self.do_resize(temp_img)
        #my_string = self.encode(img)
        my_string = codecs.encode(pickle.dumps(img, protocol=pickle.HIGHEST_PROTOCOL), "base64").decode('latin1')
        #obj_reconstituted = pickle.loads(codecs.decode(my_string.encode('latin1'), "base64"))
        #imageio.imsave("test_base64.png", obj_reconstituted)
        print('\n\nfeedback 2\n\n')

        self.set_last_args({'image':my_string})

        #self.set_last_args({'image':"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/=="})

    def get_all_models_by_brand(self, args: dict = None):
        self.set_last_args([{
            "brand_name": "AOC",
            "brand_models": [
                {
                "model_name": "e970Swnl",
                "model_test_sequences":[
                        { "name": "12 Oldsmobile", "version": "versão 3.0" },
                        { "name": "SIMPLEX", "version": "versão 2.1" },
                        { "name": "STUTZ MODEL A BEARCAT", "FORD MODEL T": "versão 4.0" },
                        { "name": "14 STANLEY", "version": "versão 6.2" },
                        { "name": "MERCER 35R RACEABOUT", "version": "versão 9.4" },
                        { "name": "FORD MODEL A", "version": "versão 2.0" },
                        { "name": "DUESENBERG MODEL J/SJ", "version": "versão 8.3" },
                        { "name": "Packard Twin Six", "version": "versão 8.0" },
                        { "name": "CORD L-29", "version": "versão 5.0" },
                        { "name": "LA SALLE Cadillac's", "version": "versão 1.8" },
                    ]
                },
                {
                "model_name": "e2270Swn",
                "model_test_sequences":[
                        { "name": "CADILLAC V-16", "version": "versão 3.0" },
                        { "name": "REO ROYALE 8", "version": "versão 6.0" },
                        { "name": "AUBURN SPEEDSTER ", "version": "versão 4.0" },

                    ]
                },
                {
                "model_name": "E1670Swu-E",
                "model_test_sequences":[
                        { "name": "CHRYSLER CL CUSTOM IMPERIAL", "version": "versão 6.7" },
                        { "name": "Cord 810/812", "version": "versão 7.5" },

                    ]
                },
                {
                "model_name": "M2470Swd2",
                "model_test_sequences":[
                        { "name": "PIERCE-ARROW SILVER ARROW", "version": "versão 4.4" },
                        { "name": "CHRYSLER AND DE SOTO AIRFLOW", "version": "versão 5.6" },
                        { "name": "PACKARD TWELVE SPORT COUPE ", "version": "versão 2.7" },
                        { "name": "1934 PIERCE-ARROW TWELVE CONVERTIBLE", "version": "versão 7.0" },
                        { "name": "AUBURN 851 CABRIOLET", "version": "versão 5.0" },
                        { "name": "37 GRAHAM SUPERCHARGER", "version": "versão 7.8" },
                        { "name": "LINCOLN K CONVERTIBLE ROADSTER", "version": "versão 9.0" },
                        { "name": "37 CORD 810/812", "version": "versão 3.0" },

                    ]
                },
                {
                "model_name": "G2260VWQ6",
                "model_test_sequences":[
                        { "name": "LINCOLN-ZEPHYR COUPE", "version": "versão 2.0" },
                    ]
                }]
         },{
            "brand_name": "DELL",
            "brand_models": [
                {
                "model_name": "P2217H",
                "model_test_sequences":[
                        { "name": "STUDEBAKER DICTATOR COUPE", "version": "versão 5.0" },
                        { "name": "BUICK SERIES 60 CENTURY PHAETON", "version": "versão 6.0" },
                        { "name": "40 GRAHAM SPIRIT", "version": "versão 1.0" },
                        { "name": "1939 FORD DE LUXE", "version": "versão 2.0" },
                        { "name": "1949 Cadillac Series 62 Coupe de Ville", "version": "versão 6.0" },
                        { "name": "42 PACKARD 180 DARRIN CONVERTIBLE VICTORIA", "version": "versão 7.0" },
                        { "name": "LINCOLN CONTINENTAL", "version": "versão 3.0" },
                        { "name": "1940-'41 WILLYS ", "version": "versão 2.0" },
                        { "name": "1941 CADILLAC CONVERTIBLE COUPE", "version": "versão 3.0" },
                        { "name": "PACKARD CUSTOM SUPER CLIPPER CLUB COUPE", "version": "versão 1.0" },
                    ]
                },
                {
                "model_name": "E1916H",
                "model_test_sequences":[
                        { "name": "CHRYSLER TOWN AND COUNTRY ", "version": "versão 1.0" },
                        { "name": "CADILLAC SERIES 62 COUPE DE VILLE All", "version": "versão 4.0" },
                        { "name": "1949-'50 FORD", "version": "versão 2.0" },

                    ]
                },
                {
                "model_name": "SE2216H",
                "model_test_sequences":[
                        { "name": "1949 OLDSMOBILE 88", "version": "versão 5.0" },
                        { "name": "1949 MERCURY TWO-DOOR COUPE", "version": "versão 2.0" },

                    ]
                },
                {
                "model_name": "P2317H",
                "model_test_sequences":[
                        { "name": "1950-'53 NASH RAMBLER CONVERTIBLE COUPE", "version": "versão 2.0" },
                        { "name": "1951-'53 HUDSON HORNET", "version": "versão 5.0" },
                        { "name": "1953-'54 BUICK SKYLARK CONVERTIBLE", "version": "versão 2.0" },
                        { "name": "1953 CHEVROLET CORVETTE", "version": "versão 7.0" },
                        { "name": "1953 Packard Caribbean Convertible", "version": "versão 8.0" },
                        { "name": "1954 CHEVROLET BEL AIR SPORT COUPE", "version": "versão 3.0" },
                        { "name": "1954-'61 NASH METROPOLITAN", "version": "versão 5.0" },
                        { "name": "1955 CHRYSLER C300 HARDTOP", "version": "versão 2.0" },

                    ]
                },
                {
                "model_name": "P2219H_QISDA",
                "model_test_sequences":[
                        { "name": "1955-'56 FORD THUNDERBIRD", "version": "versão 6.4" },
                    ]
                }]
         },{
            "brand_name": "LENOVO",
            "brand_models": [
                {
                "model_name": "E2003b",
                "model_test_sequences":[
                        { "name": "1955-'56 FORD CROWN VICTORIA SKYLINER", "version": "versão 6.0" },
                        { "name": "1956-'57 CONTINENTAL MARK II", "version": "versão 4.0" },
                        { "name": "1957 FORD FAIRLANE SKYLINER", "version": "versão 3.0" },
                        { "name": "1957 FORD THUNDERBIRD", "version": "versão 5.0" },
                        { "name": "1957 PONTIAC BONNEVILLE CONVERTIBLE", "version": "versão 3.0" },
                        { "name": "1957-'58 CADILLAC ELDORADO BROUGHAM", "version": "versão 2.0" },
                        { "name": "1958 CHRYSLER 300D", "version": "versão 8.0" },
                        { "name": "1959-'60 BUICK ELECTRA 225 CONVERTIBLE", "version": "versão 2.0" },
                        { "name": "1959 CADILLAC COUPE DE VILLE", "version": "versão 9.0" },
                        { "name": "1959 DE SOTO ADVENTURER", "version": "versão 4.0" },
                    ]
                },
                {
                "model_name": "T22i-10",
                "model_test_sequences":[
                        { "name": "1963 CHEVROLET CORVETTE COUPE", "version": "versão 2.0" },
                        { "name": "1963 CHEVROLET IMPALA", "version": "versão 5.0" },
                        { "name": "1963 STUDEBAKER AVANTI", "version": "versão 6.2" },

                    ]
                },
                {
                "model_name": "S24e-03",
                "model_test_sequences":[
                        { "name": "1964 CHEVROLET CORVAIR MONZA SPYDER", "version": "versão 3.0" },
                        { "name": "1964-'65 FORD MUSTANG CONVERTIBLE", "version": "versão 4.0" },

                    ]
                },
                {
                "model_name": "S22e-18",
                "model_test_sequences":[
                        { "name": "1965 BUICK RIVIERA GS", "version": "versão 4.1" },
                        { "name": "1965 PONTIAC GTO", "version": "versão 5.7" },
                        { "name": "1968-'69 AMC AMX ", "version": "versão 9.2" },
                        { "name": "1969 CHEVROLET CAMARO Z/28", "version": "versão 3.4" },

                    ]
                }]
         },{
            "brand_name": "PHILIPS",
            "brand_models": [
                {
                "model_name": "223V5LHSB2",
                "model_test_sequences":[
                        { "name": "1969 DODGE CHARGER", "version": "versão 7.4" },
                        { "name": "1969 DODGE CHARGER DAYTONA", "version": "versão 5.1" },
                        { "name": "1969 PONTIAC FIREBIRD TRANS AM", "version": "versão 2.0" },
                    ]
                },
                {
                "model_name": "223V5LHSW",
                "model_test_sequences":[
                        { "name": "1990-'95 CHEVROLET CORVETTE ZR1", "version": "versão 8.0" },
                        { "name": "", "version": "versão 2.8" },
                        { "name": "", "version": "versão 7.9" },

                    ]
                },
                {
                "model_name": "288P6LJEB",
                "model_test_sequences":[
                        { "name": "", "version": "versão 1.1" },
                        { "name": "", "version": "versão 2.3" },

                    ]
                },
                {
                "model_name": "193V5LSB2",
                "model_test_sequences":[
                        { "name": "1970-'72 BUICK GSX", "version": "versão 4.1" },
                        { "name": "1970 CHEVROLET CHEVELLE SS", "version": "versão 4.0" },
                        { "name": "1970-'72 CHEVROLET CORVETTE LT-1", "version": "versão 3.2" },
                        { "name": "1970 PLYMOUTH CUDA", "version": "versão 5.5" },
                        { "name": "1970 PLYMOUTH SUPERBIRD", "version": "versão 3.0" },
                        { "name": "1973-'74 PONTIAC SUPER DUTY TRANS AM", "version": "versão 2.0" },
                        { "name": "1987 BUICK GNX ", "version": "versão 9.0" },
                    ]
                },
                {
                "model_name": "243V5QHABa",
                "model_test_sequences":[
                        { "name": "1965-'66 SHELBY MUSTANG G.T. 350 ", "version": "versão 1.0" },
                        { "name": "1967 CADILLAC ELDORADO", "version": "versão 3.0" },
                        { "name": "1967 CHEVROLET CORVETTE L88", "version": "versão 6.0" },
                        { "name": "1967 PONTIAC GRAND PRIX CONVERTIBLE", "version": "versão 5.0" },
                    ]
                }]
         }])


    def cancel_a_test_sequence(self, args: dict = None):
        #print('\ncancel_a_test_sequence\n')
        self.state = 'tests_configured'

    def report_error_in_hw(self, args: dict = None):
        #print('\nreport_error_in_hw\n')
        self.state = 'hw_error'

    def return_to_configuration_of_test(self, args: dict = None):
        #print('\nreturn_to_configuration_of_test\n')
        self.state = 'selected_model'

    def return_to_system_configuration(self, args: dict = None):
        #print('\nreturn_to_system_configuration\n')
        self.state = 'configured_system'
import sys
import json


if __name__ == '__main__':
    app = ApplicationManager()
    while True:
        app.show_available_events()

        data = json.loads(input())
        
        app.on_event(int(data['args']))

        time.sleep(.2)
