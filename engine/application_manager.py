import time
from .state_machine import *

import sys, json
class ApplicationManager(StateMachine):
    def __init__(self):

        StateMachine.__init__(self, "[sm_test]: ")
        self.sm['initial'] = {0: self.load_configuration,
                              1: self.setup_station,11: self.feedback}
        self.sm['configured_system'] = {
            2: self.update_system,
            3: self.select_model,11: self.feedback}

        self.sm['selected_model'] = {
            4: self.configure_model_testing, 3: self.select_model,11: self.feedback
}

        self.sm['tests_configured'] = {
            5: self.start_a_test_sequence,
            3: self.return_to_system_configuration,
            11: self.feedback

        }

        self.sm['executing_a_test_sequence'] = {
            6: self.running_a_test_sequence, 7: self.cancel_a_test_sequence, 9: self.report_error_in_hw,
            11: self.feedback

        }

        self.sm['hw_error'] = {
            10: self.return_to_configuration_of_test,
            11: self.feedback
        }

        self.state = 'initial'

    def load_configuration(self, args: dict = None):
        #print('\nload_configuration\n')
        self.state = 'configured_system'

    def setup_station(self, args: dict = None):
        #print('\nsetup_station\n')


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


    def feedback(self, args: dict = None):
        self.set_last_args(args)


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
