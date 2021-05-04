# database

import sqlite3

#from application.model.model import Model
from .model.test import Test
from .model.model import Model
from .model.camera import CameraClass
from .model.parameter import Parameter
from .model.test_params_value import TestParameterValue
from .database_script import DATABASE_NAME
import logging
logger = logging.getLogger('database')
import threading
import collections as col
import os
import time
import io
import json
from shutil import copyfile

class Database:
    conn = None
    c = None
    creating_lock = threading.Lock()
    @staticmethod
    def verify_database(conn, c):
        is_created = True
        test_query = 'SELECT * FROM Test';
        try:
            c.execute(test_query)
            conn.commit()
        except Exception:
            is_created = False
        return is_created

    @staticmethod
    def create_database(conn, c):
        with open('db.sql', 'r') as f:
            create_query = ''.join(f.readlines())
        for table_query in create_query.split(';'):
            c.execute(table_query)
        conn.commit()

    @staticmethod
    def init_db():
        with Database.creating_lock:
            conn = sqlite3.connect(DATABASE_NAME)
            #(conn, c) = Database.import_file('db/backup.sql', conn)
            c = conn.cursor()
            if not (Database.verify_database(conn,c)):
                Database.create_database(conn, c)
                Database.fake_populate(conn, c)
        return conn, c

    # For Tests only
    @staticmethod
    def fake_populate(conn, c):
        with open('data.sql', 'r') as f:
            insert_query = ''.join(f.readlines())

        for item_query in insert_query.split(';'):
            c.execute(item_query)
        conn.commit()

    def __init__(self):
        ( self.conn, self.c ) = self.init_db()

    def get_device(name):
        ( conn, c ) = Database.init_db()
        res = c.execute("SELECT * FROM Device WHERE name= '%s'" % name)
        hold = res.fetchone()
        conn.close()
        return hold

    def get_devices():
        ( conn, c ) = Database.init_db()
        devices = []
        res = c.execute("SELECT * FROM Device")
        for row in res:
            serial_device = Device(row[2], row[3], row[4], row[1], row[0])
            logger.info(serial_device.name + " " +serial_device.com)
            devices.append(serial_device)
        conn.close()
        return devices

    def get_devices_from_cfg():
        devices = []
        dev_id = 1
        with open('config/devices.txt') as f:
            for line in f.readlines():
                # remove line feed from line variable
                raw_device = line[:-1].split(',')
                serial_device = Device(raw_device[1], raw_device[2], name=raw_device[0], id=dev_id)
                logger.info(serial_device.name + " " +serial_device.com)
                devices.append(serial_device)
                dev_id+=1
        return devices

    # @author : brandell.cassio
    # function created to require the list of models grouped

    def get_model_by_brand():
        ( conn, c ) = Database.init_db()
        with conn:
            query = 'SELECT * from Model order by brand'
            res = c.execute(query)
            brand_model = {}
            for row in res:
                model = Model(row[0], row[1], row[2], row[3])
                model.tests = Database.get_tests_by_model(model.id)
                model_list = brand_model.get(model.brand, [])
                model_list += [model]
                if len(model_list) == 1:
                    brand_model[model.brand] = model_list

            brand_model_ordered = col.OrderedDict(sorted(brand_model.items()))
        return brand_model_ordered

    def old_get_model_by_brand():
        ( conn, c ) = Database.init_db()
        query = 'SELECT * from Model order by brand'
        res = c.execute(query)
        brand_model = {}

        for row in res:
            model = Model(row[2],row[1], row[3], row[4], row[5], row[6], row[7], row[8])
            model_list = brand_model.get(model.brand, [])
            model_list += [model]
            if len(model_list) == 1:
                brand_model[model.brand] = model_list

        brand_model_ordered = col.OrderedDict(sorted(brand_model.items()))
        conn.close()
        return brand_model_ordered

    def get_resolutions():
        ( conn, c ) = Database.init_db()
        resolutions = []
        with conn:
            query = 'SELECT * from Resolution'
            res = c.execute(query)
            for row in res.fetchall():
                resolutions += [(row[0], row[1])]
        return resolutions

    def update_device(device):
        ( conn, c ) = Database.init_db()

        update_query = "UPDATE Device SET name = '%s', baudrate = %d, port = '%s'"
        update_query += " WHERE id = %d"
        c.execute(update_query % (device.name, device.baudrate, device.com, device.id))
        conn.commit()
        conn.close()
        return True

    #TODO : Check if we can create an Test and TestImpl classes
    def get_test_sequence():
        ( conn, c ) = Database.init_db()
        test_sequence = []
        res = c.execute("SELECT * FROM Test")
        for row in res:
            test = Test(row[0],row[1],row[2])
            test_sequence.append(test)
        conn.close()
        return test_sequence

    def get_test_by_id(id):
        ( conn, c ) = Database.init_db()
        test = None
        query = "SELECT * FROM Test where id = {0}"
        res = c.execute(query.format(id))
        for row in res:
            test = Test(row[0],row[1],row[2])

        conn.close()
        return test

    def get_test_data_by_model(id_model, id_test):
        ( conn, c ) = Database.init_db()
        query = "SELECT sequence,activated FROM ModelTest where id_model = {0} and "
        query += " id_test = {1};"
        res = c.execute(query.format(id_model, id_test))
        for row in res:
            sequence = row[0]
            activated = row[1]
        conn.close()
        return sequence, activated

    def get_qty_tests_by_model(model_id):

        qty = 0

        (conn, c) = Database.init_db()
        query = "select * from ModelTest where id_model={0};"
        res = c.execute(query.format(model_id))

        for row in res:
            if row[3] == 1:
                qty += 1

        return qty

    def get_tests_by_model(model_id):
        ( conn, c ) = Database.init_db()
        query = "select t.id,p.id, p.name, p.type, tpv.value, p.default_value "
        query += " from Model as m, Parameter as p, "
        query += "Test as t, TestParameter as tp, TestParameterValue as tpv, "
        query += "ModelTest as mt WHERE m.id = {0} and t.id = tp.id_test and "
        query += "tp.id_param = p.id and tpv.id_model = m.id and tpv.id_test = t.id "
        query += " and tpv.id_param = p.id and mt.id_model = m.id and mt.id_test = t.id "
        query += " order by mt.sequence ;"
        res = c.execute(query.format(model_id))
        test_list = []
        test = None
        previous_test = -1
        for row in res:
            test_id = row[0]
            if previous_test == -1 or test_id != previous_test:

                if previous_test != -1:
                    test_list += [test]

                previous_test = test_id
                test = Database.get_test_by_id(test_id)
                test.sequence, test.activated = Database.get_test_data_by_model(model_id, test_id)


            parameter = Parameter(row[1], row[2], row[3], row[5])
            parameter_value = TestParameterValue(row[1], test_id, model_id, row[4])
            parameter_value.cast_value(parameter.type)
            test.parameter_values += [parameter_value]
            test.parameters += [parameter]
        if not test is None:
            test_list += [test]

        return test_list

    def update_model(model):
        (conn, c) = Database.init_db()
        result = False
        query = "update model set name = '{0}', brand = '{1}', timing = {2} "
        query += "where id = {3}"
        try:
            c.execute(query.format(model.name, model.brand, model.timing, model.id))
            conn.commit()
            result = True
            conn.close()
        except Exception as e:
            logger.critical("error: {0}".format(str(e)))
        return result

    def insert_model(model):
        #ONLY MODEL MANAGER
        #import pdb; pdb.set_trace()
        (conn, c) = Database.init_db()
        result = False
        query = "insert into model (name, brand, timing)"
        query += "values ('{0}', '{1}', {2})"
        try:
            c.execute(query.format(model.name, model.brand, model.timing))
            conn.commit()

            holder_id = c.lastrowid

            res = c.execute("select * from Test")
            for row in res.fetchall():
                query_testparameter = "select * from testparameter"
                raw = c.execute("select p.id, p.name from Parameter p inner join TestParameter t on p.id = t.id_param where t.id_test="+str(row[0]))

                for holder in raw.fetchall():
                    if(holder[1] == 'sampling'):
                        query_testparam = "insert into testparametervalue(id_test, id_param, id_model, value)"
                        query_testparam += " values ('{0}', '{1}', '{2}', '1')"
                        c.execute(query_testparam.format(row[0], holder[0], holder_id))
                    elif(holder[1] == 'filename'):
                        query_testparam = "insert into testparametervalue(id_test, id_param, id_model, value)"
                        query_testparam += " values ('{0}', '{1}', '{2}', 'empty edid file')"
                        c.execute(query_testparam.format(row[0], holder[0], holder_id))
                    else:
                        query_testparam = "insert into testparametervalue(id_test, id_param, id_model, value)"
                        query_testparam += " values ('{0}', '{1}', '{2}', '0')"
                        c.execute(query_testparam.format(row[0], holder[0], holder_id))

                query_modeltest = "insert into modeltest(id_model, id_test, sequence, activated)"
                query_modeltest += " values({0}, {1}, {2}, {3})"
                c.execute(query_modeltest.format(holder_id, row[0], row[0], 0, 0))
            conn.commit()

            result = True
        except Exception as e:
            logger.critical("error: {0}".format(str(e)))
            conn.rollback()
        return result

    def delete_model(model):
        #ONLY MODEL MANAGER
        #import pdb; pdb.set_trace()
        (conn, c) = Database.init_db()
        result = False
        holder_id = model.id

        query_model_table = "delete from model "
        query_model_table += "where brand='{0}' and name='{1}'"

        query_modeltest_table = "delete from modeltest "
        query_modeltest_table += "where id_model={0}"

        try:
            #print(query_model_table.format(model.brand, model.name))
            #print(query_modeltest_table.format(holder_id))
            c.execute(query_model_table.format(model.brand, model.name))
            c.execute(query_modeltest_table.format(holder_id))
            conn.commit()
            return True
            #result = True
            #conn.close()
        except Exception as e:
            logger.critical("error: {0}".format(str(e)))
            conn.rollback()
        return result

    def get_station(self):
        ( conn, c ) = Database.init_db()
        query = "SELECT * FROM Station;"
        station_name = None
        station_ip = None
        try:
            res = c.execute(query)
            for row in res:
                station_name = row[0]
                station_ip = row[1]
        except Exception as e:
            logger.critical("error: {0}".format(str(e)))
            conn.rollback()
        conn.close()
        return station_name, station_ip

    def save_station(args):
        ( conn, c ) = Database.init_db()
        query = "UPDATE Station set name = '{0}', ip = '{1}' ;"
        result = False
        try:
            res = c.execute(query.format(args[0], args[1]))
            conn.commit()
            result = True
        except Exception as e:
            logger.critical("error: {0}".format(str(e)))
            conn.rollback()
        conn.close()
        return result

    def request_camera(camera):
        #import pdb; pdb.set_trace()
        ( conn, c ) = Database.init_db()
        query = "SELECT * FROM Camera WHERE name = '{0}';"
        #res = c.execute(query.format("no camera"))
        new_camera = None
        try:
            res = c.execute(query.format(camera))
            for row in res:
                new_camera = CameraClass(row[0], row[1], row[2], row[3], row[4], row[5], row[6])
            if(new_camera is None):
                res = c.execute(query.format('no camera'))
                for row in res:
                    new_camera = CameraClass(row[0], row[1], row[2], row[3], row[4], row[5], row[6])
            return new_camera
        except Exception as e:
            logger.critical("error: {0}".format(str(e)))
            conn.rollback()
        conn.close()
        return new_camera
    
    def request_panel_test_camera(camera_name):
        #import pdb; pdb.set_trace()
        ( conn, c ) = Database.init_db()
        query = "SELECT * FROM PanelTestCameras WHERE name = '{0}';"
        new_camera = None
        try:
            res = c.execute(query.format(camera_name))
            for row in res:
                new_camera = {'name': row[0], 
                              'side': row[1], 
                              'standard_exposure': row[2], 
                              'standard_gamma':row[3], 
                              'mura_black_exposure': row[4], 
                              'mura_black_gamma': row[5]}
            if(new_camera is None):
                new_camera = {'name': camera_name, 
                              'side': None, 
                              'standard_exposure': 7000, 
                              'standard_gamma': 1.0, 
                              'mura_black_exposure': 7000, 
                              'mura_black_gamma': 0.3}
            # print('Database: ', new_camera)
            return new_camera
        except Exception as e:
            logger.critical("error: {0}".format(str(e)))
            conn.rollback()
        conn.close()
        return new_camera
    
    def save_panel_test_camera(camera_dict):
        ( conn, c ) = Database.init_db()

        # print('\n\n\n >>>>>>>', camera_dict,'\n\n\n')

        query = "INSERT OR IGNORE INTO PanelTestCameras(name, side, standard_exposure, standard_gamma, mura_black_exposure, mura_black_gamma) VALUES ('{0}', '{1}', {2}, {3}, {4}, {5});"
        query2 = "UPDATE PanelTestCameras set side = '{0}', standard_exposure = {1}, standard_gamma = {2}, mura_black_exposure = {3}, mura_black_gamma = {4} WHERE name = '{5}';"
        result = False

        print('\n\n\n', query.format(camera_dict['name'], camera_dict['side'], camera_dict['standard_exposure'], camera_dict['standard_gamma'], camera_dict['mura_black_exposure'], camera_dict['mura_black_gamma']))
        print('\n', query2.format(camera_dict['side'], camera_dict['standard_exposure'], camera_dict['standard_gamma'], camera_dict['mura_black_exposure'], camera_dict['mura_black_gamma'], camera_dict['name']), '\n\n')
        try:
            res = c.execute(query.format(camera_dict['name'], camera_dict['side'], camera_dict['standard_exposure'], camera_dict['standard_gamma'], camera_dict['mura_black_exposure'], camera_dict['mura_black_gamma']))
            res = c.execute(query2.format(camera_dict['side'], camera_dict['standard_exposure'], camera_dict['standard_gamma'], camera_dict['mura_black_exposure'], camera_dict['mura_black_gamma'], camera_dict['name']))
            conn.commit()
            result = True
        except Exception as e:
            logger.critical("error: {0}".format(str(e)))
            conn.rollback()
        conn.close()
        return result
        return True

    def save_camera(camera):
        ( conn, c ) = Database.init_db()

        query = "INSERT OR IGNORE INTO Camera(status, name, r_value, g_value, b_value, gamma, exposure) VALUES ('{0}', '{1}', {2}, {3}, {4}, {5}, {6});"
        query2 = "UPDATE Camera set r_value = {0}, g_value = {1}, b_value = {2}, gamma = {3}, exposure = {4} WHERE name = '{5}';"
        result = False
        try:
            res = c.execute(query.format(camera.status, camera.name, camera.r_value, camera.g_value, camera.b_value, camera.gamma, camera.exposure))
            res = c.execute(query2.format(camera.r_value, camera.g_value, camera.b_value, camera.gamma, camera.exposure, camera.name))
            conn.commit()
            result = True
        except Exception as e:
            logger.critical("error: {0}".format(str(e)))
            conn.rollback()
        conn.close()
        return result
        return True

    def insert_camera(camera):
        (conn, c) = Database.init_db()
        result = False

        query = "INSERT INTO Camera(status, name, r_value, g_value, b_value, gamma, exposure) "
        query += "VALUES ('{0}', '{1}', {2}, {3}, {4}, {5}, {6});"
        try:
            c.execute(query.format(camera.status, camera.name, camera.r_value, camera.g_value, camera.b_value, camera.gamma, camera.exposure))
            conn.commit()
            result = True
            conn.close()
        except Exception as e:
            logger.critical("error: {0}".format(str(e)))
        return result

    def update_camera(camera):
        (conn, c) = Database.init_db()
        result = False
        query = "UPDATE Camera set r_value = {0}, g_value = {1}, b_value = {2}, gamma = {3}, exposure = {4} WHERE name = '{5}';"
        try:
            c.execute(query.format(camera.r_value, camera.g_value, camera.b_value, camera.gamma, camera.exposure, camera.name))
            conn.commit()
            result = True
            conn.close()
        except Exception as e:
            logger.critical("error: {0}".format(str(e)))
        return result

    def create_empty_test(self):
        (conn, c) = Database.init_db()
        result = False
        conn.close()

    def get_current_model():
        ( conn, c ) = Database.init_db()
        query = "SELECT id_model FROM WizardForThreshold WHERE current = 'yes';"
        current_model = 0
        try:
            res = c.execute(query)
            for row in res:
                current_model = row[0]
        except Exception as e:
            logger.critical("error: {0}".format(str(e)))
            conn.rollback()
        conn.close()
        return current_model

    def switch_current_model():
        ( conn, c ) = Database.init_db()

        query = "UPDATE WizardForThreshold SET current = 'no' WHERE current = 'yes';"
        result = False
        try:
            res = c.execute(query)
            conn.commit()
            result = True
        except Exception as e:
            logger.critical("error: {0}".format(str(e)))
            conn.rollback()
        conn.close()
        return result

    def model_thresold_exists(id_model):
        ( conn, c ) = Database.init_db()
        query = "SELECT * FROM WizardForThreshold WHERE id_model = {};"
        result = False
        try:
            #print(query.format(id_model))
            res = c.execute(query.format(id_model))
            for row in res:
                if(len(row) == 0):
                    conn.commit()
                    result = False
                else:
                    conn.commit()
                    result = True
        except Exception as e:
            logger.critical("error: {0}".format(str(e)))
            conn.rollback()
        conn.close()
        return result

    def get_wizard_atributes(id_model):
        result = Database.model_thresold_exists(id_model)
        threshold, exposure, gamma = '[0]', 7000, 1.23
        if (result is True):
            ( conn, c ) = Database.init_db()
            query = "SELECT threshold, exposure, gamma FROM WizardForThreshold WHERE id_model = {};"
            try:
                res = c.execute(query.format(id_model))
                for row in res:
                    threshold = row[0]
                    exposure = row[1]
                    gamma = row[2]
            except Exception as e:
                logger.critical("error: {0}".format(str(e)))
                conn.rollback()
            conn.close()
        else:
            return False, threshold, exposure, gamma
        if (threshold is not None):
            threshold = json.loads(threshold)
            threshold = [float(i) for i in threshold]
        return True, threshold, exposure, gamma

    def save_exposure_gamma(id_model, gamma, exposure):
        Database.switch_current_model()
        ( conn, c ) = Database.init_db()

        query = "UPDATE WizardForThreshold SET current = 'yes', gamma = {}, exposure = {} WHERE id_model = {};"
        result = False
        try:
            #print(query.format(gamma, exposure, id_model))
            res = c.execute(query.format(gamma, exposure, id_model))
            conn.commit()
            result = True
        except Exception as e:
            logger.critical("error: {0}".format(str(e)))
            conn.rollback()
        conn.close()
        return result

    def save_wizard_atributes(threshold, id_model, gamma, exposure):
        Database.switch_current_model()
        ( conn, c ) = Database.init_db()
        threshold = str(threshold)
        #threshold = json.dumps(threshold)

        #query = "UPDATE WizardForThreshold SET threshold = '{}', gamma = {}, exposure = {}, current = 'yes' WHERE id_model = {};"
        query = "INSERT OR IGNORE INTO WizardForThreshold (threshold, current, gamma, exposure, id_model) VALUES('{}', 'yes', {}, {}, {});"
        query2 = "UPDATE WizardForThreshold SET threshold = '{}', current = 'yes', gamma = {}, exposure = {} WHERE id_model = {};"
        result = False
        try:
            res = c.execute(query.format(threshold, gamma, exposure, id_model))
            res = c.execute(query2.format(threshold, gamma, exposure, id_model))
            conn.commit()
            result = True
        except Exception as e:
            logger.critical("error: {0}".format(str(e)))
            conn.rollback()
        conn.close()
        return result

    def update_test_model(model):
        (conn, c) = Database.init_db()
        for test in model.tests:
            query = 'update ModelTest set activated = {0} and sequence = {1}'
            query += ' where id_test = {2} and id_model = {3}'
            try:
                c.execute(query.format(int(test.activated), test.sequence,\
                     test.id, model.id))
                conn.commit()
                result = True
            except Exception as e:
                logger.critical("error: {0}".format(str(e)))

            for param_value in test.parameter_values:
                result = False
                try:
                    # print(param_value, param_value.param_id)
                    if(param_value.param_id != 47 and param_value.param_id != 57):
                        if(isinstance(param_value.value, str)):
                            query = "update TestParameterValue set value = '{0}' "
                        else:
                            query = "update TestParameterValue set value = '{0}' "
                        query += "where id_test = {1} and id_param = {2} and id_model = {3}"
                        c.execute(query.format(str(param_value.value), param_value.test_id,\
                        param_value.param_id, param_value.model_id))
                    else:
                        query = "update TestParameterValue set value = '{0}' "
                        query += "where id_test = {1} and id_param = {2} and id_model = {3}"
                        c.execute(query.format(str(param_value.value), param_value.test_id,\
                        param_value.param_id, param_value.model_id))
                    result = True
                except Exception as e:
                    logger.critical("error: {0}".format(str(e)))
        conn.commit()
        conn.close()
        return result

    # For tests only
    def execute(string):
        ( conn, c ) = Database.init_db()
        c.execute(string)
        conn.commit()
        conn.close()

    def select(name):
        ( conn, c ) = Database.init_db()
        res = c.execute("SELECT * FROM " + str(name))
        for row in res:
            logger.info(row)
        conn.close()

    @staticmethod
    def import_file(file):
        result = False

        conn = sqlite3.connect(DATABASE_NAME)
        conn.close()

        database_name, database_ext = os.path.splitext(DATABASE_NAME)
        timestr = time.strftime("%Y%m%d-%H%M%S")
        copyfile(DATABASE_NAME, database_name+timestr+database_ext)

        conn = sqlite3.connect(DATABASE_NAME)
        c = conn.cursor()

        Database.drop_tables(conn,c)
        Database.create_database(conn, c)
        #Database.devices_populate(conn, c)

        try:
            with open(file, 'r') as f:
                insert_query = ''.join(f.readlines())

            for item_query in insert_query.split(';'):
                c.execute(item_query)
            conn.commit()
            result = True
            conn.close()
        except Exception as e:
            logger.critical("error: {0}".format(str(e)))
            if os.path.exists(DATABASE_NAME):
                conn.close()
                os.remove(DATABASE_NAME)
                copyfile(database_name+timestr+database_ext,DATABASE_NAME)

        return result

    @staticmethod
    def drop_tables(conn,c):

        sql = """
                DROP TABLE IF EXISTS Model;
                DROP TABLE IF EXISTS Test;
                DROP TABLE IF EXISTS Parameter;
                DROP TABLE IF EXISTS TestParameter;
                DROP TABLE IF EXISTS TestParameterValue;
                DROP TABLE IF EXISTS ModelTest
        """
        c.executescript(sql)
        conn.commit()
