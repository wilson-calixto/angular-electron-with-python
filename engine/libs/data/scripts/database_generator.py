


class DatabaseGenerator:
    id_of_model=0
    archive = open('libs/data/scripts/data.sql','w')
    config={}
    def __init__(self):
        self.insert_previous_data()

    def insert_previous_data(self):

        self.archive.write("INSERT INTO Device(name,port,baudrate,timeout) VALUES('Wattmeter','COM4',2400,1);\n")
        self.archive.write("INSERT INTO Device(name,port,baudrate,timeout) VALUES('Chroma','COM6',115200,1);\n")
        self.archive.write("INSERT INTO Device(name,port,baudrate,timeout) VALUES('uc_icts','COM2',115200,1);\n")
        self.archive.write("INSERT INTO Device(name,port,baudrate,timeout) VALUES('Hdmidev','COM8',9600,1);\n")
        self.archive.write("INSERT INTO Device(name,port,baudrate,timeout) VALUES('Rfid','COM9',9600,1);\n")

        self.archive.write("\n\nINSERT INTO WizardForThreshold(threshold, current, gamma, exposure, id_model) VALUES('[0]', 'yes', 1, 5000, 0);\n")

        self.archive.write("INSERT INTO Camera(status, name, r_value, g_value, b_value, gamma, exposure) VALUES('acA1300-200uc', 'no camera', 1.80, 1.0, 1.26, 1.23, 7000);\n")

        self.archive.write("INSERT INTO PanelTestCameras(name, side, standard_exposure, standard_gamma, mura_black_exposure, mura_black_gamma) VALUES ('acA3800-14um', '', 1000, 1.0, 1000,  1);\n")

        self.archive.write("INSERT INTO Resolution(id, resolution, frequency)  VALUES (143, '1920x1080' , 60.0);\n")
        self.archive.write("INSERT INTO Resolution(id, resolution, frequency)  VALUES (239, '1600x900' , 60.0);\n")
        self.archive.write("INSERT INTO Resolution(id, resolution, frequency)  VALUES (108, '1400x900' , 60.0);\n")
        self.archive.write("INSERT INTO Resolution(id, resolution, frequency)  VALUES (250, '1600x900' , 60.0);\n")
        self.archive.write("INSERT INTO Resolution(id, resolution, frequency)  VALUES (14, '1024x768' , 60.0);\n")

        self.archive.write("\n\nINSERT INTO Station(name, ip)  VALUES ('EMPTY NAME', '0.0.0.0');\n")

        self.archive.write("\n\nINSERT INTO Test(name, type) VALUES('Power Test', 1);\n")
        self.archive.write("INSERT INTO Test(name, type) VALUES ('StandBy Test', 2);\n")
        self.archive.write("INSERT INTO Test(name, type) VALUES ('Edid Test', 3);\n")
        self.archive.write("INSERT INTO Test(name, type) VALUES ('GrayLevel Test', 4);\n")
        self.archive.write("INSERT INTO Test(name, type) VALUES ('Service Tag Test', 5);\n")
        self.archive.write("INSERT INTO Test(name, type) VALUES ('Hdmi Test', 6);\n")
        self.archive.write("INSERT INTO Test(name, type) VALUES ('Panel Test', 7);\n")
        self.archive.write("INSERT INTO Test(name, type) VALUES ('Send Command', 8);\n")
        self.archive.write("INSERT INTO Test(name, type) VALUES ('UPanel Test', 9);\n")


        self.archive.write("\n\ninsert into Parameter(name, type) values ('pattern', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('power', 2);\n")
        self.archive.write("insert into Parameter(name, type) values ('delay', 2);\n")
        self.archive.write("insert into Parameter(name, type) values ('lower_power', 2);\n")
        self.archive.write("insert into Parameter(name, type) values ('sampling', 1);   -- #5\n")

        self.archive.write("\n--EDID PARAMS;\n")
        self.archive.write("\n\ninsert into Parameter(name, type) values ('header', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('id manufacturer name' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('id product code' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('id serial number' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('week of manufacture' , 1);   -- #10\n")
        self.archive.write("insert into Parameter(name, type) values ('year of manufacture' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('edid structure version' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('edid structure revision' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('video input definition' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('max. horizontal image size' , 1);    -- #15\n")
        self.archive.write("insert into Parameter(name, type) values ('max. vertical image size' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('display transfer characteristic (gamma)' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('feature support' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('red/green low bits' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('blue/white low bits' , 1);   -- #20\n")
        self.archive.write("insert into Parameter(name, type) values ('red x', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('red y', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('green x', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('green y', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('blue x', 1);     -- #25\n")
        self.archive.write("insert into Parameter(name, type) values ('blue y', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('white x', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('white y', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('established timings 1' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('established timings 2' , 1);     -- #30\n")
        self.archive.write("insert into Parameter(name, type) values ('manufactures reserved timings' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('standard timing identification #1' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('standard timing identification #2' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('standard timing identification #3' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('standard timing identification #4' , 1);     -- #35\n")
        self.archive.write("insert into Parameter(name, type) values ('standard timing identification #5' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('standard timing identification #6' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('standard timing identification #7' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('standard timing identification #8' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('detailed timing description #1', 1);     -- #40\n")
        self.archive.write("insert into Parameter(name, type) values ('detailed timing description #2', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('detailed timing description #3', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('detailed timing description #4', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('extension flag' , 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('checksum', 1);   -- #45\n")

        self.archive.write("insert into Parameter(name, type) values ('sdb_timing', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('filename', 3);\n")

        self.archive.write("insert into Parameter(name, type) values ('white_pattern_old', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('bars', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('gray_pattern', 1);   -- #50\n")
        self.archive.write("insert into Parameter(name, type) values ('chroma_delay', 2);\n")
        self.archive.write("insert into Parameter(name, type) values ('limit_x_min', 2);\n")
        self.archive.write("insert into Parameter(name, type) values ('limit_x_max', 2);\n")
        self.archive.write("insert into Parameter(name, type) values ('limit_y_min', 2);\n")
        self.archive.write("insert into Parameter(name, type) values ('limit_y_max', 2);    -- #55\n")

        self.archive.write("insert into Parameter(name, type) values ('timing', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('source', 3);\n")
        self.archive.write("insert into Parameter(name, type) values ('crop_pattern', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('delay_crop_pattern', 2);\n")
        self.archive.write("insert into Parameter(name, type) values ('hdmi_pattern', 1);	-- #60\n")
        self.archive.write("insert into Parameter(name, type) values ('command', 3);\n")
        self.archive.write("insert into Parameter(name, type) values ('white_pattern', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('black_pattern', 1);\n")
        self.archive.write("insert into Parameter(name, type) values ('inches', 2);\n")
        self.archive.write("insert into Parameter(name, type) values ('dead_pixels_number', 1); -- #65\n")
        self.archive.write("insert into Parameter(name, type) values ('pixels_distance_mm', 2);\n")
        self.archive.write("insert into Parameter(name, type) values ('width_resolution', 2);\n")
        self.archive.write("insert into Parameter(name, type) values ('height_resolution', 2);\n")
        self.archive.write("insert into Parameter(name, type) values ('width_monitor_mm', 2);\n")
        self.archive.write("insert into Parameter(name, type) values ('height_monitor_mm', 2); -- #70\n")

        self.archive.write("\n--Power Test;\n")

        self.archive.write("insert into TestParameter(id_test, id_param) values (1,1);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (1,2);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (1,3);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (1,4);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (1,5);\n")


        self.archive.write("\n--Stand By Test;\n")

        self.archive.write("insert into TestParameter(id_test, id_param) values (2,46);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (2,2);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (2,3);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (2,5);\n")

        self.archive.write("\n--Edid Test;\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,5);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,6);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,7);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,8);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,9);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,10);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,11);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,12);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,13);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,14);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,15);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,16);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,17);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,18);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,19);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,20);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,21);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,22);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,23);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,24);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,25);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,26);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,27);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,28);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,29);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,30);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,31);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,32);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,33);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,34);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,35);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,36);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,37);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,38);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,39);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,40);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,41);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,42);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,43);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,44);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,45);\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (3,47);\n")


        self.archive.write("\n--Gray Level Test;\n")

        self.archive.write("insert into TestParameter(id_test, id_param) values (4,56); -- timing\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (4,50); -- gray_pattern\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (4,3);  -- delay\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (4,52); -- limit_x_min\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (4,53); -- limit_x_max\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (4,54); -- limit_y_min\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (4,55); -- limit_y_max\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (4,5);  -- sampling\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (4,57); -- source\n")


        self.archive.write("\n--Service TAG Test;\n")

        self.archive.write("insert into TestParameter(id_test, id_param) values (5,3);\n\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (5,5);\n\n")


        self.archive.write("\n--HDMI Test;\n")

        self.archive.write("insert into TestParameter(id_test, id_param) values (6,56); --timing\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (6,60); --pattern\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (6,3); --delay\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (6,59); --delay hdmi pattern\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (6,5); --sampling\n")


        self.archive.write("-- Panel test;\n\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (7,5); --sampling\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (7,56); --timing\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (7,58); --crop_pattern\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (7,62); --white_pattern\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (7,65); --dead_pixels_number\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (7,66); --pixels_distance_mm\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (7,67); --\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (7,68); --\n")
        
        self.archive.write("insert into TestParameter(id_test, id_param) values (7,69); --width_resolution\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (7,70); --height_resolution\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (7,71); --height_monitor_mm\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (7,72); --width_monitor_mm\n")




        self.archive.write("\n--Send Commad Test;\n")

        self.archive.write("insert into TestParameter(id_test, id_param) values (8,61); --command\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (8,3); --delay\n")
        self.archive.write("insert into TestParameter(id_test, id_param) values (8,5); --sampling\n")






    def insert_new_model(self,name,brand,timming):        
        self.insert_model(name,brand,timming)
        self.increment_model_id()
        self.insert_model_test()
        self.insert_power_test()
        self.insert_stand_by_test()
        self.insert_edid_test(name)
        self.insert_gray_level_test()
        self.insert_service_tag_test()
        self.insert_hdmi_test()
        self.insert_panel_test()
        self.insert_send_commad_test()
        self.insert_dpport_test()

    def insert_model(self,name,brand,timming):
        self.archive.write("\n \n-- Model "+name+" "+brand+" \n\n")
        self.archive.write("INSERT INTO Model(name,brand, timing) values('"+name+"','"+brand+"',"+timming+");\n")


    def insert_model_test(self):
        self.archive.write("insert into ModelTest(id_model, id_test, sequence, activated) values("+str(self.id_of_model)+",1,1,1);\n")
        self.archive.write("insert into ModelTest(id_model, id_test, sequence, activated) values("+str(self.id_of_model)+",2,2,1);\n")
        self.archive.write("insert into ModelTest(id_model, id_test, sequence, activated) values("+str(self.id_of_model)+",3,3,1);\n")
        self.archive.write("insert into ModelTest(id_model, id_test, sequence, activated) values("+str(self.id_of_model)+",4,4,0);\n")
        self.archive.write("insert into ModelTest(id_model, id_test, sequence, activated) values("+str(self.id_of_model)+",5,5,0);\n")
        self.archive.write("insert into ModelTest(id_model, id_test, sequence, activated) values("+str(self.id_of_model)+",6,6,0);\n")
        self.archive.write("insert into ModelTest(id_model, id_test, sequence, activated) values("+str(self.id_of_model)+",7,6,0);\n")
        self.archive.write("insert into ModelTest(id_model, id_test, sequence, activated) values("+str(self.id_of_model)+",8,7,0);\n")

    
    def increment_model_id(self):
        self.id_of_model+=1


    def insert_power_test(self):
        self.archive.write("\n \n-- Power Test Parameters \n\n")
        
        
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,"+str(self.id_of_model)+", '"+self.config['power_test'][0]+"');\n")
        
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,"+str(self.id_of_model)+", '"+self.config['power_test'][1]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,"+str(self.id_of_model)+", '"+self.config['power_test'][2]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,"+str(self.id_of_model)+", '"+self.config['power_test'][3]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,"+str(self.id_of_model)+", '"+self.config['power_test'][4]+"');\n")


    def insert_stand_by_test(self):


