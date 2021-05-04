""" This module supports the report logger """

import os
import logging

from logging.handlers import TimedRotatingFileHandler

class ReporterFileHandler(TimedRotatingFileHandler):
    """ Customized FileHandler to create reports """

    def __init__(self, filename, when='h', interval=1, backupCount=0, encoding=None,\
        delay=False, utc=False, atTime=None):

        pathname = os.path.dirname(filename)
        if pathname:
            os.makedirs(pathname, exist_ok=True)

        self.log_name, self.log_ext = os.path.splitext(filename)

        super(ReporterFileHandler, self).__init__(\
            filename, when, interval, backupCount, encoding, delay, utc, atTime)

        self.namer = self.get_filename

    def get_filename(self, default_name):

        #gets the timestamp created by parent class
        dummy_name, timestamp = os.path.splitext(default_name)
        return self.log_name + timestamp + self.log_ext

class Report:
    """ This class log test results in CSV format """

    CSV_DELIMITER = ','
    logger = logging.getLogger('report')

    @staticmethod
    def log_report(model, test, test_result, message):

        #remove csv delimiter in message
        message = message.replace(Report.CSV_DELIMITER, '')
        message_report = "{}, {}, {}, {}".format(\
            model, test, test_result, message)

        Report.logger.info(message_report)