# im.config['stand_by_test']=['192','0.5','20','2']
# im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
# im.config['service_tag_test']=['0.0','1']
# im.config['hdmi_test']=['0','0','0.0','1']
# im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40', '0.1', '1']


        self.archive.write("\n \n-- Stand By Parameters \n\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,"+str(self.id_of_model)+", "+self.config['stand_by_test'][0]+");\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,"+str(self.id_of_model)+", '"+self.config['stand_by_test'][1]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,"+str(self.id_of_model)+", '"+self.config['stand_by_test'][2]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,"+str(self.id_of_model)+", '"+self.config['stand_by_test'][3]+"');\n")

    def insert_gray_level_test(self):
        self.archive.write("\n \n-- Gray Level Parameters \n\n")
        
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56, "+str(self.id_of_model)+", '"+self.config['gray_level_test'][0]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,"+str(self.id_of_model)+", '"+self.config['gray_level_test'][1]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3,"+str(self.id_of_model)+", '"+self.config['gray_level_test'][2]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, "+str(self.id_of_model)+", '"+self.config['gray_level_test'][3]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, "+str(self.id_of_model)+", '"+self.config['gray_level_test'][4]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, "+str(self.id_of_model)+", '"+self.config['gray_level_test'][5]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, "+str(self.id_of_model)+", '"+self.config['gray_level_test'][6]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5,"+str(self.id_of_model)+", '"+self.config['gray_level_test'][7]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, "+str(self.id_of_model)+", '"+self.config['gray_level_test'][8]+"');\n")

    def insert_service_tag_test(self):
        self.archive.write("\n \n-- Service TAG Parameters \n\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, "+str(self.id_of_model)+", '"+self.config['service_tag_test'][0]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, "+str(self.id_of_model)+", '"+self.config['service_tag_test'][1]+"');\n")

    def insert_hdmi_test(self):
        self.archive.write("\n \n-- HDMI Parameters \n\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, "+str(self.id_of_model)+", '"+self.config['hdmi_test'][0]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, "+str(self.id_of_model)+", '"+self.config['hdmi_test'][1]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, "+str(self.id_of_model)+", '"+self.config['hdmi_test'][2]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 5, "+str(self.id_of_model)+", '"+self.config['hdmi_test'][3]+"');\n")

    def insert_dpport_test(self):
        self.archive.write("\n \n-- DPPORT Parameters \n\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (10, 56, "+str(self.id_of_model)+", '"+self.config['hdmi_test'][0]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (10, 60, "+str(self.id_of_model)+", '"+self.config['hdmi_test'][1]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (10, 3, "+str(self.id_of_model)+", '"+self.config['hdmi_test'][2]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (10, 5, "+str(self.id_of_model)+", '"+self.config['hdmi_test'][3]+"');\n")


    def insert_send_commad_test(self):
        self.archive.write("\n \n-- Send Command Parameters \n\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, "+str(self.id_of_model)+", '"+self.config['send_commad_test'][0]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, "+str(self.id_of_model)+", '"+self.config['send_commad_test'][1]+"');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, "+str(self.id_of_model)+", '"+self.config['send_commad_test'][2]+"');\n")


    def insert_edid_test(self,name):
        self.archive.write("\n \n-- Edid Parameters \n\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, "+str(self.id_of_model)+", '"+name+".dat');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,5, "+str(self.id_of_model)+", '1');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,6, "+str(self.id_of_model)+", '1');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,7, "+str(self.id_of_model)+", '1');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,8, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,9, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,10, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,11, "+str(self.id_of_model)+", '1');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,12, "+str(self.id_of_model)+", '1');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,13, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,14, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,15, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,16, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,17, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,18, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,19, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,20, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,21, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,22, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,23, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,24, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,25, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,26, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,27, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,28, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,29, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,30, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,31, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,32, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,33, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,34, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,35, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,36, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,37, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,38, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,39, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,40, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,41, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,42, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,43, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,44, "+str(self.id_of_model)+", '0');\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (3,45, "+str(self.id_of_model)+", '0');\n")

    def insert_panel_test(self):
        self.archive.write("\n \n-- Panel Test Parameters \n\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (7, 5, "+str(self.id_of_model)+", 1);\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (7, 56, "+str(self.id_of_model)+", 143);\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (7, 58, "+str(self.id_of_model)+", 14);\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (7, 62, "+str(self.id_of_model)+", 20);\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (7, 65, "+str(self.id_of_model)+", 1);\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (7, 66, "+str(self.id_of_model)+", 1.0);\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (7, 69, "+str(self.id_of_model)+", 531);\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (7, 70, "+str(self.id_of_model)+", 299);\n")    
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (7, 67, "+str(self.id_of_model)+", 1920);\n")
        self.archive.write("insert into TestParameterValue(id_test, id_param, id_model, value) values (7, 68, "+str(self.id_of_model)+", 1080);\n")


    def close(self):
        self.archive.close()

im = DatabaseGenerator()

im.config['power_test']=['105','17','10','0.5','1'] 
im.config['stand_by_test']=['192','0.5','20','2'] 
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi'] 
im.config['service_tag_test']=['0.0','1']  
im.config['hdmi_test']=['0','0','0.0','1']  
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40', '0.1', '1'] 
im.insert_new_model('E2002b','LENOVO', '250') 


im.config['power_test']=['105','17','3.0','0.5','1']
im.config['stand_by_test']=['192','0.5','20','5']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('E2003b','LENOVO', '250')


im.config['power_test']=['105','20.0','3.0','0.3','1']
im.config['stand_by_test']=['192','0.3','20','8']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('T22i-10', 'LENOVO', '143')

im.config['power_test']=['105', '30.0', '3.0', '0.5', '1']
im.config['stand_by_test']=['192', '0.5', '7', '3']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('D2216H', 'DELL', '143')


im.config['power_test']=['105','14.0','4.0','0.3','1']
im.config['stand_by_test']=['192','0.3','18','3']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('P1917S', 'DELL', '143')



im.config['power_test']=['105','16.0','4.5','0.3','1']
im.config['stand_by_test']=['192','0.3','7','3']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('P2217H', 'DELL', '239')


im.config['power_test']=['105','17.0','2.0','0.3','1']
im.config['stand_by_test']=[ '192','0.3','7','3']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('E1916H', 'DELL', '239')


im.config['power_test']=['105','24.0','3.0','0.3','1']
im.config['stand_by_test']=['192','0.3','7','3']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 85 6E 0E 00 00 00 DA 00','0.1','1']
im.insert_new_model('SE2216H', 'DELL', '108')


im.config['power_test']=['105','30.0','3.0','0.3','1']
im.config['stand_by_test']=['192','0.3','20','3']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('P2016 QISDA', 'DELL', '143')


im.config['power_test']=['105','30.0','3.0','0.3','1']
im.config['stand_by_test']=['192','0.3','20','3']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('P2016', 'DELL', '143')


im.config['power_test']=['105','17.0','4.5','1.0','1']
im.config['stand_by_test']=['192','0.3','20','3']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('P2317H', 'DELL', '143')


im.config['power_test']=['0','0.0','0.0','0.0','1']
im.config['stand_by_test']=['0','0.0','0','1']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('e970Swnl', 'AOC', '143')


im.config['power_test']=['0','0.0','0.0','0.0','1']
im.config['stand_by_test']=['0','0.0','0','1']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('e2270Swn', 'AOC', '143')


im.config['power_test']=['0','0.0','0.0','0.0','1']
im.config['stand_by_test']=['0','0.0','0','1']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('E1670Swu-E', 'AOC', '143')


im.config['power_test']=['0','0.0','0.0','0.0','1']
im.config['stand_by_test']=['0','0.0','0','1']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('M2470Swd2', 'AOC', '143')


im.config['power_test']=['0','0.0','0.0','0.0','1']
im.config['stand_by_test']=['0','0.0','0','1']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('M2470PWH', 'AOC', '143')



im.config['power_test']=['0','0.0','0.0','0.0','1']
im.config['stand_by_test']=['0','0.0','0','1']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('G2260VWQ6', 'AOC', '143')


im.config['power_test']=['0','0.0','0.0','0.0','1']
im.config['stand_by_test']=['0','0.0','0','1']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('E2023PWD', 'AOC', '143')


im.config['power_test']=['0','0.0','0.0','0.0','1']
im.config['stand_by_test']=['0','0.0','0','1']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('E970PWHEN', 'AOC', '143')


im.config['power_test']=['0','0.0','0.0','0.0','1']
im.config['stand_by_test']=['0','0.0','0','1']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('E2270PWHE', 'AOC', '143')


im.config['power_test']=['0','0.0','0.0','0.0','1']
im.config['stand_by_test']=['0','0.0','0','1']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('G2460VQ6', 'AOC', '143')


im.config['power_test']=['0','0.0','0.0','0.0','1']
im.config['stand_by_test']=['0','0.0','0','1']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('G2460PF', 'AOC', '143')


im.config['power_test']=['0','0.0','0.0','0.0','1']
im.config['stand_by_test']=['0','0.0','0','1']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('223V5LHSB2', 'PHILIPS', '143')


im.config['power_test']=['0','0.0','0.0','0.0','1']
im.config['stand_by_test']=['0','0.0','0','1']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('223V5LHSW', 'PHILIPS', '143')



im.config['power_test']=['0','0.0','0.0','0.0','1']
im.config['stand_by_test']=['0','0.0','0','1']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('288P6LJEB', 'PHILIPS', '143')


im.config['power_test']=['0','0.0','0.0','0.0','1']
im.config['stand_by_test']=['0','0.0','0','1']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('193V5LSB2', 'PHILIPS', '143')


im.config['power_test']=['0','0.0','0.0','0.0','1']
im.config['stand_by_test']=['0','0.0','0','1']
im.config['gray_level_test']=['0','0','0.0','0.0','0.0','0.0','0.0','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('243V5QHABa', 'PHILIPS', '143')


im.config['power_test']=['105','14.0','2.5','0.5','1']
im.config['stand_by_test']=['192','0.3','19','1']
im.config['gray_level_test']=['0','48','0.5','0.318','0.33','0.33','0.339','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('P2018H', 'DELL', '143')



im.config['power_test']=['105','16.0','4.0','1.1','1']
im.config['stand_by_test']=['192','0.3','7','1']
im.config['gray_level_test']=['0','48','0.5','0.318','0.33','0.33','0.339','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('P2319H', 'DELL', '143')
 
 
im.config['power_test']=['105','19.0','4.0','0.5','1']
im.config['stand_by_test']=['0','0.0','0','1']
im.config['gray_level_test']=['0','48','0.5','0.318','0.33','0.33','0.339','1','hdmi']
im.config['service_tag_test']=['0.0','1']
im.config['hdmi_test']=['0','0','0.0','1']
im.config['send_commad_test']=['6E 51 86 03 FE 04 00 00 00 40','0.1','1']
im.insert_new_model('P2719H WISTRON', 'DELL', '143')

im.close()